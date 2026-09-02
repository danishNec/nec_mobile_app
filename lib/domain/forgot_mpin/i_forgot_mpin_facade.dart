import 'package:dartz/dartz.dart';

import '../forgot_mpin/value_validators.dart';
import 'forgot_id_identity_dto.dart';
import 'forgot_mpin_failure.dart';
import 'forgot_mpin_otp_dto.dart';

abstract class IForgotMpinFacade {
  Future<Either<ForgotMpinFailure, ForgotIdIdentityDto>> getIdentityTypes();
  Future<Either<ForgotMpinFailure, Unit>> requestOtp({
    required String identityTypeCode,
    required int countryCode,
    required MobileNumber mobileNumber,
    required IdentityNumber identityNumber,
  });
  Future<Either<ForgotMpinFailure, Unit>> resendOtp({
    required String identityTypeCode,
    required int countryCode,
    required String identityNumber,
    required String phoneNumber,
  });
  Future<Either<ForgotMpinFailure, ForgotMpinOtpDto>> verifyOtp({
    required String identityTypeCode,
    required int countryCode,
    required String identityNumber,
    required String phoneNumber,
    required Otp otpCode,
  });
}
