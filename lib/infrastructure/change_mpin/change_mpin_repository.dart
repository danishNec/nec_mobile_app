import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/change_mpin/change_current_mpin_dto.dart';
import '../../domain/change_mpin/change_mpin_failure.dart';
import '../../domain/change_mpin/i_change_mpin_facade.dart';
import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';

@LazySingleton(as: IChangeMpinFacade)
class ChangeMpinRepository implements IChangeMpinFacade {
  final ApiServices _apiServices;
  final SharedPrefs _appPrefs;
  ChangeMpinRepository(this._apiServices, this._appPrefs);
  @override
  Future<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeCurrentMpin({
    required String mpin,
  }) async {
    try {
      final appMemberCode = _appPrefs.getAppMemberCode();
      final body = {
        'app_member_code': appMemberCode,
        'm_p_i_n': int.parse(mpin),
      };
      final response = await _apiServices.postVerifyMpin(body);
      if (response.isSuccessful) {
        final dto = ChangeCurrentMpinDto.fromJson(response.body);
        if (dto.data?.jwtToken != null) {
          await _appPrefs.setToken(dto.data!.jwtToken!);
        }
        if (dto.data?.refreshToken != null) {
          await _appPrefs.setRefreshToken(dto.data!.refreshToken!);
        }
        return right(dto);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(ChangeMpinFailure.invalidCurrentMpin(message));
      }
    } catch (e) {
      return const Left(ChangeMpinFailure.serverError());
    }
  }

  @override
  Future<Either<ChangeMpinFailure, Unit>> changeVerifyMpin({
    required String mpin,
  }) async {
    try {
      final token = _appPrefs.getToken();
      final body = {'new_m_p_i_n': int.parse(mpin)};
      final response = await _apiServices.postSetMpin(token: token, body: body);
      if (response.isSuccessful) {
        return right(unit);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(ChangeMpinFailure.invalidVerifyMpin(message));
      }
    } catch (e) {
      return const Left(ChangeMpinFailure.serverError());
    }
  }
}
