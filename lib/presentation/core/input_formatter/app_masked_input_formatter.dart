import 'package:flutter/services.dart';

/// Fixed-length digit-only input mask.
///
/// Fills slots left-to-right with user-typed digits; remaining slots show
/// [maskChar] (`X` by default). Non-digit characters are silently discarded.
/// Use [rawDigits] to extract the user-typed value from the masked display.
class AppMaskedInputFormatter extends TextInputFormatter {
  final int maskLength;
  final String maskChar;

  const AppMaskedInputFormatter({required this.maskLength, this.maskChar = 'X'})
    : assert(maskLength >= 0, 'maskLength must be non-negative');

  /// Strips [maskChar] placeholders, returning only user-typed digits.
  static String rawDigits(String maskedText, {String maskChar = 'X'}) =>
      maskedText.replaceAll(maskChar, '');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (maskLength == 0) return newValue;

    final buf = StringBuffer();
    for (final char in newValue.text.split('')) {
      if (buf.length >= maskLength) break;
      if (RegExp(r'\d').hasMatch(char)) buf.write(char);
    }

    final filled = buf.toString();
    final display = filled.padRight(maskLength, maskChar);
    final cursor = filled.length.clamp(0, maskLength);

    return TextEditingValue(
      text: display,
      selection: TextSelection.collapsed(offset: cursor),
    );
  }
}
