import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMpinActionRow extends StatelessWidget {
  const AppMpinActionRow({
    super.key,
    this.onLoginOrRegister,
    this.onForgotMpin,
    required this.theme,
    required this.colors,
  });

  final VoidCallback? onLoginOrRegister;
  final VoidCallback? onForgotMpin;
  final ThemeData theme;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onLoginOrRegister,
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.smartphone_outlined,
                      color: colors.tertiary,
                      size: 18.sp,
                    ),
                    SizedBox(width: 6.w),
                    Flexible(
                      child: Text(
                        'core.mpin.loginWithOtp'.tr(),
                        maxLines: 2,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: colors.onPrimary,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 1,
            height: 18.h,
            color: colors.onPrimary.withValues(alpha: 0.25),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onForgotMpin,
              behavior: HitTestBehavior.opaque,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_outline,
                      color: colors.tertiary,
                      size: 18.sp,
                    ),
                    SizedBox(width: 6.w),
                    Flexible(
                      child: Text(
                        'core.mpin.forgotMpin'.tr(),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: colors.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
