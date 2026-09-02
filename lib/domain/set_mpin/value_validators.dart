import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class NewMpin extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NewMpin(String? input) {
    assert(input != null);
    return NewMpin._(validateMpin(input!));
  }

  const NewMpin._(this.value);
}
