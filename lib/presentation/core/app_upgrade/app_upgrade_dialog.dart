import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/app_upgrade/app_upgrade_bloc.dart';
import '../../../domain/app_upgrade/app_version_info.dart';
import '../button/app_button.dart';
import '../notify/app_notify.dart';
import 'widgets/upgrade_changelog_list.dart';
import 'widgets/upgrade_icon_badge.dart';
import 'widgets/upgrade_version_chip.dart';

/// Full-screen overlay dialog for the app-upgrade flow.
///
/// • Force update: [PopScope.canPop] = false — user cannot dismiss without updating.
/// • Optional update: a "remind me later" link is shown below the primary CTA.
///
/// The dialog is presented via [AppUpgradeManager.show], which wraps it in a
/// [RawDialogRoute] with a slide-up + fade transition.
class AppUpgradeDialog extends StatelessWidget {
  final AppVersionInfo versionInfo;

  /// Callback fired when the user taps "Update Now".
  final VoidCallback onUpdatePressed;

  /// Callback fired when the user taps the skip link.
  /// Null for force updates — the link is hidden entirely.
  final VoidCallback? onSkipPressed;

  /// Optional replacement for the default system-update icon (e.g. your app logo).
  final Widget? appLogo;

  const AppUpgradeDialog({
    super.key,
    required this.versionInfo,
    required this.onUpdatePressed,
    this.onSkipPressed,
    this.appLogo,
  });

  bool get _isForce => versionInfo.upgradeType == AppUpgradeType.force;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return PopScope(
      canPop: !_isForce,
      child: Stack(
        children: [
          // Blurred, tinted backdrop
          IgnorePointer(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: ColoredBox(color: cs.scrim.withAlpha(130)),
            ),
          ),
          // Sheet anchored to the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.9,
              ),
              decoration: BoxDecoration(
                color: cs.secondary,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28.r)),
                border: Border.all(
                  color: cs.onPrimary.withAlpha(30),
                  width: 0.5.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(110),
                    blurRadius: 48,
                    offset: const Offset(0, -8),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _DragHandle(cs: cs),
                  Flexible(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(24.w, 6.h, 24.w, 40.h),
                      child: _DialogBody(
                        versionInfo: versionInfo,
                        isForce: _isForce,
                        appLogo: appLogo,
                        onUpdatePressed: onUpdatePressed,
                        onSkipPressed: onSkipPressed,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Private sub-widgets ──────────────────────────────────────────────────────

class _DragHandle extends StatelessWidget {
  final ColorScheme cs;
  const _DragHandle({required this.cs});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(top: 12.h, bottom: 6.h),
    child: Container(
      width: 40.w,
      height: 4.h,
      decoration: BoxDecoration(
        color: cs.onPrimary.withAlpha(38),
        borderRadius: BorderRadius.circular(2.r),
      ),
    ),
  );
}

class _DialogBody extends StatelessWidget {
  final AppVersionInfo versionInfo;
  final bool isForce;
  final Widget? appLogo;
  final VoidCallback onUpdatePressed;
  final VoidCallback? onSkipPressed;

  const _DialogBody({
    required this.versionInfo,
    required this.isForce,
    required this.appLogo,
    required this.onUpdatePressed,
    required this.onSkipPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final hasChangelog = versionInfo.changelogItems.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 16.h),

        UpgradeIconBadge(child: appLogo),
        SizedBox(height: 22.h),

        // Force-update badge
        if (isForce) ...[_ForceBadge(theme: theme), SizedBox(height: 14.h)],

        // Title
        Text(
          versionInfo.updateTitle ?? 'appUpgrade.defaultTitle'.tr(),
          style: theme.textTheme.titleLarge?.copyWith(
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: cs.onSurface,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h),

        UpgradeVersionChip(
          currentVersion: versionInfo.currentVersion,
          latestVersion: versionInfo.latestVersion,
        ),
        SizedBox(height: 18.h),

        // Description
        Text(
          versionInfo.updateMessage ?? 'appUpgrade.defaultMessage'.tr(),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: cs.onSurfaceVariant,
            height: 1.6,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 22.h),

        // Changelog section
        if (hasChangelog) ...[
          _SectionLabel(
            label: 'appUpgrade.whatsNew'.tr(),
            theme: theme,
            cs: cs,
          ),
          SizedBox(height: 8.h),
          UpgradeChangelogList(items: versionInfo.changelogItems),
          SizedBox(height: 28.h),
        ],

        // Primary CTA — shows a loading spinner while opening the store.
        // Also surfaces an error toast if the store URL cannot be launched.
        BlocConsumer<AppUpgradeBloc, AppUpgradeState>(
          listenWhen: (prev, curr) =>
              prev.openStoreFailureOrSuccessOption !=
              curr.openStoreFailureOrSuccessOption,
          listener: (_, state) => state.openStoreFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (_) => AppNotify.toast(
                'appUpgrade.errorOpeningStore'.tr(),
                type: AppToastType.error,
              ),
              (_) {},
            ),
          ),
          buildWhen: (prev, curr) => prev.isOpeningStore != curr.isOpeningStore,
          builder: (ctx, state) => AppButton(
            text: 'appUpgrade.updateButton'.tr(),
            isLoading: state.isOpeningStore,
            onTap: state.isOpeningStore ? null : onUpdatePressed,
            sideWidget: state.isOpeningStore
                ? null
                : Icon(
                    Icons.system_update_alt_rounded,
                    size: 18.w,
                    color: cs.primary,
                  ),
            sideWidgetPosition: SideWidgetPosition.right,
          ),
        ),

        // Skip link — hidden on force update
        if (!isForce && onSkipPressed != null) ...[
          SizedBox(height: 14.h),
          GestureDetector(
            onTap: onSkipPressed,
            behavior: HitTestBehavior.opaque,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                'appUpgrade.skipButton'.tr(),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: cs.onSurfaceVariant.withAlpha(80),
                ),
              ),
            ),
          ),
        ],

        SizedBox(height: 8.h),
      ],
    );
  }
}

class _ForceBadge extends StatelessWidget {
  final ThemeData theme;
  const _ForceBadge({required this.theme});

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
    decoration: BoxDecoration(
      color: theme.colorScheme.error.withAlpha(18),
      borderRadius: BorderRadius.circular(20.r),
      border: Border.all(
        color: theme.colorScheme.error.withAlpha(55),
        width: 0.5.w,
      ),
    ),
    child: Text(
      'appUpgrade.forceLabel'.tr().toUpperCase(),
      style: theme.textTheme.labelSmall?.copyWith(
        color: theme.colorScheme.error,
        fontWeight: FontWeight.w700,
        fontSize: 10.sp,
        letterSpacing: 1.0,
      ),
    ),
  );
}

class _SectionLabel extends StatelessWidget {
  final String label;
  final ThemeData theme;
  final ColorScheme cs;

  const _SectionLabel({
    required this.label,
    required this.theme,
    required this.cs,
  });

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.centerLeft,
    child: Text(
      label.toUpperCase(),
      style: theme.textTheme.labelSmall?.copyWith(
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
        color: cs.onSurfaceVariant.withAlpha(160),
        letterSpacing: 1.2,
      ),
    ),
  );
}
