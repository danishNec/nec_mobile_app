import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/device_helper/app_device_helper.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/login/i_login_facade.dart';
import '../../domain/login/login_failure.dart';
import '../../domain/login/login_id_identity_dto.dart';
import '../../domain/login/value_validators.dart';

/// TEMPORARY: the dev backend's `request-otp` endpoint returns HTTP 690
/// ("Error occurred") for well-formed requests, blocking the login flow.
/// While that is being fixed server-side, treat a failed request-otp as a
/// success so the OTP screen can still be reached. Set back to `false`
/// (or delete this and the guard below) once the backend works.
const bool _bypassRequestOtp = true;

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
        final types = loginIdIdentityDto.data?.identityTypesList ?? [];
        if (types.isNotEmpty) return right(loginIdIdentityDto);
        // Some environments' get-kyc-combo-list response omits
        // identity_types_list. CPR is the only code the identity-number
        // validator accepts, so fall back to it and let login proceed.
        return right(
          loginIdIdentityDto.copyWith(
            data: (loginIdIdentityDto.data ?? const Data()).copyWith(
              identityTypesList: const [
                CountryListElement(code: 'CPR', name: 'CPR'),
              ],
            ),
          ),
        );
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
        if (_bypassRequestOtp) return right(unit);
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(LoginFailure.invalidCredentials(message));
      }
    } catch (e) {
      if (_bypassRequestOtp) return right(unit);
      return left(const LoginFailure.serverError());
    }
  }
}
