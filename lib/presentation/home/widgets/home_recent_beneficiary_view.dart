import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/home/home_bloc.dart';
import '../../../application/summary/summary_bloc.dart';
import '../../../domain/home/home_recent_beneficiaries_dto.dart';
import '../../core/global/app_global.dart';
import '../../core/svg/app_svg.dart';
import '../../routes/app_routes.gr.dart';

class HomeRecentBeneficiaryView extends StatelessWidget {
  final HomeState state;
  const HomeRecentBeneficiaryView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final beneficiaries =
        state.homeRecentBeneficiariesDto?.data?.beneficiaryList ?? [];
    return beneficiaries.isEmpty
        ? const SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 0),
                child: Text(
                  'home.quickTransfer.title'.tr(),
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (
                      int i = 0;
                      i < (beneficiaries.length > 3 ? 3 : beneficiaries.length);
                      i++
                    ) ...[
                      if (i > 0) SizedBox(width: 10.w),
                      BeneficiaryCard(beneficiary: beneficiaries[i]),
                    ],
                  ],
                ),
              ),
            ],
          );
  }
}

class BeneficiaryCard extends StatelessWidget {
  final RecentBeneficiaryList? beneficiary;
  final double? width;
  const BeneficiaryCard({super.key, this.beneficiary, this.width});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    final beneficiaryCountryCode = beneficiary?.beneficiaryCountryCode ?? '';
    final firstName = beneficiary?.beneficiaryFirstName ?? '';
    final lastName = beneficiary?.beneficiaryLastName ?? '';

    final name = ('$firstName $lastName').trim();
    final hasName = name.isNotEmpty;

    final initials =
        ((firstName.isNotEmpty ? firstName[0] : '') +
                (lastName.isNotEmpty ? lastName[0] : ''))
            .toUpperCase();

    final displayInitials = initials.isEmpty ? '?' : initials;

    final maskedAccountNumber =
        beneficiary?.beneficiaryBankAccountNumber?.replaceAll(
          RegExp(r'\d(?=\d{4})'),
          '*',
        ) ??
        '';

    final hasAccount = maskedAccountNumber.isNotEmpty;
    final transferType = beneficiary?.disbursalMode ?? '';
    final hasTransferType = transferType.trim().isNotEmpty;
    final amount = beneficiary?.tranList?.firstOrNull?.destinationAmount ?? 0.0;
    final currency =
        beneficiary?.tranList?.firstOrNull?.destinationCurrencyCode ?? '';
    final hasAmount = currency.isNotEmpty && amount > 0;

    return GestureDetector(
      onTap: () {
        final eId = beneficiary?.eId ?? '';
        context.read<SummaryBloc>().add(
          SummaryEvent.prepareSummary(beneficiaryId: eId),
        );
        context.router.push(SummaryRoute());
      },
      child: Container(
        width: width ?? 280.w,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: cs.outline, width: 0.35.w),
        ),
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: cs.tertiary,
                shape: BoxShape.circle,
              ),
              child: Text(
                displayInitials,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: cs.primary,
                ),
              ),
            ),

            SizedBox(width: 10.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (hasName)
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: cs.onPrimary,
                      ),
                    ),

                  if (hasAccount) ...[
                    SizedBox(height: 2.h),
                    Text(
                      maskedAccountNumber,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: cs.onPrimary.withAlpha(180),
                        fontSize: 10.sp,
                      ),
                    ),
                  ],

                  if (hasTransferType) ...[
                    SizedBox(height: 2.h),
                    Text(
                      transferType,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: cs.onPrimary.withAlpha(180),
                        fontSize: 10.sp,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],

                  if (hasAmount) ...[
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        AppSvg(
                          asset: AppGlobal.getFlagAsset(beneficiaryCountryCode),
                          width: 13.w,
                          height: 13.w,
                          borderRadius: 2.r,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '$currency ${amount.toStringAsFixed(2)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),

            SizedBox(width: 8.w),

            Container(
              width: 30.w,
              height: 30.w,
              decoration: BoxDecoration(
                color: cs.tertiary,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_outward_rounded,
                color: cs.primary,
                size: 15.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
