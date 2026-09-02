import 'package:dartz/dartz.dart';

import 'profile_failure.dart';
import 'profile_user_dto.dart';

abstract class IProfileFacade {
  Future<Either<ProfileFailure, ProfileUserDto>> getUserInfo();
  Future<Either<ProfileFailure, Unit>> requestEmailOtp({required String email});
  Future<Either<ProfileFailure, Unit>> verifyEmailOtp({
    required String otp,
    required String email,
  });
}
