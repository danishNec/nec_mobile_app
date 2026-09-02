import 'package:dartz/dartz.dart';

import 'settings_failure.dart';
import 'settings_user_dto.dart';

abstract class ISettingsFacade {
  Future<Either<SettingsFailure, SettingsUserDto>> getUserInfo();
  Future<Either<SettingsFailure, bool>> checkBiometricSupport();
  bool isBiometricEnabled();
  Future<Either<SettingsFailure, Unit>> enableBiometric();
  Future<Either<SettingsFailure, Unit>> disableBiometric();
}