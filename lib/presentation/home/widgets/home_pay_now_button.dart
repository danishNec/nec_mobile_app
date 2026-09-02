import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_theme_ext.dart';

enum _PayState { idle, calculating, ready }

class HomePayNowButton extends HookWidget {
  final bool isCalculating;
  final bool isReady;
  final VoidCallback? onTap;
  final VoidCallback? onIdleTap;

  const HomePayNowButton({
    super.key,
    required this.isCalculating,
    required this.isReady,
    this.onTap,
    this.onIdleTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final payState = isCalculating
        ? _PayState.calculating
        : isReady
        ? _PayState.ready
        : _PayState.idle;

    // One-shot mount
    final mountCtrl = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );
    useEffect(() {
      final timer = Timer(const Duration(milliseconds: 100), mountCtrl.forward);
      return timer.cancel;
    }, const []);

    final pressCtrl = useAnimationController(
      duration: const Duration(milliseconds: 75),
      reverseDuration: const Duration(milliseconds: 280),
    );
    final glowCtrl = useAnimationController(
      duration: const Duration(milliseconds: 1800),
    );
    // 3200ms cycle — sweep in first 30%, rest 70%
    final shimmerCtrl = useAnimationController(
      duration: const Duration(milliseconds: 3200),
    );

    useEffect(() {
      switch (payState) {
        case _PayState.ready:
          glowCtrl.repeat(reverse: true);
          shimmerCtrl.repeat();
        case _PayState.calculating:
        case _PayState.idle:
          glowCtrl
            ..stop()
            ..value = 0.0;
          shimmerCtrl.stop();
          pressCtrl.reverse();
      }
      return null;
    }, [payState]);

    final mountAnim = useMemoized(
      () => CurvedAnimation(parent: mountCtrl, curve: Curves.easeOutCubic),
      const [],
    );
    final pressScale = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: 0.962,
      ).animate(CurvedAnimation(parent: pressCtrl, curve: Curves.easeOut)),
      const [],
    );
    final glowAnim = useMemoized(
      () => Tween<double>(
        begin: 0.22,
        end: 1.0,
      ).animate(CurvedAnimation(parent: glowCtrl, curve: Curves.easeInOut)),
      const [],
    );
    final arrowOffset = useMemoized(
      () => Tween<double>(
        begin: 0.0,
        end: 8.0,
      ).animate(CurvedAnimation(parent: pressCtrl, curve: Curves.easeOut)),
      const [],
    );

    // Brand-aware primary color and contrasting foreground
    // Light: deep navy (#002582), Dark: golden yellow (#FFD503)
    final primary = colorScheme.tertiary;
    final onPrimary = colorScheme.primary;

    return AnimatedBuilder(
      animation: mountCtrl,
      builder: (_, child) => Opacity(
        opacity: mountAnim.value,
        child: Transform.translate(
          offset: Offset(0, 16.h * (1.0 - mountAnim.value)),
          child: child,
        ),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: payState == _PayState.ready
            ? (_) {
                pressCtrl.forward();
                HapticFeedback.mediumImpact();
              }
            : payState == _PayState.idle
            ? (_) => HapticFeedback.lightImpact()
            : null,
        onTapUp: payState == _PayState.ready
            ? (_) {
                pressCtrl.reverse();
                onTap?.call();
              }
            : payState == _PayState.idle
            ? (_) => onIdleTap?.call()
            : null,
        onTapCancel: payState == _PayState.ready
            ? () => pressCtrl.reverse()
            : null,
        child: RepaintBoundary(
          child: AnimatedBuilder(
            animation: Listenable.merge([pressCtrl, glowCtrl, shimmerCtrl]),
            builder: (context, child) {
              final g = glowAnim.value;
              final sweepT = (shimmerCtrl.value / 0.30).clamp(0.0, 1.0);
              final shimmerOpacity = payState == _PayState.ready
                  ? (1.0 - (2.0 * sweepT - 1.0).abs()).clamp(0.0, 1.0) * 0.22
                  : 0.0;

              // Each state gets its own gradient personality
              final (Color c0, Color c1) = switch (payState) {
                _PayState.ready =>
                  isDark
                      ? (primary, primary.withValues(alpha: 0.85))
                      : (primary.withValues(alpha: 0.85), primary),
                _PayState.calculating => (
                  primary.withValues(alpha: 0.68),
                  primary.withValues(alpha: 0.52),
                ),
                _PayState.idle => (
                  colorScheme.outline.withValues(alpha: isDark ? 0.16 : 0.10),
                  colorScheme.outline.withValues(alpha: isDark ? 0.10 : 0.06),
                ),
              };

              return Transform.scale(
                scale: pressScale.value,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 420),
                  curve: Curves.easeInOut,
                  width: double.infinity,
                  height: 58.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [c0, c1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                    border: payState == _PayState.idle
                        ? Border.all(
                            color: colorScheme.outline.withValues(alpha: 0.45),
                            width: 1.2,
                          )
                        : payState == _PayState.ready
                        ? Border.all(
                            color: onPrimary.withValues(alpha: 0.15),
                            width: 1.0,
                          )
                        : null,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Stack(
                      children: [
                        // Top-edge gloss highlight (always on ready/calculating)
                        if (payState != _PayState.idle)
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            height: 28.h,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    context.colorScheme.onPrimary.withValues(alpha: 0.13),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        // Shimmer sweep
                        Positioned.fill(
                          child: Opacity(
                            opacity: shimmerOpacity,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-2.5 + sweepT * 5.5, -0.3),
                                  end: Alignment(-1.0 + sweepT * 5.5, 0.3),
                                  colors: [
                                    Colors.transparent,
                                    context.colorScheme.onPrimary,
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Content
                        Center(
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 280),
                            switchInCurve: Curves.easeOutCubic,
                            switchOutCurve: Curves.easeIn,
                            transitionBuilder: (child, anim) => FadeTransition(
                              opacity: anim,
                              child: ScaleTransition(
                                scale: Tween<double>(
                                  begin: 0.78,
                                  end: 1.0,
                                ).animate(anim),
                                child: child,
                              ),
                            ),
                            child: switch (payState) {
                              _PayState.idle => _IdleLabel(
                                key: const ValueKey('idle'),
                                colorScheme: colorScheme,
                              ),
                              _PayState.calculating => _CalculatingLabel(
                                key: const ValueKey('calc'),
                                onPrimary: onPrimary,
                              ),
                              _PayState.ready => _ReadyLabel(
                                key: const ValueKey('ready'),
                                arrowOffset: arrowOffset.value,
                                onPrimary: onPrimary,
                              ),
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// ── State labels ──────────────────────────────────────────────────────────────

class _IdleLabel extends StatelessWidget {
  final ColorScheme colorScheme;
  const _IdleLabel({super.key, required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.touch_app_rounded,
          size: 16.sp,
          color: colorScheme.onPrimary.withValues(alpha: 0.9),
        ),
        SizedBox(width: 8.w),
        Text(
          'home.payNow.enterAmount'.tr(),
          style: context.typography.secondaryMedium.copyWith(
            color: colorScheme.onPrimary,
            letterSpacing: 0.1,
          ),
        ),
      ],
    );
  }
}

class _CalculatingLabel extends StatelessWidget {
  final Color onPrimary;
  const _CalculatingLabel({super.key, required this.onPrimary});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 17.w,
          height: 17.w,
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation(
              onPrimary.withValues(alpha: 0.9),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          'home.payNow.calculating'.tr(),
          style: context.typography.subheading.copyWith(
            color: onPrimary.withValues(alpha: 0.9),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _ReadyLabel extends StatelessWidget {
  final double arrowOffset;
  final Color onPrimary;
  const _ReadyLabel({
    super.key,
    required this.arrowOffset,
    required this.onPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Left payment icon badge
        Container(
          width: 30.w,
          height: 30.w,
          decoration: BoxDecoration(
            color: onPrimary.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(9.r),
          ),
          child: Center(
            child: Icon(Icons.send_rounded, color: onPrimary, size: 15.sp),
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          'home.payNow.button'.tr(),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: onPrimary,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.6,
          ),
        ),
        SizedBox(width: 10.w),
        Transform.translate(
          offset: Offset(arrowOffset, 0),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: onPrimary.withValues(alpha: 0.85),
            size: 19.sp,
          ),
        ),
      ],
    );
  }
}
