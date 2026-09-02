import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMpinDigitKey extends HookWidget {
  const AppMpinDigitKey({
    super.key,
    required this.digit,
    required this.onTap,
    required this.theme,
    required this.colors,
  });

  final String digit;
  final void Function(String) onTap;
  final ThemeData theme;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    final pressController = useAnimationController(
      duration: const Duration(milliseconds: 60),
      reverseDuration: const Duration(milliseconds: 200),
    );

    final scale = useAnimation(
      Tween<double>(begin: 1.0, end: 0.85).animate(
        CurvedAnimation(parent: pressController, curve: Curves.easeOut),
      ),
    );

    final p = pressController.value;
    final shadowAlpha = 0.12 * (1.0 - p);
    final shadowBlur = 8.0 * (1.0 - p);
    final shadowOffsetY = 3.0 * (1.0 - p);

    // No border at rest; yellow accent flashes on press
    final borderColor = Color.lerp(Colors.transparent, colors.tertiary, p * 0.80)!;
    final surfaceColor = Color.lerp(colors.secondary, colors.tertiary, p * 0.18)!;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) {
        pressController.forward();
        HapticFeedback.lightImpact();
      },
      onTapUp: (_) {
        pressController.reverse();
        onTap(digit);
      },
      onTapCancel: () => pressController.reverse(),
      child: Transform.scale(
        scale: scale,
        child: Container(
          width: 100.w,
          height: 66.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: surfaceColor,
            borderRadius: BorderRadius.circular(22.r),
            border: Border.all(color: borderColor, width: 1.5.w),
            boxShadow: [
              BoxShadow(
                color: colors.shadow.withValues(alpha: shadowAlpha),
                blurRadius: shadowBlur,
                offset: Offset(0, shadowOffsetY),
              ),
            ],
          ),
          child: Text(
            digit,
            style: theme.textTheme.titleLarge?.copyWith(
              fontSize: 26.sp,
              fontWeight: FontWeight.w500,
              color: colors.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
