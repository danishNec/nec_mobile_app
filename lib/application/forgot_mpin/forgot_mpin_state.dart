part of 'forgot_mpin_bloc.dart';

@freezed
sealed class ForgotMpinState with _$ForgotMpinState {
  const factory ForgotMpinState({
    required bool isLoading,
    required bool isOtpLoading,
    required bool isSubmitting,
    required bool isOtpSubmitting,
    required bool showErrorMessages,
    required bool showOtpErrorMessages,
    ForgotIdIdentityDto? forgotIdIdentityDto,
    CommonSelectableItem? selectedIdentityType,
    required IdentityNumber identityNumber,
    required MobileNumber mobileNumber,
    required Otp otp,
    required Option<Either<ForgotMpinFailure, ForgotIdIdentityDto>>
    identityTypeFailureOrSuccessOption,
    required Option<Either<ForgotMpinFailure, Unit>>
    requestOtpFailureOrSuccessOption,
    required Option<Either<ForgotMpinFailure, Unit>>
    resendOtpFailureOrSuccessOption,
    required Option<Either<ForgotMpinFailure, ForgotMpinOtpDto>>
    otpFailureOrSuccessOption,
  }) = _ForgotMpinState;

  factory ForgotMpinState.initial() => ForgotMpinState(
    isLoading: false,
    isOtpLoading: false,
    isSubmitting: false,
    isOtpSubmitting: false,
    showErrorMessages: false,
    showOtpErrorMessages: false,
    identityNumber: IdentityNumber('', ''),
    mobileNumber: MobileNumber(''),
    otp: Otp(''),
    identityTypeFailureOrSuccessOption: none(),
    requestOtpFailureOrSuccessOption: none(),
    resendOtpFailureOrSuccessOption: none(),
    otpFailureOrSuccessOption: none(),
  );
}
