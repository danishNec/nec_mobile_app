import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/branches/branches_dto.dart';
import '../../core/theme/app_theme_ext.dart';

class BranchesItem extends StatelessWidget {
  final BranchList? branch;
  const BranchesItem({super.key, this.branch});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final branchName = branch?.branchName ?? '';
    final branchPhone = branch?.phone ?? '';
    final fullAddress = [branch?.address1, branch?.address2, branch?.address3]
        .where((e) => e != null && e.trim().isNotEmpty)
        .map((e) => e!.trim())
        .join(', ');
    return Material(
      borderRadius: BorderRadius.circular(8.r),
      elevation: 2,
      shadowColor: colorScheme.shadow.withAlpha(50),
      child: ListTile(
        tileColor: colorScheme.secondaryContainer,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(color: colorScheme.outline, width: 0.5.w),
        ),
        title: Text(
          branchName,
          style: theme.textTheme.titleMedium?.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Column(
          children: [
            SizedBox(height: 4.h),
            Row(
              children: [
                Icon(Icons.phone, size: 17.sp, color: colorScheme.tertiary),
                SizedBox(width: 4.w),
                Text(
                  branchPhone,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: colorScheme.onPrimary.withAlpha(200),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            if (fullAddress.isNotEmpty) ...[
              SizedBox(height: 4.h),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 17.sp,
                    color: colorScheme.tertiary,
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: Text(
                      fullAddress,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        overflow: TextOverflow.visible,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: colorScheme.onPrimary.withAlpha(200),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
