import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../domain/core/di/injection.dart';
import '../../../../../domain/core/prefs/app_prefs.dart';

class AppMpinHeaderText extends HookWidget {
  final ThemeData theme;
  final ColorScheme colors;
  const AppMpinHeaderText({
    super.key,
    required this.theme,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 600),
    );

    final curvedAnim = useMemoized(
      () => CurvedAnimation(parent: controller, curve: Curves.easeOutCubic),
      [controller],
    );

    final slideAnim = useMemoized(
      () => Tween<Offset>(
        begin: const Offset(0, 0.25),
        end: Offset.zero,
      ).animate(curvedAnim),
      [curvedAnim],
    );

    final fadeAnim = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnim),
      [curvedAnim],
    );

    useEffect(() {
      controller.forward();
      return null;
    }, const []);

    final prefs = getIt<SharedPrefs>();
    final userName = prefs.getUserName() ?? '';

    return FadeTransition(
      opacity: fadeAnim,
      child: SlideTransition(
        position: slideAnim,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              Container(
                width: 58.w,
                height: 58.w,
                decoration: BoxDecoration(
                  color: colors.secondary,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: colors.onPrimary.withValues(alpha: 0.08),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.lock_outline_rounded,
                    color: colors.tertiary,
                    size: 28.w,
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                'core.mpin.title'.tr(namedArgs: {'userName': userName}),
                textAlign: TextAlign.center,
                maxLines: 1,
                style: theme.textTheme.headlineLarge?.copyWith(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: colors.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}