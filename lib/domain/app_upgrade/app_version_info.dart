import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_info.freezed.dart';

/// Describes what kind of upgrade is required after comparing versions.
enum AppUpgradeType {
  /// User must update — below minimum supported version or server forced.
  force,

  /// A newer version exists but the user may skip for now.
  optional,

  /// App is already on the latest version; no action needed.
  none,
}

/// Domain model produced by the repository after version comparison.
/// Consumed by the BLoC and the upgrade dialog.
@freezed
sealed class AppVersionInfo with _$AppVersionInfo {
  const factory AppVersionInfo({
    required AppUpgradeType upgradeType,
    required String currentVersion,
    required String latestVersion,
    String? updateTitle,
    String? updateMessage,
    @Default([]) List<String> changelogItems,
    required String storeUrl,
  }) = _AppVersionInfo;
}
