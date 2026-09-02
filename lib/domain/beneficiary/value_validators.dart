import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class BeneficiaryDynamicInput extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BeneficiaryDynamicInput({
    required String input,
    required bool mandatory,
    int? minLength,
    int? maxLength,
    String? regexPattern,
  }) {
    return BeneficiaryDynamicInput._(
      validateDynamicInput(
        input: input,
        mandatory: mandatory,
        minLength: minLength,
        maxLength: maxLength,
        regexPattern: regexPattern,
      ),
    );
  }

  const BeneficiaryDynamicInput._(this.value);
}

class BeneficiaryOtp extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BeneficiaryOtp(String? input) {
    assert(input != null);
    return BeneficiaryOtp._(
      validateOtp(input!),
    );
  }

  const BeneficiaryOtp._(this.value);
}
