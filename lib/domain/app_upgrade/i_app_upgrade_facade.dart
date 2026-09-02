import 'package:dartz/dartz.dart';

import 'app_upgrade_failure.dart';
import 'app_version_info.dart';

/// Contract between the application layer and the infrastructure layer
/// for app-upgrade operations.
abstract class IAppUpgradeFacade {
  /// Fetches remote version config, compares against the running version,
  /// and returns an [AppVersionInfo] describing whether an upgrade is needed.
  Future<Either<AppUpgradeFailure, AppVersionInfo>> checkForUpdate();

  /// Launches the platform-appropriate app store URL.
  Future<Either<AppUpgradeFailure, Unit>> openStore({required String storeUrl});
}