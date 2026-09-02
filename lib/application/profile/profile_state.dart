part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isSubmitting,
    required bool isOtpSubmitting,
    required bool showErrorMessages,
    required bool showOtpErrorMessages,
    ProfileUserDto? profileUserInfo,
    required String currentEmailAddress,
    required EmailAddress emailAddress,
    required Otp emailOtp,
    required Option<Either<ProfileFailure, ProfileUserDto>>
    profileUserInfoFailureOrSuccessOption,
    required Option<Either<ProfileFailure, Unit>>
    requestEmailOtpFailureOrSuccessOption,
    required Option<Either<ProfileFailure, Unit>>
    verifyEmailOtpFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
    isLoading: false,
    isSubmitting: false,
    isOtpSubmitting: false,
    showErrorMessages: false,
    showOtpErrorMessages: false,
    currentEmailAddress: '',
    emailAddress: EmailAddress(''),
    emailOtp: Otp(''),
    profileUserInfoFailureOrSuccessOption: none(),
    requestEmailOtpFailureOrSuccessOption: none(),
    verifyEmailOtpFailureOrSuccessOption: none(),
  );
}
