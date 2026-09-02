import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/common/common_transaction_details_dto.dart';
import '../theme/app_theme_ext.dart';
import '../button/app_button.dart';

import '../extension/common_string_format_extensions.dart';
import '../global/app_global.dart';
import '../helper/app_date_formatter_helper.dart';

class AppTransactionBottomSheet extends StatelessWidget {
  final CommonTransactionDetailsDto? transaction;
  final void Function()? downloadOnTap;
  final void Function()? shareOnTap;

  const AppTransactionBottomSheet({
    super.key,
    required this.transaction,
    this.downloadOnTap,
    this.shareOnTap,
  });

  static Future<void> show(
    BuildContext context, {
    required CommonTransactionDetailsDto? transaction,
    void Function()? downloadOnTap,
    void Function()? shareOnTap,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      builder: (_) => AppTransactionBottomSheet(
        transaction: transaction,
        downloadOnTap: downloadOnTap,
        shareOnTap: shareOnTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final totalAmount = transaction?.data?.transaction?.payAmount ?? 0.0;
    final receivedAmount = transaction?.data?.transaction?.receiveAmount ?? 0.0;
    final destinationCurrencyCode =
        transaction?.data?.transaction?.destinationCurrencyCode ?? '';
    final transactionDate =
        transaction?.data?.transaction?.transactionDate ?? '';
    final transactionReference =
        transaction?.data?.transaction?.transactionReference ?? 0;
    final paymentMode = transaction?.data?.transaction?.paymentMode ?? '';
    final beneficiaryName =
        (transaction?.data?.transaction?.beneficiaryName ?? '')
            .toCleanUpperCase();
    final transferMode = transaction?.data?.transaction?.transferMode ?? '';
    final beneficiaryBankAccountNumber =
        transaction
            ?.data
            ?.transaction
            ?.beneficiaryById
            ?.beneficiaryBankAccountNumber ??
        '';
    final last4Digits = beneficiaryBankAccountNumber.length >= 4
        ? beneficiaryBankAccountNumber.substring(
            beneficiaryBankAccountNumber.length - 4,
          )
        : '';
    final beneficiaryBankName =
        transaction?.data?.transaction?.beneficiaryById?.beneficiaryBankName ??
        '';

    final txStatus = TransactionStatus.fromValue(
      transaction?.data?.transaction?.appStatus,
    );
    final statusColor = txStatus.getColor(context.appColors);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 1.sw,
              margin: EdgeInsets.all(8.w).add(EdgeInsets.only(top: 50.h)),
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: colorScheme.outline, width: 1.w),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1.sw,
                      height: 125.h,
                      decoration: BoxDecoration(
                        color: statusColor.withAlpha(30),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(6.w),
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          color: statusColor,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 20.w,
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.onPrimary.withAlpha(50),
                              child: Icon(
                                txStatus.icon,
                                size: 40.sp,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              transaction?.data?.transaction?.appStatus ?? '',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'core.transactionBottomSheet.totalAmount'.tr(),
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Row(
                              children: [
                                Text(
                                  totalAmount.toStringAsFixed(2),
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: colorScheme.onPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'core.transactionBottomSheet.receiveAmount'.tr(),
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: colorScheme.onPrimary,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  destinationCurrencyCode,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: colorScheme.onPrimary,
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  receivedAmount.toStringAsFixed(2),
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: colorScheme.onPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),

                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Text(
                        'core.transactionBottomSheet.transactionDetails'.tr(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSecondary,
                        ),
                      ),
                    ),

                    _DetailRow(
                      title: 'core.transactionBottomSheet.date'.tr(),
                      value: transactionDate != ''
                          ? AppDateFormatterHelper.format(
                              transactionDate,
                              outputFormat:
                                  AppDateFormatterHelper.bankingDateTime,
                            )
                          : '',
                    ),

                    _DetailRow(
                      title: 'core.transactionBottomSheet.referenceID'.tr(),
                      value: transactionReference != 0
                          ? transactionReference.toString()
                          : '',
                    ),

                    _DetailRow(
                      title: 'core.transactionBottomSheet.paymentMethod'.tr(),
                      value: paymentMode,
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h, top: 16.h),
                      child: Text(
                        'core.transactionBottomSheet.beneficiaryDetails'.tr(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSecondary,
                        ),
                      ),
                    ),

                    _DetailRow(
                      title: 'core.transactionBottomSheet.beneficiary'.tr(),
                      value: beneficiaryName,
                    ),
                    _DetailRow(
                      title: 'core.transactionBottomSheet.transferMode'.tr(),
                      value: transferMode,
                    ),
                    _DetailRow(
                      title: 'core.transactionBottomSheet.bankAccountNumber'
                          .tr(),
                      value: last4Digits.isNotEmpty
                          ? '•••••••• $last4Digits'
                          : '',
                    ),
                    _DetailRow(
                      title: 'core.transactionBottomSheet.bankName'.tr(),
                      value: beneficiaryBankName,
                    ),

                    if (transaction?.data?.transaction?.iSDownload == true) ...[
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Expanded(
                            child: AppButton(
                              onTap: downloadOnTap,
                              text: 'buttons.download'.tr(),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: AppButton(
                              onTap: shareOnTap,
                              text: 'buttons.share'.tr(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 44.w,
                  height: 44.w,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close_rounded,
                    size: 22.w,
                    color: colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String title;
  final String value;

  const _DetailRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    if (value.trim().isEmpty) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontSize: 14.sp,
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.w400,
            ),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 14.sp,
                color: colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
