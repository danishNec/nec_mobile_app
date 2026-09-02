import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
sealed class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidIdentityNumber({required T failedValue}) =
      InvalidIdentityNumber<T>;
  const factory ValueFailure.invalidMobileNumber({required T failedValue}) =
      InvalidMobileNumber<T>;
  const factory ValueFailure.invalidOtp({required T failedValue}) =
      InvalidOtp<T>;
  const factory ValueFailure.invalidEmailAddress({required T failedValue}) =
      InvalidEmailAddress<T>;
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.tooShort({
    required T failedValue,
    required int minLength,
  }) = TooShort<T>;
  const factory ValueFailure.tooLong({
    required T failedValue,
    required int maxLength,
  }) = TooLong<T>;
  const factory ValueFailure.invalidFormat({
    required T failedValue,
    required String regexPattern,
  }) = InvalidFormat<T>;
  const factory ValueFailure.sameAsCurrentMpin({required T failedValue}) =
      SameAsCurrentMpin<T>;
  const factory ValueFailure.invalidMpin({required T failedValue}) =
      InvalidMpin<T>;
  const factory ValueFailure.repeatedDigits({required T failedValue}) =
      RepeatedDigits<T>;
  const factory ValueFailure.sequentialDigits({required T failedValue}) =
      SequentialDigits<T>;
}
