import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_mpin.dart';
import 'app_mpin_back_space_key.dart';
import 'app_mpin_biometric_key.dart';
import 'app_mpin_digit_key.dart';

class AppMpinKeyPad extends HookWidget {
  const AppMpinKeyPad({
    super.key,
    required this.onDigitPressed,
    required this.onBackspace,
    required this.onBiometricPressed,
    required this.theme,
    required this.colors,
    required this.isShowingBiometricOption,
  });

  final void Function(String) onDigitPressed;
  final VoidCallback onBackspace;
  final VoidCallback? onBiometricPressed;
  final ThemeData theme;
  final ColorScheme colors;
  final bool isShowingBiometricOption;

  @override
  Widget build(BuildContext context) {
    final entryController = useAnimationController(
      duration: const Duration(milliseconds: 700),
    );

    // Each row gets an Interval slice of the shared controller.
    // Row i starts 17% into the timeline after the previous, giving a 120ms
    // stagger per row over the 700ms total, with 60% of the timeline devoted
    // to each row's own easeOutCubic settle.
    final rowAnimations = useMemoized(
      () => List.generate(AppMpin.keys.length, (i) {
        final start = i * 0.17;
        final end = (start + 0.60).clamp(0.0, 1.0);
        return CurvedAnimation(
          parent: entryController,
          curve: Interval(start, end, curve: Curves.easeOutCubic),
        );
      }),
      [entryController],
    );

    // Memoized so FadeTransition / SlideTransition (AnimatedWidget) never
    // re-subscribe to a new Animation object on each build call.
    final fadeAnims = useMemoized(
      () => rowAnimations
          .map((a) => Tween<double>(begin: 0.0, end: 1.0).animate(a))
          .toList(),
      [rowAnimations],
    );

    final slideAnims = useMemoized(
      () => rowAnimations
          .map(
            (a) => Tween<Offset>(
              begin: const Offset(0, 0.35),
              end: Offset.zero,
            ).animate(a),
          )
          .toList(),
      [rowAnimations],
    );

    useEffect(() {
      final timer = Timer(
        const Duration(milliseconds: 200),
        entryController.forward,
      );
      return timer.cancel;
    }, const []);

    return Column(
      children: List.generate(AppMpin.keys.length, (rowIndex) {
        final row = AppMpin.keys[rowIndex];

        return FadeTransition(
          opacity: fadeAnims[rowIndex],
          child: SlideTransition(
            position: slideAnims[rowIndex],
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: row.map((key) {
                  if (key == 'face') {
                    if (!isShowingBiometricOption) {
                      return SizedBox(width: 100.w, height: 66.h);
                    }
                    return AppMpinBiometricKey(onBiometricPressed, colors);
                  }
                  if (key == 'back') {
                    return AppMpinBackSpaceKey(onBackspace, colors);
                  }
                  return AppMpinDigitKey(
                    digit: key,
                    onTap: onDigitPressed,
                    theme: theme,
                    colors: colors,
                  );
                }).toList(),
              ),
            ),
          ),
        );
      }),
    );
  }
}
