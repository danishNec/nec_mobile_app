extension StringNumberParsing on String {
  /// Safely parses localized numeric strings (Arabic, Persian, etc.)
  /// into a double value. Returns 0.0 if parsing fails.
  double toSafeDouble() {
    if (isEmpty) return 0.0;

    const arabicDigits = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    const westernDigits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

    var cleaned = this
        .replaceAll(RegExp(r'[\u200E\u200F\u202A-\u202E]'), '') // remove RTL/LTR marks
        .replaceAll(RegExp(r'[^\d.,\-]'), '') // remove any non-numeric symbol
        .replaceAll(',', ''); // remove thousand separators

    for (int i = 0; i < arabicDigits.length; i++) {
      cleaned = cleaned.replaceAll(arabicDigits[i], westernDigits[i]);
    }

    return double.tryParse(cleaned.trim()) ?? 0.0;
  }
}
