import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMpinTitleText extends HookWidget {
  const AppMpinTitleText(this.theme, this.colors, {super.key});

  final ThemeData theme;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final curvedAnim = useMemoized(
      () => CurvedAnimation(parent: controller, curve: Curves.easeOutCubic),
      [controller],
    );

    final slideAnim = useMemoized(
      () => Tween<Offset>(
        begin: const Offset(0, 0.2),
        end: Offset.zero,
      ).animate(curvedAnim),
      [curvedAnim],
    );

    final fadeAnim = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnim),
      [curvedAnim],
    );

    useEffect(() {
      final timer = Timer(
        const Duration(milliseconds: 150),
        controller.forward,
      );
      return timer.cancel;
    }, const []);

    return FadeTransition(
      opacity: fadeAnim,
      child: SlideTransition(
        position: slideAnim,
        child: Text(
          'core.mpin.subtitle'.tr(),
          style: theme.textTheme.bodyMedium?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: colors.onSurface.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }
}
