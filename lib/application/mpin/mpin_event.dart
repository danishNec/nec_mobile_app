part of 'mpin_bloc.dart';

@freezed
sealed class MpinEvent with _$MpinEvent {
  const factory MpinEvent.verifyMpin({required String mpin}) = _VerifyMpinEvent;
  const factory MpinEvent.checkBiometricSupport() = _CheckBiometricSupport;
  const factory MpinEvent.verifyBiometric({
    @Default('Please authenticate to continue') String localizedReason,
  }) = _VerifyBiometricEvent;
}
