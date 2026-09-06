# eKey login — how `sampleflutter` integrates it

This is exactly what was wired up in the `sampleflutter` app. Every step is
already done here; use it as the reference for your own app.

Requirements: Android `minSdk` 24+, iOS 14.0+.

---

## Step 1 — Dependency

`sampleflutter/pubspec.yaml`:

```yaml
dependencies:
  ekey_flutter_sdk:
    path: plugins/ekey_flutter_sdk
```

```bash
flutter pub get
```

The plugin folder is vendored at `sampleflutter/plugins/ekey_flutter_sdk`
(native binaries included — nothing to download).

---

## Step 2 — Android

Nothing was added. The plugin merges `EkeyLoginActivity` + the
`necekey://callback` intent-filter into the app and forces
`launchMode="singleTask"` so the callback returns correctly.

`sampleflutter` uses `flutter.minSdkVersion` (24) — already fine.

---

## Step 3 — iOS

Added to `sampleflutter/ios/Runner/Info.plist` (inside the top `<dict>`):

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

No `AppDelegate` / `SceneDelegate` changes.

---

## Step 4 — Dart (`sampleflutter/lib/main.dart`)

The screen is `HomePage` / `_HomePageState`. The pattern:

```dart
class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  StreamSubscription<EkeyLoginResult>? _sub;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _sub = EkeyFlutterSdk.loginResults.listen(_handle, onError: (_) {});
    _recover();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _recover();
  }

  @override
  void dispose() {
    _sub?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _recover() async {
    final pending = await EkeyFlutterSdk.recoverPendingResult();
    if (pending != null) _handle(pending);
  }

  void _handle(EkeyLoginResult result) {
    if (!mounted) return;
    setState(() => _result = result); // sample just displays it
  }

  Future<void> _login() async {
    final result = await EkeyFlutterSdk.initiateLogin(); // fast path
    _handle(result);
  }
}
```

Three rules:

1. `EkeyFlutterSdk.loginResults` (stream) is the source of truth.
2. `EkeyFlutterSdk.recoverPendingResult()` on `initState` **and** on
   `AppLifecycleState.resumed`.
3. `EkeyFlutterSdk.initiateLogin()` starts the flow. On Android its `Future`
   may never return (OS kills the app during the eKey hop) — that's why 1 & 2
   exist.

---

## Step 5 — Use the result

The sample only prints the fields. In a real app, on `completed`:

```dart
final uri = Uri.parse(result.redirectUri!);
myApi.exchangeEkeyCode(
  code: uri.queryParameters['code'],
  state: uri.queryParameters['state'],
  codeVerifier: result.codeVerifier, // iOS only; null on Android
);
```

---

## Step 6 — Run

```bash
cd /Users/danish/Desktop/flutter/sampleflutter
flutter run          # physical device + eKey app for the full flow
flutter test         # mocked smoke + recovery tests
```

Simulator/emulator: button and result plumbing work, but the app-to-app hop
can't complete.

---

## `EkeyLoginResult`

| Field | When | Meaning |
|---|---|---|
| `status` | always | `completed` / `cancelled` / `failed` / `unknown` |
| `redirectUri` | completed | callback URL with `code` + `state` |
| `codeVerifier` | completed (iOS only) | PKCE verifier |
| `error` | failed | native error text |

Getters: `isCompleted`, `isCancelled`, `isFailed`.

---

## Troubleshooting

| Symptom | Fix |
|---|---|
| iOS build: `rsync ... EkeySDK.xcframework ... No such file or directory` | `rm -rf ios/Pods ios/.symlinks ios/Podfile.lock && flutter clean && flutter pub get` |
| Android: stuck on the eKey WebView | Update the plugin (needs the `singleTask` manifest override) |
| Android: returns to app but no result | Follow Step 4 exactly; test with Developer options → "Don't keep activities" OFF |
| `PlatformException(NO_ACTIVITY)` | Call `initiateLogin()` from a button, not from `main()` |
| Stream silent + `recoverPendingResult()` null after a real login | Bug inside `EkeySDK.jar` — report to the SDK maintainers |
