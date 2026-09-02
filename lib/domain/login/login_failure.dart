import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_failure.freezed.dart';

@freezed
sealed class LoginFailure with _$LoginFailure {
  const factory LoginFailure.unableToFetchIdentityTypes(String? message) =
      _UnableToFetchIdentityTypes;
  const factory LoginFailure.userUnderVerification(String? message) =
      _UserUnderVerification;
  const factory LoginFailure.identityTypeOrNumberMismatch(String? message) =
      _IdentityTypeOrNumberMismatch;
  const factory LoginFailure.invalidCredentials(String? message) =
      _InvalidCredentials;
  const factory LoginFailure.urlLaunchFailure() = _UrlLaunchFailure;
  const factory LoginFailure.serverError() = _ServerError;
}
