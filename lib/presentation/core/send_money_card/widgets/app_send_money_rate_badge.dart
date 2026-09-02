import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../domain/common/common_selectable_dto.dart';
import '../../../../domain/common/common_send_money_dto.dart';

class AppSendMoneyRateBadge extends HookWidget {
  final bool isCalculating;
  final CommonSelectableItem? selectedCommonSourceItem;
  final CommonSelectableItem? selectedCommonDestinationItem;
  final CommonSendMoneyDto? commonSendMoneyDto;

  const AppSendMoneyRateBadge({
    super.key,
    this.isCalculating = false,
    this.selectedCommonSourceItem,
    this.selectedCommonDestinationItem,
    this.commonSendMoneyDto,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final mountCtrl = useAnimationController(
      duration: const Duration(milliseconds: 650),
    );
    final pulseCtrl = useAnimationController(
      duration: const Duration(milliseconds: 850),
    );

    final mountScale = useMemoized(
      () => Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(parent: mountCtrl, curve: Curves.elasticOut)),
      const [],
    );
    final pulseScale = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: 1.07,
      ).animate(CurvedAnimation(parent: pulseCtrl, curve: Curves.easeInOut)),
      const [],
    );

    // Mount: start entrance, conditionally start pulse.
    useEffect(() {
      mountCtrl.forward();
      if (isCalculating) pulseCtrl.repeat(reverse: true);
      return null;
    }, const []);

    // Guard flag so the effect below skips the initial fire.
    final skipFirst = useRef(true);
    useEffect(() {
      if (skipFirst.value) {
        skipFirst.value = false;
        return null;
      }
      if (isCalculating) {
        pulseCtrl.repeat(reverse: true);
      } else {
        // Rate arrived — snap pulse back to neutral, then bounce the badge.
        pulseCtrl.stop();
        pulseCtrl.value = 0.0;
        mountCtrl
          ..reset()
          ..forward();
      }
      return null;
    }, [isCalculating]);

    final dto = commonSendMoneyDto;
    final sourceCode = selectedCommonSourceItem?.trailingCode;
    final destinationCode = selectedCommonDestinationItem?.trailingCode;
    final rate = dto?.displayRate;
    final operator = dto?.rateOperator;

    // U+202A / U+202C: wrap with LTR embedding so the rate reads
    // left-to-right in RTL locales (e.g. Arabic).
    String ltr(String s) =>
        '${String.fromCharCode(0x202A)}$s${String.fromCharCode(0x202C)}';

    final rateText =
        (rate != null && sourceCode != null && destinationCode != null)
        ? (operator == '/'
              ? ltr(
                  '1 ${destinationCode.toUpperCase()} = ${rate.toStringAsFixed(2)} ${sourceCode.toUpperCase()}',
                )
              : ltr(
                  '1 ${sourceCode.toUpperCase()} = ${rate.toStringAsFixed(2)} ${destinationCode.toUpperCase()}',
                ))
        : 'core.sendMoney.rateIsNotAvailable'.tr();

    return Positioned.fill(
      child: Align(
        alignment: Alignment.center,
        // RepaintBoundary isolates the continuous pulse from repainting the card.
        child: RepaintBoundary(
          child: ScaleTransition(
            scale: mountScale,
            child: AnimatedBuilder(
              animation: pulseCtrl,
              builder: (_, child) =>
                  Transform.scale(scale: pulseScale.value, child: child),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(color: colorScheme.outline, width: 0.5.w),
                ),
                child: isCalculating
                    ? SizedBox(
                        width: 15.w,
                        height: 15.h,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.w,
                          color: colorScheme.onPrimary,
                        ),
                      )
                    : AnimatedSwitcher(
                        duration: const Duration(milliseconds: 350),
                        // easeOutCubic stays strictly within [0, 1] — no assertion errors.
                        switchInCurve: Curves.easeOutCubic,
                        switchOutCurve: Curves.easeIn,
                        transitionBuilder: (child, animation) => FadeTransition(
                          opacity: animation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, 0.4),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          ),
                        ),
                        child: Text(
                          rateText,
                          key: ValueKey(rateText),
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
