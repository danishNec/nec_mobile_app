import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/settings/i_settings_facade.dart';
import '../../domain/settings/settings_failure.dart';
import '../../domain/settings/settings_user_dto.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsFacade _settingsFacade;

  SettingsBloc(this._settingsFacade) : super(SettingsState.initial()) {
    on<_GetUserInfo>(_onGetUserInfo);
    on<_CheckBiometricSupport>(_onCheckBiometricSupport);
    on<_ToggleBiometricAuth>(_onToggleBiometricAuth);
  }

  FutureOr<void> _onGetUserInfo(
    _GetUserInfo event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(
      isUserLoading: true,
      userInfoFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _settingsFacade.getUserInfo();
    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(
        isUserLoading: false,
        userInfoFailureOrSuccessOption: some(left(failure)),
      )),
      (userInfo) => emit(state.copyWith(
        isUserLoading: false,
        settingsUserInfo: userInfo,
        userInfoFailureOrSuccessOption: some(right(userInfo)),
      )),
    );
  }

  FutureOr<void> _onCheckBiometricSupport(
    _CheckBiometricSupport event,
    Emitter<SettingsState> emit,
  ) async {
    final failureOrSupported = await _settingsFacade.checkBiometricSupport();
    failureOrSupported.fold(
      (_) => emit(state.copyWith(isBiometricAvailable: false)),
      (available) => emit(state.copyWith(
        isBiometricAvailable: available,
        isBiometricEnabled: _settingsFacade.isBiometricEnabled(),
      )),
    );
  }

  FutureOr<void> _onToggleBiometricAuth(
    _ToggleBiometricAuth event,
    Emitter<SettingsState> emit,
  ) async {
    if (!state.isBiometricAvailable) return;
    emit(state.copyWith(isAuthenticating: true));

    final current = state.isBiometricEnabled;
    final failureOrSuccess = current
        ? await _settingsFacade.disableBiometric()
        : await _settingsFacade.enableBiometric();

    failureOrSuccess.fold(
      (_) => emit(
        state.copyWith(isBiometricEnabled: current, isAuthenticating: false),
      ),
      (_) => emit(
        state.copyWith(isBiometricEnabled: !current, isAuthenticating: false),
      ),
    );
  }
}