import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String? input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input!));
  }

  const EmailAddress._(this.value);
}

class Otp extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Otp(String? input) {
    assert(input != null);
    return Otp._(validateOtp(input!));
  }

  const Otp._(this.value);
}
