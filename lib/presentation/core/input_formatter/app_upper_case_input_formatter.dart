import 'package:flutter/services.dart';

class AppUpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Original text
    final originalText = newValue.text;
    final originalSelection = newValue.selection;

    // Apply transformations
    String modified = originalText.toUpperCase();

    // Remove leading spaces
    final leadingRemoved = RegExp(r'^\s+');
    final hadLeadingSpaces = leadingRemoved.hasMatch(originalText);
    modified = modified.replaceFirst(leadingRemoved, '');

    // Replace multiple spaces with a single space
    modified = modified.replaceAll(RegExp(r'\s+'), ' ');

    // Adjust cursor position
    int diff = modified.length - originalText.length;
    int newOffset = originalSelection.baseOffset + diff;

    // Prevent negative or out-of-range values
    if (newOffset < 0) newOffset = 0;
    if (newOffset > modified.length) newOffset = modified.length;

    return TextEditingValue(
      text: modified,
      selection: TextSelection.collapsed(offset: newOffset),
    );
  }
}
