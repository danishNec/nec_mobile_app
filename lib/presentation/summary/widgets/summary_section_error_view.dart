import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_theme_ext.dart';

/// Isolated section-level error card with a retry button.
///
/// Each section (beneficiary, payment method, etc.) renders this widget
/// independently when its API fails. One failed section never prevents
/// others from showing their content.
class SummarySectionErrorView extends StatelessWidget {
  final String? message;
  final VoidCallback onRetry;

  const SummarySectionErrorView({
    super.key,
    this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final errorColor = context.appColors.error;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: context.appColors.errorSubtle,
        border: Border.all(
          color: errorColor.withValues(alpha: 0.25),
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: errorColor,
            size: 18.w,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              message ?? 'errors.orElse'.tr(),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: errorColor,
                  ),
            ),
          ),
          SizedBox(width: 10.w),
          GestureDetector(
            onTap: onRetry,
            behavior: HitTestBehavior.opaque,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: colorScheme.secondary,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: errorColor.withValues(alpha: 0.35),
                  width: 0.5.w,
                ),
              ),
              child: Text(
                'buttons.retry'.tr(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: errorColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}