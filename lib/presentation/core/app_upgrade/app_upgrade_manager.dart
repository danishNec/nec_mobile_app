import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/app_upgrade/app_upgrade_bloc.dart';
import '../../../domain/app_upgrade/app_version_info.dart';
import '../../../domain/core/di/injection.dart';
import '../../routes/app_routes.dart';
import 'app_upgrade_dialog.dart';

/// Context-free entry point for the upgrade dialog.
///
/// Mirrors the pattern used by [AppNotify] — uses the global navigator key
/// so it can be called from anywhere (BLoC listeners, etc.).
class AppUpgradeManager {
  AppUpgradeManager._();

  static Future<void> show({
    required AppVersionInfo versionInfo,
    required AppUpgradeBloc upgradeBloc,
    required VoidCallback onUpdatePressed,
    VoidCallback? onSkipped,
    Widget? appLogo,
  }) async {
    final navigatorState = getIt<AppRouter>().navigatorKey.currentState;
    if (navigatorState == null) return;

    final isForce = versionInfo.upgradeType == AppUpgradeType.force;
    final nav = navigatorState;

    await nav.push(
      RawDialogRoute<void>(
        barrierDismissible: false,
        barrierLabel: 'App Upgrade',
        barrierColor: Colors.transparent,
        transitionDuration: const Duration(milliseconds: 480),
        pageBuilder: (context, animation, secondaryAnimation) =>
            BlocProvider.value(
              value: upgradeBloc,
              child: AppUpgradeDialog(
                versionInfo: versionInfo,
                appLogo: appLogo,
                onUpdatePressed: onUpdatePressed,
                onSkipPressed: isForce
                    ? null
                    : () {
                        nav.pop();
                        onSkipped?.call();
                      },
              ),
            ),
        transitionBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
          ),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: const Interval(0.0, 0.55, curve: Curves.easeIn),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}