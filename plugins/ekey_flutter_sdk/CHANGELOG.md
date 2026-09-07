## 1.1.0

* Updated bundled EkeySDK binaries (Sandbox 0.36) — the SDK now performs the
  OIDC token exchange internally.
* `EkeyLoginResult` gains `claims` (decoded ID token claims) and `kycData`
  (full eKYC payload) on `completed`. Ported from `ekey-react-native-sdk`.

## 1.0.0

* Initial release. Flutter port of `ekey-react-native-sdk`.
* `EkeyFlutterSdk.initiateLogin()` app-to-app login for Android + iOS.
