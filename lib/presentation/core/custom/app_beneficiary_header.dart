import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/dotted_border/app_dotted_border.dart';
import '../../core/global/app_global.dart';
import '../../core/svg/app_svg.dart';
import '../../core/theme/app_theme_ext.dart';

class AppBeneficiaryHeader extends StatelessWidget {
  final String? beneficiaryCountryCode;
  final String? beneficiaryCountryName;
  final String? transferTypeName;
  final String? bankOrAgentName;
  const AppBeneficiaryHeader({
    super.key,
    this.beneficiaryCountryCode,
    this.beneficiaryCountryName,
    this.transferTypeName,
    this.bankOrAgentName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Container(
      padding: EdgeInsets.all(14).r,
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: colorScheme.outline, width: 0.25.w),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withAlpha(80),
            offset: Offset(3, 3.h),
            blurRadius: 2.r,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSvg(
                asset: AppGlobal.getFlagAsset(beneficiaryCountryCode ?? ''),
                width: 30.w,
                height: 30.w,
              ),
              SizedBox(height: 4.h),
              Text(
                'core.beneficiaryHeader.country'.tr(),
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 2.h),
              Text(
                beneficiaryCountryName ?? '',
                style: context.typography.secondary.copyWith(
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(width: 16.w),
          SizedBox(
            width: 16.w,
            height: 90.h,
            child: AppDottedDivider(
              color: colorScheme.outline,
              dotSize: 0.75,
              dotLength: 3,
              space: 5,
              height: 8,
              direction: Axis.vertical,
            ),
          ),
          SizedBox(width: 6.w),

          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'core.beneficiaryHeader.transferType'.tr(),
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 2.h),
                Text(
                  transferTypeName ?? '',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8.h),
                AppDottedDivider(
                  color: colorScheme.outline,
                  dotSize: 0.75,
                  dotLength: 3,
                  space: 5,
                  height: 8,
                ),
                SizedBox(height: 8.h),
                Text(
                  'core.beneficiaryHeader.bankOrAgent'.tr(),
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 2.h),
                Text(
                  bankOrAgentName ?? '',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
