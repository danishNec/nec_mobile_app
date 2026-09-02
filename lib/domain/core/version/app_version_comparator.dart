import 'dart:math';

/// Pure utility for semantic-version comparison (SemVer-lite).
///
/// Handles forms like "1.2.3", "1.2.3+45" (strips build metadata),
/// and "1.2.3-beta" (strips pre-release suffixes).
/// Missing segments are treated as 0 (e.g. "1.2" == "1.2.0").
class AppVersionComparator {
  AppVersionComparator._();

  /// Returns -1 if [v1] < [v2], 0 if equal, 1 if [v1] > [v2].
  static int compare(String v1, String v2) {
    try {
      final p1 = _parts(v1);
      final p2 = _parts(v2);
      final len = max(p1.length, p2.length);
      for (var i = 0; i < len; i++) {
        final a = i < p1.length ? p1[i] : 0;
        final b = i < p2.length ? p2[i] : 0;
        if (a != b) return a.compareTo(b);
      }
      return 0;
    } catch (_) {
      return 0;
    }
  }

  /// True when a newer version exists and the user should be prompted to update.
  static bool isUpdateAvailable(String current, String latest) =>
      compare(current, latest) < 0;

  /// True when the running version is below the server-declared minimum.
  /// This means a force-update is mandatory regardless of [AppVersionDto.isForceUpdate].
  static bool isBelowMinimum(String current, String minimum) =>
      compare(current, minimum) < 0;

  static List<int> _parts(String version) {
    final clean = version.split('+').first.split('-').first;
    return clean.split('.').map((s) => int.tryParse(s) ?? 0).toList();
  }
}