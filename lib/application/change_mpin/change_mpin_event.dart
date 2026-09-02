part of 'change_mpin_bloc.dart';

@freezed
sealed class ChangeMpinEvent with _$ChangeMpinEvent {
  const factory ChangeMpinEvent.changeCurrentMpin({required String mpin}) =
      _ChangeCurrentMpin;
  const factory ChangeMpinEvent.changeNewMpin({required String mpin}) =
      _ChangeNewMpin;
  const factory ChangeMpinEvent.changeVerifyMpin({required String mpin}) =
      _ChangeVerifyMpin;
}
