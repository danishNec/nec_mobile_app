import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/app_upgrade/app_upgrade_failure.dart';
import '../../domain/app_upgrade/app_version_dto.dart';
import '../../domain/app_upgrade/app_version_info.dart';
import '../../domain/app_upgrade/i_app_upgrade_facade.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/core/version/app_version_comparator.dart';

@LazySingleton(as: IAppUpgradeFacade)
class AppUpgradeRepository implements IAppUpgradeFacade {
  final ApiServices _apiServices;

  AppUpgradeRepository(this._apiServices);

  // ── TEST DATA — remove before production ─────────────────────────────────
  // Switch upgradeType between AppUpgradeType.optional and AppUpgradeType.force
  // to preview both dialog variants.
  static const bool _kPreviewMode = true;

  Future<Either<AppUpgradeFailure, AppVersionInfo>> _previewResult() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return right(AppVersionInfo(
      upgradeType: AppUpgradeType.optional, // change to .force to test force update
      currentVersion: packageInfo.version,
      latestVersion: '2.5.0',
      updateTitle: 'New Update Available',
      updateMessage:
          'We\'ve made significant improvements to enhance your remittance experience. Update now to enjoy faster transfers and improved security.',
      changelogItems: const [
        'Faster remittance processing with real-time status updates',
        'Enhanced biometric authentication flow',
        'Improved transaction history with advanced filters',
        'Security hardening and performance improvements',
      ],
      storeUrl: '',
    ));
  }
  // ─────────────────────────────────────────────────────────────────────────

  @override
  Future<Either<AppUpgradeFailure, AppVersionInfo>> checkForUpdate() async {
    if (_kPreviewMode) return _previewResult();
    try {
      final response = await _apiServices.getAppVersionConfig();
      if (response.isSuccessful) {
        final dto = AppVersionDto.fromJson(response.body);
        final data = dto.data;
        if (data == null) {
          return left(const AppUpgradeFailure.versionParseError());
        }
        final packageInfo = await PackageInfo.fromPlatform();
        final currentVersion = packageInfo.version;

        final isBelowMin = AppVersionComparator.isBelowMinimum(
          currentVersion,
          data.minimumVersion,
        );
        final hasNewerVersion = AppVersionComparator.isUpdateAvailable(
          currentVersion,
          data.latestVersion,
        );

        if (!hasNewerVersion && !isBelowMin) {
          return right(
            AppVersionInfo(
              upgradeType: AppUpgradeType.none,
              currentVersion: currentVersion,
              latestVersion: data.latestVersion,
              storeUrl: _platformStoreUrl(data),
            ),
          );
        }

        final upgradeType = (isBelowMin || data.isForceUpdate)
            ? AppUpgradeType.force
            : AppUpgradeType.optional;

        return right(
          AppVersionInfo(
            upgradeType: upgradeType,
            currentVersion: currentVersion,
            latestVersion: data.latestVersion,
            updateTitle: data.updateTitle,
            updateMessage: data.updateMessage,
            changelogItems: data.changelogItems,
            storeUrl: _platformStoreUrl(data),
          ),
        );
      } else {
        return left(const AppUpgradeFailure.serverError());
      }
    } catch (e) {
      return left(const AppUpgradeFailure.unexpected());
    }
  }

  @override
  Future<Either<AppUpgradeFailure, Unit>> openStore({
    required String storeUrl,
  }) async {
    try {
      final uri = Uri.parse(storeUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        return right(unit);
      }
      return left(const AppUpgradeFailure.unexpected());
    } catch (e) {
      return left(const AppUpgradeFailure.unexpected());
    }
  }

  String _platformStoreUrl(AppVersionData data) => Platform.isAndroid
      ? (data.androidStoreUrl ?? '')
      : (data.iosStoreUrl ?? '');
}
