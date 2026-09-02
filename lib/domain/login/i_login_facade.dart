import 'package:dartz/dartz.dart';

import 'login_failure.dart';
import 'login_id_identity_dto.dart';
import 'value_validators.dart';

abstract class ILoginFacade {
  Future<Either<LoginFailure, LoginIdIdentityDto>> getIdentityTypes();
  Future<Either<LoginFailure, Unit>> requestOtp({
    required String identityTypeCode,
    required int countryCode,
    required MobileNumber mobileNumber,
    required IdentityNumber identityNumber,
  });
}