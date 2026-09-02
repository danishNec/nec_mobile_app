part of 'set_mpin_bloc.dart';

@freezed
sealed class SetMpinState with _$SetMpinState {
  const factory SetMpinState({
    required bool isSubmitting,
    required NewMpin newMpin,
    required Option<Either<SetMpinFailure, Unit>> setNewMpinFailureOrSuccessOption,
    required Option<Either<SetMpinFailure, Unit>> setVerifyMpinFailureOrSuccessOption,
  }) = _SetMpinState;

  factory SetMpinState.initial() => SetMpinState(
    isSubmitting: false,
    newMpin: NewMpin(''),
    setNewMpinFailureOrSuccessOption: none(),
    setVerifyMpinFailureOrSuccessOption: none(),
  );
}
