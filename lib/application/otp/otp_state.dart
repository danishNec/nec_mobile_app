part of 'otp_bloc.dart';

@freezed
sealed class OtpState with _$OtpState {
  const factory OtpState({
    required bool isLoading,
    required bool showErrorMessages,
    required bool isSubmitting,
    required String identityType,
    required String identityNumber,
    required String mobileNumber,
    required Otp otp,
    required Option<Either<OtpFailure, Unit>> resendOtpFailureOrSuccessOption,
    required Option<Either<OtpFailure, OtpDto>> otpFailureOrSuccessOption,
  }) = _OtpState;

  factory OtpState.initial() => OtpState(
    isLoading: false,
    showErrorMessages: false,
    isSubmitting: false,
    identityType: '',
    identityNumber: '',
    mobileNumber: '',
    otp: Otp(''),
    resendOtpFailureOrSuccessOption: none(),
    otpFailureOrSuccessOption: none(),
  );
}
