import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/profile/i_profile_facade.dart';
import '../../domain/profile/profile_failure.dart';
import '../../domain/profile/profile_user_dto.dart';

@LazySingleton(as: IProfileFacade)
class ProfileRepository implements IProfileFacade {
  final ApiServices _apiServices;
  final SharedPrefs _appPrefs;
  ProfileRepository(this._apiServices, this._appPrefs);
  @override
  Future<Either<ProfileFailure, ProfileUserDto>> getUserInfo() async {
    try {
      final token = _appPrefs.getToken();
      final response = await _apiServices.getUserInfo(token: token);
      if (response.isSuccessful) {
        final dto = ProfileUserDto.fromJson(response.body);
        return right(dto);
      } else {
        return left(const ProfileFailure.unableToGetUserInfo());
      }
    } catch (e) {
      return left(ProfileFailure.serverError());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> requestEmailOtp({
    required String email,
  }) async {
    try {
      final token = _appPrefs.getToken();
      final memberCode = _appPrefs.getMemberCode();
      final queryParams = {'member_code': memberCode, 'email': email};
      final response = await _apiServices.postRequestEmailOtp(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        return right(unit);
      } else {
        return left(const ProfileFailure.unableToUpdateEmailAddress());
      }
    } catch (e) {
      return left(ProfileFailure.serverError());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> verifyEmailOtp({
    required String otp,
    required String email,
  }) async {
    try {
      final token = _appPrefs.getToken();
      final memberCode = _appPrefs.getMemberCode();
      final queryParams = {
        'member_code': memberCode,
        'otp': otp,
        'email': email,
      };
      final response = await _apiServices.postVerifyEmailOtp(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        return right(unit);
      } else {
        return left(const ProfileFailure.unableToVerifyEmailOtp());
      }
    } catch (e) {
      return left(ProfileFailure.serverError());
    }
  }
}
