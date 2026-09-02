import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../button/app_button.dart';
import '../theme/app_theme_ext.dart';

enum AppDialogType { warning, info, success, error }

class AppDialog extends StatelessWidget {
  final String? title;
  final Widget? titleWidget;
  final String? message;
  final TextSpan? richMessage;
  final AppDialogType? type;
  final String? buttonText;
  final VoidCallback? onPressed;
  final bool showIcon;
  final bool isRichText;
  final bool isTitleWidget;
  final double buttonWidth;
  final bool showTwoButtons;
  final String? secondButtonText;
  final VoidCallback? onSecondPressed;
  final Widget? primaryButton;
  final Widget? secondaryButton;
  final bool useSpaceBetween;
  final Widget? sideWidget;

  const AppDialog({
    super.key,
    this.title,
    this.titleWidget,
    this.message,
    this.richMessage,
    this.type,
    this.buttonText,
    this.onPressed,
    this.showIcon = true,
    this.isRichText = false,
    this.isTitleWidget = false,
    this.buttonWidth = 75,
    this.showTwoButtons = false,
    this.secondButtonText,
    this.onSecondPressed,
    this.primaryButton,
    this.secondaryButton,
    this.useSpaceBetween = false,
    this.sideWidget,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final appColors = context.appColors;

    final style = _styleFor(type ?? AppDialogType.info, appColors);

    return Dialog(
      elevation: 0,
      backgroundColor: cs.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
        side: BorderSide(color: cs.onPrimary.withAlpha(60), width: 0.5.w),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.w, 28.h, 24.w, 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showIcon) ...[
              _IconBadge(color: style.color, icon: style.icon),
              SizedBox(height: 20.h),
            ],

            if (isTitleWidget && titleWidget != null) ...[
              titleWidget!,
              SizedBox(height: 8.h),
            ] else if (title != null) ...[
              Text(
                title!,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
            ],

            if (message != null || richMessage != null)
              isRichText && richMessage != null
                  ? RichText(textAlign: TextAlign.center, text: richMessage!)
                  : Text(
                      message ?? '',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: cs.onSurfaceVariant,
                        height: 1.45,
                      ),
                      textAlign: TextAlign.center,
                    ),

            SizedBox(height: 28.h),

            if (showTwoButtons)
              Row(
                children: [
                  Expanded(
                    child:
                        primaryButton ??
                        AppButton(
                          text: buttonText ?? 'buttons.ok'.tr(),
                          onTap: onPressed ?? () => context.router.pop(),
                        ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child:
                        secondaryButton ??
                        AppButton(
                          text: secondButtonText ?? 'buttons.cancel'.tr(),
                          onTap: onSecondPressed ?? () => context.router.pop(),
                          backgroundColor: cs.secondaryContainer,
                          textStyle: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: cs.onPrimary,
                          ),
                          border: Border.all(
                            color: cs.tertiary.withAlpha(60),
                            width: 0.5.w,
                          ),
                        ),
                  ),
                ],
              )
            else
              primaryButton ??
                  AppButton(
                    text: buttonText ?? 'buttons.ok'.tr(),
                    onTap: onPressed ?? () => context.router.pop(),
                  ),
          ],
        ),
      ),
    );
  }

  _DialogStyle _styleFor(AppDialogType type, appColors) => switch (type) {
    AppDialogType.warning => _DialogStyle(
      Icons.warning_amber_rounded,
      appColors.warning,
    ),
    AppDialogType.info => _DialogStyle(
      Icons.info_outline_rounded,
      appColors.info,
    ),
    AppDialogType.success => _DialogStyle(
      Icons.check_circle_outline_rounded,
      appColors.success,
    ),
    AppDialogType.error => _DialogStyle(
      Icons.error_outline_rounded,
      appColors.error,
    ),
  };
}

// ─────────────────────────────────────────────────────────────────────────────

class _IconBadge extends StatelessWidget {
  final Color color;
  final IconData icon;

  const _IconBadge({required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.w,
      height: 76.w,
      decoration: BoxDecoration(
        color: color.withAlpha(15),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 58.w,
          height: 58.w,
          decoration: BoxDecoration(
            color: color.withAlpha(36),
            shape: BoxShape.circle,
            border: Border.all(color: color.withAlpha(56), width: 1.w),
            boxShadow: [
              BoxShadow(
                color: color.withAlpha(60),
                blurRadius: 18,
                spreadRadius: 0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(icon, color: color, size: 26.w),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _DialogStyle {
  final IconData icon;
  final Color color;

  const _DialogStyle(this.icon, this.color);
}
