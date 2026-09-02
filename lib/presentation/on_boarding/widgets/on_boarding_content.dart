import 'dart:math' as math;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../on_boarding_page.dart';

class OnBoardingContent extends StatelessWidget {
  final OnBoardingData data;
  final int pageIndex;
  final AnimationController entrance;

  const OnBoardingContent({
    super.key,
    required this.data,
    required this.pageIndex,
    required this.entrance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 6, child: _VisualSection(pageIndex: pageIndex)),
        Expanded(
          flex: 4,
          child: _TextSection(data: data, entrance: entrance),
        ),
      ],
    );
  }
}

// ── Visual section ────────────────────────────────────────────────────────────

class _VisualSection extends HookWidget {
  final int pageIndex;

  const _VisualSection({required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final ambient = useAnimationController(
      duration: Duration(milliseconds: pageIndex == 0 ? 3500 : 2000),
    );

    final flow = useAnimationController(
      duration: const Duration(milliseconds: 2500),
    );

    useEffect(() {
      ambient.repeat(reverse: pageIndex == 0);
      if (pageIndex == 1) flow.repeat();
      return () {
        ambient.stop();
        flow.stop();
      };
    }, const []);

    final gradient = pageIndex == 0
        ? LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              theme.colorScheme.secondary,
              theme.colorScheme.secondary.withValues(alpha: 0.7),
              theme.colorScheme.primary.withValues(alpha: 0.3),
            ],
          )
        : LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              theme.colorScheme.secondary.withValues(alpha: 0.9),
              theme.colorScheme.secondary,
              theme.colorScheme.primary.withValues(alpha: 0.2),
            ],
          );

    final icon = pageIndex == 0
        ? Icons.shield_rounded
        : Icons.verified_user_rounded;

    return Container(
      decoration: BoxDecoration(gradient: gradient),
      child: AnimatedBuilder(
        animation: Listenable.merge([ambient, flow]),
        builder: (context0, child0) {
          return CustomPaint(
            painter: pageIndex == 0
                ? _SecurityPainter(
                    progress: ambient.value,
                    primaryColor: theme.colorScheme.tertiary,
                    accentColor: theme.colorScheme.tertiary,
                  )
                : _NetworkPainter(
                    progress: ambient.value,
                    flowProgress: flow.value,
                    primaryColor: theme.colorScheme.tertiary,
                    accentColor: theme.colorScheme.tertiary,
                  ),
            child: Center(
              child: Icon(icon, size: 64.r, color: theme.colorScheme.secondary),
            ),
          );
        },
      ),
    );
  }
}

// ── Security painter (page 0) ─────────────────────────────────────────────────

class _SecurityPainter extends CustomPainter {
  final double progress;
  final Color primaryColor;
  final Color accentColor;

  const _SecurityPainter({
    required this.progress,
    required this.primaryColor,
    required this.accentColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final base = math.min(size.width, size.height) * 0.975;
    final maxR = base * 0.40;

    // progress: 0→1→0 (reverse repeat) — derive independent waveforms
    final pulse = math.sin(progress * math.pi); // 0→1→0
    final sweep = progress * 2 * math.pi; // full rotation

    // ── 1. Hex grid background ───────────────────────────────────────────────
    _drawHexGrid(canvas, size, primaryColor.withValues(alpha: 0.055));

    // ── 2. Layered radial bloom ──────────────────────────────────────────────
    final blooms = [
      (maxR * 1.80, 0.07),
      (maxR * 1.25, 0.13 + pulse * 0.06),
      (maxR * 0.75, 0.20 + pulse * 0.10),
      (maxR * 0.30, 0.28 + pulse * 0.14),
    ];
    for (final (r, a) in blooms) {
      canvas.drawCircle(
        center,
        r,
        Paint()
          ..shader = RadialGradient(
            colors: [
              accentColor.withValues(alpha: a),
              accentColor.withValues(alpha: 0),
            ],
          ).createShader(Rect.fromCircle(center: center, radius: r)),
      );
    }

    // ── 3. Radar sweep with trail ────────────────────────────────────────────
    canvas.save();
    canvas.clipRect(Rect.fromCircle(center: center, radius: maxR * 1.18));
    // Trail (wide soft sector behind leading edge)
    final trailPaint = Paint()
      ..shader = SweepGradient(
        startAngle: sweep - 1.4,
        endAngle: sweep,
        colors: [
          accentColor.withValues(alpha: 0.0),
          accentColor.withValues(alpha: 0.22),
        ],
      ).createShader(Rect.fromCircle(center: center, radius: maxR * 1.18));
    canvas.drawCircle(center, maxR * 1.18, trailPaint);
    canvas.restore();

    // Leading edge bright line
    final edgeEnd = Offset(
      center.dx + maxR * 1.18 * math.cos(sweep),
      center.dy + maxR * 1.18 * math.sin(sweep),
    );
    canvas.drawLine(
      center,
      edgeEnd,
      Paint()
        ..color = accentColor.withValues(alpha: 0.70)
        ..strokeWidth = 1.8
        ..strokeCap = StrokeCap.round,
    );

    // Ping blip: accent dot that appears near leading edge every rotation
    final pingAlpha = math.max(0.0, math.sin(progress * math.pi * 6) * 0.6);
    final pingR = maxR * (0.45 + 0.3 * ((progress * 3) % 1.0));
    canvas.drawCircle(
      Offset(
        center.dx + pingR * math.cos(sweep - 0.1),
        center.dy + pingR * math.sin(sweep - 0.1),
      ),
      5.0 * (1 - (progress * 3) % 1.0),
      Paint()..color = accentColor.withValues(alpha: pingAlpha),
    );

    // ── 4. Concentric rings (5 layers, alternating direction/speed) ──────────
    final rings = [
      (maxR * 1.18, 32, sweep * 0.8, primaryColor, 0.18, 1.0),
      (maxR * 1.00, 20, sweep, primaryColor, 0.42, 1.6),
      (maxR * 0.76, 14, -sweep * 1.2, accentColor, 0.72, 1.6),
      (maxR * 0.52, 10, sweep * 2.0, primaryColor, 0.38, 1.2),
      (maxR * 0.30, 6, -sweep * 3.0, accentColor, 0.55, 1.0),
    ];
    for (final (r, n, rot, col, alpha, sw) in rings) {
      _drawDashedRing(
        canvas,
        center,
        r,
        n,
        rot,
        col.withValues(alpha: alpha),
        sw,
      );
    }

    // ── 5. Animated tick marks (rotate with outermost ring) ──────────────────
    final tickPaint = Paint()
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round;
    const ticks = 48;
    for (var i = 0; i < ticks; i++) {
      final a = sweep * 0.8 + i * (2 * math.pi / ticks);
      final major = i % 4 == 0;
      final r1 = maxR * 1.18;
      final r2 = r1 - (major ? 9.0 : 4.5);
      final tickAlpha = major ? 0.55 : 0.25;
      tickPaint.color = (major ? accentColor : primaryColor).withValues(
        alpha: tickAlpha,
      );
      canvas.drawLine(
        Offset(center.dx + r1 * math.cos(a), center.dy + r1 * math.sin(a)),
        Offset(center.dx + r2 * math.cos(a), center.dy + r2 * math.sin(a)),
        tickPaint,
      );
    }

    // ── 6. Orbit satellites ──────────────────────────────────────────────────
    // Outer orbit: 4 diamonds
    for (var i = 0; i < 4; i++) {
      final a = sweep + i * (math.pi / 2);
      final pos = Offset(
        center.dx + maxR * math.cos(a),
        center.dy + maxR * math.sin(a),
      );
      _drawDiamond(canvas, pos, 5.5, accentColor);
      canvas.drawCircle(
        pos,
        12.0,
        Paint()..color = accentColor.withValues(alpha: 0.12),
      );
    }

    // Mid orbit: 6 small dots, counter-clockwise
    for (var i = 0; i < 6; i++) {
      final a = -sweep * 1.2 + i * (math.pi / 3);
      final pos = Offset(
        center.dx + maxR * 0.76 * math.cos(a),
        center.dy + maxR * 0.76 * math.sin(a),
      );
      final dotPulse = (math.sin(progress * 2 * math.pi + i) + 1) / 2;
      canvas.drawCircle(
        pos,
        2.5 + dotPulse * 1.0,
        Paint()..color = primaryColor.withValues(alpha: 0.55 + dotPulse * 0.3),
      );
    }

    // Inner orbit: 3 accent dots
    for (var i = 0; i < 3; i++) {
      final a = sweep * 2.0 + i * (2 * math.pi / 3);
      final pos = Offset(
        center.dx + maxR * 0.52 * math.cos(a),
        center.dy + maxR * 0.52 * math.sin(a),
      );
      canvas.drawCircle(
        pos,
        3.5,
        Paint()..color = accentColor.withValues(alpha: 0.80),
      );
    }

    // ── 7. Radial spoke lines (8 spokes, slow rotation) ─────────────────────
    final spokePaint = Paint()
      ..strokeWidth = 0.7
      ..strokeCap = StrokeCap.round;
    for (var i = 0; i < 8; i++) {
      final a = sweep * 0.3 + i * (math.pi / 4);
      final spokeAlpha = 0.08 + 0.08 * math.sin(progress * math.pi + i);
      spokePaint.color = primaryColor.withValues(alpha: spokeAlpha);
      canvas.drawLine(
        Offset(
          center.dx + maxR * 0.22 * math.cos(a),
          center.dy + maxR * 0.22 * math.sin(a),
        ),
        Offset(
          center.dx + maxR * 1.18 * math.cos(a),
          center.dy + maxR * 1.18 * math.sin(a),
        ),
        spokePaint,
      );
    }

    // ── 8. Core: layered pulsing hub ─────────────────────────────────────────
    final coreR = maxR * 0.20 + pulse * maxR * 0.03;
    // Outer glow ring (expands outward on pulse)
    canvas.drawCircle(
      center,
      coreR + maxR * 0.06 * pulse,
      Paint()..color = accentColor.withValues(alpha: 0.10 + pulse * 0.08),
    );
    // Solid fill
    canvas.drawCircle(
      center,
      coreR,
      Paint()
        ..shader = RadialGradient(
          colors: [
            accentColor.withValues(alpha: 0.35 + pulse * 0.15),
            primaryColor.withValues(alpha: 0.10),
          ],
        ).createShader(Rect.fromCircle(center: center, radius: coreR)),
    );
    // Accent stroke
    canvas.drawCircle(
      center,
      coreR,
      Paint()
        ..color = accentColor.withValues(alpha: 0.75 + pulse * 0.20)
        ..strokeWidth = 1.8
        ..style = PaintingStyle.stroke,
    );
    // Inner bright dot
    canvas.drawCircle(
      center,
      maxR * 0.04 + pulse * maxR * 0.02,
      Paint()..color = accentColor.withValues(alpha: 0.85),
    );
  }

  void _drawDiamond(
    Canvas canvas,
    Offset center,
    double halfSize,
    Color color,
  ) {
    final path = Path()
      ..moveTo(center.dx, center.dy - halfSize)
      ..lineTo(center.dx + halfSize * 0.6, center.dy)
      ..lineTo(center.dx, center.dy + halfSize)
      ..lineTo(center.dx - halfSize * 0.6, center.dy)
      ..close();
    canvas.drawPath(path, Paint()..color = color);
  }

  void _drawHexGrid(Canvas canvas, Size size, Color color) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke;
    const s = 26.0;
    final cols = (size.width / (s * 1.5)).ceil() + 2;
    final rows = (size.height / (s * math.sqrt(3))).ceil() + 2;
    for (var row = -1; row < rows; row++) {
      for (var col = -1; col < cols; col++) {
        final x = col * s * 1.5;
        final y =
            row * s * math.sqrt(3) + (col.isOdd ? s * math.sqrt(3) / 2 : 0);
        final path = Path();
        for (var k = 0; k < 6; k++) {
          final a = math.pi / 180 * (60 * k - 30);
          k == 0
              ? path.moveTo(x + s * math.cos(a), y + s * math.sin(a))
              : path.lineTo(x + s * math.cos(a), y + s * math.sin(a));
        }
        path.close();
        canvas.drawPath(path, paint);
      }
    }
  }

  void _drawDashedRing(
    Canvas canvas,
    Offset center,
    double radius,
    int dashCount,
    double rotationOffset,
    Color color,
    double strokeWidth,
  ) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final step = 2 * math.pi / dashCount;
    final dashAngle = step * 0.5;
    for (var i = 0; i < dashCount; i++) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        rotationOffset + i * step,
        dashAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_SecurityPainter old) => old.progress != progress;
}

// ── Network painter (page 1) ──────────────────────────────────────────────────

class _NetworkPainter extends CustomPainter {
  final double progress;
  final double flowProgress;
  final Color primaryColor;
  final Color accentColor;

  const _NetworkPainter({
    required this.progress,
    required this.flowProgress,
    required this.primaryColor,
    required this.accentColor,
  });

  static const _outerCount = 6;
  static const _midCount = 4;
  static const _innerCount = 3;

  // Smooth ease-in-out: converts linear 0→1 to eased 0→1→0 curve
  static double _easeInOut(double t) => (1 - math.cos(t * math.pi)) / 2;

  // Smooth cubic breathe: sin mapped 0→1 with extra smoothness via pow
  static double _breathe(double phase) =>
      math.pow((math.sin(phase) + 1) / 2, 1.5).toDouble();

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final base = math.min(size.width, size.height) * 0.925;
    final outerR = base * 0.38;
    final midR = base * 0.22;
    final innerR = base * 0.10;

    final drift = progress * math.pi * 0.18; // very slow orbital drift
    final flow = flowProgress * 2 * math.pi; // continuous wave phase
    final hubP = _breathe(flow); // smoothed hub pulse

    // ── Node positions ───────────────────────────────────────────────────────
    final outerNodes = List.generate(_outerCount, (i) {
      final a = i * (2 * math.pi / _outerCount) + drift;
      return Offset(
        center.dx + outerR * math.cos(a),
        center.dy + outerR * math.sin(a),
      );
    });
    final midNodes = List.generate(_midCount, (i) {
      final a = i * (2 * math.pi / _midCount) - drift * 1.5 + math.pi / 4;
      return Offset(
        center.dx + midR * math.cos(a),
        center.dy + midR * math.sin(a),
      );
    });
    final innerNodes = List.generate(_innerCount, (i) {
      final a = i * (2 * math.pi / _innerCount) + drift * 2.2;
      return Offset(
        center.dx + innerR * math.cos(a),
        center.dy + innerR * math.sin(a),
      );
    });

    // ── 1. Circuit-board background ──────────────────────────────────────────
    _drawCircuitGrid(canvas, size, primaryColor.withValues(alpha: 0.06));

    // ── 2. Soft radial bloom ─────────────────────────────────────────────────
    for (final (r, a) in [
      (outerR * 1.85, 0.07),
      (outerR * 1.20, 0.13 + hubP * 0.05),
      (outerR * 0.60, 0.19 + hubP * 0.09),
    ]) {
      canvas.drawCircle(
        center,
        r,
        Paint()
          ..shader = RadialGradient(
            colors: [
              accentColor.withValues(alpha: a),
              accentColor.withValues(alpha: 0),
            ],
          ).createShader(Rect.fromCircle(center: center, radius: r)),
      );
    }

    // ── 3. Boundary rings ────────────────────────────────────────────────────
    _drawDashedRing(
      canvas,
      center,
      outerR * 1.32,
      28,
      -drift * 2.0,
      primaryColor.withValues(alpha: 0.17),
      1.0,
    );
    _drawDashedRing(
      canvas,
      center,
      outerR * 1.10,
      18,
      drift * 2.8,
      primaryColor.withValues(alpha: 0.26),
      1.2,
    );

    // ── 4. Edges with "lit wire" gradient flicker ────────────────────────────
    // Each edge is drawn dim, then overdrawn with a gradient highlight that
    // travels along it — giving the illusion of current flowing through wire.

    void drawEdge(
      Offset a,
      Offset b,
      double phase,
      Color col,
      double baseSW,
      double baseAlpha,
    ) {
      // Dim base wire
      canvas.drawLine(
        a,
        b,
        Paint()
          ..color = col.withValues(alpha: baseAlpha)
          ..strokeWidth = baseSW
          ..style = PaintingStyle.stroke,
      );

      // Moving highlight: t0 is position of peak brightness (0→1 eased)
      final raw = (flowProgress + phase) % 1.0;
      final t0 = _easeInOut(raw);
      // Build a 5-stop gradient: dim → bright → dim, centred on t0
      final stops = [
        math.max(0.0, t0 - 0.35),
        math.max(0.0, t0 - 0.12),
        t0,
        math.min(1.0, t0 + 0.12),
        math.min(1.0, t0 + 0.35),
      ];
      canvas.drawLine(
        a,
        b,
        Paint()
          ..shader = LinearGradient(
            colors: [
              col.withValues(alpha: 0.0),
              col.withValues(alpha: baseAlpha + 0.18),
              col.withValues(alpha: baseAlpha + 0.38),
              col.withValues(alpha: baseAlpha + 0.18),
              col.withValues(alpha: 0.0),
            ],
            stops: stops,
          ).createShader(Rect.fromPoints(a, b))
          ..strokeWidth = baseSW + 0.6
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke,
      );
    }

    // Outer ring edges
    for (var i = 0; i < _outerCount; i++) {
      drawEdge(
        outerNodes[i],
        outerNodes[(i + 1) % _outerCount],
        i / _outerCount,
        primaryColor,
        1.2,
        0.10,
      );
    }
    // Outer cross-diagonals
    for (var i = 0; i < _outerCount; i++) {
      drawEdge(
        outerNodes[i],
        outerNodes[(i + 2) % _outerCount],
        i / _outerCount + 0.5,
        accentColor,
        0.7,
        0.05,
      );
    }
    // Outer → mid spokes
    for (var o = 0; o < _outerCount; o++) {
      drawEdge(
        outerNodes[o],
        midNodes[o % _midCount],
        o / _outerCount + 0.25,
        accentColor,
        0.9,
        0.08,
      );
    }
    // Mid ring edges
    for (var i = 0; i < _midCount; i++) {
      drawEdge(
        midNodes[i],
        midNodes[(i + 1) % _midCount],
        i / _midCount + 0.1,
        primaryColor,
        1.1,
        0.12,
      );
    }
    // Mid → inner spokes
    for (var m = 0; m < _midCount; m++) {
      drawEdge(
        midNodes[m],
        innerNodes[m % _innerCount],
        m / _midCount + 0.6,
        accentColor,
        0.8,
        0.09,
      );
    }
    // Inner triangle
    for (var i = 0; i < _innerCount; i++) {
      drawEdge(
        innerNodes[i],
        innerNodes[(i + 1) % _innerCount],
        i / _innerCount + 0.8,
        accentColor,
        1.0,
        0.16,
      );
    }

    // ── 5. Packets with smooth eased travel + fading trail ───────────────────
    void drawPacket(
      Offset from,
      Offset to,
      double phase,
      double speed,
      double dotR,
    ) {
      final raw = (flowProgress * speed + phase) % 1.0;
      final t = _easeInOut(raw); // smooth ease-in-out position
      final pos = Offset.lerp(from, to, t)!;

      // Trail: 6 ghost dots behind packet
      const trailSteps = 6;
      for (var k = 1; k <= trailSteps; k++) {
        final trailT = math.max(0.0, t - k * 0.055);
        final trailPos = Offset.lerp(from, to, _easeInOut(trailT))!;
        final fade = (1 - k / trailSteps) * 0.30;
        canvas.drawCircle(
          trailPos,
          dotR * (1 - k / (trailSteps + 2)),
          Paint()..color = accentColor.withValues(alpha: fade),
        );
      }
      // Outer halo
      canvas.drawCircle(
        pos,
        dotR * 2.6,
        Paint()..color = accentColor.withValues(alpha: 0.13),
      );
      // Core dot
      canvas.drawCircle(pos, dotR, Paint()..color = accentColor);
    }

    // 3 packets on outer ring (one per pair of nodes)
    for (var i = 0; i < 3; i++) {
      final ei = (i * 2) % _outerCount;
      drawPacket(
        outerNodes[ei],
        outerNodes[(ei + 1) % _outerCount],
        i / 3,
        0.9,
        3.8,
      );
    }
    // 2 packets on outer→mid spokes
    for (var i = 0; i < 2; i++) {
      final o = i * 3;
      drawPacket(
        outerNodes[o],
        midNodes[o % _midCount],
        i * 0.5 + 0.15,
        1.1,
        2.8,
      );
    }
    // 1 packet on mid→inner
    drawPacket(midNodes[1], innerNodes[1], 0.3, 1.5, 2.2);

    // ── 6. Nodes: inner → mid → outer (painter's order) ──────────────────────
    void drawNode(Offset pos, double r, double phaseSeed, bool accent) {
      // Use pow for extra-smooth breathing — no sudden jumps
      final p = _breathe(flow + phaseSeed);
      // Soft outer glow (two layers)
      canvas.drawCircle(
        pos,
        r * 3.2,
        Paint()..color = accentColor.withValues(alpha: 0.05 + 0.05 * p),
      );
      canvas.drawCircle(
        pos,
        r * 2.0,
        Paint()..color = accentColor.withValues(alpha: 0.08 + 0.09 * p),
      );
      // Fill with radial gradient
      canvas.drawCircle(
        pos,
        r,
        Paint()
          ..shader = RadialGradient(
            colors: [
              primaryColor.withValues(alpha: 0.75 + 0.20 * p),
              primaryColor.withValues(alpha: 0.30),
            ],
          ).createShader(Rect.fromCircle(center: pos, radius: r)),
      );
      // Accent stroke
      canvas.drawCircle(
        pos,
        r,
        Paint()
          ..color = accentColor.withValues(alpha: accent ? 0.92 : 0.60)
          ..strokeWidth = accent ? 1.8 : 1.2
          ..style = PaintingStyle.stroke,
      );
      // Bright centre
      canvas.drawCircle(
        pos,
        r * 0.32,
        Paint()..color = accentColor.withValues(alpha: 0.75 + 0.22 * p),
      );
    }

    for (var i = 0; i < _innerCount; i++) {
      drawNode(innerNodes[i], 3.8, i * 1.3, false);
    }
    for (var i = 0; i < _midCount; i++) {
      drawNode(midNodes[i], 5.0, i * 0.95 + 0.6, false);
    }
    for (var i = 0; i < _outerCount; i++) {
      drawNode(outerNodes[i], 6.5, i * 0.72 + 1.1, true);
    }

    // ── 7. Central hub ───────────────────────────────────────────────────────
    final hubR = base * 0.048 + hubP * base * 0.016;

    // Expanding ripple ring
    canvas.drawCircle(
      center,
      hubR + base * 0.038 * hubP,
      Paint()..color = accentColor.withValues(alpha: 0.09 + 0.07 * hubP),
    );
    // Radial gradient fill
    canvas.drawCircle(
      center,
      hubR,
      Paint()
        ..shader = RadialGradient(
          colors: [
            accentColor.withValues(alpha: 0.48 + hubP * 0.18),
            primaryColor.withValues(alpha: 0.12),
          ],
        ).createShader(Rect.fromCircle(center: center, radius: hubR)),
    );
    // Smooth glowing border
    canvas.drawCircle(
      center,
      hubR,
      Paint()
        ..color = accentColor.withValues(alpha: 0.88 + hubP * 0.12)
        ..strokeWidth = 2.0
        ..style = PaintingStyle.stroke,
    );
    // Slowly spinning cross
    for (var i = 0; i < 4; i++) {
      final a = flow * 0.35 + i * (math.pi / 2);
      canvas.drawLine(
        Offset(
          center.dx + hubR * 0.18 * math.cos(a),
          center.dy + hubR * 0.18 * math.sin(a),
        ),
        Offset(
          center.dx + hubR * 0.72 * math.cos(a),
          center.dy + hubR * 0.72 * math.sin(a),
        ),
        Paint()
          ..color = accentColor.withValues(alpha: 0.72)
          ..strokeWidth = 1.2
          ..strokeCap = StrokeCap.round,
      );
    }
    // Bright centre dot
    canvas.drawCircle(
      center,
      hubR * 0.28,
      Paint()..color = accentColor.withValues(alpha: 0.90),
    );
  }

  void _drawCircuitGrid(Canvas canvas, Size size, Color color) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 0.8
      ..style = PaintingStyle.stroke;
    const s = 28.0;
    final cols = (size.width / s).ceil() + 1;
    final rows = (size.height / s).ceil() + 1;
    for (var c = 0; c < cols; c++) {
      for (var r = 0; r < rows; r++) {
        final x = c * s;
        final y = r * s;
        if ((c + r).isEven) {
          canvas.drawLine(Offset(x, y), Offset(x + s * 0.55, y), paint);
        } else {
          canvas.drawLine(Offset(x, y), Offset(x, y + s * 0.55), paint);
        }
        canvas.drawCircle(Offset(x, y), 1.3, Paint()..color = color);
      }
    }
  }

  void _drawDashedRing(
    Canvas canvas,
    Offset center,
    double radius,
    int dashCount,
    double offset,
    Color color,
    double strokeWidth,
  ) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final step = 2 * math.pi / dashCount;
    for (var i = 0; i < dashCount; i++) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        offset + i * step,
        step * 0.5,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_NetworkPainter old) =>
      old.progress != progress || old.flowProgress != flowProgress;
}

// ── Text section ──────────────────────────────────────────────────────────────

class _TextSection extends StatelessWidget {
  final OnBoardingData data;
  final AnimationController entrance;

  const _TextSection({required this.data, required this.entrance});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final titleAnim = CurvedAnimation(
      parent: entrance,
      curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
    );
    final descAnim = CurvedAnimation(
      parent: entrance,
      curve: const Interval(0.25, 0.85, curve: Curves.easeOut),
    );
    final titleSlide = Tween<Offset>(
      begin: const Offset(0, 0.25),
      end: Offset.zero,
    ).animate(titleAnim);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(28.w, 28.h, 28.w, 0),
      decoration: BoxDecoration(color: theme.colorScheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeTransition(
            opacity: titleAnim,
            child: SlideTransition(
              position: titleSlide,
              child: Text(
                data.title.tr(),
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.tertiary,
                  height: 1.25,
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Expanded(
            child: FadeTransition(
              opacity: descAnim,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: Text(
                    data.description.tr(),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                      color: theme.colorScheme.onSurface,
                      height: 1.6,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
