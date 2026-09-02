import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../progress/app_progress_indicator.dart';
import '../theme/app_theme.dart';

class AppScaffold extends HookWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final Widget? drawer;
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final void Function()? onTapOutside;
  final Color? backgroundColor;
  final Widget? bottomSheet;
  final bool? resizeToAvoidBottomInset;

  final bool isLoading;
  final String? loadingMessage;

  const AppScaffold({
    super.key,
    this.scaffoldKey,
    this.drawer,
    this.appBar,
    this.body,
    this.onTapOutside,
    this.backgroundColor,
    this.bottomSheet,
    this.resizeToAvoidBottomInset,
    this.isLoading = false,
    this.loadingMessage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final gradient = theme.extension<AppGradient>()!.background;
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 250),
    );

    final fadeAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeOut,
    );

    final scaleAnimation = Tween<double>(
      begin: 0.95,
      end: 1,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOutBack));
    useEffect(() {
      if (isLoading) {
        controller.forward();
      } else {
        controller.reverse();
      }
      return null;
    }, [isLoading]);

    return TweenAnimationBuilder<Gradient>(
      tween: GradientTween(begin: gradient, end: gradient),
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn,
      builder: (context, animatedGradient, _) {
        return GestureDetector(
          onTap: onTapOutside,
          behavior: HitTestBehavior.translucent,
          child: Container(
            decoration: BoxDecoration(gradient: animatedGradient),
            child: SafeArea(
              top: false,
              bottom: Platform.isAndroid,
              child: Scaffold(
                key: scaffoldKey,
                drawer: drawer,
                backgroundColor: backgroundColor ?? Colors.transparent,
                resizeToAvoidBottomInset: resizeToAvoidBottomInset,
                appBar: appBar,
                bottomSheet: bottomSheet,
                body: Stack(
                  children: [
                    body ?? const SizedBox(),

                    if (isLoading)
                      Positioned.fill(
                        child: FadeTransition(
                          opacity: fadeAnimation,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                            child: Container(
                              color: colorScheme.scrim.withValues(alpha: 0.25),
                              child: Center(
                                child: ScaleTransition(
                                  scale: scaleAnimation,
                                  child: _PremiumLoaderCard(
                                    message: loadingMessage,
                                    colorScheme: colorScheme,
                                  ),
                                ),
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
      },
    );
  }
}

class _PremiumLoaderCard extends StatelessWidget {
  final String? message;
  final ColorScheme colorScheme;

  const _PremiumLoaderCard({this.message, required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: colorScheme.surface.withValues(alpha: 0.9),
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.15)),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.2),
            blurRadius: 20.r,
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
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class GradientTween extends Tween<Gradient> {
  GradientTween({required Gradient begin, required Gradient end})
    : super(begin: begin, end: end);

  @override
  Gradient lerp(double t) => Gradient.lerp(begin, end, t)!;
}
