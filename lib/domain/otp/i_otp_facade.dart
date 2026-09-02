import 'package:dartz/dartz.dart';

import 'otp_dto.dart';
import 'otp_failure.dart';
import 'value_validators.dart';

abstract class IOtpFacade {
  Future<Either<OtpFailure, Unit>> resendOtp({
    required String identityTypeCode,
    required int countryCode,
    required String identityNumber,
    required String phoneNumber,
  });
  Future<Either<OtpFailure, OtpDto>> verifyOtp({
    required String identityTypeCode,
    required int countryCode,
    required String identityNumber,
    required String phoneNumber,
    required Otp otpCode,
  });
}
