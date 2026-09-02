import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_upgrade_failure.freezed.dart';

@freezed
sealed class AppUpgradeFailure with _$AppUpgradeFailure {
  const factory AppUpgradeFailure.serverError() = _ServerError;
  const factory AppUpgradeFailure.versionParseError() = _VersionParseError;
  const factory AppUpgradeFailure.unexpected() = _Unexpected;
}