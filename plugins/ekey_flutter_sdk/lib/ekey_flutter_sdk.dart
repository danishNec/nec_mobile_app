import 'package:flutter/services.dart';

import 'src/ekey_login_result.dart';

export 'src/ekey_login_result.dart';

/// Flutter entry point for eKey 2.0 app-to-app login.
///
/// All OAuth/OIDC configuration (client id, scopes, endpoints, redirect URI,
/// custom URL scheme) is baked into the native EkeySDK — there is nothing to
/// configure from Dart.
///
/// ### Usage
///
/// The Android flow launches the external eKey app, and Android may kill your
/// Activity (and, with the default `FlutterActivity`, its Dart isolate) while
/// you're there — in which case the [initiateLogin] `Future` never completes.
/// So treat [loginResults] / [recoverPendingResult] as the source of truth:
///
/// ```dart
/// @override
/// void initState() {
///   super.initState();
///   _sub = EkeyFlutterSdk.loginResults.listen(_handle);
///   EkeyFlutterSdk.recoverPendingResult().then((r) { if (r != null) _handle(r); });
/// }
///
/// @override
/// void didChangeAppLifecycleState(AppLifecycleState state) {
///   if (state == AppLifecycleState.resumed) {
///     EkeyFlutterSdk.recoverPendingResult().then((r) { if (r != null) _handle(r); });
///   }
/// }
///
/// // ...then just kick off the flow:
/// await EkeyFlutterSdk.initiateLogin();
/// ```
class EkeyFlutterSdk {
  EkeyFlutterSdk._();

  static const MethodChannel _channel = MethodChannel('ekey_flutter_sdk');
  static const EventChannel _events = EventChannel('ekey_flutter_sdk/events');

  static Stream<EkeyLoginResult>? _resultStream;

  /// Starts the eKey 2.0 app-to-app login flow from the current
  /// Activity / view controller.
  ///
  /// Resolves once the flow finishes, is cancelled, or fails — inspect
  /// [EkeyLoginResult.status]. Throws a [PlatformException] only for a genuine
  /// native error (e.g. no foreground Activity / root view controller).
  ///
  /// On Android this `Future` may never complete if the OS killed the host while
  /// the eKey app was foregrounded — use [loginResults] / [recoverPendingResult]
  /// to catch that case.
  static Future<EkeyLoginResult> initiateLogin() async {
    final result =
        await _channel.invokeMethod<Map<dynamic, dynamic>>('initiateLogin');
    return EkeyLoginResult.fromMap(result ?? const <dynamic, dynamic>{});
  }

  /// Every login outcome, including one that arrived while no [initiateLogin]
  /// call was waiting. A persisted-but-unconsumed result is replayed to the
  /// first subscriber, so subscribing in `initState` is enough to catch a
  /// result that landed after a process / Activity restart.
  static Stream<EkeyLoginResult> get loginResults {
    return _resultStream ??= _events
        .receiveBroadcastStream()
        .map((e) => EkeyLoginResult.fromMap((e as Map).cast<dynamic, dynamic>()));
  }

  /// Returns (and clears) a login result the native side stored while nothing
  /// was listening — e.g. because the OS killed the app during the app-to-app
  /// hop. Returns `null` if there is nothing pending. Safe to call any time
  /// (startup, `AppLifecycleState.resumed`).
  static Future<EkeyLoginResult?> recoverPendingResult() async {
    final result =
        await _channel.invokeMethod<Map<dynamic, dynamic>>('getPendingResult');
    if (result == null) return null;
    return EkeyLoginResult.fromMap(result);
  }
}
