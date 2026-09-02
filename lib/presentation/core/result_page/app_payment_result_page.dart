import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../domain/common/common_payment_result_dto.dart';
import '../app_bar/app_app_bar.dart';
import '../app_number_formatter/app_number_formatter.dart';
import '../button/app_button.dart';
import '../theme/app_theme_ext.dart';
import '../helper/app_date_formatter_helper.dart';
import '../images/app_image.dart';
import '../scaffold/app_scaffold.dart';

@RoutePage()
class AppPaymentResultPage extends StatelessWidget {
  final CommonPaymentResultDto? paymentResult;

  const AppPaymentResultPage({super.key, this.paymentResult});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final colors = context.appColors;
    final data = paymentResult?.data;

    final isSuccess =
        !(data?.paymentStatus?.toLowerCase().contains('fail') ?? false);

    final borderColor = isSuccess ? colors.successDark : colors.errorDark;

    final amount = data?.amount != null
        ? AppNumberFormatter.formatNumberExact(data!.amount)
        : '—';

    Widget card({required Widget child}) => Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: borderColor.withValues(alpha: 0.25)),
      ),
      child: child,
    );

    return AppScaffold(
      appBar: AppAppBar(title: 'core.paymentResult.title'.tr()),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  Lottie.asset(
                    isSuccess ? AppImages.successIcon : AppImages.failureIcon,
                    width: 200.w,
                    repeat: false,
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    isSuccess
                        ? 'core.paymentResult.success.title'.tr()
                        : 'core.paymentResult.failure.title'.tr(),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    data?.statusDescription?.isNotEmpty == true
                        ? data!.statusDescription!
                        : isSuccess
                        ? 'core.paymentResult.success.message'.tr()
                        : 'core.paymentResult.failure.message'.tr(),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: cs.onSurface.withValues(alpha: .6),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  card(
                    child: Column(
                      children: [
                        Text(
                          'core.paymentResult.fields.totalAmount'.tr(),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          '${double.tryParse(amount)?.toStringAsFixed(3)} BHD',
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        _StatusChip(
                          text: data?.paymentStatus ?? '',
                          success: isSuccess,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  card(
                    child: Column(
                      children:
                          [
                                if ((data?.beneficiaryName ?? '').isNotEmpty)
                                  PaymentInfoRow(
                                    label: 'core.paymentResult.fields.receiver'
                                        .tr(),
                                    value: data!.beneficiaryName!,
                                  ),

                                if ((data?.paymentMethod ?? '').isNotEmpty)
                                  PaymentInfoRow(
                                    label:
                                        'core.paymentResult.fields.paymentMethod'
                                            .tr(),
                                    value: data!.paymentMethod!,
                                  ),

                                if (data?.transactionDate != null)
                                  PaymentInfoRow(
                                    label: 'core.paymentResult.fields.dateTime'
                                        .tr(),
                                    value: AppDateFormatterHelper.format(
                                      data!.transactionDate,
                                      outputFormat: AppDateFormatterHelper
                                          .bankingDateTime,
                                    ),
                                  ),

                                if ((data?.referenceNo ?? '').isNotEmpty)
                                  PaymentInfoRow(
                                    label:
                                        'core.paymentResult.fields.referenceNo'
                                            .tr(),
                                    value: data!.referenceNo!,
                                  ),
                              ]
                              .separated(
                                Divider(height: 20.h, color: cs.outline),
                              )
                              .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16.w),
            child: SafeArea(
              child: AppButton(
                text: 'buttons.ok'.tr(),
                onTap: context.router.popUntilRoot,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const PaymentInfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String text;
  final bool success;

  const _StatusChip({required this.text, required this.success});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = context.appColors;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: success ? colors.successDark : colors.errorDark,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        text,
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

extension SeparatedColumn on List<Widget> {
  Iterable<Widget> separated(Widget separator) sync* {
    for (var i = 0; i < length; i++) {
      yield this[i];
      if (i != length - 1) yield separator;
    }
  }
}
