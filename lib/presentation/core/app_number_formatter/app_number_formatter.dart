import 'package:easy_localization/easy_localization.dart';
import 'package:intl/intl.dart';

import '../../../domain/core/di/injection.dart';
import '../../routes/app_routes.dart';

class AppNumberFormatter {
  static final router = getIt<AppRouter>();

  /// Safely parse a string into a number.
  static num? _parseNumber(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    return num.tryParse(value.replaceAll(',', '').trim());
  }

  /// Format a number (or string number) based on the current locale.
  /// Examples:
  /// - en_US → 1,234.56
  /// - fr_FR → 1 234,56
  /// - hi_IN → 1,23,456.78
  static String formatNumber(
    dynamic value, {
    int decimalDigits = 2,
    String? locale,
  }) {
    final parsedValue = value is num ? value : _parseNumber(value?.toString());
    if (parsedValue == null) return '';

    final currentLocale =
        locale ??
        EasyLocalization.of(
          router.navigatorKey.currentContext!,
        )!.locale.toString();

    final format = NumberFormat.currency(
      locale: currentLocale,
      symbol: '', // no currency symbol, only number
      decimalDigits: decimalDigits,
    );

    return format.format(parsedValue).trim();
  }

  /// Format as currency, showing locale-specific symbol.
  static String formatCurrency(
    dynamic value, {
    int decimalDigits = 2,
    String? locale,
    String? currencyCode,
  }) {
    final parsedValue = value is num ? value : _parseNumber(value?.toString());
    if (parsedValue == null) return '';

    final currentLocale =
        locale ??
        EasyLocalization.of(
          router.navigatorKey.currentContext!,
        )!.locale.toString();

    final format = NumberFormat.simpleCurrency(
      locale: currentLocale,
      name: currencyCode,
      decimalDigits: decimalDigits,
    );

    return format.format(parsedValue).trim();
  }

  /// Format as compact number (e.g. 1.2K, 3.4M)
  static String formatCompact(dynamic value, {String? locale}) {
    final parsedValue = value is num ? value : _parseNumber(value?.toString());
    if (parsedValue == null) return '';

    final currentLocale =
        locale ??
        EasyLocalization.of(
          router.navigatorKey.currentContext!,
        )!.locale.toString();

    final format = NumberFormat.compact(locale: currentLocale);
    return format.format(parsedValue);
  }

  /// Format a number with grouping for integer part, preserving exact decimal digits
  static String formatNumberExact(dynamic value) {
    if (value == null) return '';

    // Convert value to string and normalize Arabic-indic digits to English
    String str = value.toString();
    if (str.isEmpty) return '';

    str = _convertToEnglishDigits(str);

    // Split integer and decimal
    final parts = str.split('.');
    final integerPart = parts[0].replaceAll(',', '');
    final decimalPart = parts.length > 1 ? parts[1] : null;

    // Format integer part with commas
    final formattedInt = NumberFormat(
      '#,##0',
      'en_US',
    ).format(int.parse(integerPart));

    return decimalPart != null ? '$formattedInt.$decimalPart' : formattedInt;
  }

  static String _convertToEnglishDigits(String input) {
    final arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    final english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

    for (int i = 0; i < arabic.length; i++) {
      input = input.replaceAll(arabic[i], english[i]);
    }

    return input;
  }
}
