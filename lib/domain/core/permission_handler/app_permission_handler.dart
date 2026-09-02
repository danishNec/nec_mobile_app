import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../presentation/routes/app_routes.dart';
import '../di/injection.dart';

/// A service class for handling app permissions and providing user-friendly
/// dialogs for permission requests and settings redirection.
@lazySingleton
class AppPermissionHandler {
  /// The app's router instance for navigation.
  final router = getIt<AppRouter>();

  /// Requests a specific permission and handles the user flow for denied or
  /// permanently denied permissions.
  ///
  /// - [permission]: The permission to request.
  /// - [title]: The title of the dialog shown to the user.
  /// - [message]: The message of the dialog shown to the user.
  ///
  /// Returns `true` if the permission is granted, otherwise `false`.
  Future<bool> requestPermission(
    Permission permission, {
    required String title,
    required String message,
  }) async {
    var status = await permission.status;

    // Already granted
    if (status.isGranted) return true;

    // First denial → show in-app rationale before requesting again
    if (status.isDenied) {
      final context = router.navigatorKey.currentContext;
      if (context != null && context.mounted) {
        await _showRationaleDialog(context, title, message);
      }

      final result = await permission.request();

      // Granted after re-request
      if (result.isGranted) return true;

      // Denied again → show native "Open Settings"
      await _maybeShowSettingsDialog(title, message);
      return false;
    }

    // Permanently denied / Restricted
    if (status.isPermanentlyDenied || status.isRestricted) {
      await _maybeShowSettingsDialog(title, message);
      return false;
    }

    return false;
  }

  /// Displays a rationale dialog to the user explaining why the permission is needed.
  ///
  /// - [context]: The current `BuildContext`.
  /// - [title]: The title of the dialog.
  /// - [message]: The message of the dialog.
  Future<void> _showRationaleDialog(
    BuildContext context,
    String title,
    String message,
  ) async {
    if (Platform.isIOS) {
      await showCupertinoDialog(
        context: context,
        builder: (_) => CupertinoAlertDialog(
          title: Text(title),
          content: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(message),
          ),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text(
                "buttons.continue".tr(),
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
              onPressed: () => router.pop(),
            ),
          ],
        ),
      );
    } else {
      await showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => router.pop(),
              child: Text(
                "buttons.continue".tr(),
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
            ),
          ],
        ),
      );
    }
  }

  /// Displays a settings dialog to the user, allowing them to open the app's
  /// settings page to manually grant permissions.
  ///
  /// - [title]: The title of the dialog.
  /// - [message]: The message of the dialog.
  Future<void> _maybeShowSettingsDialog(String title, String message) async {
    final context = router.navigatorKey.currentContext;
    if (context == null || !context.mounted) return;

    await _showNativePermissionDialog(context, title, message);
  }

  /// Displays a native-like permission dialog to the user with options to
  /// cancel or open the app's settings page.
  ///
  /// - [context]: The current `BuildContext`.
  /// - [title]: The title of the dialog.
  /// - [message]: The message of the dialog.
  Future<void> _showNativePermissionDialog(
    BuildContext context,
    String title,
    String message,
  ) async {
    if (Platform.isIOS) {
      await showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => CupertinoAlertDialog(
          title: Text(title),
          content: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(message),
          ),
          actions: [
            // Cancel button
            CupertinoDialogAction(
              onPressed: () {
                router.pop();
              },
              child: Text(
                'buttons.cancel'.tr(),
                style: const TextStyle(color: CupertinoColors.systemGrey),
              ),
            ),

            // Open Settings button
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () async {
                router.pop();
                await openAppSettings();
              },
              child: Text(
                'buttons.openSettings'.tr(),
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
            ),
          ],
        ),
      );
    } else {
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Theme.of(context).colorScheme.outline),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          content: Text(message, style: const TextStyle(fontSize: 14)),
          actions: [
            // Cancel button
            TextButton(
              onPressed: () {
                router.pop();
              },
              child: Text(
                'buttons.cancel'.tr(),
                style: const TextStyle(color: Colors.grey),
              ),
            ),

            // Open Settings button
            TextButton(
              onPressed: () async {
                router.pop();
                await openAppSettings();
              },
              child: Text(
                'buttons.openSettings'.tr(),
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
            ),
          ],
        ),
      );
    }
  }
}
