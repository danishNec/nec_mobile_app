import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/core/di/injection.dart';
import '../../../domain/core/network/connectivity_service.dart';

/// Three-phase state machine:
///   hidden  →  offline  (pill slides in, stays until connection returns)
///   offline →  online   (in-place gradient + content cross-fade)
///   online  →  hidden   (pill slides out after 3 s or on tap)
enum _Phase { hidden, offline, online }

/// Wraps [child] with a floating pill-shaped network-status indicator.
///
/// - Goes offline  → dark pill drops in with a spring, shows pulsing icon +
///                   bouncing "reconnecting" dots, haptic heavy impact.
/// - Back online   → pill turns green in-place, elastic checkmark pops in,
///                   haptic light impact, auto-dismisses after 3 s (or tap).
class NetworkStatusBanner extends StatefulWidget {
  final Widget child;

  const NetworkStatusBanner({super.key, required this.child});

  @override
  State<NetworkStatusBanner> createState() => _NetworkStatusBannerState();
}

class _NetworkStatusBannerState extends State<NetworkStatusBanner>
    with TickerProviderStateMixin {
  // Drives the pill's vertical entry / exit.
  late final AnimationController _slideCtrl;

  // Looping controller — pulsing icon opacity + bouncing dots offset.
  late final AnimationController _loopCtrl;

  // One-shot controller — elastic checkmark scale + text fade.
  late final AnimationController _checkCtrl;

  late final StreamSubscription<bool> _sub;

  _Phase _phase = _Phase.hidden;
  Timer? _dismissTimer;
  // Fallback poller — connectivity_plus stream is unreliable on iOS simulators
  // when the network is restored, so we poll every 3 s while offline.
  Timer? _pollTimer;

  @override
  void initState() {
    super.initState();

    _slideCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 520),
      reverseDuration: const Duration(milliseconds: 340),
    );
    _loopCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1300),
    );
    _checkCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    final service = getIt<ConnectivityService>();

    // Snapshot check on startup — no animation, just show immediately.
    // Uses DNS-based check so the simulator's always-up WiFi interface doesn't
    // mask an actual lack of internet.
    service.hasInternetAccess.then((connected) {
      if (!mounted || connected) return;
      _goOffline(initial: true);
    });

    _sub = service.onConnectivityChanged.listen((connected) {
      if (!mounted) return;
      connected ? _goOnline() : _goOffline();
    });
  }

  // ── Phase transitions ────────────────────────────────────────────────────

  void _goOffline({bool initial = false}) {
    _dismissTimer?.cancel();
    HapticFeedback.heavyImpact();
    _checkCtrl.reset();
    _loopCtrl.repeat();

    // Poll via DNS lookup — not checkConnectivity() — because on iOS simulators
    // the WiFi interface stays "up" even when internet is blocked, making
    // checkConnectivity() always return true and immediately flip back to online.
    _pollTimer?.cancel();
    _pollTimer = Timer.periodic(const Duration(seconds: 3), (_) async {
      if (!mounted || _phase != _Phase.offline) {
        _pollTimer?.cancel();
        return;
      }
      final reachable = await getIt<ConnectivityService>().hasInternetAccess;
      if (reachable && mounted && _phase == _Phase.offline) _goOnline();
    });

    final wasHidden = _phase == _Phase.hidden;
    setState(() => _phase = _Phase.offline);

    if (wasHidden) {
      // Slide pill in from above.
      if (initial) {
        _slideCtrl.value = 1.0; // Already offline at startup — no animation.
      } else {
        _slideCtrl.forward(from: 0.0);
      }
    }
    // If the pill was already showing (online→offline), keep it visible and
    // let AnimatedContainer + AnimatedSwitcher animate the content change.
  }

  void _goOnline() {
    _pollTimer?.cancel();
    _dismissTimer?.cancel();
    HapticFeedback.lightImpact();
    _loopCtrl.stop();

    final wasHidden = _phase == _Phase.hidden;
    setState(() => _phase = _Phase.online);

    if (wasHidden) {
      // Edge case: came online without having been offline in this session.
      _slideCtrl.forward(from: 0.0);
    }
    _checkCtrl.forward(from: 0.0);

    _dismissTimer = Timer(const Duration(milliseconds: 3000), _dismissPill);
  }

  void _dismissPill() {
    _dismissTimer?.cancel();
    _slideCtrl.reverse().then((_) {
      if (mounted) setState(() => _phase = _Phase.hidden);
    });
  }

  @override
  void dispose() {
    _pollTimer?.cancel();
    _dismissTimer?.cancel();
    _sub.cancel();
    _slideCtrl.dispose();
    _loopCtrl.dispose();
    _checkCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_phase == _Phase.hidden) return widget.child;

    return Stack(
      children: [
        widget.child,
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: _NetworkPill(
            phase: _phase,
            slideCtrl: _slideCtrl,
            loopCtrl: _loopCtrl,
            checkCtrl: _checkCtrl,
            onTap: _phase == _Phase.online ? _dismissPill : null,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Floating pill
// ─────────────────────────────────────────────────────────────────────────────

class _NetworkPill extends StatelessWidget {
  final _Phase phase;
  final AnimationController slideCtrl;
  final AnimationController loopCtrl;
  final AnimationController checkCtrl;
  final VoidCallback? onTap;

  const _NetworkPill({
    required this.phase,
    required this.slideCtrl,
    required this.loopCtrl,
    required this.checkCtrl,
    this.onTap,
  });

  static const _gradientOffline = LinearGradient(
    colors: [Color(0xFF1C1C1E), Color(0xFF3D0000)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const _gradientOnline = LinearGradient(
    colors: [Color(0xFF1A3C20), Color(0xFF2E7D32)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const _shadowOffline = Color(0xFF8B0000);
  static const _shadowOnline = Color(0xFF1B5E20);

  @override
  Widget build(BuildContext context) {
    final isOnline = phase == _Phase.online;

    // Spring entry from above; fast cubic exit.
    final slide = Tween<Offset>(
      begin: const Offset(0, -2.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: slideCtrl,
        curve: Curves.easeOutBack,
        reverseCurve: Curves.easeInQuart,
      ),
    );

    return SlideTransition(
      position: slide,
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          bottom: false,
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: GestureDetector(
                onTap: onTap,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 480),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    gradient: isOnline ? _gradientOnline : _gradientOffline,
                    borderRadius: BorderRadius.circular(100.r),
                    boxShadow: [
                      BoxShadow(
                        color: (isOnline ? _shadowOnline : _shadowOffline)
                            .withAlpha(140),
                        blurRadius: 22,
                        spreadRadius: -2,
                        offset: const Offset(0, 9),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.white.withAlpha(22),
                      width: 0.6,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.w,
                      vertical: 9.h,
                    ),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 320),
                      switchInCurve: Curves.easeOutCubic,
                      switchOutCurve: Curves.easeInCubic,
                      transitionBuilder: (child, animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0.0, 0.35),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          ),
                        );
                      },
                      child: isOnline
                          ? _OnlineContent(
                        key: const ValueKey('online'),
                        checkCtrl: checkCtrl,
                      )
                          : _OfflineContent(
                        key: const ValueKey('offline'),
                        loopCtrl: loopCtrl,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Offline content — pulsing icon + text + bouncing reconnect dots
// ─────────────────────────────────────────────────────────────────────────────

class _OfflineContent extends StatelessWidget {
  final AnimationController loopCtrl;

  const _OfflineContent({super.key, required this.loopCtrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Wifi-off icon pulses between 50 % and 100 % opacity.
        AnimatedBuilder(
          animation: loopCtrl,
          builder: (_, _) {
            final t = (1 - (loopCtrl.value * 2 - 1).abs());
            final pulse = 0.5 + 0.5 * Curves.easeInOut.transform(t);
            return Opacity(
              opacity: pulse,
              child: Icon(
                Icons.wifi_off_rounded,
                color: Colors.white,
                size: 14.sp,
              ),
            );
          },
        ),
        SizedBox(width: 7.w),
        Text(
          'network.offline.bannerMessage'.tr(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.5.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.25,
          ),
        ),
        SizedBox(width: 10.w),
        _BouncingDots(loopCtrl: loopCtrl),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Online content — elastic checkmark + fade-in text
// ─────────────────────────────────────────────────────────────────────────────

class _OnlineContent extends StatelessWidget {
  final AnimationController checkCtrl;

  const _OnlineContent({super.key, required this.checkCtrl});

  @override
  Widget build(BuildContext context) {
    final iconScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: checkCtrl,
        curve: const Interval(0.0, 0.6, curve: Curves.elasticOut),
      ),
    );
    final textFade = CurvedAnimation(
      parent: checkCtrl,
      curve: const Interval(0.25, 0.75, curve: Curves.easeOut),
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ScaleTransition(
          scale: iconScale,
          child: Icon(
            Icons.check_circle_rounded,
            color: Colors.white,
            size: 15.sp,
          ),
        ),
        SizedBox(width: 7.w),
        FadeTransition(
          opacity: textFade,
          child: Text(
            'network.online.bannerMessage'.tr(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.5.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.25,
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Three staggered bouncing dots — typing-indicator style reconnect signal
// ─────────────────────────────────────────────────────────────────────────────

class _BouncingDots extends StatelessWidget {
  final AnimationController loopCtrl;

  const _BouncingDots({required this.loopCtrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (i) {
        return AnimatedBuilder(
          animation: loopCtrl,
          builder: (_, _) {
            // Each dot is phase-shifted by 0.22 of the cycle.
            const stagger = 0.22;
            final phase = ((loopCtrl.value - i * stagger) % 1.0 + 1.0) % 1.0;
            // Smooth up-and-down arc: ease up in first half, ease down in second.
            final bounce = phase < 0.5
                ? Curves.easeOut.transform(phase * 2)
                : Curves.easeIn.transform(1.0 - (phase - 0.5) * 2);
            return Transform.translate(
              offset: Offset(0, -4.5.h * bounce),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 1.5.w),
                width: 4.w,
                height: 4.w,
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(180),
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
