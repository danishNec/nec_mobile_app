import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../domain/core/di/injection.dart';
import '../../routes/app_routes.dart';
import '../dialog/app_dialog.dart';
import '../toast/app_toast.dart';

export '../dialog/app_dialog.dart';
export '../toast/app_toast.dart' show AppToastType, AppToastPosition;

// ─── Unified context-free API ─────────────────────────────────────────────────

/// Unified context-free notification API.
///
///   AppNotify.dialog(message: 'Something went wrong', type: AppDialogType.error);
///   AppNotify.toast('Saved!');
///   AppNotify.toast('Failed!', type: AppToastType.error, position: AppToastPosition.top);
class AppNotify {
  AppNotify._();

  static Future<void> dialog({
    String? title,
    Widget? titleWidget,
    String? message,
    TextSpan? richMessage,
    AppDialogType type = AppDialogType.info,
    String? buttonText,
    VoidCallback? onPressed,
    bool barrierDismissible = false,
    bool showIcon = true,
    bool isRichText = false,
    bool isTitleWidget = false,
    double buttonWidth = 75,
    bool showTwoButtons = false,
    String? secondButtonText,
    VoidCallback? onSecondPressed,
    Widget? primaryButton,
    Widget? secondaryButton,
    bool showBlurBackground = true,
    bool useSpaceBetween = false,
    Widget? sideWidget,
  }) {
    final navigatorState = getIt<AppRouter>().navigatorKey.currentState;
    if (navigatorState == null) return Future.value();

    return navigatorState.push(
      RawDialogRoute<void>(
        barrierDismissible: barrierDismissible,
        barrierLabel: 'Dialog',
        barrierColor: Colors.transparent,
        transitionDuration: const Duration(milliseconds: 440),
        pageBuilder: (context, animation, secondaryAnimation) {
          final cs = Theme.of(context).colorScheme;
          return Stack(
            children: [
              if (showBlurBackground)
                IgnorePointer(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: ColoredBox(color: cs.scrim.withAlpha(80)),
                  ),
                ),
              Center(
                child: AppDialog(
                  title: title,
                  titleWidget: titleWidget,
                  message: message,
                  richMessage: richMessage,
                  type: type,
                  buttonText: buttonText,
                  onPressed: onPressed,
                  showIcon: showIcon,
                  isRichText: isRichText,
                  isTitleWidget: isTitleWidget,
                  buttonWidth: buttonWidth,
                  showTwoButtons: showTwoButtons,
                  secondButtonText: secondButtonText,
                  onSecondPressed: onSecondPressed,
                  primaryButton: primaryButton,
                  secondaryButton: secondaryButton,
                  useSpaceBetween: useSpaceBetween,
                  sideWidget: sideWidget,
                ),
              ),
            ],
          );
        },
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
            child: ScaleTransition(
              scale: Tween(begin: 0.86, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.elasticOut),
              ),
              child: child,
            ),
          );
        },
      ),
    );
  }

  /// Shows a two-button confirmation dialog and returns `true` if the user
  /// pressed the confirm button, `false` if they cancelled.
  static Future<bool> confirm({
    String? title,
    String? message,
    String? confirmText,
    String? cancelText,
    AppDialogType type = AppDialogType.warning,
    bool showIcon = true,
  }) async {
    final navigatorState = getIt<AppRouter>().navigatorKey.currentState;
    if (navigatorState == null) return false;

    bool confirmed = false;

    await dialog(
      title: title,
      message: message,
      type: type,
      showIcon: showIcon,
      showTwoButtons: true,
      buttonText: confirmText,
      secondButtonText: cancelText,
      onPressed: () {
        confirmed = true;
        navigatorState.pop();
      },
      onSecondPressed: () => navigatorState.pop(),
    );

    return confirmed;
  }

  /// Show an animated toast. Context-free — uses the global navigator key.
  static void toast(
    String message, {
    AppToastType type = AppToastType.success,
    AppToastPosition position = AppToastPosition.bottom,
    Duration duration = const Duration(seconds: 3),
  }) => AppToastManager.show(
    message,
    type: type,
    position: position,
    duration: duration,
  );
}

// ─── Backward-compatible wrapper ──────────────────────────────────────────────

/// Backward-compatible wrapper. The [context] parameter is accepted but
/// ignored — navigation uses the global navigator key instead.
class DialogHelper {
  DialogHelper._();

  static Future<void> show(
    BuildContext context, {
    String? title,
    Widget? titleWidget,
    String? message,
    TextSpan? richMessage,
    AppDialogType? type,
    String? buttonText,
    VoidCallback? onPressed,
    bool barrierDismissible = false,
    bool showIcon = true,
    bool isRichText = false,
    bool isTitleWidget = false,
    double buttonWidth = 75,
    bool showTwoButtons = false,
    String? secondButtonText,
    VoidCallback? onSecondPressed,
    Widget? primaryButton,
    Widget? secondaryButton,
    bool? showBlurBackground = true,
    bool useSpaceBetween = false,
    Widget? sideWidget,
  }) => AppNotify.dialog(
    title: title,
    titleWidget: titleWidget,
    message: message,
    richMessage: richMessage,
    type: type ?? AppDialogType.info,
    buttonText: buttonText,
    onPressed: onPressed,
    barrierDismissible: barrierDismissible,
    showIcon: showIcon,
    isRichText: isRichText,
    isTitleWidget: isTitleWidget,
    buttonWidth: buttonWidth,
    showTwoButtons: showTwoButtons,
    secondButtonText: secondButtonText,
    onSecondPressed: onSecondPressed,
    primaryButton: primaryButton,
    secondaryButton: secondaryButton,
    showBlurBackground: showBlurBackground ?? true,
    useSpaceBetween: useSpaceBetween,
    sideWidget: sideWidget,
  );
}
