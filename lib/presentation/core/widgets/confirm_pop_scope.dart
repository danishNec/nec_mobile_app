import 'package:flutter/material.dart';

import '../notify/app_notify.dart';

/// A reusable [PopScope] that shows a confirmation dialog before allowing
/// the current route to be popped (e.g. on Android back button or swipe).
///
/// When [enabled] is false the widget is transparent — the child renders as-is
/// with no pop interception, which is useful for temporarily blocking
/// the confirmation while a critical async operation is in progress.
///
/// If [onConfirm] is provided it is called after the user confirms instead
/// of the default [Navigator.pop]. Use this when the caller needs custom
/// navigation (e.g. `context.router.pop()` from auto_route).
class ConfirmPopScope extends StatelessWidget {
  final Widget child;
  final String? title;
  final String? message;
  final String? confirmText;
  final String? cancelText;
  final VoidCallback? onConfirm;
  final AppDialogType type;
  final bool enabled;

  const ConfirmPopScope({
    super.key,
    required this.child,
    this.title,
    this.message,
    this.confirmText,
    this.cancelText,
    this.onConfirm,
    this.type = AppDialogType.warning,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) return;

        final confirmed = await AppNotify.confirm(
          title: title,
          message: message,
          confirmText: confirmText,
          cancelText: cancelText,
          type: type,
        );

        if (!confirmed) return;

        if (onConfirm != null) {
          onConfirm!();
        } else if (context.mounted) {
          Navigator.of(context).pop();
        }
      },
      child: child,
    );
  }
}