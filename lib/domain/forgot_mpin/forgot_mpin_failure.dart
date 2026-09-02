import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_mpin_failure.freezed.dart';

@freezed
abstract class ForgotMpinFailure with _$ForgotMpinFailure {
  const factory ForgotMpinFailure.unableToFetchIdentityTypes(String? message) =
      _UnableToFetchIdentityTypes;
  const factory ForgotMpinFailure.invalidCredentials(String? message) =
      _InvalidCredentials;
  const factory ForgotMpinFailure.unableToSendOtp(String? message) = _UnableToSendOtp;
  const factory ForgotMpinFailure.invalidOtp(String? message) = _InvalidOtp;
  const factory ForgotMpinFailure.serverError() = _ServerError;
}
