part of 'forgot_mpin_bloc.dart';

@freezed
class ForgotMpinEvent with _$ForgotMpinEvent {
  const factory ForgotMpinEvent.getIdentityTypes() = _GetIdentityTypes;
  const factory ForgotMpinEvent.identityTypeChanged({
    required CommonSelectableItem selectedIdentityType,
  }) = _IdentityTypeChanged;
  const factory ForgotMpinEvent.identityNumberChanged(
    String identityNumberStr,
  ) = _IdentityNumberChanged;
  const factory ForgotMpinEvent.mobileNumberChanged(String mobileNumberStr) =
      _MobileNumberChanged;
  const factory ForgotMpinEvent.requestOtpPressed() = _RequestOtpPressed;
  const factory ForgotMpinEvent.resendOtp() = _ResendOtp;
  const factory ForgotMpinEvent.otpChanged(String otpStr) = _OtpChanged;
  const factory ForgotMpinEvent.otpSubmitted() = _OtpSubmitted;
}
