import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDottedDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double dotSize;
  final double dotLength;
  final double space;
  final Axis direction; // NEW

  const AppDottedDivider({
    super.key,
    required this.color,
    this.height = 1,
    this.dotSize = 3,
    this.dotLength = 4,
    this.space = 3,
    this.direction = Axis.horizontal, // default
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: direction == Axis.horizontal ? double.infinity : height.w,
      height: direction == Axis.horizontal ? height.h : double.infinity,
      child: CustomPaint(
        painter: _AppDottedDividerPainter(
          color: color,
          dotSize: dotSize.w,
          dotLength: dotLength.w,
          space: space.w,
          direction: direction, // NEW
        ),
      ),
    );
  }
}

class _AppDottedDividerPainter extends CustomPainter {
  final Color color;
  final double dotSize;
  final double dotLength;
  final double space;
  final Axis direction; // NEW

  _AppDottedDividerPainter({
    required this.color,
    required this.dotSize,
    required this.dotLength,
    required this.space,
    required this.direction, // NEW
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = dotSize
      ..strokeCap = StrokeCap.round;

    if (direction == Axis.horizontal) {
      double startX = 0;

      while (startX < size.width) {
        canvas.drawLine(
          Offset(startX, size.height / 2),
          Offset(startX + dotLength, size.height / 2),
          paint,
        );
        startX += dotLength + space;
      }
    } else {
      double startY = 0;

      while (startY < size.height) {
        canvas.drawLine(
          Offset(size.width / 2, startY),
          Offset(size.width / 2, startY + dotLength),
          paint,
        );
        startY += dotLength + space;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
