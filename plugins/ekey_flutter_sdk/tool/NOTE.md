# Android SDK jar

`android/libs/EkeySDK.jar` = stock (unpatched) repackage of the UAT `EkeySDK.aar`
(`login.test.ekey-b.com`, `mobileapp.uat.necremit.com/RedirectURIC/`, sha `2cf14a86`),
matching what the React Native repos currently ship. `tool/EkeySDK-uat.jar` is a
copy. The production EKYC AAR is not on disk anymore (the RN repos were reverted
to sandbox); re-extract it from a prod `EkeySDK.aar` if needed.

iOS (`ios/Frameworks/EkeySDK.xcframework`) is still the **production** build
(`login.ekey.bh`). Swap it for a UAT `EkeySDK.xcframework` if you need iOS on UAT.

## "SDK screen won't dismiss on Android" — the fix

Task-routing, not SDK logic (the RN host completes the same SDK fine).
`AndroidManifest.xml` declares `EkeyLoginActivity` as `launchMode="singleTask"`
with the **default** (host-package) task affinity — how it ends up in a stock RN
host. Flutter's template `MainActivity` sets `android:taskAffinity=""`; without
this override the `necekey://callback` cannot be routed to the running
`EkeyLoginActivity`, so Android starts a second one via `onCreate` and the
visible instance never `finish()`es.

Earlier `singleTask` **+ `taskAffinity=""`** was wrong: empty affinity = "not
associated with any task", which defeats singleTask routing.

## PatchEkey.java (unused)

ASM patcher that rewrites `onNewIntent` to consume `?code=&state=` from the
callback directly. Kept only in case the manifest fix proves insufficient.
