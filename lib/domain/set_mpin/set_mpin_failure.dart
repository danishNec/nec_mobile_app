import 'package:freezed_annotation/freezed_annotation.dart';
part 'set_mpin_failure.freezed.dart';

@freezed
abstract class SetMpinFailure with _$SetMpinFailure {
  const factory SetMpinFailure.invalidNewMpin() = _InvalidNewMpin;
  const factory SetMpinFailure.mismatchVerifyNewMpin() = _MismatchVerifyNewMpin;
  const factory SetMpinFailure.invalidVerifyNewMpin(String message) = _InvalidVerifyNewMpin;
  const factory SetMpinFailure.serverError() = _ServerError;
}
