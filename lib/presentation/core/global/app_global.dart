import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:keyboard_actions/keyboard_actions_config.dart';

import '../../../domain/common/common_combo_dto.dart';
import '../../../domain/core/di/injection.dart';
import '../../../domain/core/prefs/app_prefs.dart';
import '../theme/app_semantic_colors.dart';

/// A global utility class for the application, providing constants and helper methods.
class AppGlobal {
  /// The country code for the application (968 represents Oman).
  static const int appCountryCode = 973;

  /// A list of supported locales for the application.
  /// - `en_US`: English (United States)
  /// - `ar_OM`: Arabic (Oman)
  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('ar', 'BH'),
    Locale('ml', 'IN'),
    Locale('hi', 'IN'),
    Locale('fil', 'PH'),
  ];

  static Future<Locale> getInitialLocale() async {
    final prefs = getIt<SharedPrefs>();
    final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;

    for (var locale in AppGlobal.supportedLocales) {
      if (locale.languageCode == deviceLocale.languageCode) {
        await prefs.setTranslationLocale(locale.toLanguageTag());
        return locale;
      }
    }

    return AppGlobal.supportedLocales.first;
  }

  /// The path to the localization files used for translations.
  static const String translationsPath = 'assets/translations';

  static const String appFlagPath = 'assets/flag';
  static const String _defaultFlag = 'default.svg';

  /// The URL for the Terms and Conditions document.
  static const String termsAndConditionsUrl =
      'https://aljadeedmobile.codepoint-solutions.com/AppResources/Flags/T&C_EN_with_logo.pdf';

  /// Formats a [DateTime] or date [String] into a string using the given [format].
  ///
  /// - [dateTime]: The `DateTime` object to format.
  /// - [dateString]: A string representation of the date to parse and format.
  /// - [timestamp]: A Unix timestamp (in seconds or milliseconds) to parse and format.
  /// - [outputFormat]: The desired date format (default: `'d MMMM y'`).
  /// - [locale]: The locale to use for formatting (e.g., `'en_US'`).
  ///
  /// Returns a formatted date string. If both [dateTime] and [dateString] are null,
  /// or if [dateString] cannot be parsed, an empty string is returned.
  static String formatDate({
    DateTime? dateTime,
    String? dateString,
    int? timestamp,
    String? outputFormat,
    String? locale = 'en_US',
  }) {
    DateTime? parsed;

    // 1. Prioritize DateTime directly
    if (dateTime != null) {
      parsed = dateTime;
    }
    // 2. Parse timestamp (seconds or milliseconds)
    else if (timestamp != null) {
      try {
        if (timestamp.toString().length == 10) {
          parsed = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
        } else {
          parsed = DateTime.fromMillisecondsSinceEpoch(timestamp);
        }
      } catch (_) {
        return '';
      }
    }
    // 3. Parse string in ANY known format
    else if (dateString != null) {
      parsed = _flexibleParse(dateString);
      if (parsed == null) return '';
    }
    // No input provided
    else {
      return '';
    }

    // 4. Final output format (default = 1 January 2024 style)
    try {
      return DateFormat(outputFormat ?? 'd MMMM y', locale).format(parsed);
    } catch (_) {
      return '';
    }
  }

  /// Returns the expected digit count for a given ID type code.
  static int idMaskLength(String? idTypeCode) =>
      switch (idTypeCode?.toUpperCase()) {
        'CPR' => 9,
        _ => 0,
      };

  /// Formats a duration in seconds into a MM:SS string format.
  static String formatTime(int sec) {
    final minutes = (sec ~/ 60).toString().padLeft(2, '0');
    final secs = (sec % 60).toString().padLeft(2, '0');
    return '$minutes:$secs';
  }

  /// Attempts to parse a date string using multiple known formats.
  ///
  /// - [input]: The date string to parse.
  ///
  /// Returns a `DateTime` object if parsing is successful, or `null` if all attempts fail.
  static DateTime? _flexibleParse(String input) {
    final trimmed = input.trim();

    // Try default ISO parsing
    try {
      return DateTime.parse(trimmed);
    } catch (_) {}

    // Try multiple common formats
    final formats = [
      "dd-MM-yyyy",
      "MM-dd-yyyy",
      "yyyy-MM-dd",
      "dd/MM/yyyy",
      "MM/dd/yyyy",
      "yyyy/MM/dd",
      "dd MMM yyyy",
      "MMM dd, yyyy",
      "yyyy-MM-dd HH:mm:ss",
      "dd-MM-yyyy HH:mm:ss",
      "MM/dd/yyyy HH:mm:ss",
      "EEE, dd MMM yyyy HH:mm:ss",
    ];

    for (final f in formats) {
      try {
        return DateFormat(f).parse(trimmed);
      } catch (_) {}
    }

    return null;
  }

  /// -----------------------------------------------------------
  /// Beneficiary Field Type
  /// -----------------------------------------------------------

  static BeneficiaryFieldType mapFieldType(String? type) {
    switch (type?.toLowerCase()) {
      case 'textfield':
        return BeneficiaryFieldType.text;

      case 'dropdown':
      case 'subdropdown':
      case 'autofill':
        return BeneficiaryFieldType.dropdown;

      default:
        return BeneficiaryFieldType.unknown;
    }
  }

  /// -----------------------------------------------------------
  /// Mobile Number Field Check
  /// -----------------------------------------------------------

  static String? isMobileNumberField(String? fieldName) {
    if (fieldName == null) return null;
    return fieldName.toLowerCase() ==
            FieldNames.beneficiaryMobile.name.toLowerCase()
        ? fieldName
        : null;
  }

  /// -----------------------------------------------------------
  /// Product Combo List
  /// -----------------------------------------------------------

  static List<ComboItem> getProductComboList({
    required String? fieldName,
    required CommonComboDto? comboData,
  }) {
    if (comboData == null) return [];
    switch (fieldName?.toLowerCase()) {
      case 'beneficiarynationalitycode':
        return comboData.countryList;
      case 'gender_list':
        return comboData.genderList;
      case 'profession':
        return comboData.professionList;
      case 'beneficaryrelation':
        return comboData.relationshipList;
      case 'residency type':
        return comboData.residencyTypeList;
      case 'salutation':
        return comboData.salutationList;
      case 'airport':
        return comboData.airportList;
      case 'account type':
        return comboData.beneficiaryBankAccountTypeList;
      case 'member category':
        return comboData.memberCategoryList;
      case 'route type':
        return comboData.routeTypeList;
      case 'beneficiarybranchcode':
        return comboData.beneficiaryBranchList;
      case 'routecode':
        return comboData.beneficiaryRouteCodeList;
      case 'beneficiarybankcode':
        return comboData.beneficiaryBankList;
      default:
        return [];
    }
  }

  /// -----------------------------------------------------------
  /// Dropdown UI Config
  /// -----------------------------------------------------------

  static DropdownUiConfig getDropdownUiConfig(String? fieldName) {
    switch (fieldName?.toLowerCase()) {
      case 'beneficiarynationalitycode':
        return const DropdownUiConfig(
          isShowLeading: true,
          isShowTrailing: true,
        );
      case 'gender_list':
      case 'profession':
      case 'beneficaryrelation':
        return const DropdownUiConfig(
          isShowLeading: false,
          isShowTrailing: false,
        );
      case 'account type':
        return const DropdownUiConfig(
          isShowLeading: false,
          isShowTrailing: true,
        );
      default:
        return const DropdownUiConfig(
          isShowLeading: false,
          isShowTrailing: false,
        );
    }
  }

  /// The base path for flag assets in the application.
  static String getFlagAsset(String? countryCode) {
    if (countryCode == null || countryCode.isEmpty) {
      return '$appFlagPath/$_defaultFlag';
    }

    return '$appFlagPath/${countryCode.toLowerCase()}.svg';
  }

  /// Builds a [KeyboardActionsConfig] for the given [FocusNode] and context.
  /// If [readOnly] is true or [focusNode] is null, a default config with no toolbar buttons is returned. Otherwise, a config with a "Done" button that unfocuses the
  /// keyboard and dispatches an event to the [TSummaryBloc] is returned.
  static KeyboardActionsConfig buildKeyboardConfig(
    BuildContext context,
    FocusNode? focusNode, {
    bool readOnly = false,
  }) {
    final theme = Theme.of(context);
    if (readOnly || focusNode == null) {
      return KeyboardActionsConfig(
        actions: [KeyboardActionsItem(focusNode: focusNode!)],
      );
    }

    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
      keyboardBarColor: Theme.of(context).colorScheme.secondary,
      actions: [
        KeyboardActionsItem(
          focusNode: focusNode,
          toolbarButtons: [
            (node) {
              return GestureDetector(
                onTap: () {
                  node.unfocus();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  child: Text(
                    'buttons.done'.tr(),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            },
          ],
        ),
      ],
    );
  }

  static KeyboardActionsConfig buildKeyboardConfigs({
    required BuildContext context,
    FocusNode? focusNode,
  }) {
    if (focusNode == null) {
      return const KeyboardActionsConfig(actions: []);
    }

    final theme = Theme.of(context);

    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
      keyboardBarColor: theme.colorScheme.secondaryContainer,
      actions: [
        KeyboardActionsItem(
          focusNode: focusNode,
          toolbarButtons: [
            (node) => GestureDetector(
              onTap: node.unfocus,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Text(
                  'Done',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  static String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) return 'core.greeting.goodMorning'.tr();
    if (hour >= 12 && hour < 17) return 'core.greeting.goodAfternoon'.tr();
    if (hour >= 17 && hour < 21) return 'core.greeting.goodEvening'.tr();

    return 'core.greeting.goodNight'.tr();
  }
}

enum BeneficiaryFieldType { text, dropdown, unknown }

enum AppLocale { en, ar, ml, hi, fil }

enum FieldNames {
  beneficiaryMobile,
  beneficiaryBankCode,
  beneficiaryBranchCode,
  routeCode,
}

class DropdownUiConfig {
  final bool isShowLeading;
  final bool isShowTrailing;

  const DropdownUiConfig({
    required this.isShowLeading,
    required this.isShowTrailing,
  });
}

enum TransactionStatus {
  initiated,
  success,
  pending,
  processing,
  failed,
  unknown;

  factory TransactionStatus.fromValue(String? value) {
    switch (value?.toLowerCase()) {
      case 'transaction initiated':
        return TransactionStatus.initiated;

      case 'transaction successfully processed':
        return TransactionStatus.success;

      case 'transaction pending':
        return TransactionStatus.pending;

      case 'payment under process':
      case 'transaction has been processed':
      case 'awaiting payment':
        return TransactionStatus.processing;

      default:
        return TransactionStatus.failed;
    }
  }

  IconData get icon {
    switch (this) {
      case initiated:
        return Icons.access_time_filled;
      case success:
        return Icons.check_circle;
      case pending:
        return Icons.hourglass_top;
      case processing:
        return Icons.autorenew;
      case failed:
        return Icons.cancel;
      case unknown:
        return Icons.help_outline;
    }
  }

  Color getColor([AppSemanticColors? colors]) {
    final c = colors ?? AppSemanticColors.dark;
    switch (this) {
      case initiated:
        return c.statusInitiated;
      case success:
        return c.successDark;
      case pending:
        return c.statusPending;
      case processing:
        return c.statusProcessing;
      case failed:
        return c.errorDark;
      case unknown:
        return c.muted;
    }
  }
}
