import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/device_helper/app_device_helper.dart';
import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/otp/i_otp_facade.dart';
import '../../domain/otp/otp_dto.dart';
import '../../domain/otp/otp_failure.dart';
import '../../domain/otp/value_validators.dart';

@LazySingleton(as: IOtpFacade)
class OtpRepository implements IOtpFacade {
  final ApiServices _apiServices;
  final SharedPrefs _sharedPrefs;
  final AppDeviceHelper _deviceHelper;
  OtpRepository(this._apiServices, this._sharedPrefs, this._deviceHelper);

  @override
  Future<Either<OtpFailure, Unit>> resendOtp({
    required String identityTypeCode,
    required int countryCode,
    required String identityNumber,
    required String phoneNumber,
  }) async {
    try {
      final deviceDetails = await _deviceHelper.getDeviceFingerprint();
      final body = {
        'identity_type_code': identityTypeCode,
        'mobile_code': countryCode,
        'mobile_number': phoneNumber,
        'id_number': identityNumber,
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
        return left(OtpFailure.unableToSendOtp(message));
      }
    } catch (e) {
      return left(OtpFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<OtpFailure, OtpDto>> verifyOtp({
    required String identityTypeCode,
    required int countryCode,
    required String identityNumber,
    required String phoneNumber,
    required Otp otpCode,
  }) async {
    try {
      final body = {
        'identity_type_code': identityTypeCode,
        'mobile_code': countryCode,
        'mobile_number': phoneNumber,
        'id_number': identityNumber,
        'o_t_p': int.parse(otpCode.getOrCrash()),
      };
      final response = await _apiServices.postVerifyOtp(body);
      if (response.isSuccessful) {
        final otpDto = OtpDto.fromJson(response.body);
        final data = otpDto.data;
        final user = data?.user;
        if (user?.isUserRegistered == true) {
          await _sharedPrefs.setToken(data?.jwtToken ?? '');
          await _sharedPrefs.setRefreshToken(data?.refreshToken ?? '');
          await _sharedPrefs.setAppMemberCode(user?.appMemberCode ?? 0);
          await _sharedPrefs.setMemberCode(user?.memberCode ?? 0);
          await _sharedPrefs.setUserName(user?.name ?? '');
          await _sharedPrefs.setMobileNumber(user?.mobileNumber ?? '');
          await _sharedPrefs.setMobileNumberWithOutCode(
            user?.mobileNumberWithOutCode ?? '',
          );
          await _sharedPrefs.setIdNumber(user?.idNumber ?? '');
          await _sharedPrefs.setIsLoggedIn(true);
          await _sharedPrefs.setMpin(user?.isMPINCreated ?? false);
        }
        return right(otpDto);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(OtpFailure.invalidOtp(message: message));
      }
    } catch (e) {
      return left(OtpFailure.serverError(e.toString()));
    }
  }
}
