import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/beneficiary/beneficiary_bloc.dart';
import '../../../application/home/home_bloc.dart';
import '../../../application/summary/summary_bloc.dart';
import '../../../domain/home/home_beneficiary_list_dto.dart';
import '../../core/app_bar/app_app_bar.dart';
import '../../core/app_states/app_state_view.dart';
import '../../core/bottom_sheet/app_action_sheet.dart';
import '../../core/button/app_button.dart';
import '../../core/dotted_border/app_dotted_border.dart';
import '../../core/global/app_global.dart';
import '../../core/notify/app_notify.dart';
import '../../core/progress/app_progress_indicator.dart';
import '../../core/scaffold/app_scaffold.dart';
import '../../core/stepper/app_stepper.dart';
import '../../core/svg/app_svg.dart';
import '../../core/theme/app_theme_ext.dart';
import '../../core/widgets/app_beneficiary_tile.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class HomeBeneficiaryView extends StatelessWidget {
  const HomeBeneficiaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.homeDeleteBeneficiaryFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              AppNotify.toast(
                'home.chooseBeneficiary.deleteBeneficiaryFailed'.tr(),
              );
            },
            (eId) {
              AppNotify.toast(
                'home.chooseBeneficiary.deleteBeneficiarySuccess'.tr(),
              );
              context.read<BeneficiaryBloc>().add(
                BeneficiaryEvent.deleteBeneficiary(eId, isFromStateList: true),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        final beneficiaries =
            state.homeBeneficiaryListDto?.data?.beneficiaryList ?? [];
        return AppScaffold(
          isLoading: state.isDeletingBeneficiary,
          appBar: AppAppBar(title: 'home.chooseBeneficiary.title'.tr()),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                      child: AppStepper(
                        steps: [
                          'core.stepper.step1'.tr(),
                          'core.stepper.step2'.tr(),
                          'core.stepper.step3'.tr(),
                        ],
                        currentStep: 1,
                      ),
                    ),
                    _ContextSummaryCard(state: state),
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: AppButton(
                        text: 'buttons.addNewBeneficiary'.tr(),
                        onTap: () {
                          final selectedCommonDestinationItem =
                              state.selectedCommonDestinationItem;
                          final selectedTransferTypeItem =
                              state.selectedTransferTypeItem;
                          final selectedBankOrAgentItem =
                              state.selectedBankOrAgentItem;
                          if (selectedCommonDestinationItem == null ||
                              selectedTransferTypeItem == null ||
                              selectedBankOrAgentItem == null) {
                            AppNotify.toast(
                              'home.chooseBeneficiary.selectContextFirst'.tr(),
                            );
                            return;
                          }
                          context.read<BeneficiaryBloc>().add(
                            BeneficiaryEvent.prepareBeneficiaryForAddFromHome(
                              beneficiaryCountry: selectedCommonDestinationItem,
                              beneficiaryCurrency:
                                  selectedCommonDestinationItem,
                              beneficiaryTransferType: selectedTransferTypeItem,
                              beneficiaryBankOrAgent: selectedBankOrAgentItem,
                            ),
                          );
                          context.router.push(const BeneficiaryAddForm());
                        },
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Expanded(
                      child: state.isBeneficiaryListLoading
                          ? Center(
                              child: const AppProgressIndicator(
                                size: AppIndicatorSize.large,
                              ),
                            )
                          : beneficiaries.isEmpty
                          ? AppEmptyView(
                              key: const ValueKey('no-results'),
                              icon: Icons.search_off_rounded,
                              title: 'home.chooseBeneficiary.noBeneficiary'
                                  .tr(),
                            )
                          : ListView.separated(
                              physics: const AlwaysScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                              ).add(EdgeInsets.only(bottom: 20.h)),
                              itemCount: beneficiaries.length,
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 12.h),
                              itemBuilder: (context, index) {
                                final b = beneficiaries[index];
                                return _HomeBeneficiaryTile(
                                  key: ValueKey(b.eId ?? index),
                                  index: index,
                                  beneficiary: b,
                                  isSelected:
                                      state.selectedBeneficiaryIndex == index,
                                  onSelect: () => context.read<HomeBloc>().add(
                                    HomeEvent.selectedBeneficiaryIndexChanged(
                                      selectedBeneficiaryIndex: index,
                                    ),
                                  ),
                                  onMoreTap: () => _showActions(context, b),
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
              if (state.selectedBeneficiaryIndex != -1)
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 10.h,
                  ),
                  child: SafeArea(
                    child: AppButton(
                      text: 'buttons.continue'.tr(),
                      onTap: () {
                        if (beneficiaries.isEmpty) return;

                        final selectedBeneficiary =
                            beneficiaries[state.selectedBeneficiaryIndex];

                        final eId = selectedBeneficiary.eId ?? '';
                        final selectedPaymentMethod =
                            state.selectedPaymentMethodItem;
                        final isLastInputSource = state.isLastInputSource;
                        context.read<SummaryBloc>().add(
                          SummaryEvent.prepareSummary(
                            beneficiaryId: eId,
                            paymentMethodItem: selectedPaymentMethod,
                            isLastInputSource: isLastInputSource,
                            lastRawSourceAmount: isLastInputSource == true
                                ? state.lastRawSourceAmount
                                : null,
                            lastRawDestinationAmount: isLastInputSource == false
                                ? state.lastRawDestinationAmount
                                : null,
                          ),
                        );

                        context.router.push(SummaryRoute());
                      },
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

// ─── Context summary card ─────────────────────────────────────────────────────

class _ContextSummaryCard extends StatelessWidget {
  final HomeState state;

  const _ContextSummaryCard({required this.state});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    final destinationCountryName =
        state.selectedCommonDestinationItem?.titleName ?? '';
    final destinationCountryCode =
        state.selectedCommonDestinationItem?.titleCode ?? '';
    final transferTypeName = state.selectedTransferTypeItem?.titleName ?? '';
    final bankOrAgentName = state.selectedBankOrAgentItem?.titleName ?? '';

    return Container(
      padding: EdgeInsets.all(14).r,
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
      ).add(EdgeInsets.only(bottom: 12.h)),
      decoration: BoxDecoration(
        color: cs.secondaryContainer,
        border: Border.all(color: cs.outline, width: 0.5.w),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSvg(
                asset: AppGlobal.getFlagAsset(destinationCountryCode),
                width: 30.w,
                height: 30.w,
              ),
              SizedBox(height: 8.h),
              Text(
                'home.chooseBeneficiary.country'.tr(),
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 4.h),
              Text(
                destinationCountryName.toUpperCase(),
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
              color: cs.outline,
              dotSize: 0.75,
              dotLength: 2,
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
                  'home.chooseBeneficiary.transferType'.tr(),
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 4.h),
                Text(
                  transferTypeName,
                  style: context.typography.secondary.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8.h),
                AppDottedDivider(
                  color: cs.outline,
                  dotSize: 0.75,
                  dotLength: 2,
                  space: 5,
                  height: 8,
                ),
                SizedBox(height: 8.h),
                Text(
                  'home.chooseBeneficiary.bankOrAgent'.tr(),
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 4.h),
                Text(
                  bankOrAgentName,
                  style: context.typography.secondary.copyWith(
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

// ─── Single beneficiary tile for the home selection list ──────────────────────

class _HomeBeneficiaryTile extends StatelessWidget {
  final int index;
  final BeneficiaryList beneficiary;
  final bool isSelected;
  final VoidCallback onSelect;
  final VoidCallback onMoreTap;

  const _HomeBeneficiaryTile({
    super.key,
    required this.index,
    required this.beneficiary,
    required this.isSelected,
    required this.onSelect,
    required this.onMoreTap,
  });

  @override
  Widget build(BuildContext context) {
    final b = beneficiary;
    final name = [b.beneficiaryFirstName, b.beneficiaryLastName]
        .where((s) => s?.trim().isNotEmpty == true)
        .map((s) => s!.trim())
        .join(' ');

    return AppBeneficiaryTile(
      name: name,
      onTap: onSelect,
      onMoreTap: onMoreTap,
      rawAccountNumber: b.beneficiaryBankAccountNumber,
      disbursalMode: b.disbursalMode,
      countryCode: b.beneficiaryCountryCode,
      currencyCode: b.currencyCode,
      isSelected: isSelected,
      showRadio: true,
    );
  }
}

// ─── Actions helpers ──────────────────────────────────────────────────────────

void _showActions(BuildContext context, BeneficiaryList b) {
  final eId = b.eId ?? '';
  final appColors = context.appColors;

  AppActionSheet.show(
    context,
    title: 'beneficiaries.actions.title'.tr(),
    description: 'beneficiaries.actions.description'.tr(),
    items: [
      AppActionSheetItem(
        title: 'beneficiaries.actions.edit'.tr(),
        subtitle: 'beneficiaries.actions.editSubtitle'.tr(),
        icon: Icons.edit_outlined,
        color: appColors.statusInitiated,
        onTap: () {
          if (eId.isEmpty) return;
          context.read<BeneficiaryBloc>().add(
            BeneficiaryEvent.getBeneficiaryById(eId),
          );
          context.router.push(const BeneficiaryEditForm());
        },
      ),
      AppActionSheetItem(
        title: 'beneficiaries.actions.delete'.tr(),
        subtitle: 'beneficiaries.actions.deleteSubtitle'.tr(),
        icon: Icons.delete_outline_rounded,
        color: appColors.errorDark,
        isDestructive: true,
        onTap: () {
          if (eId.isEmpty) return;
          _showDeleteConfirmation(context, eId);
        },
      ),
    ],
  );
}

void _showDeleteConfirmation(BuildContext context, String eId) {
  final cs = Theme.of(context).colorScheme;
  final appColors = context.appColors;

  DialogHelper.show(
    context,
    type: AppDialogType.warning,
    title: 'beneficiaries.delete.confirmTitle'.tr(),
    message: 'beneficiaries.delete.confirmMessage'.tr(),
    showTwoButtons: true,
    primaryButton: AppButton(
      text: 'buttons.cancel'.tr(),
      backgroundColor: cs.secondaryContainer,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: cs.onPrimary,
      ),
      onTap: () => context.router.pop(),
    ),
    secondaryButton: AppButton(
      text: 'buttons.delete'.tr(),
      backgroundColor: appColors.errorDark,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: cs.onPrimary,
      ),
      onTap: () {
        context.router.pop();
        context.read<HomeBloc>().add(HomeEvent.deleteBeneficiary(eId));
      },
    ),
  );
}
