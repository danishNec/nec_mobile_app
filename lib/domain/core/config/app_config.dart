class AppConfig {
  /// The base URL for the application (injected at build time).
  static const String appBaseUrl = String.fromEnvironment('APP_BASE_URL');

  /// Master switch for the security gate.
  /// Defaults to true — security is always on in production.
  /// To disable during development or QA:
  ///   flutter run --dart-define=SECURITY_GATE_ENABLED=false
  static const bool securityGateEnabled = bool.fromEnvironment(
    'SECURITY_GATE_ENABLED',
    defaultValue: true,
  );
}
