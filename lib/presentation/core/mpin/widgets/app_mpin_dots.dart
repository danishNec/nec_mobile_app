import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_mpin.dart';
import '../../theme/app_theme_ext.dart';

class AppMpinDots extends HookWidget {
  const AppMpinDots({
    super.key,
    required this.mpin,
    required this.theme,
    required this.colors,
    required this.errorCount,
    required this.isError,
    required this.isSuccess,
    required this.isValidating,
  });

  final String mpin;
  final ThemeData theme;
  final ColorScheme colors;
  final int errorCount;
  final bool isError;
  final bool isSuccess;
  final bool isValidating;

  @override
  Widget build(BuildContext context) {
    final shakeController = useAnimationController(
      duration: const Duration(milliseconds: 600),
    );

    // Full progress value drives widget rebuilds on every shake frame
    final shakeProgress = useAnimation(
      Tween<double>(begin: 0.0, end: 1.0).animate(shakeController),
    );

    useEffect(() {
      if (errorCount > 0) {
        shakeController.forward(from: 0.0);
      }
      return null;
    }, [errorCount]);

    // Two-axis decaying shake: primary X displacement + organic Y trembling
    // Different frequencies and a phase offset ensure they never feel mechanical
    final shakeX =
        math.sin(shakeProgress * math.pi * 7) * 12.0 * (1.0 - shakeProgress);
    final shakeY =
        math.sin(shakeProgress * math.pi * 9 + 0.5) *
        3.0 *
        (1.0 - shakeProgress);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Transform.translate(
        offset: Offset(shakeX, shakeY),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(AppMpin.mpinLength, (index) {
            return _AnimatedDot(
              filled: index < mpin.length,
              // Cursor: the next slot to be filled, hidden during feedback states
              isActive:
                  index == mpin.length &&
                  !isError &&
                  !isSuccess &&
                  !isValidating,
              isError: isError,
              isSuccess: isSuccess,
              isValidating: isValidating,
              index: index,
              theme: theme,
              colors: colors,
            );
          }),
        ),
      ),
    );
  }
}

class _AnimatedDot extends HookWidget {
  const _AnimatedDot({
    required this.filled,
    required this.isActive,
    required this.isError,
    required this.isSuccess,
    required this.isValidating,
    required this.index,
    required this.theme,
    required this.colors,
  });

  final bool filled;
  final bool isActive;
  final bool isError;
  final bool isSuccess;
  final bool isValidating;
  final int index;
  final ThemeData theme;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    // ── Fill bounce ───────────────────────────────────────────────────────────
    final fillController = useAnimationController(
      duration: const Duration(milliseconds: 280),
    );

    final scaleAnimation = useMemoized(
      () => TweenSequence<double>([
        TweenSequenceItem(
          tween: Tween(
            begin: 1.0,
            end: 1.28,
          ).chain(CurveTween(curve: Curves.easeOut)),
          weight: 35,
        ),
        TweenSequenceItem(
          tween: Tween(
            begin: 1.28,
            end: 1.0,
          ).chain(CurveTween(curve: Curves.elasticOut)),
          weight: 65,
        ),
      ]).animate(fillController),
      [fillController],
    );

    final scaleValue = useAnimation(scaleAnimation);

    useEffect(() {
      if (filled) {
        fillController.forward(from: 0.0);
      } else {
        fillController.animateTo(
          0.0,
          duration: const Duration(milliseconds: 120),
          curve: Curves.easeIn,
        );
      }
      return null;
    }, [filled]);

    // ── Validating wave-pulse ─────────────────────────────────────────────────
    // Loops a 0→1 value; each dot uses a phase offset to create a traveling wave
    final pulseController = useAnimationController(
      duration: const Duration(milliseconds: 900),
    );

    final pulseValue = useAnimation(
      Tween<double>(begin: 0.0, end: 1.0).animate(pulseController),
    );

    useEffect(() {
      if (isValidating && filled) {
        pulseController.repeat();
      } else {
        pulseController
          ..stop()
          ..reset();
      }
      return null;
    }, [isValidating, filled]);

    // ── Active cursor pulse ───────────────────────────────────────────────────
    // Animates forward/reverse to breathe the border on the next empty slot
    final activePulseController = useAnimationController(
      duration: const Duration(milliseconds: 1100),
    );

    final activePulseValue = useAnimation(
      Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: activePulseController, curve: Curves.easeInOut),
      ),
    );

    useEffect(() {
      if (isActive) {
        activePulseController.repeat(reverse: true);
      } else {
        activePulseController
          ..stop()
          ..reset();
      }
      return null;
    }, [isActive]);

    // ── Staggered success cascade ─────────────────────────────────────────────
    // Dot 0 turns green at 0ms, dot 1 at 80ms, …, dot 3 at 240ms
    final isSuccessActive = useState(false);

    useEffect(() {
      Timer? t;
      if (isSuccess) {
        t = Timer(Duration(milliseconds: index * 80), () {
          isSuccessActive.value = true;
        });
      } else {
        isSuccessActive.value = false;
      }
      return t?.cancel;
    }, [isSuccess]);

    // ── Staggered error cascade ───────────────────────────────────────────────
    // Very short stagger (30ms/dot) — fast enough to feel simultaneous yet alive
    final isErrorActive = useState(false);

    useEffect(() {
      Timer? t;
      if (isError) {
        t = Timer(Duration(milliseconds: index * 30), () {
          isErrorActive.value = true;
        });
      } else {
        isErrorActive.value = false;
      }
      return t?.cancel;
    }, [isError]);

    // ── Color / decoration ────────────────────────────────────────────────────
    final Color bgColor;
    final Color borderColor;
    final double borderWidth;
    final Color iconColor;
    final List<BoxShadow> shadows;

    final appColors = context.appColors;
    if (isSuccessActive.value) {
      bgColor = appColors.success.withValues(alpha: 0.12);
      borderColor = appColors.success;
      borderWidth = 2.0;
      iconColor = appColors.successDark;
      shadows = [
        BoxShadow(
          color: appColors.success.withValues(alpha: 0.30),
          blurRadius: 10,
          spreadRadius: 1,
        ),
      ];
    } else if (isErrorActive.value) {
      bgColor = appColors.error.withValues(alpha: 0.10);
      borderColor = appColors.error;
      borderWidth = 2.0;
      iconColor = appColors.errorDark;
      shadows = [
        BoxShadow(color: appColors.error.withValues(alpha: 0.25), blurRadius: 8),
      ];
    } else if (filled) {
      bgColor = colors.tertiary.withValues(alpha: 0.15);
      borderColor = colors.tertiary;
      borderWidth = 2.0;
      iconColor = colors.tertiary;
      shadows = [
        BoxShadow(color: colors.tertiary.withValues(alpha: 0.20), blurRadius: 8),
      ];
    } else if (isActive) {
      // Cursor slot: border breathes toward accent color
      bgColor = colors.secondary;
      borderColor = Color.lerp(
        colors.outline,
        colors.tertiary,
        activePulseValue * 0.65,
      )!;
      borderWidth = 1.0 + activePulseValue;
      iconColor = colors.onSurface.withValues(alpha: 0.28);
      shadows = const [];
    } else {
      bgColor = colors.secondary;
      borderColor = colors.outline;
      borderWidth = 1.0;
      iconColor = colors.onSurface.withValues(alpha: 0.28);
      shadows = const [];
    }

    // ── Validating wave opacity ───────────────────────────────────────────────
    // Each dot's phase is shifted by index * 0.25 so the pulse travels left→right
    // Range: sin(x) ∈ [-1, 1] → (0.5 + 0.5*sin) ∈ [0, 1] → opacity ∈ [0.55, 1.0]
    final validatingOpacity = (isValidating && filled)
        ? 0.55 +
              0.45 *
                  (0.5 +
                      0.5 * math.sin((pulseValue - index * 0.25) * 2 * math.pi))
        : 1.0;

    return Opacity(
      opacity: validatingOpacity,
      child: Transform.scale(
        scale: (filled && !isErrorActive.value && !isSuccessActive.value)
            ? scaleValue
            : 1.0,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOut,
          width: 52.w,
          height: 52.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: borderColor, width: borderWidth),
            boxShadow: shadows,
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            switchInCurve: Curves.easeOut,
            switchOutCurve: Curves.easeIn,
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: FadeTransition(opacity: animation, child: child),
            ),
            child: filled
                ? Icon(
                    isSuccessActive.value ? Icons.check_rounded : Icons.circle,
                    key: ValueKey(
                      '${isSuccessActive.value}_${isErrorActive.value}',
                    ),
                    size: isSuccessActive.value ? 20.sp : 12.sp,
                    color: iconColor,
                  )
                : isActive
                    ? Text(
                        '|',
                        key: const ValueKey('cursor'),
                        style: TextStyle(
                          color: colors.tertiary,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w200,
                          height: 1.0,
                        ),
                      )
                    : Icon(
                        Icons.circle,
                        key: const ValueKey('empty'),
                        size: 10.sp,
                        color: iconColor,
                      ),
          ),
        ),
      ),
    );
  }
}
