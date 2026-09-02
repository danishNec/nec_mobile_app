import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_failure.freezed.dart';

@freezed
sealed class OtpFailure with _$OtpFailure {
  const factory OtpFailure.mpinNotCreated({String? message}) = MpinNotCreated;
  const factory OtpFailure.invalidOtp({String? message}) = InvalidOtp;
  const factory OtpFailure.unableToSendOtp(String? message) = UnableToSendOtp;
  const factory OtpFailure.serverError(String? message) = ServerError;
}
