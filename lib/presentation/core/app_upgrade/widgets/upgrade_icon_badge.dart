import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Pulsing circular badge shown at the top of the upgrade dialog.
/// Pass a custom [child] (e.g. your app logo) or it falls back to the
/// system-update icon tinted with the brand accent colour.
class UpgradeIconBadge extends StatefulWidget {
  final Widget? child;

  const UpgradeIconBadge({super.key, this.child});

  @override
  State<UpgradeIconBadge> createState() => _UpgradeIconBadgeState();
}

class _UpgradeIconBadgeState extends State<UpgradeIconBadge>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnim;
  late final Animation<double> _glowAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);

    _scaleAnim = Tween<double>(begin: 1.0, end: 1.10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _glowAnim = Tween<double>(begin: 0.18, end: 0.42).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: _controller,
      // Hoist the static leaf so it is built once, not on every animation frame.
      child: widget.child ??
          Icon(Icons.system_update_alt_rounded, size: 32.w, color: cs.tertiary),
      builder: (context, child) => Transform.scale(
        scale: _scaleAnim.value,
        child: Container(
          width: 90.w,
          height: 90.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: cs.tertiary.withValues(alpha: _glowAnim.value * 0.12),
            border: Border.all(
              color: cs.tertiary.withValues(alpha: _glowAnim.value * 0.5),
              width: 1.2.w,
            ),
          ),
          child: Center(
            child: Container(
              width: 68.w,
              height: 68.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: cs.secondary,
                border: Border.all(
                  color: cs.tertiary.withValues(alpha: 0.55),
                  width: 1.5.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: cs.tertiary.withValues(
                      alpha: _glowAnim.value * 0.35,
                    ),
                    blurRadius: 22,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}