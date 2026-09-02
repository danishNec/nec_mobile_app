import 'package:easy_localization/easy_localization.dart';

class AppDateFormatterHelper {
  AppDateFormatterHelper._();

  /// Banking-safe formats
  static const String bankingDate = 'dd MMM yyyy';        // 17 Jul 2023
  static const String bankingDateIso = 'yyyy-MM-dd';      // 2023-07-17
  static const String bankingDateTime = 'hh:mm a, dd MMM yyyy';

  /// Accepts String or DateTime and returns formatted date
  static String format(
      dynamic date, {
        String outputFormat = bankingDate,
        bool convertToLocal = true,
      }) {
    if (date == null) return '';

    DateTime? dateTime;

    if (date is DateTime) {
      dateTime = date;
    } else if (date is String) {
      dateTime = _parseStringDate(date);
    }

    if (dateTime == null) return '';

    /// Banking apps should always show LOCAL time
    if (convertToLocal) {
      dateTime = dateTime.toLocal();
    }

    return DateFormat(outputFormat).format(dateTime);
  }

  /// Parses backend-safe formats only (strict)
  static DateTime? _parseStringDate(String date) {
    /// ISO 8601 (Preferred for banking APIs)
    try {
      return DateTime.parse(date);
    } catch (_) {}

    /// Approved fallback formats
    final formats = [
      'yyyy-MM-dd',                // ✅ 2023-07-17
      'yyyy-MM-dd HH:mm:ss',
      'yyyy-MM-ddTHH:mm:ss',
      'yyyy-MM-ddTHH:mm:ssZ',
      'dd MMM yyyy',
    ];

    for (final format in formats) {
      try {
        return DateFormat(format).parseStrict(date);
      } catch (_) {}
    }

    return null;
  }
}
