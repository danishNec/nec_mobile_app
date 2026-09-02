import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/common/common_transaction_dto.dart';
import '../extension/common_string_format_extensions.dart';
import '../global/app_global.dart';
import '../helper/app_date_formatter_helper.dart';
import '../theme/app_theme_ext.dart';

class AppTransactionTile extends StatelessWidget {
  final CommonTransaction? commonTransaction;
  final VoidCallback? onTap;

  const AppTransactionTile({super.key, this.commonTransaction, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final appColors = context.appColors;

    final txStatus = TransactionStatus.fromValue(commonTransaction?.status);
    final statusColor = txStatus.getColor(appColors);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: statusColor.withAlpha(22),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(txStatus.icon, size: 20.sp, color: statusColor),
            ),

            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (commonTransaction?.beneficiaryName ?? '')
                        .toCleanUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'Ref: ${commonTransaction?.transactionReference ?? ''}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: appColors.muted,
                    ),
                  ),
                  if (commonTransaction?.createdOn != null) ...[
                    SizedBox(height: 2.h),
                    Text(
                      AppDateFormatterHelper.format(
                        commonTransaction!.createdOn,
                        outputFormat: AppDateFormatterHelper.bankingDateTime,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: appColors.muted,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            SizedBox(width: 8.w),

            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 120.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    commonTransaction?.payAmount?.toStringAsFixed(2) ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor.withAlpha(22),
                      borderRadius: BorderRadius.circular(4.r),
                      border: Border.all(
                        color: statusColor.withAlpha(60),
                        width: 0.5,
                      ),
                    ),
                    child: Text(
                      commonTransaction?.status ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: statusColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
