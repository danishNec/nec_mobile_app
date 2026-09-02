import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../../../../domain/common/common_selectable_dto.dart';
import '../../../../domain/core/di/injection.dart';
import '../../../routes/app_routes.dart';
import '../../../routes/app_routes.gr.dart';
import '../../formatter/universal_number_formatter.dart';
import '../../global/app_global.dart';
import '../../notify/app_notify.dart';
import '../../svg/app_svg.dart';

class AppSendMoneyBottomView extends HookWidget {
  final bool readOnly;
  final bool enableKeyboardActions;
  final bool showSelectable;
  // True when destination is being recalculated (user typed source).
  final bool isCalculating;
  final CommonSelectableDto? commonDestinationSelectableDto;
  final CommonSelectableItem? selectedCommonDestinationItem;
  final Function(String)? destinationAmountChanged;
  final FocusNode? destinationAmountFocusNode;
  final TextEditingController? destinationAmountController;
  final void Function(CommonSelectableItem)? onSelectedDestinationCurrency;
  final Widget? currencyPickerWidget;
  const AppSendMoneyBottomView({
    super.key,
    this.readOnly = false,
    this.enableKeyboardActions = true,
    this.showSelectable = true,
    this.isCalculating = false,
    this.commonDestinationSelectableDto,
    this.selectedCommonDestinationItem,
    this.destinationAmountChanged,
    this.destinationAmountFocusNode,
    this.destinationAmountController,
    this.onSelectedDestinationCurrency,
    this.currencyPickerWidget,
  });

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Pulse animation for the destination field while it calculates.
    final pulseCtrl = useAnimationController(
      duration: const Duration(milliseconds: 600),
    );
    final pulseAnim = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: 0.35,
      ).animate(CurvedAnimation(parent: pulseCtrl, curve: Curves.easeInOut)),
      const [],
    );

    useEffect(() {
      if (isCalculating) {
        pulseCtrl.repeat(reverse: true);
      } else {
        pulseCtrl
          ..stop()
          ..animateTo(0.0, duration: const Duration(milliseconds: 150));
      }
      return null;
    }, [isCalculating]);

    final field = AppSendMoneyBottomField(
      readOnly: readOnly,
      showSelectable: showSelectable,
      commonDestinationSelectableDto: commonDestinationSelectableDto,
      selectedCommonDestinationItem: selectedCommonDestinationItem,
      destinationAmountChanged: destinationAmountChanged,
      destinationAmountFocusNode: destinationAmountFocusNode,
      destinationAmountController: destinationAmountController,
      onSelectedDestinationCurrency: onSelectedDestinationCurrency,
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RepaintBoundary(
                child: AnimatedBuilder(
                  animation: pulseCtrl,
                  builder: (_, child) =>
                      Opacity(opacity: pulseAnim.value, child: child),
                  child: enableKeyboardActions
                      ? KeyboardActions(
                          config: AppGlobal.buildKeyboardConfigs(
                            context: context,
                            focusNode: destinationAmountFocusNode,
                          ),
                          autoScroll: false,
                          disableScroll: true,
                          child: field,
                        )
                      : field,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 16.w,
                  top: 4.h,
                  bottom: 16.h,
                ),
                child: Text(
                  selectedCommonDestinationItem?.titleName ?? '',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.tertiary,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (currencyPickerWidget != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: currencyPickerWidget,
          )
        else
          _CurrencyButton(
            showSelectable: showSelectable,
            selectedCommonDestinationItem: selectedCommonDestinationItem,
            onTap: () {
              if (isCalculating) {
                AppNotify.toast(
                  'core.sendMoney.calculating'.tr(),
                  type: AppToastType.info,
                  position: AppToastPosition.top,
                );
                return;
              }
              HapticFeedback.lightImpact();
              router.push(
                AppSelectableRoute(
                  title: 'core.sendMoney.currencyOrCountry'.tr(),
                  commonSelectableDto: commonDestinationSelectableDto,
                  isShowLeading: true,
                  isShowTrailing: true,
                  initialSelectedItem: selectedCommonDestinationItem,
                  onSelected: onSelectedDestinationCurrency,
                ),
              );
            },
          ),
      ],
    );
  }
}

class _CurrencyButton extends HookWidget {
  final bool showSelectable;
  final CommonSelectableItem? selectedCommonDestinationItem;
  final VoidCallback onTap;

  const _CurrencyButton({
    required this.showSelectable,
    required this.onTap,
    this.selectedCommonDestinationItem,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final pressCtrl = useAnimationController(
      duration: const Duration(milliseconds: 90),
      reverseDuration: const Duration(milliseconds: 200),
    );
    final fadeCtrl = useAnimationController(
      duration: const Duration(milliseconds: 200),
      initialValue: 1.0,
    );

    final pressScale = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: 0.91,
      ).animate(CurvedAnimation(parent: pressCtrl, curve: Curves.easeInOut)),
      const [],
    );
    final fadeAnim = useMemoized(
      () => CurvedAnimation(parent: fadeCtrl, curve: Curves.easeOut),
      const [],
    );

    final prevCodeRef = useRef<String?>(null);
    final currentCode = selectedCommonDestinationItem?.trailingCode;

    useEffect(() {
      final prev = prevCodeRef.value;
      prevCodeRef.value = currentCode;
      if (prev != null && prev != currentCode) {
        fadeCtrl
          ..stop()
          ..value = 0.0
          ..forward();
      }
      return null;
    }, [currentCode]);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: showSelectable ? (_) => pressCtrl.forward() : null,
      onTapUp: showSelectable
          ? (_) {
              pressCtrl.reverse();
              onTap();
            }
          : null,
      onTapCancel: showSelectable ? () => pressCtrl.reverse() : null,
      child: ScaleTransition(
        scale: pressScale,
        child: FadeTransition(
          opacity: fadeAnim,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppSvg(
                  asset: AppGlobal.getFlagAsset(
                    selectedCommonDestinationItem?.titleCode?.toUpperCase(),
                  ),
                  width: 30.w,
                  height: 25.w,
                  fit: BoxFit.contain,
                  showOutline: true,
                ),
                SizedBox(width: 10.w),
                Text(
                  selectedCommonDestinationItem?.trailingCode?.toUpperCase() ??
                      '',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onPrimary,
                  ),
                ),
                if (showSelectable) ...[
                  SizedBox(width: 4.w),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: colorScheme.onPrimary,
                    size: 24.w,
                  ),
                ],
                if (!showSelectable) ...[SizedBox(width: 28.w)],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppSendMoneyBottomField extends StatelessWidget {
  final bool readOnly;
  final bool showSelectable;
  final CommonSelectableDto? commonDestinationSelectableDto;
  final CommonSelectableItem? selectedCommonDestinationItem;
  final Function(String)? destinationAmountChanged;
  final FocusNode? destinationAmountFocusNode;
  final TextEditingController? destinationAmountController;
  final void Function(CommonSelectableItem)? onSelectedDestinationCurrency;
  const AppSendMoneyBottomField({
    super.key,
    this.readOnly = false,
    this.showSelectable = true,
    this.commonDestinationSelectableDto,
    this.selectedCommonDestinationItem,
    this.destinationAmountChanged,
    this.destinationAmountFocusNode,
    this.destinationAmountController,
    this.onSelectedDestinationCurrency,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return TextField(
      controller: destinationAmountController,
      onChanged: (value) {
        String numericValue = value.replaceAll(',', '');
        destinationAmountChanged?.call(numericValue);
      },
      cursorColor: colorScheme.tertiary,
      focusNode: destinationAmountFocusNode,
      autofocus: false,
      readOnly: readOnly,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        hintText: '0.000',
        label: Text(
          'core.sendMoney.bottomField.label',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ).tr(),
        labelStyle: theme.textTheme.bodyMedium?.copyWith(
          fontSize: 16.sp,
          color: colorScheme.onPrimary,
        ),
        hintStyle: theme.textTheme.bodyMedium?.copyWith(
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
          color: colorScheme.onPrimary,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ).add(EdgeInsets.only(top: 20.h)),
      ),
      inputFormatters: [UniversalNumberFormatter(limitDigits: false)],
      style: theme.textTheme.bodyMedium?.copyWith(
        fontSize: 22.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.onPrimary,
      ),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
    );
  }
}
