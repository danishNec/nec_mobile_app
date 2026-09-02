import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginAnimation extends HookWidget {
  final double? height;
  const LoginAnimation({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    // 🎯 Rotation controller
    final rotationController = useAnimationController(
      duration: const Duration(seconds: 6),
    )..repeat();

    // 🎯 Pulse controller
    final pulseController = useAnimationController(
      duration: const Duration(milliseconds: 1400),
    )..repeat(reverse: true);

    // Merge animations (efficient rebuild trigger)
    final animation = useMemoized(
          () => Listenable.merge([rotationController, pulseController]),
      [rotationController, pulseController],
    );

    return RepaintBoundary(
      child: SizedBox(
        height: height ?? 200.h,
        width: double.infinity,
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return CustomPaint(
              painter: _LoginPainter(
                rotation: rotationController.value,
                pulse: pulseController.value,
                primary: cs.onPrimary,
                accent: cs.tertiary,
                background: cs.primary,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoginPainter extends CustomPainter {
  final double rotation;
  final double pulse;
  final Color primary;
  final Color accent;
  final Color background;

  _LoginPainter({
    required this.rotation,
    required this.pulse,
    required this.primary,
    required this.accent,
    required this.background,
  });

  static const _twoPi = 6.28318530718;

  final Paint _ringPaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;

  final Paint _pulsePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;

  final Paint _fillPaint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width * 0.5, size.height * 0.5);
    final radius = size.width * 0.30;

    // 🌫️ Glow
    final glowPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          accent.withValues(alpha: 0.10 + 0.06 * pulse),
          Colors.transparent,
        ],
      ).createShader(Rect.fromCircle(center: center, radius: radius + 25));

    canvas.drawCircle(center, radius + 25, glowPaint);

    // 🔄 Ring
    const segments = 18;
    final step = _twoPi / segments;
    final baseAngle = rotation * _twoPi;

    for (int i = 0; i < segments; i++) {
      _ringPaint.color = primary.withValues(alpha: (i.isEven) ? 0.75 : 0.2);

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        baseAngle + (i * step),
        step * 0.6,
        false,
        _ringPaint,
      );
    }

    // 📡 Moving dots
    for (int i = 0; i < 3; i++) {
      final t = (rotation + i * 0.33) % 1.0;
      final angle = t * _twoPi;

      final dx = center.dx + radius * math.cos(angle);
      final dy = center.dy + radius * math.sin(angle);

      canvas.drawCircle(
        Offset(dx, dy),
        3.5 + pulse,
        _fillPaint..color = accent,
      );
    }

    // 🔐 Lock body
    final lockRect = Rect.fromCenter(center: center, width: 50, height: 38);

    canvas.drawRRect(
      RRect.fromRectAndRadius(lockRect, const Radius.circular(8)),
      _fillPaint..color = primary,
    );

    // 🔐 Shackle
    final shackleRect = Rect.fromCenter(
      center: Offset(center.dx, center.dy - 26),
      width: 36,
      height: 36,
    );

    canvas.drawArc(
      shackleRect,
      math.pi,
      math.pi,
      false,
      _ringPaint
        ..color = primary
        ..strokeWidth = 3,
    );

    // 🔑 Keyhole
    canvas.drawCircle(center, 3 + pulse, _fillPaint..color = background);

    // ✨ Pulse ring
    _pulsePaint.color = accent.withValues(alpha: 0.22);

    canvas.drawCircle(center, radius + 8 * pulse, _pulsePaint);
  }

  @override
  bool shouldRepaint(covariant _LoginPainter old) {
    return old.rotation != rotation ||
        old.pulse != pulse ||
        old.primary != primary ||
        old.accent != accent;
  }
}