import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import '../../../../domain/common/common_selectable_dto.dart';
import '../../formatter/universal_number_formatter.dart';
import '../../global/app_global.dart';
import '../../svg/app_svg.dart';

class AppSendMoneyTopView extends HookWidget {
  final bool readOnly;
  final bool enableKeyboardActions;
  // True when source is being recalculated (user typed destination).
  final bool isCalculating;
  final CommonSelectableDto? commonSourceSelectableDto;
  final CommonSelectableItem? selectedCommonSourceItem;
  final Function(String)? sourceAmountChanged;
  final FocusNode? sourceAmountFocusNode;
  final TextEditingController? sourceAmountController;
  const AppSendMoneyTopView({
    super.key,
    this.readOnly = false,
    this.enableKeyboardActions = true,
    this.isCalculating = false,
    this.commonSourceSelectableDto,
    this.selectedCommonSourceItem,
    this.sourceAmountChanged,
    this.sourceAmountFocusNode,
    this.sourceAmountController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Pulse animation: controller at 0 → tween begin (1.0 opacity, fully visible).
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

    final field = AppSendMoneyTopField(
      readOnly: readOnly,
      commonSourceSelectableDto: commonSourceSelectableDto,
      selectedCommonSourceItem: selectedCommonSourceItem,
      sourceAmountChanged: sourceAmountChanged,
      sourceAmountFocusNode: sourceAmountFocusNode,
      sourceAmountController: sourceAmountController,
    );

    return Column(
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
                      focusNode: sourceAmountFocusNode,
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
            bottom: 20.h,
          ),
          child: Text(
            selectedCommonSourceItem?.titleName ?? '',
            style: theme.textTheme.bodySmall?.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: colorScheme.tertiary,
            ),
          ),
        ),
      ],
    );
  }
}

class AppSendMoneyTopField extends StatelessWidget {
  final bool readOnly;
  final CommonSelectableDto? commonSourceSelectableDto;
  final CommonSelectableItem? selectedCommonSourceItem;
  final Function(String)? sourceAmountChanged;
  final FocusNode? sourceAmountFocusNode;
  final TextEditingController? sourceAmountController;
  const AppSendMoneyTopField({
    super.key,
    this.readOnly = false,
    this.commonSourceSelectableDto,
    this.selectedCommonSourceItem,
    this.sourceAmountChanged,
    this.sourceAmountFocusNode,
    this.sourceAmountController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return TextField(
      controller: sourceAmountController,
      onChanged: (value) {
        String numericValue = value.replaceAll(',', '');
        sourceAmountChanged?.call(numericValue);
      },
      cursorColor: colorScheme.tertiary,
      focusNode: sourceAmountFocusNode,
      autofocus: false,
      readOnly: readOnly,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        hintText: '0.000',
        label: Text('core.sendMoney.topField.label').tr(),
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
        suffix: AnimatedSwitcher(
          duration: const Duration(milliseconds: 280),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeIn,
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.85, end: 1.0).animate(animation),
              child: child,
            ),
          ),
          child: Padding(
            key: ValueKey(selectedCommonSourceItem?.trailingCode),
            padding: EdgeInsets.only(right: 25.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppSvg(
                  asset: AppGlobal.getFlagAsset(
                    selectedCommonSourceItem?.titleCode,
                  ),
                  width: 30.w,
                  height: 25.w,
                  fit: BoxFit.contain,
                  showOutline: true,
                ),
                SizedBox(width: 10.w),
                Text(
                  selectedCommonSourceItem?.trailingCode?.toUpperCase() ?? '',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ).add(EdgeInsets.only(top: 16.h)),
      ),
      inputFormatters: [UniversalNumberFormatter(limitDigits: true)],
      style: theme.textTheme.bodyMedium?.copyWith(
        fontSize: 22.sp,
        fontWeight: FontWeight.w600,
        color: colorScheme.onPrimary,
      ),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
    );
  }
}
