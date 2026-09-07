import Flutter
import UIKit
import EkeySDK

/// Flutter bridge to the vendored `EkeySDK.xcframework`.
///
/// Method channel `ekey_flutter_sdk`:
///   - `initiateLogin`    – starts the eKey 2.0 app-to-app login flow.
///   - `getPendingResult` – returns + clears a result that arrived while no Dart
///     call was waiting (host was suspended/killed during the app-to-app hop).
///
/// Event channel `ekey_flutter_sdk/events` streams the same result maps and
/// replays a persisted-but-unconsumed result to the first listener.
///
/// `application(_:open:options:)` forwards the `necekey://callback` redirect back
/// into EkeySDK automatically (works with `FlutterAppDelegate` and
/// `FlutterSceneDelegate`), so the host only registers the `necekey` URL scheme
/// in its `Info.plist`.
public class EkeyFlutterSdkPlugin: NSObject, FlutterPlugin, FlutterStreamHandler {

    private static let defaultsKey = "ekey_flutter_sdk.pending_result"

    private var pendingResult: FlutterResult?
    private var eventSink: FlutterEventSink?

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(
            name: "ekey_flutter_sdk",
            binaryMessenger: registrar.messenger()
        )
        let events = FlutterEventChannel(
            name: "ekey_flutter_sdk/events",
            binaryMessenger: registrar.messenger()
        )
        let instance = EkeyFlutterSdkPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        events.setStreamHandler(instance)
        registrar.addApplicationDelegate(instance)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "initiateLogin":
            initiateLogin(result: result)
        case "getPendingResult":
            result(Self.takePersistedResult())
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func initiateLogin(result: @escaping FlutterResult) {
        pendingResult = result
        // Presenting UIKit / creating the WKWebView must happen on the main thread.
        DispatchQueue.main.async {
            guard let presenter = Self.topViewController() else {
                self.deliver(["status": "failed", "error": "noRootViewController"])
                return
            }

            Ekey.shared.initiateLogin(from: presenter) { loginResult in
                switch loginResult {
                case .completed(let redirectURL, let codeVerifier, let identity):
                    var map: [String: Any] = [
                        "status": "completed",
                        "redirectUri": redirectURL.absoluteString,
                        "codeVerifier": codeVerifier,
                        // EKYC payload — EkeySDK does the token exchange internally.
                        "claims": Self.sanitize(identity.claims),
                    ]
                    if let kyc = identity.kycData { map["kycData"] = Self.sanitize(kyc) }
                    self.deliver(map)
                case .cancelled:
                    self.deliver(["status": "cancelled"])
                case .failed(let error):
                    self.deliver(["status": "failed", "error": String(describing: error)])
                }
            }
        }
    }

    /// Persists first (survives suspension), then hands the result to whatever
    /// Dart side is alive now.
    private func deliver(_ map: [String: Any]) {
        Self.persistResult(map)
        DispatchQueue.main.async {
            let hadWaiter = self.pendingResult != nil
            let hadSink = self.eventSink != nil
            guard hadWaiter || hadSink else { return } // stays persisted for recovery

            _ = Self.takePersistedResult() // consume
            if let waiter = self.pendingResult {
                self.pendingResult = nil
                waiter(map)
            }
            self.eventSink?(map)
        }
    }

    // MARK: - FlutterStreamHandler

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSink = events
        if let pending = Self.takePersistedResult() {
            events(pending)
        }
        return nil
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }

    // MARK: - App-to-app callback

    public func application(
        _ application: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        Ekey.shared.handleOpenURL(url)
    }

    public func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        Ekey.shared.handleOpenURL(url)
    }

    // MARK: - Persistence

    /// Coerce the claims/kyc tree to plist- and codec-safe values (drop NSNull).
    private static func sanitize(_ value: Any) -> Any {
        switch value {
        case let dict as [String: Any]:
            var out: [String: Any] = [:]
            for (k, v) in dict where !(v is NSNull) { out[k] = sanitize(v) }
            return out
        case let array as [Any]:
            return array.filter { !($0 is NSNull) }.map { sanitize($0) }
        default:
            return value
        }
    }

    private static func persistResult(_ map: [String: Any]) {
        UserDefaults.standard.set(map, forKey: defaultsKey)
    }

    private static func takePersistedResult() -> [String: Any]? {
        let defaults = UserDefaults.standard
        guard let map = defaults.dictionary(forKey: defaultsKey) else { return nil }
        defaults.removeObject(forKey: defaultsKey)
        return map
    }

    // MARK: - Helpers

    private static func topViewController() -> UIViewController? {
        guard var top = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .flatMap({ $0.windows })
            .first(where: { $0.isKeyWindow })?.rootViewController
        else {
            return nil
        }
        while let presented = top.presentedViewController {
            top = presented
        }
        return top
    }
}
