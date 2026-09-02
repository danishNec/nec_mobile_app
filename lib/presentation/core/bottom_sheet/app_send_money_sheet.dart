import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/common/common_selectable_dto.dart';
import '../../../domain/common/common_send_money_dto.dart';
import '../button/app_button.dart';
import '../send_money_card/app_send_money_card.dart';

class AppSendMoneyBottomSheet extends StatelessWidget {
  final bool showSelectable;
  final bool readOnly;
  final bool enableKeyboardActions;
  final bool isRateLoading;
  final bool isSourceAmountCalculating;
  final bool isDestinationAmountCalculating;
  final CommonSelectableDto? commonSourceSelectableDto;
  final CommonSelectableDto? commonDestinationSelectableDto;
  final CommonSelectableItem? selectedCommonSourceItem;
  final CommonSelectableItem? selectedCommonDestinationItem;
  final Function(String)? sourceAmountChanged;
  final Function(String)? destinationAmountChanged;
  final FocusNode? sourceAmountFocusNode;
  final FocusNode? destinationAmountFocusNode;
  final TextEditingController? sourceAmountController;
  final TextEditingController? destinationAmountController;
  final CommonSendMoneyDto? commonSendMoneyDto;
  final void Function(CommonSelectableItem)? onSelectedDestinationCurrency;
  final void Function()? onConfirm;

  const AppSendMoneyBottomSheet({
    super.key,
    this.showSelectable = true,
    this.readOnly = false,
    this.enableKeyboardActions = false,
    this.isRateLoading = false,
    this.isSourceAmountCalculating = false,
    this.isDestinationAmountCalculating = false,
    this.commonSourceSelectableDto,
    this.commonDestinationSelectableDto,
    this.selectedCommonSourceItem,
    this.selectedCommonDestinationItem,
    this.sourceAmountChanged,
    this.destinationAmountChanged,
    this.sourceAmountFocusNode,
    this.destinationAmountFocusNode,
    this.sourceAmountController,
    this.destinationAmountController,
    this.commonSendMoneyDto,
    this.onSelectedDestinationCurrency,
    this.onConfirm,
  });

  static Future<void> show(
    BuildContext context, {
    required WidgetBuilder builder,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder: builder,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SafeArea(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedPadding(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              margin: EdgeInsets.only(top: 55.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              decoration: BoxDecoration(
                color: colorScheme.secondary,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppSendMoneyCard(
                    showSelectable: false,
                    isRateLoading: isRateLoading,
                    isSourceAmountCalculating: isSourceAmountCalculating,
                    isDestinationAmountCalculating:
                        isDestinationAmountCalculating,
                    enableKeyboardActions: enableKeyboardActions,
                    commonSourceSelectableDto: commonSourceSelectableDto,
                    commonDestinationSelectableDto:
                        commonDestinationSelectableDto,
                    selectedCommonSourceItem: selectedCommonSourceItem,
                    selectedCommonDestinationItem:
                        selectedCommonDestinationItem,
                    sourceAmountFocusNode: sourceAmountFocusNode,
                    destinationAmountFocusNode: destinationAmountFocusNode,
                    sourceAmountController: sourceAmountController,
                    destinationAmountController: destinationAmountController,
                    sourceAmountChanged: sourceAmountChanged,
                    destinationAmountChanged: destinationAmountChanged,
                    commonSendMoneyDto: commonSendMoneyDto,
                  ),
                  SizedBox(height: 16.h),
                  AppButton(
                    text: 'buttons.confirm'.tr(),
                    isLoading: isSourceAmountCalculating ||
                        isDestinationAmountCalculating,
                    onTap: onConfirm,
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                radius: 24.w,
                backgroundColor: colorScheme.tertiary,
                child: IconButton(
                  icon: Icon(Icons.close_rounded, color: colorScheme.primary),
                  onPressed: (isSourceAmountCalculating ||
                          isDestinationAmountCalculating)
                      ? null
                      : () => context.router.pop(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
