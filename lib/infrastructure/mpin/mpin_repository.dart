import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/device_helper/app_device_helper.dart';
import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/mpin/i_mpin_facade.dart';
import '../../domain/mpin/mpin_dto.dart';
import '../../domain/mpin/mpin_failure.dart';

@LazySingleton(as: IMpinFacade)
class MpinRepository implements IMpinFacade {
  final ApiServices _apiServices;
  final SharedPrefs _sharedPrefs;
  final AppDeviceHelper _deviceHelper;
  MpinRepository(this._apiServices, this._sharedPrefs, this._deviceHelper);
  @override
  Future<Either<MpinFailure, MpinDto>> verifyMpin({
    required String mpin,
  }) async {
    try {
      final appMemberCode = _sharedPrefs.getAppMemberCode();
      final deviceDetails = await _deviceHelper.getDeviceFingerprint();
      final body = {
        'app_member_code': appMemberCode,
        'm_p_i_n': int.parse(mpin),
        "device_details": {
          'device_id': deviceDetails['deviceId'] ?? '',
          'model': deviceDetails['model'] ?? '',
          'o_s_version': deviceDetails['osVersion'] ?? '',
          'finger_print': deviceDetails['fingerprint'] ?? '',
        },
      };
      final response = await _apiServices.postVerifyMpin(body);
      if (response.isSuccessful) {
        final dto = MpinDto.fromJson(response.body);
        await _sharedPrefs.setToken(dto.data?.jwtToken ?? '');
        await _sharedPrefs.setRefreshToken(dto.data?.refreshToken ?? '');
        await _refreshUserPrefs(dto);
        return right(dto);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(MpinFailure.invalidMpin(message));
      }
    } catch (e) {
      return left(MpinFailure.serverError());
    }
  }

  @override
  Future<Either<MpinFailure, MpinDto>> verifyBiometric() async {
    try {
      final appMemberCode = _sharedPrefs.getAppMemberCode();
      final refreshToken = _sharedPrefs.getRefreshToken();
      final deviceDetails = await _deviceHelper.getDeviceFingerprint();
      final body = {
        'app_member_code': appMemberCode,
        'refresh_token': refreshToken,
        "device_details": {
          'device_id': deviceDetails['deviceId'] ?? '',
          'model': deviceDetails['model'] ?? '',
          'o_s_version': deviceDetails['osVersion'] ?? '',
          'finger_print': deviceDetails['fingerprint'] ?? '',
        },
      };
      final response = await _apiServices.postVerifyBiometric(body);
      if (response.isSuccessful) {
        final dto = MpinDto.fromJson(response.body);
        await _sharedPrefs.setToken(dto.data?.jwtToken ?? '');
        await _sharedPrefs.setRefreshToken(dto.data?.refreshToken ?? '');
        await _refreshUserPrefs(dto);
        return right(dto);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(MpinFailure.invalidBiometric(message));
      }
    } catch (e) {
      return left(MpinFailure.serverError());
    }
  }

  // MPIN/biometric login previously only refreshed the token, leaving
  // profile prefs (mobile_number_with_out_code, id_number, etc.) populated
  // only once, during the initial OTP-registration flow. Fields like
  // mobile_number then went stale/empty for routine logins and were
  // rejected as invalid input by downstream APIs (e.g. request-Beneficiary-otp).
  // Refresh them from the verify response on every login, same as otp_repository.
  Future<void> _refreshUserPrefs(MpinDto dto) async {
    final user = dto.data?.user;
    if (user == null) return;
    // TEMPORARY: some backend accounts return app_member_code: 0 (no real
    // app-side member assigned), which then gets rejected by authenticated
    // endpoints like /customer/get-user. Fall back to a known-working test
    // app_member_code until the backend assigns real ones for these accounts.
    // Remove this once every account reliably gets a non-zero app_member_code.
    final appMemberCode = user.appMemberCode ?? 0;
    await _sharedPrefs.setAppMemberCode(
      appMemberCode == 0 ? 6064 : appMemberCode,
    );
    await _sharedPrefs.setMemberCode(user.memberCode ?? 0);
    await _sharedPrefs.setUserName(user.name ?? '');
    final mobileNumber = user.mobileNumber ?? '';
    await _sharedPrefs.setMobileNumber(mobileNumber);
    // TEMPORARY: this backend's login/profile responses never populate
    // mobile_number_with_out_code (verified live against /auth/get-profile —
    // the field is simply absent from the user object), so derive it by
    // stripping the mobile_code prefix from mobile_number when present.
    // Remove this fallback once the backend actually returns the field.
    final mobileCodePrefix = (user.mobileCode ?? '').toString();
    final derivedWithoutCode =
        mobileCodePrefix.isNotEmpty && mobileNumber.startsWith(mobileCodePrefix)
        ? mobileNumber.substring(mobileCodePrefix.length)
        : mobileNumber;
    await _sharedPrefs.setMobileNumberWithOutCode(
      user.mobileNumberWithOutCode ?? derivedWithoutCode,
    );
    // TEMPORARY: this backend's mpin/biometric verify response never
    // populates user.id_number either, and unlike the OTP flow there's no
    // typed identity number to fall back to here — so preserve whatever
    // was already stored (set during the original OTP verification) instead
    // of clobbering it with an empty string on every subsequent login.
    // Remove this fallback once the backend returns id_number directly.
    if (user.idNumber != null && user.idNumber!.isNotEmpty) {
      await _sharedPrefs.setIdNumber(user.idNumber!);
    }
  }
}
