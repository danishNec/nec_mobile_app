part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isUserLoading,
    required bool isBiometricAvailable,
    required bool isBiometricEnabled,
    required bool isAuthenticating,
    SettingsUserDto? settingsUserInfo,
    required Option<Either<SettingsFailure, SettingsUserDto>>
        userInfoFailureOrSuccessOption,
  }) = _SettingsState;

  factory SettingsState.initial() => SettingsState(
    isUserLoading: false,
    isBiometricAvailable: false,
    isBiometricEnabled: false,
    isAuthenticating: false,
    userInfoFailureOrSuccessOption: none(),
  );
}