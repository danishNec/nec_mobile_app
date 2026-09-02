part of 'change_mpin_bloc.dart';

@freezed
sealed class ChangeMpinState with _$ChangeMpinState {
  const factory ChangeMpinState({
    required bool isSubmitting,
    required String currentMpin,
    required NewMpin newMpin,
    required Option<Either<ChangeMpinFailure, ChangeCurrentMpinDto>>
    changeMpinFailureOrSuccessOption,
    required Option<Either<ChangeMpinFailure, Unit>> changeNewMpinFailureOrSuccessOption,
    required Option<Either<ChangeMpinFailure, Unit>> changeVerifyMpinFailureOrSuccessOption,
  }) = _ChangeMpinState;

  factory ChangeMpinState.initial() => ChangeMpinState(
    isSubmitting: false,
    currentMpin: '',
    newMpin: NewMpin('', ''),
    changeMpinFailureOrSuccessOption: none(),
    changeNewMpinFailureOrSuccessOption: none(),
    changeVerifyMpinFailureOrSuccessOption: none(),
  );
}
