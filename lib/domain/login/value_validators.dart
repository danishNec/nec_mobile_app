import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class IdentityNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IdentityNumber(String? input, String idTypeCode) {
    assert(input != null);
    return IdentityNumber._(
      validateIdentityNumber(input!, idTypeCode),
    );
  }

  const IdentityNumber._(this.value);
}


class MobileNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MobileNumber(String? input) {
    assert(input != null);
    return MobileNumber._(
      validateMobileNumber(input!),
    );
  }

  const MobileNumber._(this.value);
}
