import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ─────────────────────────────────────────────────────────────────────────────
// FormFieldEntrance
//
// One-shot slide-up + fade-in entrance animation. Plays exactly once when the
// widget is first mounted into the widget tree.
//
// Because flutter_hooks stores state on the Element (not the widget instance),
// BLoC-driven rebuilds that keep the same Element alive do NOT replay the
// animation. The animation only replays if the element is destroyed and
// re-created — e.g. shimmer → loaded field (type change, new element).
// ─────────────────────────────────────────────────────────────────────────────
class FormFieldEntrance extends HookWidget {
  final Widget child;

  /// Delay before the animation starts. Use index × 60ms for staggered lists.
  final Duration delay;

  const FormFieldEntrance({
    super.key,
    required this.child,
    this.delay = Duration.zero,
  });

  @override
  Widget build(BuildContext context) {
    final ctrl = useAnimationController(
      duration: const Duration(milliseconds: 380),
    );

    useEffect(() {
      if (delay == Duration.zero) {
        ctrl.forward();
        return null;
      }
      final timer = Timer(delay, () {
        if (ctrl.status == AnimationStatus.dismissed) ctrl.forward();
      });
      return timer.cancel;
    }, const []);

    final opacity = CurvedAnimation(parent: ctrl, curve: Curves.easeOut);
    final slide = Tween<Offset>(
      begin: const Offset(0.0, 0.07),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: ctrl, curve: Curves.easeOutCubic));

    return FadeTransition(
      opacity: opacity,
      child: SlideTransition(position: slide, child: child),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// AutoFillGlow
//
// A primary-colour box-shadow glow that appears briefly when [observedValue]
// transitions from empty → non-empty. Applied to the Bank and Branch dropdowns
// to give clear visual feedback after an IFSC reverse-fill.
//
// Usage: wrap the field widget; pass the current display value as [observedValue].
// ─────────────────────────────────────────────────────────────────────────────
class AutoFillGlow extends HookWidget {
  final Widget child;

  /// The value to observe. When this goes from '' to non-empty, the glow fires.
  final String observedValue;

  const AutoFillGlow({
    super.key,
    required this.child,
    required this.observedValue,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final ctrl = useAnimationController(
      duration: const Duration(milliseconds: 1500),
    );
    final prevValue = useRef('');

    useEffect(() {
      final prev = prevValue.value;
      prevValue.value = observedValue;
      if (observedValue.isNotEmpty && prev.isEmpty) {
        ctrl.forward(from: 0.0);
      }
      return null;
    }, [observedValue]);

    return AnimatedBuilder(
      animation: ctrl,
      builder: (context, child) {
        final t = ctrl.value;
        // Bell curve: rises to peak at t≈0.30, falls back to 0 at t=1
        final glowOpacity =
            (t < 0.30
                    ? (t / 0.30)
                    : ((1.0 - t) / 0.70))
                .clamp(0.0, 1.0) *
            0.45;

        return DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              if (t > 0.0 && t < 1.0)
                BoxShadow(
                  color: colorScheme.primary.withValues(alpha: glowOpacity),
                  blurRadius: 14,
                  spreadRadius: 0,
                ),
            ],
          ),
          child: child,
        );
      },
      child: child,
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// LookupBorderPulse
//
// A repeating pulsing border applied to the route-code field while a background
// IFSC reverse-lookup is in progress (state.isRouteLookupLoading == true).
// Starts repeating when isActive becomes true; eases out when it becomes false.
// ─────────────────────────────────────────────────────────────────────────────
class LookupBorderPulse extends StatefulWidget {
  final Widget child;
  final bool isActive;

  const LookupBorderPulse({
    super.key,
    required this.child,
    required this.isActive,
  });

  @override
  State<LookupBorderPulse> createState() => _LookupBorderPulseState();
}

class _LookupBorderPulseState extends State<LookupBorderPulse>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 850),
    );
    _opacity = Tween<double>(begin: 0.12, end: 0.60).animate(
      CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut),
    );
    if (widget.isActive) _ctrl.repeat(reverse: true);
  }

  @override
  void didUpdateWidget(LookupBorderPulse old) {
    super.didUpdateWidget(old);
    if (widget.isActive && !_ctrl.isAnimating) {
      _ctrl.repeat(reverse: true);
    } else if (!widget.isActive && _ctrl.isAnimating) {
      _ctrl.animateTo(0.0, duration: const Duration(milliseconds: 220));
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: _opacity,
      builder: (context, child) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: widget.isActive
              ? Border.all(
                  color: colorScheme.primary.withValues(alpha: _opacity.value),
                  width: 1.2.w,
                )
              : null,
        ),
        child: child,
      ),
      child: widget.child,
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// AnimatedDropdownSuffix
//
// Smooth cross-fade + scale transition between the loading spinner and the
// chevron arrow. Replaces the manual ternary in every dropdown widget.
// ─────────────────────────────────────────────────────────────────────────────
class AnimatedDropdownSuffix extends StatelessWidget {
  final bool isLoading;
  final Color? color;

  const AnimatedDropdownSuffix({
    super.key,
    required this.isLoading,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final c = color ?? Theme.of(context).colorScheme.tertiary;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 260),
      transitionBuilder: (child, anim) => ScaleTransition(
        scale: CurvedAnimation(parent: anim, curve: Curves.easeOutBack),
        child: FadeTransition(opacity: anim, child: child),
      ),
      child: isLoading
          ? Padding(
              key: const ValueKey('spin'),
              padding: EdgeInsets.all(10.w),
              child: SizedBox.square(
                dimension: 18.w,
                child: CircularProgressIndicator(
                  strokeWidth: 1.8,
                  color: c,
                ),
              ),
            )
          : Icon(
              key: const ValueKey('chevron'),
              Icons.keyboard_arrow_down_rounded,
              color: c,
            ),
    );
  }
}