import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_theme_ext.dart';

class AppUserBox extends StatelessWidget {
  final String userName;
  final String userInitials;
  final String userStatus;
  const AppUserBox({
    super.key,
    required this.userName,
    required this.userInitials,
    required this.userStatus,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorScheme.primaryContainer.withAlpha(100),
            colorScheme.secondaryContainer,
          ],
        ),
        border: Border(
          bottom: BorderSide(
            color: colorScheme.outline.withAlpha(20),
            width: 1.5.w,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 45.w,
            height: 45.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colorScheme.secondary,
              shape: BoxShape.circle,
              border: Border.all(color: colorScheme.outline, width: 0.5.w),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.shadow.withAlpha(50),
                  offset: Offset(2.w, 2.h),
                  blurRadius: 6.r,
                ),
                BoxShadow(
                  color: colorScheme.shadow.withAlpha(50),
                  offset: Offset(-2.w, -2.h),
                  blurRadius: 6.r,
                ),
              ],
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                userInitials,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(width: 12.w),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 1.sw - 100.w,
                child: Text(
                  userName,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: context.appColors.success,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  userStatus,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: context.appColors.onSuccess,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
