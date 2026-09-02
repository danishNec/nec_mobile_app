import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/set_mpin/i_set_mpin_facade.dart';
import '../../domain/set_mpin/set_mpin_failure.dart';

@LazySingleton(as: ISetMpinFacade)
class SetMpinRepository implements ISetMpinFacade {
  final ApiServices _apiServices;
  final SharedPrefs _sharedPrefs;
  SetMpinRepository(this._apiServices, this._sharedPrefs);
  @override
  Future<Either<SetMpinFailure, Unit>> verifyNewMpin({
    required String mpin,
  }) async {
    try {
      final token = _sharedPrefs.getToken();
      final appMemberCode = _sharedPrefs.getAppMemberCode();
      final body = {
        'app_member_code': appMemberCode,
        'new_m_p_i_n': int.parse(mpin),
      };
      final response = await _apiServices.postSetMpin(
        token: token,
        body: body,
      );
      if (response.isSuccessful) {
        await _sharedPrefs.setMpin(true);
        return right(unit);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(SetMpinFailure.invalidVerifyNewMpin(message));
      }
    } catch (e) {
      return const Left(SetMpinFailure.serverError());
    }
  }
}
