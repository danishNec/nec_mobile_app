part of 'app_upgrade_bloc.dart';

@freezed
class AppUpgradeEvent with _$AppUpgradeEvent {
  /// Fetch remote version config and compare against the running version.
  const factory AppUpgradeEvent.checkForUpdate() = _CheckForUpdate;

  /// Launch the platform store URL for the given [storeUrl].
  const factory AppUpgradeEvent.openStore(String storeUrl) = _OpenStore;

  /// Reset the BLoC back to its initial state (e.g. after user dismisses dialog).
  const factory AppUpgradeEvent.dismissed() = _Dismissed;
}