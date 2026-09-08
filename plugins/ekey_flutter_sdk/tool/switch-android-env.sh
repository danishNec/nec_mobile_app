#!/usr/bin/env bash
# Swap the bundled Android EkeySDK.jar between prod and UAT.
#   ./tool/switch-android-env.sh prod   (login.ekey.bh)
#   ./tool/switch-android-env.sh uat    (login.test.ekey-b.com  — TEMPORARY, Android only)
# iOS (ios/Frameworks/EkeySDK.xcframework) is NOT touched — always production.
set -e
env=${1:?usage: switch-android-env.sh prod|uat}
here=$(cd "$(dirname "$0")/.." && pwd)
case "$env" in
  prod) src="$here/tool/EkeySDK-prod.jar" ;;
  uat)  src="$here/tool/EkeySDK-uat.jar" ;;
  *) echo "unknown env: $env"; exit 1 ;;
esac
cp "$src" "$here/android/libs/EkeySDK.jar"
echo "Android EkeySDK.jar -> $env  ($(shasum "$here/android/libs/EkeySDK.jar" | cut -c1-12))"
echo "run: flutter clean && flutter pub get in the consuming app"
