import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';

class UniversalNumberFormatter extends TextInputFormatter {
  final bool limitDigits; // true = strict 6-digit, false = realistic max

  UniversalNumberFormatter({this.limitDigits = true});

  static const arabicIndic = ['٠','١','٢','٣','٤','٥','٦','٧','٨','٩'];
  static const easternArabicIndic = ['۰','۱','۲','۳','۴','۵','۶','۷','۸','۹'];
  static final _digit = RegExp(r'[0-9]');

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {

    String value = newValue.text;

    // Replace Arabic / Persian digits with English digits
    for (int i = 0; i < 10; i++) {
      value = value.replaceAll(arabicIndic[i], i.toString());
      value = value.replaceAll(easternArabicIndic[i], i.toString());
    }

    // Remove all invalid characters except dot
    value = value.replaceAll(RegExp(r'[^0-9.]'), '');

    // Only allow one dot
    int dotCount = '.'.allMatches(value).length;
    if (dotCount > 1) {
      int firstDot = value.indexOf('.');
      value = value.substring(0, firstDot + 1) +
          value.substring(firstDot + 1).replaceAll('.', '');
    }

    // Split integer and decimal parts
    List<String> parts = value.split('.');
    String integerPart = parts[0];
    String decimalPart = parts.length > 1 ? parts[1] : '';

    // Set max integer length based on flag
    int maxIntegerLength = limitDigits ? 6 : 12; // realistic exchange limit: 12 digits

    // Trim integer part if needed
    if (integerPart.length > maxIntegerLength) {
      integerPart = integerPart.substring(0, maxIntegerLength);
    }

    // Limit decimal to 2 digits always
    if (decimalPart.length > 2) {
      decimalPart = decimalPart.substring(0, 2);
    }

    // Add thousand separators to integer part
    if (integerPart.isNotEmpty) {
      integerPart = NumberFormat('#,###').format(int.parse(integerPart));
    }

    // Recombine
    final formattedText = parts.length > 1 ? '$integerPart.$decimalPart' : integerPart;

    // ── Cursor position ───────────────────────────────────────────────────────
    // Count how many digits lie AFTER the cursor in the pre-format text, then
    // find the same count from the right in the formatted text.  This keeps the
    // cursor anchored to its content position as commas are inserted/removed,
    // instead of always snapping to the end (which caused the back-and-forth
    // cursor jump when a calculation result updated the other field).
    final rawCursor = newValue.selection.end.clamp(0, newValue.text.length);
    int digitsAfterCursor = 0;
    for (int i = rawCursor; i < newValue.text.length; i++) {
      if (_digit.hasMatch(newValue.text[i])) digitsAfterCursor++;
    }

    int newCursorPos = formattedText.length; // default: end (0 digits after)
    if (digitsAfterCursor > 0) {
      int counted = 0;
      for (int i = formattedText.length - 1; i >= 0; i--) {
        if (_digit.hasMatch(formattedText[i])) counted++;
        if (counted == digitsAfterCursor) {
          newCursorPos = i;
          break;
        }
      }
      if (counted < digitsAfterCursor) newCursorPos = 0;
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(
        offset: newCursorPos.clamp(0, formattedText.length),
      ),
    );
  }
}