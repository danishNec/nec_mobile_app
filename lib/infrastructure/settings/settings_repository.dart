import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/settings/i_settings_facade.dart';
import '../../domain/settings/settings_failure.dart';
import '../../domain/settings/settings_user_dto.dart';

@LazySingleton(as: ISettingsFacade)
class SettingsRepository implements ISettingsFacade {
  final ApiServices _apiServices;
  final SharedPrefs _appPrefs;
  final LocalAuthentication _localAuth;

  SettingsRepository(this._apiServices, this._appPrefs, this._localAuth);

  @override
  Future<Either<SettingsFailure, SettingsUserDto>> getUserInfo() async {
    try {
      final token = _appPrefs.getToken();
      final response = await _apiServices.getProfile(token: token);
      if (response.isSuccessful) {
        final dto = SettingsUserDto.fromJson(response.body);
        return right(dto);
      } else {
        return left(const SettingsFailure.unableToGetUserInfo());
      }
    } catch (_) {
      return left(const SettingsFailure.serverError());
    }
  }

  @override
  Future<Either<SettingsFailure, bool>> checkBiometricSupport() async {
    try {
      final canCheck = await _localAuth.canCheckBiometrics;
      final isSupported = await _localAuth.isDeviceSupported();
      return right(canCheck && isSupported);
    } catch (_) {
      return right(false);
    }
  }

  @override
  bool isBiometricEnabled() => _appPrefs.getIsBiometricAuthenticated();

  @override
  Future<Either<SettingsFailure, Unit>> enableBiometric() async {
    try {
      final authenticated = await _localAuth.authenticate(
        localizedReason: 'Authenticate to enable biometric login',
        persistAcrossBackgrounding: true,
        sensitiveTransaction: true,
      );
      if (!authenticated) return left(const SettingsFailure.biometricAuthFailed());
      await _appPrefs.setIsBiometricAuthenticated(true);
      return right(unit);
    } on LocalAuthException catch (e) {
      const silentCodes = {
        LocalAuthExceptionCode.userCanceled,
        LocalAuthExceptionCode.systemCanceled,
        LocalAuthExceptionCode.userRequestedFallback,
      };
      return left(
        silentCodes.contains(e.code)
            ? const SettingsFailure.biometricAuthFailed()
            : const SettingsFailure.serverError(),
      );
    } catch (_) {
      return left(const SettingsFailure.serverError());
    }
  }

  @override
  Future<Either<SettingsFailure, Unit>> disableBiometric() async {
    try {
      await _appPrefs.setIsBiometricAuthenticated(false);
      return right(unit);
    } catch (_) {
      return left(const SettingsFailure.serverError());
    }
  }
}