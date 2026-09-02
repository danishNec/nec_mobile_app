import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/security/security_threat.dart';
import '../core/colors/app_colors.dart';
import '../core/theme/app_semantic_colors.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Screen
// This widget lives ABOVE MaterialApp — uses AppColors / AppSemanticColors.dark
// directly instead of context.appColors (Theme not available at this level).
// ─────────────────────────────────────────────────────────────────────────────

class SecurityBlockedScreen extends StatefulWidget {
  final Set<SecurityThreat> threats;

  const SecurityBlockedScreen({super.key, required this.threats});

  @override
  State<SecurityBlockedScreen> createState() => _SecurityBlockedScreenState();
}

class _SecurityBlockedScreenState extends State<SecurityBlockedScreen>
    with TickerProviderStateMixin {
  late final AnimationController _pulseCtrl;
  late final AnimationController _ringCtrl;
  late final AnimationController _entryCtrl;

  @override
  void initState() {
    super.initState();

    _pulseCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);

    _ringCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    )..repeat();

    _entryCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..forward();
  }

  @override
  void dispose() {
    _pulseCtrl.dispose();
    _ringCtrl.dispose();
    _entryCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final entry = CurvedAnimation(
      parent: _entryCtrl,
      curve: Curves.easeOutCubic,
    );

    return PopScope(
      canPop: false,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Material(
          color: AppColors.brandBlack,
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: Stack(
              children: [
                // Dark-red ambient glow — conveys danger without screaming
                Positioned.fill(child: _AmbientGlow()),

                // Foreground content
                SafeArea(
                  child: FadeTransition(
                    opacity: entry,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.06),
                        end: Offset.zero,
                      ).animate(entry),
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                          vertical: 20.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _AlertBadge(pulseCtrl: _pulseCtrl),
                            SizedBox(height: 36.h),
                            _AnimatedShield(
                              pulseCtrl: _pulseCtrl,
                              ringCtrl: _ringCtrl,
                            ),
                            SizedBox(height: 30.h),
                            Text(
                              'security.blocked.title'.tr(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w800,
                                color: AppColors.brandWhite,
                                letterSpacing: -0.5,
                                height: 1.2,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              'security.blocked.subtitle'.tr(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13.5.sp,
                                color: AppColors.brandMuted,
                                height: 1.65,
                                letterSpacing: 0.1,
                              ),
                            ),
                            SizedBox(height: 32.h),
                            // Divider with label
                            _SectionDivider(),
                            SizedBox(height: 16.h),
                            // Threat cards
                            ...widget.threats.map(
                              (t) => Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: _ThreatCard(threat: t),
                              ),
                            ),
                            SizedBox(height: 28.h),
                            _ExitButton(),
                            SizedBox(height: 8.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Ambient background glow
// ─────────────────────────────────────────────────────────────────────────────

class _AmbientGlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(0, -0.35),
          radius: 0.85,
          colors: [
            AppColors.errorDark.withAlpha(45),
            AppColors.brandBlack.withAlpha(0),
          ],
        ),
      ),
      child: const SizedBox.expand(),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// "● SECURITY ALERT" pill at the top
// ─────────────────────────────────────────────────────────────────────────────

class _AlertBadge extends StatelessWidget {
  final AnimationController pulseCtrl;

  const _AlertBadge({required this.pulseCtrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: AppSemanticColors.dark.errorSubtle,
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(color: AppColors.error.withAlpha(70), width: 0.8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: pulseCtrl,
            builder: (_, child) {
              final v = Curves.easeInOut.transform(pulseCtrl.value);
              return Container(
                width: 7.w,
                height: 7.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.error.withAlpha((120 + 135 * v).toInt()),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.error.withAlpha((60 * v).toInt()),
                      blurRadius: 6,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(width: 9.w),
          Text(
            'SECURITY ALERT',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.error,
              letterSpacing: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Animated shield — pulsing icon surrounded by expanding rings
// ─────────────────────────────────────────────────────────────────────────────

class _AnimatedShield extends StatelessWidget {
  final AnimationController pulseCtrl;
  final AnimationController ringCtrl;

  const _AnimatedShield({required this.pulseCtrl, required this.ringCtrl});

  @override
  Widget build(BuildContext context) {
    const size = 84.0;

    return SizedBox(
      width: (size + 80).w,
      height: (size + 80).w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Three staggered expanding rings
          for (int i = 0; i < 3; i++)
            AnimatedBuilder(
              animation: ringCtrl,
              builder: (_, child) {
                const stagger = 0.33;
                final raw = (ringCtrl.value - i * stagger) % 1.0;
                final t = raw < 0 ? raw + 1.0 : raw;
                final scale = 0.55 + 0.65 * Curves.easeOut.transform(t);
                final alpha = ((1.0 - t) * 0.35 * 255).toInt();
                return Transform.scale(
                  scale: scale,
                  child: Container(
                    width: (size + 80).w,
                    height: (size + 80).w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.error.withAlpha(alpha),
                        width: 1.2,
                      ),
                    ),
                  ),
                );
              },
            ),

          // Pulsing shield container
          AnimatedBuilder(
            animation: pulseCtrl,
            builder: (_, child) {
              final v = Curves.easeInOut.transform(pulseCtrl.value);
              return Container(
                width: size.w,
                height: size.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      AppSemanticColors.dark.errorSubtle,
                      AppColors.errorDark.withAlpha(90),
                    ],
                  ),
                  border: Border.all(
                    color: AppColors.error.withAlpha((100 + 100 * v).toInt()),
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.error.withAlpha((40 + 50 * v).toInt()),
                      blurRadius: 28 + 12 * v,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: child,
              );
            },
            child: Icon(
              Icons.lock_outline_rounded,
              size: 38.sp,
              color: AppColors.error,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Section divider — "Detected issues" label
// ─────────────────────────────────────────────────────────────────────────────

class _SectionDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(height: 0.5, color: AppColors.brandMid)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            'DETECTED ISSUES',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.brandMuted,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Expanded(child: Container(height: 0.5, color: AppColors.brandMid)),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Individual threat card — left red accent border + contextual icon
// ─────────────────────────────────────────────────────────────────────────────

class _ThreatCard extends StatelessWidget {
  final SecurityThreat threat;

  const _ThreatCard({required this.threat});

  IconData get _icon => switch (threat) {
    SecurityThreat.jailbreakOrRoot => Icons.phonelink_lock_rounded,
    SecurityThreat.developerMode => Icons.developer_mode_rounded,
    SecurityThreat.usbDebugging => Icons.usb_rounded,
    SecurityThreat.emulator => Icons.computer_rounded,
    SecurityThreat.mockLocation => Icons.location_off_rounded,
  };

  String get _key => switch (threat) {
    SecurityThreat.jailbreakOrRoot =>
      'security.blocked.threats.jailbreakOrRoot',
    SecurityThreat.developerMode => 'security.blocked.threats.developerMode',
    SecurityThreat.usbDebugging => 'security.blocked.threats.usbDebugging',
    SecurityThreat.emulator => 'security.blocked.threats.emulator',
    SecurityThreat.mockLocation => 'security.blocked.threats.mockLocation',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppSemanticColors.dark.errorSubtle,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.error.withAlpha(45), width: 0.5),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            // Left accent bar
            Container(
              width: 3.w,
              decoration: BoxDecoration(
                color: AppColors.error,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  bottomLeft: Radius.circular(12.r),
                ),
              ),
            ),
            SizedBox(width: 14.w),
            // Icon badge
            Container(
              width: 34.w,
              height: 34.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.error.withAlpha(18),
              ),
              child: Icon(_icon, color: AppColors.error, size: 16.sp),
            ),
            SizedBox(width: 12.w),
            // Message
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 14.h),
                child: Text(
                  _key.tr(),
                  style: TextStyle(
                    color: AppColors.brandOffWhite,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.45,
                  ),
                ),
              ),
            ),
            SizedBox(width: 14.w),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Exit button — gradient red, full width
// ─────────────────────────────────────────────────────────────────────────────

class _ExitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: SystemNavigator.pop,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 17.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.errorDark, AppColors.errorLight],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.error.withAlpha(55),
              blurRadius: 22,
              offset: const Offset(0, 8),
              spreadRadius: -4,
            ),
          ],
        ),
        child: Text(
          'security.blocked.exitButton'.tr(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.brandWhite,
            letterSpacing: 0.4,
          ),
        ),
      ),
    );
  }
}
