import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/device_helper/app_device_helper.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/login/i_login_facade.dart';
import '../../domain/login/login_failure.dart';
import '../../domain/login/login_id_identity_dto.dart';
import '../../domain/login/value_validators.dart';

@LazySingleton(as: ILoginFacade)
class LoginRepository implements ILoginFacade {
  final ApiServices _apiServices;
  final AppDeviceHelper _deviceHelper;
  LoginRepository(this._apiServices, this._deviceHelper);

  @override
  Future<Either<LoginFailure, LoginIdIdentityDto>> getIdentityTypes() async {
    try {
      final response = await _apiServices.getKycComboList();
      if (response.isSuccessful) {
        final loginIdIdentityDto = LoginIdIdentityDto.fromJson(response.body);
        return right(loginIdIdentityDto);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(LoginFailure.unableToFetchIdentityTypes(message));
      }
    } catch (e) {
      return left(const LoginFailure.serverError());
    }
  }

  @override
  Future<Either<LoginFailure, Unit>> requestOtp({
    required String identityTypeCode,
    required int countryCode,
    required MobileNumber mobileNumber,
    required IdentityNumber identityNumber,
  }) async {
    final deviceDetails = await _deviceHelper.getDeviceFingerprint();
    try {
      final body = {
        'identity_type_code': identityTypeCode,
        'mobile_code': countryCode,
        'mobile_number': mobileNumber.getOrCrash(),
        'id_number': identityNumber.getOrCrash(),
        "resend_otp_status": 1,
        "device_details": {
          'device_id': deviceDetails['deviceId'] ?? '',
          'model': deviceDetails['model'] ?? '',
          'o_s_version': deviceDetails['osVersion'] ?? '',
          'finger_print': deviceDetails['fingerprint'] ?? '',
        },
      };
      final response = await _apiServices.postRequestOtp(body);
      if (response.isSuccessful) {
        return right(unit);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(LoginFailure.invalidCredentials(message));
      }
    } catch (e) {
      return left(const LoginFailure.serverError());
    }
  }
}
