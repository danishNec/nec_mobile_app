/// Outcome of an eKey 2.0 app-to-app login attempt.
enum EkeyLoginStatus {
  /// The user authenticated and eKey redirected back to the app.
  completed,

  /// The user backed out / dismissed the login flow.
  cancelled,

  /// The flow failed (e.g. OAuth `state` mismatch, no presenting screen).
  failed,

  /// Native returned a status this version of the plugin does not recognise.
  unknown,
}

/// Result returned by [EkeyFlutterSdk.initiateLogin].
///
/// Mirrors the native `EkeyLoginResult` union from the underlying EkeySDK.
class EkeyLoginResult {
  const EkeyLoginResult({
    required this.status,
    this.redirectUri,
    this.codeVerifier,
    this.error,
  });

  /// The outcome of the attempt.
  final EkeyLoginStatus status;

  /// The full `necekey://callback?...` redirect URI (contains `code` and
  /// `state`). Present only when [status] is [EkeyLoginStatus.completed].
  final String? redirectUri;

  /// PKCE code verifier for this attempt. Send it together with the `code` and
  /// `state` from [redirectUri] to your back-end's token-exchange call
  /// (integration guide §2.2.5).
  ///
  /// iOS only for now — Android's native SDK does not surface it yet.
  final String? codeVerifier;

  /// Human-readable native error description. Present only when [status] is
  /// [EkeyLoginStatus.failed] / [EkeyLoginStatus.unknown].
  final String? error;

  bool get isCompleted => status == EkeyLoginStatus.completed;
  bool get isCancelled => status == EkeyLoginStatus.cancelled;
  bool get isFailed =>
      status == EkeyLoginStatus.failed || status == EkeyLoginStatus.unknown;

  factory EkeyLoginResult.fromMap(Map<dynamic, dynamic> map) {
    final raw = (map['status'] as String?)?.toLowerCase() ?? 'failed';
    return EkeyLoginResult(
      status: EkeyLoginStatus.values.firstWhere(
        (s) => s.name == raw,
        orElse: () => EkeyLoginStatus.unknown,
      ),
      redirectUri: map['redirectUri'] as String?,
      codeVerifier: map['codeVerifier'] as String?,
      error: map['error'] as String?,
    );
  }

  @override
  String toString() =>
      'EkeyLoginResult(status: $status, redirectUri: $redirectUri, '
      'codeVerifier: $codeVerifier, error: $error)';
}
