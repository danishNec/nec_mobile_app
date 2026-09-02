import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
abstract class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.unableToGetUserInfo() = _UnableToGetUserInfo;
  const factory SettingsFailure.biometricAuthFailed() = _BiometricAuthFailed;
  const factory SettingsFailure.serverError() = _ServerError;
}