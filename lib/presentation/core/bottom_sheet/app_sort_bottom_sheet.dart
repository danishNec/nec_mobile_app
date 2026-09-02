import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../button/app_button.dart';
import '../theme/app_theme_ext.dart';

class AppSortBottomSheet extends StatelessWidget {
  final List<BottomSheetSortOption> options;
  final String? cancelText;
  final String? title;
  final String? selectedValue;

  const AppSortBottomSheet({
    super.key,
    required this.options,
    this.cancelText,
    this.title,
    this.selectedValue,
  });

  static Future<void> show(
    BuildContext context, {
    required List<BottomSheetSortOption> options,
    String? cancelText,
    String? title,
    String? selectedValue,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (_) => AppSortBottomSheet(
        options: options,
        cancelText: cancelText,
        title: title,
        selectedValue: selectedValue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  ...options.map(
                    (option) => Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: BottomSheetSortTile(
                        option: option,
                        isSelected: option.value == selectedValue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: AppButton(
              text: cancelText ?? 'buttons.cancel'.tr(),
              onTap: () => context.router.pop(),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheetSortOption {
  final String title;
  final String? subtitle;
  final String value;
  final Widget? leading;
  final VoidCallback onTap;
  final bool closeOnTap;

  BottomSheetSortOption({
    required this.title,
    required this.value,
    required this.onTap,
    this.subtitle,
    this.leading,
    this.closeOnTap = true,
  });
}

class BottomSheetSortTile extends StatelessWidget {
  final BottomSheetSortOption option;
  final bool isSelected;

  const BottomSheetSortTile({
    super.key,
    required this.option,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      tileColor: colorScheme.secondaryContainer,
      onTap: () {
        if (option.closeOnTap) {
          context.router.pop();
        }
        option.onTap();
      },
      leading: Icon(
        isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
        color: isSelected
            ? colorScheme.tertiary
            : colorScheme.onSurface.withAlpha(150),
        size: 22.w,
      ),
      title: Text(
        option.title,
        style: theme.textTheme.bodyMedium?.copyWith(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.onPrimary,
        ),
      ),
      subtitle: option.subtitle != null
          ? Text(
              option.subtitle!,
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 13.sp,
                color: colorScheme.onSurface.withAlpha(150),
              ),
            )
          : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(color: colorScheme.outline, width: 0.5.w),
      ),
    );
  }
}
