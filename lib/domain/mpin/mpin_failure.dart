import 'package:freezed_annotation/freezed_annotation.dart';
part 'mpin_failure.freezed.dart';

@freezed
sealed class MpinFailure with _$MpinFailure {
  const factory MpinFailure.invalidMpin(String errorMessage) = InvalidMpin;
  const factory MpinFailure.invalidBiometric(String errorMessage) = InvalidBiometric;
  const factory MpinFailure.biometricNotEnrolled() = BiometricNotEnrolled;
  const factory MpinFailure.serverError() = ServerError;
}
