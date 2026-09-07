package com.nec.ekey_flutter_sdk

import android.app.Activity
import android.content.Context
import android.os.Handler
import android.os.Looper
import com.example.ekeysdk.Ekey
import com.example.ekeysdk.EkeyLoginResult
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import org.json.JSONObject

/**
 * Flutter bridge to the bundled native `EkeySDK.aar`.
 *
 * Method channel `ekey_flutter_sdk`:
 *   - `initiateLogin`     → starts the flow, resolves with `{status, redirectUri?, ...}`
 *   - `getPendingResult`  → returns + clears a result that arrived while no Dart
 *                           call was waiting (e.g. after the host process / Activity
 *                           was killed while the eKey app was in the foreground)
 *
 * Event channel `ekey_flutter_sdk/events` streams the same result maps, and replays
 * a persisted-but-unconsumed result to the first listener.
 *
 * ### Why the persistence
 * EkeySDK delivers its result through an in-memory callback on `Ekey`. When Android
 * kills the host Activity (and, with the default `FlutterActivity`, its engine +
 * Dart isolate) while the user is in the eKey app, that callback fires into a dead
 * isolate and the `initiateLogin()` Future is lost. So every result is also written
 * to `SharedPreferences` and can be recovered after the app comes back.
 */
class EkeyFlutterSdkPlugin : FlutterPlugin, ActivityAware, MethodCallHandler,
    EventChannel.StreamHandler {

    private lateinit var channel: MethodChannel
    private lateinit var eventChannel: EventChannel
    private var activity: Activity? = null

    /** Method result for an in-flight `initiateLogin()` call on THIS engine. */
    private var pendingResult: Result? = null
    private var eventSink: EventChannel.EventSink? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        appContext = binding.applicationContext
        instance = this

        channel = MethodChannel(binding.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler(this)

        eventChannel = EventChannel(binding.binaryMessenger, "$CHANNEL/events")
        eventChannel.setStreamHandler(this)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        eventChannel.setStreamHandler(null)
        if (instance === this) instance = null
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "initiateLogin" -> initiateLogin(result)
            "getPendingResult" -> result.success(takePersistedResult(appContext))
            else -> result.notImplemented()
        }
    }

    private fun initiateLogin(result: Result) {
        val current = activity
        if (current == null) {
            result.error(
                "NO_ACTIVITY",
                "No foreground Activity to present the eKey login screen from",
                null,
            )
            return
        }

        // Replace any earlier waiter (shouldn't happen; be safe).
        pendingResult?.let { runCatching { it.error("CANCELLED", "Superseded by a new login", null) } }
        pendingResult = result

        Ekey.initiateLogin(current) { loginResult -> deliver(loginResult.toMap()) }
    }

    // MARK: EventChannel.StreamHandler

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
        // Replay a result that landed while nothing was listening.
        takePersistedResult(appContext)?.let { events?.success(it) }
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    // MARK: ActivityAware

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null
    }

    override fun onDetachedFromActivity() {
        activity = null
    }

    private companion object {
        const val CHANNEL = "ekey_flutter_sdk"
        const val PREFS = "ekey_flutter_sdk"
        const val KEY_RESULT = "pending_result"

        private val mainHandler = Handler(Looper.getMainLooper())

        /** Set while any engine of this process is attached. */
        @Volatile
        private var instance: EkeyFlutterSdkPlugin? = null

        @Volatile
        private var appContext: Context? = null

        /**
         * Called by the `Ekey` callback — which may outlive the engine/isolate that
         * started the flow. Persists first (survives process death), then delivers to
         * whatever Dart side is alive now.
         */
        private fun deliver(map: HashMap<String, Any?>) {
            appContext?.let { persistResult(it, map) }
            mainHandler.post {
                val plugin = instance
                val waiter = plugin?.pendingResult
                val sink = plugin?.eventSink
                if (waiter == null && sink == null) return@post // stays persisted for recovery

                takePersistedResult(appContext) // consume
                if (waiter != null) {
                    plugin.pendingResult = null
                    runCatching { waiter.success(map) }
                }
                runCatching { sink?.success(map) }
            }
        }

        private fun EkeyLoginResult.toMap(): HashMap<String, Any?> {
            val map = HashMap<String, Any?>()
            when (this) {
                is EkeyLoginResult.Completed -> {
                    map["status"] = "completed"
                    map["redirectUri"] = redirectUri.toString()
                    map["codeVerifier"] = codeVerifier
                    // EKYC payload — EkeySDK does the token exchange internally.
                    map["claims"] = sanitize(identity.claims)
                    identity.kycData?.let { map["kycData"] = sanitize(it) }
                }
                is EkeyLoginResult.Failed -> {
                    map["status"] = "failed"
                    map["error"] = error.toString()
                }
                else -> map["status"] = "cancelled" // EkeyLoginResult.Cancelled
            }
            return map
        }

        /** Coerce the claims/kyc tree to types the Flutter StandardMessageCodec accepts. */
        private fun sanitize(value: Any?): Any? = when (value) {
            null -> null
            is String, is Boolean, is Int, is Long, is Double -> value
            is Float -> value.toDouble()
            is Number -> value.toDouble()
            is Map<*, *> -> value.entries.associate { (k, v) -> k.toString() to sanitize(v) }
            is Iterable<*> -> value.map { sanitize(it) }
            else -> value.toString()
        }

        private fun persistResult(context: Context, map: Map<String, Any?>) {
            val json = JSONObject()
            for ((k, v) in map) json.put(k, v)
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .edit().putString(KEY_RESULT, json.toString()).apply()
        }

        /** Returns the persisted result map (and deletes it), or null. */
        private fun takePersistedResult(context: Context?): Map<String, Any?>? {
            context ?: return null
            val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            val raw = prefs.getString(KEY_RESULT, null) ?: return null
            prefs.edit().remove(KEY_RESULT).apply()
            return runCatching {
                val json = JSONObject(raw)
                buildMap<String, Any?> {
                    for (key in json.keys()) put(key, json.opt(key)?.takeUnless { it == JSONObject.NULL })
                }
            }.getOrNull()
        }
    }
}
