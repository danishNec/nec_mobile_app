## 1.1.1

* **Android: fixed "SDK screen does not dismiss after the eKey redirect."**
  `EkeyLoginActivity` is now declared `launchMode="singleTask"` with the default
  (host-package) task affinity — the way it behaves in a stock React Native host.
  The Flutter template `MainActivity` uses `android:taskAffinity=""`, which
  otherwise prevented Android from routing `necekey://callback` to the running
  activity (it started a second one via `onCreate`, so `finish()` never dismissed
  the visible screen). No host-app changes required.
* Kotlin plugin reads `codeVerifier` / `identity` / `claims` / `kycData`
  reflectively, so it builds against either the EKYC (prod) or pre-EKYC (UAT) AAR.

## 1.1.0

* Updated bundled EkeySDK binaries — the SDK now performs the OIDC token
  exchange internally.
* `EkeyLoginResult` gains `claims` (decoded ID token claims) and `kycData`
  (full eKYC payload) on `completed`. Ported from `ekey-react-native-sdk`.

## 1.0.0

* Initial release. Flutter port of `ekey-react-native-sdk`.
* `EkeyFlutterSdk.initiateLogin()` app-to-app login for Android + iOS.
