part of 'set_mpin_bloc.dart';

@freezed
sealed class SetMpinEvent with _$SetMpinEvent {
  const factory SetMpinEvent.setNewMpin({required String mpin}) = _SetNewMpin;
  const factory SetMpinEvent.setVerifyNewMpin({required String mpin}) =
      _SetVerifyNewMpin;
}
