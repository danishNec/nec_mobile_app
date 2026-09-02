import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/common/common_selectable_dto.dart';
import '../../../domain/common/common_send_money_dto.dart';
import 'widgets/app_send_money_bottom_view.dart';
import 'widgets/app_send_money_rate_badge.dart';
import 'widgets/app_send_money_top_view.dart';

class AppSendMoneyCard extends HookWidget {
  // True only while the country→rate chain is in-flight. Drives the rate badge.
  final bool isRateLoading;
  // True while source amount is being recalculated (user typed destination).
  final bool isSourceAmountCalculating;
  // True while destination amount is being recalculated (user typed source).
  final bool isDestinationAmountCalculating;
  final bool showSelectable;
  final bool readOnly;
  final bool enableKeyboardActions;
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

  const AppSendMoneyCard({
    super.key,
    this.isRateLoading = false,
    this.isSourceAmountCalculating = false,
    this.isDestinationAmountCalculating = false,
    this.showSelectable = true,
    this.readOnly = false,
    this.enableKeyboardActions = true,
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
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final entranceCtrl = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );
    final shimmerCtrl = useAnimationController(
      duration: const Duration(milliseconds: 950),
    );

    useEffect(() {
      entranceCtrl.forward();
      final timer = Timer(
        const Duration(milliseconds: 250),
        shimmerCtrl.forward,
      );
      return timer.cancel;
    }, const []);

    final fadeAnim = useMemoized(
      () => CurvedAnimation(parent: entranceCtrl, curve: Curves.easeOut),
      const [],
    );
    final slideAnim = useMemoized(
      () =>
          Tween<Offset>(begin: const Offset(0, 0.05), end: Offset.zero).animate(
            CurvedAnimation(parent: entranceCtrl, curve: Curves.easeOutCubic),
          ),
      const [],
    );
    final shimmerAnim = useMemoized(
      () => Tween<double>(
        begin: 0,
        end: 1,
      ).animate(CurvedAnimation(parent: shimmerCtrl, curve: Curves.easeInOut)),
      const [],
    );

    return FadeTransition(
      opacity: fadeAnim,
      child: SlideTransition(
        position: slideAnim,
        child: Container(
          decoration: BoxDecoration(
            color: colorScheme.secondary,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: colorScheme.outline, width: 0.25.w),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  // Source field — pulses when source is being recalculated
                  // (i.e., user typed in destination field).
                  AppSendMoneyTopView(
                    readOnly: readOnly,
                    enableKeyboardActions: enableKeyboardActions,
                    isCalculating: isSourceAmountCalculating,
                    commonSourceSelectableDto: commonSourceSelectableDto,
                    selectedCommonSourceItem: selectedCommonSourceItem,
                    sourceAmountChanged: sourceAmountChanged,
                    sourceAmountFocusNode: sourceAmountFocusNode,
                    sourceAmountController: sourceAmountController,
                  ),
                  Divider(
                    color: colorScheme.outline,
                    thickness: 0.25.h,
                    height: 1.h,
                  ),
                  // Destination field — pulses when destination is being
                  // recalculated (i.e., user typed in source field).
                  AppSendMoneyBottomView(
                    readOnly: readOnly,
                    enableKeyboardActions: enableKeyboardActions,
                    showSelectable: showSelectable,
                    isCalculating:
                        isDestinationAmountCalculating ||
                        isRateLoading, // Also show calculating state when rate is loading, since rate affects destination amount.
                    commonDestinationSelectableDto:
                        commonDestinationSelectableDto,
                    selectedCommonDestinationItem:
                        selectedCommonDestinationItem,
                    destinationAmountChanged: destinationAmountChanged,
                    destinationAmountController: destinationAmountController,
                    destinationAmountFocusNode: destinationAmountFocusNode,
                    onSelectedDestinationCurrency:
                        onSelectedDestinationCurrency,
                  ),
                ],
              ),
              // One-shot shimmer sweep on entrance.
              Positioned.fill(
                child: IgnorePointer(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: RepaintBoundary(
                      child: AnimatedBuilder(
                        animation: shimmerAnim,
                        builder: (_, child) {
                          final t = shimmerAnim.value;
                          final opacity = (1.0 - (2.0 * t - 1.0).abs()).clamp(
                            0.0,
                            1.0,
                          );
                          final shimmerColor =
                              Theme.of(context).colorScheme.onSurface;
                          return Opacity(
                            opacity: opacity * 0.14,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-2.0 + t * 4.5, -0.5),
                                  end: Alignment(-0.5 + t * 4.5, 0.5),
                                  colors: [
                                    Colors.transparent,
                                    shimmerColor,
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                              child: const SizedBox.expand(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              // Rate badge: only shows loading during country-change chain.
              AppSendMoneyRateBadge(
                isCalculating: isRateLoading,
                selectedCommonSourceItem: selectedCommonSourceItem,
                selectedCommonDestinationItem: selectedCommonDestinationItem,
                commonSendMoneyDto: commonSendMoneyDto,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
