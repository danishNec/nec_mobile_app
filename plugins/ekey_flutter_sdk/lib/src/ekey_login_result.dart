/// Outcome of an eKey 2.0 app-to-app login attempt.
enum EkeyLoginStatus {
  /// The user authenticated and eKey redirected back to the app.
  completed,

  /// The user backed out / dismissed the login flow.
  cancelled,

  /// The flow failed (e.g. OAuth `state` mismatch, token exchange failed).
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
    this.claims,
    this.kycData,
    this.error,
  });

  /// The outcome of the attempt.
  final EkeyLoginStatus status;

  /// The full `necekey://callback?...` redirect URI (contains `code` and
  /// `state`). Present only when [status] is [EkeyLoginStatus.completed].
  final String? redirectUri;

  /// PKCE code verifier for this attempt. Only needed if you run your own
  /// token exchange instead of using [claims] / [kycData] below.
  final String? codeVerifier;

  /// Decoded ID token claims (identity data — name, national ID, etc. per the
  /// granted `id-*` scopes). EkeySDK performs the token exchange internally on
  /// both platforms. Present only when [status] is [EkeyLoginStatus.completed].
  final Map<String, dynamic>? claims;

  /// Full KYC data payload (integration guide §6.2), if `ekyc-bhr-*` scopes were
  /// granted. `null` when no KYC scopes were granted.
  final Map<String, dynamic>? kycData;

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
      claims: _asStringMap(map['claims']),
      kycData: _asStringMap(map['kycData']),
      error: map['error'] as String?,
    );
  }

  static Map<String, dynamic>? _asStringMap(Object? value) {
    if (value is Map) {
      return value.map((k, v) => MapEntry(k.toString(), v));
    }
    return null;
  }

  @override
  String toString() =>
      'EkeyLoginResult(status: $status, redirectUri: $redirectUri, '
      'codeVerifier: $codeVerifier, claims: ${claims?.keys.toList()}, '
      'kycData: ${kycData?.keys.toList()}, error: $error)';
}
