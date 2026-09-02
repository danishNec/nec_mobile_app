import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/mpin/i_mpin_facade.dart';
import '../../domain/mpin/mpin_dto.dart';
import '../../domain/mpin/mpin_failure.dart';

part 'mpin_event.dart';
part 'mpin_state.dart';
part 'mpin_bloc.freezed.dart';

@injectable
class MpinBloc extends Bloc<MpinEvent, MpinState> {
  final IMpinFacade _mpinFacade;
  final LocalAuthentication _localAuthentication;
  final SharedPrefs _appPrefs;
  MpinBloc(this._mpinFacade, this._localAuthentication, this._appPrefs)
    : super(MpinState.initial()) {
    on<_VerifyMpinEvent>(_onVerifyMpin);
    on<_CheckBiometricSupport>(_onCheckBiometricSupportToState);
    on<_VerifyBiometricEvent>(_onVerifyBiometricToState);
  }

  FutureOr<void> _onVerifyMpin(
    _VerifyMpinEvent event,
    Emitter<MpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        biometricFailureOrSuccessOption: none(),
        mpinFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _mpinFacade.verifyMpin(mpin: event.mpin);
    emit(
      state.copyWith(
        isLoading: false,
        mpinFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  FutureOr<void> _onCheckBiometricSupportToState(
    _CheckBiometricSupport event,
    Emitter<MpinState> emit,
  ) async {
    try {
      final canCheck = await _localAuthentication.canCheckBiometrics;
      final isSupported = await _localAuthentication.isDeviceSupported();

      final available = canCheck && isSupported;
      final biometricEnabled = _appPrefs.getIsBiometricAuthenticated();

      emit(
        state.copyWith(
          isBiometricAvailable: available,
          isBiometricEnabled: biometricEnabled,
        ),
      );
    } catch (_) {
      emit(state.copyWith(isBiometricAvailable: false));
    }
  }

  FutureOr<void> _onVerifyBiometricToState(
    _VerifyBiometricEvent event,
    Emitter<MpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isAuthenticating: true,
        mpinFailureOrSuccessOption: none(),
        biometricFailureOrSuccessOption: none(),
      ),
    );
    try {
      // Live re-check: state may be stale if user removed biometrics from device settings
      final canCheck = await _localAuthentication.canCheckBiometrics;
      final isSupported = await _localAuthentication.isDeviceSupported();
      if (!canCheck || !isSupported) {
        emit(
          state.copyWith(
            isAuthenticating: false,
            isBiometricAvailable: false,
            biometricFailureOrSuccessOption: some(
              left(MpinFailure.biometricNotEnrolled()),
            ),
          ),
        );
        return;
      }
      final authenticated = await _localAuthentication.authenticate(
        localizedReason: event.localizedReason,
        persistAcrossBackgrounding: true,
        sensitiveTransaction: true,
      );
      if (!authenticated) {
        emit(state.copyWith(isAuthenticating: false));
        return;
      }
      final failureOrSuccess = await _mpinFacade.verifyBiometric();
      emit(
        state.copyWith(
          isAuthenticating: false,
          biometricFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
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
      emit(
        state.copyWith(
          isAuthenticating: false,
          biometricFailureOrSuccessOption: some(
            left(MpinFailure.serverError()),
          ),
        ),
      );
    }
  }
}
