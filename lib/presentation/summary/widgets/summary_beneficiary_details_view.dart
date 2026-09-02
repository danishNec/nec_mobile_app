import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/beneficiary/beneficiary_bloc.dart';
import '../../../application/summary/summary_bloc.dart';
import '../../core/theme/app_theme_ext.dart';
import '../../../domain/summary/summary_beneficiary_by_id_dto.dart';
import '../../core/button/edit_stack_button.dart';
import '../../core/dotted_border/app_dotted_border.dart';
import '../../core/global/app_global.dart';
import '../../core/shimmer/app_shimmer.dart';
import '../../core/svg/app_svg.dart';
import '../../routes/app_routes.gr.dart';
import 'summary_section_error_view.dart';

class SummaryBeneficiaryDetailsView extends StatelessWidget {
  final SummaryState state;
  const SummaryBeneficiaryDetailsView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final beneficiary = state.summaryBeneficiaryByIdDto?.data?.beneficiaryById;

    final fullName = [
      beneficiary?.beneficiaryFirstName,
      beneficiary?.beneficiaryMiddleName,
      beneficiary?.beneficiaryLastName,
    ].where((e) => (e ?? '').trim().isNotEmpty).join(' ');

    final unicodeName = [
      beneficiary?.beneficiaryFirstNameUnicode,
      beneficiary?.beneficiaryMiddleNameUnicode,
      beneficiary?.beneficiaryLastNameUnicode,
    ].where((e) => (e ?? '').trim().isNotEmpty).join(' ');

    return state.summaryBeneficiaryByIdFailureOrSuccessOption.fold(
      // none() → section is loading; show per-section shimmer
      () => AppShimmer(
        height: 120.h,
        width: double.infinity,
        borderRadius: BorderRadius.circular(12.r),
      ),
      (either) => either.fold(
        // Left → isolated section error; user can retry without affecting other sections
        (failure) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'summary.beneficiaryDetails.title'.tr(),
              style: context.typography.subheading.copyWith(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            SizedBox(height: 10.h),
            SummarySectionErrorView(
              message: 'errors.networkError'.tr(),
              onRetry: () => context.read<SummaryBloc>().add(
                const SummaryEvent.retryBeneficiary(),
              ),
            ),
          ],
        ),
        // Right → render content
        (beneficiaryById) {
          final hasPurpose = (beneficiary?.purposeName ?? '').trim().isNotEmpty;
          final hasSourceOfFunds = (beneficiary?.incomeSourceName ?? '')
              .trim()
              .isNotEmpty;
          final hasBottomSection = hasPurpose || hasSourceOfFunds;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'summary.beneficiaryDetails.title'.tr(),
                style: context.typography.subheading.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 10.h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      _TopCard(
                        beneficiary: beneficiary,
                        fullName: fullName,
                        unicodeName: unicodeName,
                        hasBottomSection: hasBottomSection,
                      ),
                      if (hasBottomSection)
                        _BottomCard(
                          beneficiary: beneficiary,
                          hasPurpose: hasPurpose,
                          hasSourceOfFunds: hasSourceOfFunds,
                        ),
                    ],
                  ),
                  EditStackButton(
                    onEditTap: () {
                      final eId = beneficiary?.eId;
                      context.read<BeneficiaryBloc>().add(
                        BeneficiaryEvent.getBeneficiaryById(eId),
                      );
                      context.router.push(const BeneficiaryEditForm());
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class _TopCard extends StatelessWidget {
  final BeneficiaryById? beneficiary;
  final String fullName;
  final String unicodeName;
  final bool hasBottomSection;

  const _TopCard({
    required this.beneficiary,
    required this.fullName,
    required this.unicodeName,
    required this.hasBottomSection,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final hasDisbursalMode = (beneficiary?.disbursalMode ?? '')
        .trim()
        .isNotEmpty;
    final hasBankName = (beneficiary?.beneficiaryBankName ?? '')
        .trim()
        .isNotEmpty;
    final hasAccountNumber = (beneficiary?.beneficiaryBankAccountNumber ?? '')
        .trim()
        .isNotEmpty;

    return Container(
      padding: EdgeInsets.all(14).r,
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        border: Border(
          left: BorderSide(color: colorScheme.outline, width: 0.25.w),
          right: BorderSide(color: colorScheme.outline, width: 0.25.w),
          top: BorderSide(color: colorScheme.outline, width: 0.25.w),
          bottom: hasBottomSection
              ? BorderSide(color: colorScheme.outline, width: 0.25.w)
              : BorderSide(color: colorScheme.outline, width: 0.25.w),
        ),
        borderRadius: hasBottomSection
            ? BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              )
            : BorderRadius.circular(12.r),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Country flag + label
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppSvg(
                  asset: AppGlobal.getFlagAsset(
                    beneficiary?.beneficiaryCountryCode,
                  ),
                  width: 30.w,
                  height: 30.w,
                ),
                SizedBox(height: 6.h),
                Text(
                  'summary.beneficiaryDetails.country'.tr(),
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 2.h),
                Text(
                  beneficiary?.beneficiaryCountryName?.toUpperCase() ?? '',
                  style: context.typography.secondary.copyWith(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(width: 16.w),
            SizedBox(
              width: 1.w,
              height: double.infinity,
              child: AppDottedDivider(
                color: colorScheme.outline,
                dotSize: 0.5,
                dotLength: 2,
                space: 2.5,
                direction: Axis.vertical,
              ),
            ),
            SizedBox(width: 14.w),
            // Right: name / transfer type / bank / account
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (fullName.isNotEmpty) ...[
                    Text(
                      'summary.beneficiaryDetails.name'.tr(),
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 2.h),
                    Text.rich(
                      TextSpan(
                        style: context.typography.secondary.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(text: fullName),
                          if (unicodeName.isNotEmpty)
                            TextSpan(text: ' / $unicodeName'),
                        ],
                      ),
                    ),
                  ],
                  if (hasDisbursalMode) ...[
                    if (fullName.isNotEmpty) _rowDivider(colorScheme),
                    Text(
                      'summary.beneficiaryDetails.transferType'.tr(),
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      beneficiary?.disbursalMode ?? '',
                      style: context.typography.secondary.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                  if (hasBankName) ...[
                    if (fullName.isNotEmpty || hasDisbursalMode)
                      _rowDivider(colorScheme),
                    Text(
                      'summary.beneficiaryDetails.bankOrAgent'.tr(),
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      beneficiary?.beneficiaryBankName ?? '',
                      style: context.typography.secondary.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                  if (hasAccountNumber) ...[
                    if (fullName.isNotEmpty || hasDisbursalMode || hasBankName)
                      _rowDivider(colorScheme),
                    Text(
                      'summary.beneficiaryDetails.accountNumber'.tr(),
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      beneficiary?.beneficiaryBankAccountNumber ?? '',
                      style: context.typography.secondary.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rowDivider(ColorScheme colorScheme) => Padding(
    padding: EdgeInsets.symmetric(vertical: 6.h),
    child: AppDottedDivider(
      color: colorScheme.outline,
      dotSize: 0.5,
      dotLength: 2,
      space: 2.5,
      height: 1,
    ),
  );
}

class _BottomCard extends StatelessWidget {
  final BeneficiaryById? beneficiary;
  final bool hasPurpose;
  final bool hasSourceOfFunds;

  const _BottomCard({
    required this.beneficiary,
    required this.hasPurpose,
    required this.hasSourceOfFunds,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: EdgeInsets.all(14).r,
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        border: Border(
          left: BorderSide(color: colorScheme.outline, width: 0.25.w),
          right: BorderSide(color: colorScheme.outline, width: 0.25.w),
          bottom: BorderSide(color: colorScheme.outline, width: 0.25.w),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (hasPurpose) ...[
            Text(
              'summary.beneficiaryDetails.purposeOfTransaction'.tr(),
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 2.h),
            Text(
              beneficiary?.purposeName ?? '',
              style: context.typography.secondary.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
          if (hasPurpose && hasSourceOfFunds)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child: AppDottedDivider(
                color: colorScheme.outline,
                dotSize: 0.5,
                dotLength: 2,
                space: 2.5,
                height: 1,
              ),
            ),
          if (hasSourceOfFunds) ...[
            Text(
              'summary.beneficiaryDetails.sourceOfFunds'.tr(),
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 2.h),
            Text(
              beneficiary?.incomeSourceName ?? '',
              style: context.typography.secondary.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
