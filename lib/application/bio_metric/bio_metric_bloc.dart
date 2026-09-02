import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

import '../../domain/core/prefs/app_prefs.dart';

part 'bio_metric_event.dart';
part 'bio_metric_state.dart';
part 'bio_metric_bloc.freezed.dart';

@injectable
class BioMetricBloc extends Bloc<BioMetricEvent, BioMetricState> {
  final SharedPrefs _appPrefs;
  final LocalAuthentication _localAuthentication;

  BioMetricBloc(this._appPrefs, this._localAuthentication)
    : super(BioMetricState.initial()) {
    on<_CheckSupport>(_onCheckSupportToState);
    on<_Enable>(_onEnableToState);
  }

  FutureOr<void> _onCheckSupportToState(
    _CheckSupport event,
    Emitter<BioMetricState> emit,
  ) async {
    emit(BioMetricState.initial());
    try {
      final canCheck = await _localAuthentication.canCheckBiometrics;
      final isSupported = await _localAuthentication.isDeviceSupported();
      emit(state.copyWith(isBiometricAvailable: canCheck && isSupported));
    } catch (_) {
      emit(state.copyWith(isBiometricAvailable: false));
    }
  }

  FutureOr<void> _onEnableToState(
    _Enable event,
    Emitter<BioMetricState> emit,
  ) async {
    emit(state.copyWith(isAuthenticating: true));
    if (!state.isBiometricAvailable) {
      emit(state.copyWith(isAuthenticating: false));
      return;
    }
    try {
      final authenticated = await _localAuthentication.authenticate(
        localizedReason: 'Authenticate to enable biometric login',
        persistAcrossBackgrounding: true,
        sensitiveTransaction: true,
      );
      if (!authenticated) {
        emit(state.copyWith(isAuthenticating: false));
        return;
      }
      await _appPrefs.setIsBiometricAuthenticated(true);
      emit(state.copyWith(isAuthenticating: false, isBiometricEnabled: true));
    } catch (e) {
      if (e is LocalAuthException) {
        const silentCodes = {
          LocalAuthExceptionCode.userCanceled,
          LocalAuthExceptionCode.systemCanceled,
          LocalAuthExceptionCode.userRequestedFallback,
        };
        if (silentCodes.contains(e.code)) {
          emit(state.copyWith(isAuthenticating: false));
          return;
        }
      }
      emit(state.copyWith(isAuthenticating: false));
    }
  }
}
