import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../button/app_button.dart';
import '../theme/app_theme_ext.dart';

// ─── Empty / No-data state ────────────────────────────────────────────────────

/// Neutral "no data" state — use when a list or section is simply empty.
///
/// ```dart
/// AppEmptyView(
///   icon: Icons.people_outline_rounded,
///   title: 'beneficiaries.empty.title'.tr(),
///   subtitle: 'beneficiaries.empty.subtitle'.tr(),
///   actionLabel: 'buttons.addNew'.tr(),
///   onAction: () => ...,
/// )
/// ```
class AppEmptyView extends StatelessWidget {
  final IconData icon;
  final String? title;
  final String? subtitle;
  final String? actionLabel;
  final VoidCallback? onAction;

  const AppEmptyView({
    super.key,
    this.icon = Icons.inbox_outlined,
    this.title,
    this.subtitle,
    this.actionLabel,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return _StateFrame(
      badge: _IconBadge(
        icon: icon,
        iconColor: context.appColors.muted,
        backgroundColor: cs.outline.withAlpha(25),
        borderColor: cs.outline.withAlpha(40),
        shadowColor: cs.outline.withAlpha(0),
      ),
      title: title,
      subtitle: subtitle,
      actionLabel: actionLabel,
      onAction: onAction,
    );
  }
}

// ─── Error / Failure state ────────────────────────────────────────────────────

/// Error or failure state with an optional retry action.
///
/// When [onRetry] is provided, a button labelled [retryLabel] is shown.
///
/// ```dart
/// AppErrorView(
///   title: 'error.generic.title'.tr(),
///   subtitle: 'error.generic.subtitle'.tr(),
///   retryLabel: 'buttons.retry'.tr(),
///   onRetry: () => context.read<MyBloc>().add(MyEvent.retry()),
/// )
/// ```
class AppErrorView extends StatelessWidget {
  final IconData icon;
  final String? title;
  final String? subtitle;
  final String? retryLabel;
  final VoidCallback? onRetry;

  const AppErrorView({
    super.key,
    this.icon = Icons.cloud_off_rounded,
    this.title,
    this.subtitle,
    this.retryLabel,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return _StateFrame(
      badge: _IconBadge(
        icon: icon,
        iconColor: appColors.errorDark,
        backgroundColor: appColors.errorSubtle,
        borderColor: appColors.error.withAlpha(50),
        shadowColor: appColors.error.withAlpha(20),
      ),
      title: title,
      subtitle: subtitle,
      actionLabel: retryLabel,
      onAction: onRetry,
      actionVariant: _ActionVariant.retry,
    );
  }
}

// ─── Shared frame ─────────────────────────────────────────────────────────────

enum _ActionVariant { primary, retry }

class _StateFrame extends StatelessWidget {
  final Widget badge;
  final String? title;
  final String? subtitle;
  final String? actionLabel;
  final VoidCallback? onAction;
  final _ActionVariant actionVariant;

  const _StateFrame({
    required this.badge,
    this.title,
    this.subtitle,
    this.actionLabel,
    this.onAction,
    this.actionVariant = _ActionVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final appColors = context.appColors;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 380),
      curve: Curves.easeOutCubic,
      builder: (_, t, child) => Transform.translate(
        offset: Offset(0, 18.h * (1 - t)),
        child: Opacity(opacity: t, child: child),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              badge,
              if (title != null) ...[
                SizedBox(height: 20.h),
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: cs.onSurface,
                  ),
                ),
              ],
              if (subtitle != null) ...[
                SizedBox(height: 8.h),
                Text(
                  subtitle!,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: appColors.muted,
                    height: 1.5,
                  ),
                ),
              ],
              if (actionLabel != null && onAction != null) ...[
                SizedBox(height: 24.h),
                _ActionButton(
                  label: actionLabel!,
                  onTap: onAction!,
                  variant: actionVariant,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// ─── Icon badge ───────────────────────────────────────────────────────────────

class _IconBadge extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final Color borderColor;
  final Color shadowColor;

  const _IconBadge({
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.w,
      height: 76.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Icon(icon, size: 34.w, color: iconColor),
    );
  }
}

// ─── Action button ────────────────────────────────────────────────────────────

class _ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final _ActionVariant variant;

  const _ActionButton({
    required this.label,
    required this.onTap,
    required this.variant,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final appColors = context.appColors;

    final backgroundColor = switch (variant) {
      _ActionVariant.retry => appColors.errorDark,
      _ActionVariant.primary => cs.tertiary,
    };

    return AppButton(
      text: label,
      onTap: onTap,
      width: 180.w,
      height: 46.w,
      backgroundColor: backgroundColor,
      textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: variant == _ActionVariant.retry
            ? appColors.onError
            : appColors.onAccent,
      ),
    );
  }
}
