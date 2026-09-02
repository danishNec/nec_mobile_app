import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_mpin_failure.freezed.dart';

@freezed
abstract class ChangeMpinFailure with _$ChangeMpinFailure {
  const factory ChangeMpinFailure.invalidCurrentMpin(String message) = _InvalidCurrentMpin;
  const factory ChangeMpinFailure.invalidNewMpin() = _InvalidNewMpin;
  const factory ChangeMpinFailure.mismatchVerifyMpin() = _MismatchVerifyMpin;
  const factory ChangeMpinFailure.invalidVerifyMpin(String message) = _InvalidVerifyMpin;
  const factory ChangeMpinFailure.serverError() = _ServerError;
}
