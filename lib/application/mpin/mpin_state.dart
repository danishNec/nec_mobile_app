part of 'mpin_bloc.dart';

@freezed
sealed class MpinState with _$MpinState {
  const factory MpinState({
    required bool isLoading,
    required bool isAuthenticating,
    required bool isBiometricAvailable,
    required bool isBiometricEnabled,
    required Option<Either<MpinFailure, MpinDto>> mpinFailureOrSuccessOption,
    required Option<Either<MpinFailure, MpinDto>> biometricFailureOrSuccessOption,
  }) = _MpinState;

  factory MpinState.initial() => MpinState(
    isLoading: false,
    isAuthenticating: false,
    isBiometricAvailable: false,
    isBiometricEnabled: false,
    mpinFailureOrSuccessOption: none(),
    biometricFailureOrSuccessOption: none(),
  );
}
