import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/summary/summary_bloc.dart';
import '../../core/bottom_sheet/app_send_money_sheet.dart';
import '../../core/button/edit_stack_button.dart';
import '../../core/send_money_card/app_send_money_card.dart';
import '../../core/shimmer/app_shimmer.dart';

class SummaryTransferDetailsView extends StatelessWidget {
  final SummaryState state;
  final FocusNode sourceAmountFocusNode;
  final FocusNode destinationAmountFocusNode;
  final TextEditingController sourceAmountController;
  final TextEditingController destinationAmountController;
  const SummaryTransferDetailsView({
    super.key,
    required this.state,
    required this.sourceAmountFocusNode,
    required this.destinationAmountFocusNode,
    required this.sourceAmountController,
    required this.destinationAmountController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Currency lists arrive progressively. Show a shimmer until BOTH resolve so
    // the card never partially renders with missing currency data.
    final isCurrencyLoading =
        state.summarySourceCurrencyListFailureOrSuccessOption.fold(
          () => true,
          (_) => false,
        ) ||
        state.summaryDestinationCurrencyListFailureOrSuccessOption.fold(
          () => true,
          (_) => false,
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'summary.transferDetails.title'.tr(),
          style: theme.textTheme.titleSmall?.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10.h),
        if (isCurrencyLoading)
          AppShimmer(
            height: 160.h,
            width: double.infinity,
            borderRadius: BorderRadius.circular(16.r),
          )
        else
          Stack(
            clipBehavior: Clip.none,
            children: [
              AppSendMoneyCard(
                showSelectable: false,
                readOnly: true,
                enableKeyboardActions: false,
                commonSourceSelectableDto: state.commonSourceSelectableDto,
                selectedCommonSourceItem: state.selectedCommonSourceItem,
                commonDestinationSelectableDto:
                    state.commonDestinationSelectableDto,
                selectedCommonDestinationItem:
                    state.selectedCommonDestinationItem,
                commonSendMoneyDto: state.commonSendMoneyDto,
                sourceAmountController: sourceAmountController,
                destinationAmountController: destinationAmountController,
              ),
              EditStackButton(
                onEditTap: () {
                  final bloc = context.read<SummaryBloc>();
                  AppSendMoneyBottomSheet.show(
                    context,
                    builder: (_) => BlocProvider.value(
                      value: bloc,
                      child: BlocBuilder<SummaryBloc, SummaryState>(
                        builder: (ctx, liveState) => AppSendMoneyBottomSheet(
                          isRateLoading: liveState.isRateLoading,
                          isSourceAmountCalculating:
                              liveState.isSourceAmountCalculating,
                          isDestinationAmountCalculating:
                              liveState.isDestinationAmountCalculating,
                          commonSourceSelectableDto:
                              liveState.commonSourceSelectableDto,
                          selectedCommonSourceItem:
                              liveState.selectedCommonSourceItem,
                          commonDestinationSelectableDto:
                              liveState.commonDestinationSelectableDto,
                          selectedCommonDestinationItem:
                              liveState.selectedCommonDestinationItem,
                          sourceAmountChanged: (p0) => bloc.add(
                            SummaryEvent.sourceAmountChanged(sourceAmount: p0),
                          ),
                          destinationAmountChanged: (p0) => bloc.add(
                            SummaryEvent.destinationAmountChanged(
                              destinationAmount: p0,
                            ),
                          ),
                          sourceAmountFocusNode: sourceAmountFocusNode,
                          destinationAmountFocusNode: destinationAmountFocusNode,
                          sourceAmountController: sourceAmountController,
                          destinationAmountController: destinationAmountController,
                          commonSendMoneyDto: liveState.commonSendMoneyDto,
                          onConfirm: () => ctx.router.pop(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
      ],
    );
  }
}