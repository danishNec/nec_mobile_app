part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserInfo() = _GetUserInfo;
  const factory ProfileEvent.currentEmailAddressChanged({required String emailAddress}) =
      _CurrentEmailAddressChanged;
  const factory ProfileEvent.updateEmailAddressChanged({required String emailAddress}) =
      _UpdateEmailAddressChanged;
  const factory ProfileEvent.requestUpdateEmailAddressPressed() = _RequestUpdateEmailAddressPressed;
  const factory ProfileEvent.emailOtpChanged({required String emailOtp}) = _EmailOtpChanged;
  const factory ProfileEvent.continueOtpButtonPressed() = _ContinueOtpButtonPressed;
}
