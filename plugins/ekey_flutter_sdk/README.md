# ekey_flutter_sdk

Flutter plugin for **eKey 2.0 app-to-app login** (Android + iOS). It is a thin
wrapper around the native `EkeySDK` binaries (`EkeySDK.aar` / `EkeySDK.xcframework`)
that ship inside this package — a 1:1 port of `ekey-react-native-sdk`.

All OAuth / OIDC configuration (client id, scopes, endpoints, redirect URI,
`necekey` URL scheme) is compiled into the native SDK. **There is nothing to
configure from Dart.**

> 📖 New here? Follow **[INTEGRATION.md](INTEGRATION.md)** — a 10-minute
> step-by-step guide with copy-paste code.

---

## Install

This package is vendored inside the `sampleflutter` repo at
`plugins/ekey_flutter_sdk`. Reference it by relative path:

```yaml
# pubspec.yaml
dependencies:
  ekey_flutter_sdk:
    path: plugins/ekey_flutter_sdk          # from sampleflutter/
    # path: ../sampleflutter/plugins/ekey_flutter_sdk   # from a sibling repo
```

```bash
flutter pub get
```

### Android — zero config

`EkeyLoginActivity` and the `necekey://callback` intent-filter merge into your
app automatically. `minSdkVersion` must be **24+**.

The plugin manifest declares `EkeyLoginActivity` as `launchMode="singleTask"`
with the **default** (host-package) task affinity — the way it behaves in a
stock React Native host. Flutter's template `MainActivity` sets
`android:taskAffinity=""`; without this declaration the `necekey://callback`
can't be routed to the running `EkeyLoginActivity`, so Android starts a *second*
one via `onCreate` and the visible screen never `finish()`es ("SDK screen
doesn't dismiss after the redirect"). `EkeySDK.jar` itself is a stock, unpatched
repackage of `EkeySDK.aar`.

### iOS — one Info.plist entry

The external eKey app returns to your app via `necekey://callback`, so register
the scheme once in `ios/Runner/Info.plist`:

```xml
<key>CFBundleURLTypes</key>
<array>
  <dict>
    <key>CFBundleTypeRole</key>
    <string>Editor</string>
    <key>CFBundleURLName</key>
    <string>ekey.callback</string>
    <key>CFBundleURLSchemes</key>
    <array>
      <string>necekey</string>
    </array>
  </dict>
</array>
```

No `AppDelegate` / `SceneDelegate` changes are needed — the plugin intercepts
the callback URL itself (works with both the classic `FlutterAppDelegate` and
the newer `FlutterSceneDelegate`). Minimum iOS **14.0**.

---

## Usage

> **Important (Android):** the flow launches the *external* eKey app, and Android
> may kill your Activity — and, with the default `FlutterActivity`, its Dart
> isolate — while you're there. If that happens the `initiateLogin()` `Future`
> never completes. So **listen to `EkeyFlutterSdk.loginResults` and call
> `recoverPendingResult()`** rather than relying on the returned `Future`. The
> native side persists every outcome and replays it once the app is back.

```dart
import 'package:ekey_flutter_sdk/ekey_flutter_sdk.dart';

class _LoginState extends State<LoginScreen> with WidgetsBindingObserver {
  StreamSubscription<EkeyLoginResult>? _sub;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _sub = EkeyFlutterSdk.loginResults.listen(_onResult);
    EkeyFlutterSdk.recoverPendingResult().then((r) { if (r != null) _onResult(r); });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      EkeyFlutterSdk.recoverPendingResult().then((r) { if (r != null) _onResult(r); });
    }
  }

  void _onResult(EkeyLoginResult r) {
    if (r.isCompleted) {
      // The SDK already did the token exchange — identity data is right here:
      final name = r.claims?['name'];
      final kyc  = r.kycData;            // null if no ekyc-bhr-* scopes granted
      // (r.redirectUri + r.codeVerifier are still there if you'd rather run your
      //  own exchange — integration guide §2.2.5.)
    } else if (r.isFailed) {
      // show r.error
    } // else: cancelled
  }

  void _startLogin() => EkeyFlutterSdk.initiateLogin(); // fire-and-forget is fine
}
```

### API

| Dart | Description |
|---|---|
| `EkeyFlutterSdk.initiateLogin()` → `Future<EkeyLoginResult>` | Start the flow. Resolves for completed/cancelled/failed; throws `PlatformException` only on a genuine native error. **May not complete on Android if the OS killed the host** — use the two below. |
| `EkeyFlutterSdk.loginResults` → `Stream<EkeyLoginResult>` | Every outcome, incl. one that landed after a process/Activity restart (replayed to the first subscriber). |
| `EkeyFlutterSdk.recoverPendingResult()` → `Future<EkeyLoginResult?>` | Returns + clears a persisted result, else `null`. Call on startup and on `AppLifecycleState.resumed`. |
| `EkeyLoginResult.status` | `completed` / `cancelled` / `failed` / `unknown`. |
| `EkeyLoginResult.claims` | `Map<String, dynamic>?` — decoded ID token claims (completed). |
| `EkeyLoginResult.kycData` | `Map<String, dynamic>?` — full eKYC payload; `null` if no `ekyc-bhr-*` scopes granted. |
| `EkeyLoginResult.redirectUri` | Full `redirect_uri?code=…&state=…` (completed only). |
| `EkeyLoginResult.codeVerifier` | PKCE verifier (completed) — for running your own token exchange. |
| `EkeyLoginResult.error` | Native error description (failed only). |
| `.isCompleted` / `.isCancelled` / `.isFailed` | Convenience getters. |

> The bundled SDK performs the OIDC token exchange **inside the app** (both
> platforms), which is why `claims` / `kycData` come back directly. That implies
> the `client_secret` ships in the app binary — see `EkeyTokenExchange` in the
> native SDK for the trade-off.

---

## Sample app

The enclosing `sampleflutter` app is the runnable sample — it depends on this
plugin via `path: plugins/ekey_flutter_sdk`:

```bash
cd /Users/danish/Desktop/flutter/sampleflutter
flutter run           # tap "Start eKey login" — the result map is rendered on screen
flutter test          # mocked method-channel smoke test
```

The app-to-app handoff needs a real device with the eKey app installed.

## How it maps to `ekey-react-native-sdk`

| React Native | Flutter |
|---|---|
| `initiateEkeyLogin(): Promise<EkeyLoginResult>` | `EkeyFlutterSdk.initiateLogin(): Future<EkeyLoginResult>` |
| `EkeySdkModule.kt` (TurboModule) | `EkeyFlutterSdkPlugin.kt` (`MethodChannel` + `ActivityAware`) |
| `EkeySdkImpl.swift` + `EkeySdkModule.mm` | `EkeyFlutterSdkPlugin.swift` (`FlutterPlugin` + app-delegate) |
| Host `AppDelegate` forwards `openURL` | Plugin forwards `openURL` automatically |
| `android/libs/EkeySDK.aar` | `android/libs/EkeySDK.aar` (same binary) |
| `Frameworks/EkeySDK.xcframework` | `ios/Frameworks/EkeySDK.xcframework` (same binary) |
