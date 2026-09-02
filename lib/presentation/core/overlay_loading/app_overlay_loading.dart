import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../progress/app_progress_indicator.dart';

/// Full-screen overlay loader that sits inside a [Stack] as a
/// [Positioned.fill] child.
///
/// Renders a blurred, semi-transparent backdrop with a glass card and the
/// standardised [AppProgressIndicator]. A smooth fade-in + card scale-up
/// animation plays on widget mount.
///
/// **Usage inside a Stack:**
/// ```dart
/// Stack(
///   children: [
///     body,
///     if (state.isLoading) const AppOverlayLoading(),
///     if (state.isSaving)
///       const AppOverlayLoading(message: 'Saving…'),
///   ],
/// )
/// ```
///
/// For exit animation wrap the conditional with [AnimatedSwitcher]:
/// ```dart
/// AnimatedSwitcher(
///   duration: const Duration(milliseconds: 200),
///   child: state.isLoading
///       ? const AppOverlayLoading(key: ValueKey('overlay'))
///       : const SizedBox.shrink(key: ValueKey('none')),
/// )
/// ```
class AppOverlayLoading extends StatelessWidget {
  final String? message;

  const AppOverlayLoading({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Positioned.fill(
      // Fade the entire overlay in over 240 ms.
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 240),
        curve: Curves.easeOut,
        builder: (_, opacity, child) =>
            Opacity(opacity: opacity, child: child),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          child: ColoredBox(
            color: cs.scrim.withValues(alpha: 0.25),
            child: Center(
              // Pop the card in with a springy scale from 0.84 → 1.0.
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.84, end: 1.0),
                duration: const Duration(milliseconds: 360),
                curve: Curves.easeOutBack,
                builder: (_, scale, child) =>
                    Transform.scale(scale: scale, child: child),
                child: _LoaderCard(message: message),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ─── Internal card ────────────────────────────────────────────────────────────

class _LoaderCard extends StatelessWidget {
  final String? message;

  const _LoaderCard({required this.message});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: cs.surface.withValues(alpha: 0.92),
        border: Border.all(color: cs.outline.withValues(alpha: 0.15)),
        boxShadow: [
          BoxShadow(
            color: cs.shadow.withValues(alpha: 0.20),
            blurRadius: 24.r,
            offset: Offset(0, 10.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AppProgressIndicator(size: AppIndicatorSize.large),
          if (message != null) ...[
            SizedBox(height: 12.h),
            Text(
              message!,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: cs.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}