part of 'otp_bloc.dart';

@freezed
sealed class OtpEvent with _$OtpEvent {
  const factory OtpEvent.initial({
    required String idType,
    required String idNumber,
    required String mobileNumber,
  }) = _Initial;
  const factory OtpEvent.resendOtp() = _ResendOtp;
  const factory OtpEvent.otpChanged(String otpStr) = _OtpChanged;
  const factory OtpEvent.otpSubmitted() = _OtpSubmitted;
}
