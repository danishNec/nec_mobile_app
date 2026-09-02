import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../button/app_button.dart';
import '../theme/app_theme_ext.dart';

class AppFilterBottomSheet extends HookWidget {
  final List<FilterOption> countryOptions;
  final List<FilterOption> beneficiaryOptions;
  final List<String> selectedCountries;
  final List<String> selectedBeneficiaries;
  final Function(List<String>, List<String>)? onApply;
  final VoidCallback? onReset;

  final String? cancelText;
  final String? applyText;
  final String? title;

  const AppFilterBottomSheet({
    super.key,
    required this.countryOptions,
    required this.beneficiaryOptions,
    this.selectedCountries = const [],
    this.selectedBeneficiaries = const [],
    this.onApply,
    this.onReset,
    this.cancelText,
    this.applyText,
    this.title,
  });

  static Future<Map<String, List<String>>?> show(
    BuildContext context, {
    required List<FilterOption> countryOptions,
    required List<FilterOption> beneficiaryOptions,
    List<String> selectedCountries = const [],
    List<String> selectedBeneficiaries = const [],
    Function(List<String>, List<String>)? onApply,
    VoidCallback? onReset,
    String? cancelText,
    String? applyText,
    String? title,
  }) {
    final theme = Theme.of(context);

    return showModalBottomSheet<Map<String, List<String>>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: theme.colorScheme.surface,
      isDismissible: false,
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (_) => AppFilterBottomSheet(
        countryOptions: countryOptions,
        beneficiaryOptions: beneficiaryOptions,
        selectedCountries: selectedCountries,
        selectedBeneficiaries: selectedBeneficiaries,
        onApply: onApply,
        onReset: onReset,
        cancelText: cancelText,
        applyText: applyText,
        title: title,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final selectedCountriesState = useState<Set<String>>({
      ...selectedCountries,
    });

    final selectedBeneficiariesState = useState<Set<String>>({
      ...selectedBeneficiaries,
    });

    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            height: 0.9.sh,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    children: [
                      Container(
                        width: 40.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: context.appColors.muted,
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        title ?? '',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: colorScheme.outline.withAlpha(50),
                        ),
                      ),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 16.h),
                                Text(
                                  'core.filters.countries'.tr(
                                    namedArgs: {
                                      'length':
                                          '(${selectedCountriesState.value.length})',
                                    },
                                  ),
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Expanded(
                                  child: ListView(
                                    children: countryOptions.map((option) {
                                      return CheckboxListTile(
                                        value: selectedCountriesState.value
                                            .contains(option.value),
                                        onChanged: (selected) {
                                          if (selected == true) {
                                            selectedCountriesState.value = {
                                              ...selectedCountriesState.value,
                                              option.value,
                                            };
                                          } else {
                                            selectedCountriesState.value = {
                                              ...selectedCountriesState.value
                                                ..remove(option.value),
                                            };
                                          }
                                        },
                                        title: Text(
                                          option.title
                                              .trim()
                                              .replaceAll(RegExp(r'\s+'), ' ')
                                              .toUpperCase(),
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        subtitle: option.subtitle != null
                                            ? Text(option.subtitle!)
                                            : null,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        activeColor:
                                            colorScheme.onPrimaryContainer,
                                        checkColor: colorScheme.surface,
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 4.w,
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Container(
                              width: 1.w,
                              color: colorScheme.outline.withAlpha(50),
                            ),
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 16.h),
                                Text(
                                  'core.filters.beneficiaries'.tr(
                                    namedArgs: {
                                      'length':
                                          '(${selectedBeneficiariesState.value.length})',
                                    },
                                  ),
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                Expanded(
                                  child: ListView(
                                    children: beneficiaryOptions.map((option) {
                                      return CheckboxListTile(
                                        value: selectedBeneficiariesState.value
                                            .contains(option.value),
                                        onChanged: (selected) {
                                          if (selected == true) {
                                            selectedBeneficiariesState.value = {
                                              ...selectedBeneficiariesState
                                                  .value,
                                              option.value,
                                            };
                                          } else {
                                            selectedBeneficiariesState.value = {
                                              ...selectedBeneficiariesState
                                                  .value
                                                ..remove(option.value),
                                            };
                                          }
                                        },
                                        title: Text(
                                          option.title
                                              .trim()
                                              .replaceAll(RegExp(r'\s+'), ' ')
                                              .toUpperCase(),
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        subtitle: option.subtitle != null
                                            ? Text(option.subtitle!)
                                            : null,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        activeColor:
                                            colorScheme.onPrimaryContainer,
                                        checkColor: colorScheme.surface,
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 4.w,
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: colorScheme.surface,
                    border: Border(
                      top: BorderSide(color: colorScheme.outline.withAlpha(50)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          text: cancelText ?? 'buttons.cancel'.tr(),
                          backgroundColor: colorScheme.secondaryContainer,
                          onTap: () => context.router.pop(),
                        ),
                      ),

                      SizedBox(width: 8.w),

                      Expanded(
                        child: AppButton(
                          text: applyText ?? 'buttons.apply'.tr(),
                          onTap: () {
                            final countries = selectedCountriesState.value
                                .toList();
                            final beneficiaries = selectedBeneficiariesState
                                .value
                                .toList();
                            onApply?.call(countries, beneficiaries);
                            context.router.pop({
                              'countries': countries,
                              'beneficiaries': beneficiaries,
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16.w,
            top: 24.h,
            child: TextButton(
              onPressed: () {
                context.router.pop();
                selectedCountriesState.value = {};
                selectedBeneficiariesState.value = {};
                onReset?.call();
              },
              child: Text(
                'Clear All',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FilterOption {
  final String title;
  final String value;
  final String? subtitle;

  FilterOption({required this.title, required this.value, this.subtitle});
}
