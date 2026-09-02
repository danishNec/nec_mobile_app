import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import '../button/app_button.dart';
import '../global/app_global.dart';

class AppLanguageDialog extends HookWidget {
  const AppLanguageDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, _, _) => Stack(
        children: [
          IgnorePointer(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(color: Colors.transparent),
            ),
          ),
          Center(child: AppLanguageDialog()),
        ],
      ),
      transitionBuilder: (_, animation, __, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        );

        return FadeTransition(
          opacity: curved,
          child: ScaleTransition(
            scale: Tween(begin: 0.9, end: 1.0).animate(curved),
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final current = useState(context.locale.languageCode);
    final isLoading = useState(false);

    final controller = useAnimationController(
      duration: const Duration(milliseconds: 500),
    )..forward();

    final languages = [
      {'code': AppLocale.en.name, 'name': 'core.languages.english'.tr()},
      {'code': AppLocale.ar.name, 'name': 'core.languages.arabic'.tr()},
      {'code': AppLocale.ml.name, 'name': 'core.languages.malayalam'.tr()},
      {'code': AppLocale.hi.name, 'name': 'core.languages.hindi'.tr()},
      {'code': AppLocale.fil.name, 'name': 'core.languages.tagalog'.tr()},
    ];

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
        side: BorderSide(color: colorScheme.outline, width: 1.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'core.languageDialog.title'.tr(),
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge?.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 16.h),

            ...languages.map((lang) {
              final isSelected = current.value == lang['code'];

              return FadeTransition(
                opacity: controller,
                child: SlideTransition(
                  position: Tween(
                    begin: const Offset(0, 0.1),
                    end: Offset.zero,
                  ).animate(controller),
                  child: GestureDetector(
                    onTap: isLoading.value
                        ? null
                        : () => current.value = lang['code']!,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: EdgeInsets.symmetric(vertical: 6.h),
                      padding: EdgeInsets.all(18.w),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? colorScheme.tertiary.withAlpha(20)
                            : colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: isSelected
                              ? colorScheme.tertiary
                              : colorScheme.onPrimary.withAlpha(80),
                          width: 0.75.w,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: colorScheme.primary.withAlpha(20),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ]
                            : [],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              lang['name']!,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: 14.5.sp,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: isSelected
                                ? Icon(
                                    Icons.check_circle,
                                    size: 22.sp,
                                    key: ValueKey(lang['code']),
                                    color: colorScheme.tertiary,
                                  )
                                : const SizedBox.shrink(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),

            SizedBox(height: 24.h),

            Row(
              children: [
                Expanded(
                  child: AppButton(
                    backgroundColor: colorScheme.secondaryContainer,
                    border: Border.all(color: colorScheme.outline, width: 1.w),
                    height: 50.h,
                    onTap: isLoading.value ? null : () => context.router.pop(),
                    text: 'buttons.cancel'.tr(),
                    textStyle: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: AppButton(
                    height: 50.h,
                    isLoading: isLoading.value,
                    onTap: isLoading.value
                        ? null
                        : () async {
                            if (current.value == context.locale.languageCode) {
                              context.router.pop();
                              return;
                            }
                            isLoading.value = true;

                            final locale = context.supportedLocales.firstWhere(
                              (l) => l.languageCode == current.value,
                              orElse: () => context.supportedLocales.first,
                            );

                            // Capture stable references before any async gap.
                            // After await, the locale rebuild can recreate the dialog
                            // element, making `context` stale and context.mounted false.
                            final navigator = Navigator.of(context);
                            final easyLoc = EasyLocalization.of(context)!;

                            await Future.delayed(
                              const Duration(milliseconds: 600),
                            );

                            // Apply locale first so the rebuild reaches the
                            // underlying pages while the dialog is still in the
                            // tree, then pop with the stable navigator reference.
                            await easyLoc.setLocale(locale);
                            navigator.pop();
                          },
                    text: 'buttons.apply'.tr(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
