import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_failure.freezed.dart';

@freezed
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.unableToGetUserInfo() = _UnableToGetUserInfo;
  const factory ProfileFailure.emailNotChanged() = _EmailNotChanged;
  const factory ProfileFailure.unableToUpdateEmailAddress() =
      _UnableToUpdateEmailAddress;
  const factory ProfileFailure.unableToVerifyEmailOtp() = _UnableToVerifyEmailOtp;
  const factory ProfileFailure.serverError() = _ServerError;
}
