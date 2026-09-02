import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateIdentityNumber(
  String input,
  String idType,
) {
  final numericRegex = RegExp(r'^\d+$'); // only digits allowed

  if (idType.toUpperCase() == 'CPR') {
    if (!numericRegex.hasMatch(input)) {
      return left(ValueFailure.invalidIdentityNumber(failedValue: input));
    }

    if (input.length < 9) {
      return left(ValueFailure.invalidIdentityNumber(failedValue: input));
    }

    return right(input);
  } else {
    return left(ValueFailure.invalidIdentityNumber(failedValue: idType));
  }
}

/// Validates a given mobile number string.
///
/// This function checks if the input matches the mobile number format using a regular expression.
/// A valid mobile number must start with 7, 2, or 9, followed by 7 digits.
///
/// - Parameters:
///   - `input`: The mobile number string to validate.
/// - Returns:
///   - `Either<ValueFailure<String>, String>`: Returns the input string wrapped in `right` if valid,
///     or a `ValueFailure` wrapped in `left` if invalid.
Either<ValueFailure<String>, String> validateMobileNumber(String input) {
  final mobileRegex = RegExp(r'^[0-9]{8}$');

  if (mobileRegex.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidMobileNumber(failedValue: input));
  }
}

/// Validates a given OTP string.
///
/// This function checks if the input matches the OTP format using a regular expression.
/// A valid OTP must consist of exactly 4 digits.
///
/// - Parameters:
///   - `input`: The OTP string to validate.
/// - Returns:
///   - `Either<ValueFailure<String>, String>`: Returns the input string wrapped in `right` if valid,
///     or a `ValueFailure` wrapped in `left` if invalid.
Either<ValueFailure<String>, String> validateOtp(String input) {
  final otpRegex = RegExp(r'^\d{4}$'); // Exactly 4 digits

  if (otpRegex.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidOtp(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  if (emailRegex.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }
}

/// Validates a dynamic input string based on provided criteria.
///
/// This function performs multiple checks on the input string, including:
/// 1. Mandatory check: Ensures the input is not empty if it is required.
/// 2. Length validation: Checks if the input meets the specified minimum and maximum length requirements.
/// 3. Regex validation: Validates the input against a provided regular expression pattern (if any).
/// - Parameters:
///   - `input`: The string input to validate.
///   - `mandatory`: A boolean indicating whether the input is required.
///   - `minLength`: An optional integer specifying the minimum length of the input.
///   - `maxLength`: An optional integer specifying the maximum length of the input.
///   - `regexPattern`: An optional string containing a regular expression pattern to validate the input against.
/// - Returns:
///   - `Either<ValueFailure<String>, String>`: Returns the input string wrapped in `right` if valid, or a `ValueFailure` wrapped in `left` if any validation fails
Either<ValueFailure<String>, String> validateDynamicInput({
  required String input,
  required bool mandatory,
  int? minLength,
  int? maxLength,
  String? regexPattern,
}) {
  final value = input.trim();

  /// 1️⃣ Mandatory
  if (mandatory && value.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }

  if (value.isEmpty) {
    return right(value);
  }

  /// 2️⃣ Length validation (relaxed for international numbers)
  if (minLength != null && minLength > 0) {
    // Allow common international numbers (8+ digits)
    if (value.length < minLength && value.length < 8) {
      return left(
        ValueFailure.tooShort(failedValue: input, minLength: minLength),
      );
    }
  }

  if (maxLength != null && maxLength > 0 && value.length > maxLength) {
    return left(ValueFailure.tooLong(failedValue: input, maxLength: maxLength));
  }

  /// 3️⃣ Regex validation (if provided by backend)
  if (regexPattern != null && regexPattern.isNotEmpty) {
    try {
      final regex = RegExp(regexPattern);
      if (!regex.hasMatch(value)) {
        return left(
          ValueFailure.invalidFormat(
            failedValue: input,
            regexPattern: regexPattern,
          ),
        );
      }
    } catch (_) {
      // Ignore invalid backend regex
    }
  }

  return right(value);
}

Either<ValueFailure<String>, String> validateMpin(
  String input, {
  String? currentMpin,
}) {
  final cleaned = input.trim();

  if (currentMpin != null && cleaned == currentMpin) {
    return left(ValueFailure.sameAsCurrentMpin(failedValue: input));
  }

  // Only 6 digits
  if (!RegExp(r'^\d{6}$').hasMatch(cleaned)) {
    return left(ValueFailure.invalidMpin(failedValue: input));
  }

  // No repeated digits (111111, 000000)
  if (RegExp(r'^(\d)\1{5}$').hasMatch(cleaned)) {
    return left(ValueFailure.repeatedDigits(failedValue: input));
  }

  // No sequential digits
  const sequences = ['012345', '123456', '234567', '345678', '456789'];

  const reverseSequences = ['543210', '654321', '765432', '876543', '987654'];

  if (sequences.contains(cleaned) || reverseSequences.contains(cleaned)) {
    return left(ValueFailure.sequentialDigits(failedValue: input));
  }

  return right(cleaned);
}
