import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/theme/app_theme_ext.dart';
import '../core/scaffold/app_scaffold.dart';

@RoutePage()
class SupportPage extends HookWidget {
  const SupportPage({super.key});

  static const String supportEmail = 'support@yourapp.com';
  static const String whatsappNumber = '+919999999999';

  Future<void> _launchWhatsApp() async {
    final Uri url = Uri.parse(
      'https://wa.me/${whatsappNumber.replaceAll('+', '')}?text=Hello%20Support',
    );

    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: supportEmail,
      query: 'subject=Support Request',
    );

    await launchUrl(emailUri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final pageController = useAnimationController(
      duration: const Duration(milliseconds: 1400),
    );
    final floatController = useAnimationController(
      duration: const Duration(milliseconds: 2200),
    )..repeat(reverse: true);

    useEffect(() {
      pageController.forward();
      return null;
    }, []);

    final heroOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: pageController,
        curve: const Interval(0.0, 0.35, curve: Curves.easeOut),
      ),
    );

    final heroSlide =
        Tween<Offset>(begin: const Offset(0, 0.12), end: Offset.zero).animate(
          CurvedAnimation(
            parent: pageController,
            curve: const Interval(0.0, 0.35, curve: Curves.easeOutCubic),
          ),
        );

    final titleOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: pageController,
        curve: const Interval(0.2, 0.45, curve: Curves.easeOut),
      ),
    );

    final card1Animation = CurvedAnimation(
      parent: pageController,
      curve: const Interval(0.35, 0.65, curve: Curves.easeOutCubic),
    );

    final card2Animation = CurvedAnimation(
      parent: pageController,
      curve: const Interval(0.5, 0.8, curve: Curves.easeOutCubic),
    );

    final footerOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: pageController,
        curve: const Interval(0.7, 1.0, curve: Curves.easeOut),
      ),
    );

    return AppScaffold(
      appBar: AppAppBar(title: 'support.title'.tr()),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            FadeTransition(
              opacity: heroOpacity,
              child: SlideTransition(
                position: heroSlide,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colorScheme.secondary,
                        colorScheme.secondary.withAlpha(200),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(18.r),
                    border: Border.all(
                      color: colorScheme.outline.withAlpha(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.shadow.withAlpha(80),
                        blurRadius: 30,
                        offset: const Offset(0, 16),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AnimatedBuilder(
                        animation: floatController,
                        builder: (_, child) {
                          final dy =
                              math.sin(floatController.value * math.pi * 2) * 6;

                          return Transform.translate(
                            offset: Offset(0, dy),
                            child: child,
                          );
                        },
                        child: Container(
                          height: 66.w,
                          width: 66.w,
                          decoration: BoxDecoration(
                            color: colorScheme.secondary,
                            borderRadius: BorderRadius.circular(22.r),
                            border: Border.all(
                              color: colorScheme.outline,
                              width: 0.5.w,
                            ),
                          ),
                          child: Icon(Icons.support_agent_rounded, size: 34.sp),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        'support.subtitle'.tr(),
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'support.description'.tr(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 34.h),
            FadeTransition(
              opacity: titleOpacity,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-0.08, 0),
                  end: Offset.zero,
                ).animate(titleOpacity),
                child: Text(
                  'support.contactUs.title'.tr(),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            _AnimatedSupportCard(
              animation: card1Animation,
              icon: Icons.chat_rounded,
              title: 'support.contactUs.whatsapp.title'.tr(),
              subtitle: 'support.contactUs.whatsapp.message'.tr(),
              iconColor: context.appColors.success,
              onTap: _launchWhatsApp,
            ),
            SizedBox(height: 16.h),
            _AnimatedSupportCard(
              animation: card2Animation,
              icon: Icons.email_rounded,
              title: 'support.contactUs.email.title'.tr(),
              subtitle: 'support.contactUs.email.message'.tr(),
              iconColor: context.appColors.info,
              onTap: _launchEmail,
            ),
            SizedBox(height: 42.h),
            FadeTransition(
              opacity: footerOpacity,
              child: Center(
                child: Text(
                  'support.instruction'.tr(),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurface.withAlpha(150),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

class _AnimatedSupportCard extends HookWidget {
  final Animation<double> animation;
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;
  final VoidCallback onTap;

  const _AnimatedSupportCard({
    required this.animation,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final pressed = useState(false);

    final pulseController = useAnimationController(
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);

    final pulseScale = Tween<double>(begin: 1, end: 1.08).animate(
      CurvedAnimation(parent: pulseController, curve: Curves.easeInOut),
    );

    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.18),
          end: Offset.zero,
        ).animate(animation),
        child: AnimatedScale(
          scale: pressed.value ? 0.97 : 1,
          duration: const Duration(milliseconds: 140),
          curve: Curves.easeOut,
          child: Material(
            color: colorScheme.surface,
            borderRadius: BorderRadius.circular(12.r),
            child: InkWell(
              borderRadius: BorderRadius.circular(12.r),
              onTap: onTap,
              onTapDown: (_) => pressed.value = true,
              onTapUp: (_) => pressed.value = false,
              onTapCancel: () => pressed.value = false,
              child: Ink(
                padding: EdgeInsets.all(18.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: colorScheme.outline.withAlpha(40)),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.shadow.withAlpha(30),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ScaleTransition(
                      scale: pulseScale,
                      child: Container(
                        height: 50.w,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: iconColor.withAlpha(30),
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: iconColor.withAlpha(50)),
                        ),
                        child: Icon(icon, color: iconColor, size: 30.sp),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            subtitle,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 13.sp,
                              color: context.appColors.muted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 18.sp),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
