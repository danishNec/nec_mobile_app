import 'package:flutter/services.dart';

class WesternDigitsInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final arabicNumbers = ['٠','١','٢','٣','٤','٥','٦','٧','٨','٩'];
    final westernNumbers = ['0','1','2','3','4','5','6','7','8','9'];
    String normalized = newValue.text;
    for (int i = 0; i < 10; i++) {
      normalized = normalized.replaceAll(arabicNumbers[i], westernNumbers[i]);
    }
    return newValue.copyWith(
      text: normalized,
      selection: TextSelection.collapsed(offset: normalized.length),
    );
  }
}