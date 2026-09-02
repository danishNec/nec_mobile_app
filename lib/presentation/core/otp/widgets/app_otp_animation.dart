import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppOtpAnimation extends HookWidget {
  final int filledDigits;

  const AppOtpAnimation({super.key, required this.filledDigits});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final scan = useAnimationController(
      duration: const Duration(milliseconds: 1800),
    )..repeat();

    return RepaintBoundary(
      child: SizedBox(
        height: 140,
        width: double.infinity,
        child: AnimatedBuilder(
          animation: scan,
          builder: (_, _) {
            return CustomPaint(
              painter: _OtpScanPainter(
                scan: scan.value,
                filledDigits: filledDigits,
                primary: cs.tertiary,
                accent: cs.tertiary,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _OtpScanPainter extends CustomPainter {
  final double scan;
  final int filledDigits;
  final Color primary;
  final Color accent;

  _OtpScanPainter({
    required this.scan,
    required this.filledDigits,
    required this.primary,
    required this.accent,
  });

  final Paint _boxPaint = Paint();
  final Paint _beamPaint = Paint();

  static const int _count = 6;

  @override
  void paint(Canvas canvas, Size size) {
    final centerY = size.height / 2;

    final totalWidth = size.width * 0.7;
    final boxWidth = totalWidth / (_count * 1.4);
    final spacing = boxWidth * 0.4;

    final startX = (size.width - totalWidth) / 2;

    // 🔍 scanning position
    final scanX = startX + scan * totalWidth;

    for (int i = 0; i < _count; i++) {
      final x = startX + i * (boxWidth + spacing);

      final rect = Rect.fromLTWH(x, centerY - 18, boxWidth, 36);

      // ── 1. Base box
      _boxPaint.color = primary.withValues(alpha: 0.15);

      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, const Radius.circular(6)),
        _boxPaint,
      );

      // ── 2. Filled digits
      if (i < filledDigits) {
        _boxPaint.color = primary;

        canvas.drawRRect(
          RRect.fromRectAndRadius(rect, const Radius.circular(6)),
          _boxPaint,
        );
        continue;
      }

      // ── 3. Scan highlight effect
      final isUnderScan = scanX > x && scanX < x + boxWidth;

      if (isUnderScan) {
        _boxPaint.color = accent.withValues(alpha: 0.8);

        canvas.drawRRect(
          RRect.fromRectAndRadius(rect, const Radius.circular(6)),
          _boxPaint,
        );
      }
    }

    // ── 4. Scanning beam
    _beamPaint.color = accent.withValues(alpha: 0.25);

    canvas.drawRect(Rect.fromLTWH(scanX - 6, centerY - 30, 12, 60), _beamPaint);
  }

  @override
  bool shouldRepaint(covariant _OtpScanPainter old) {
    return old.scan != scan || old.filledDigits != filledDigits;
  }
}
