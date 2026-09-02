import 'package:dartz/dartz.dart';

import 'mpin_dto.dart';
import 'mpin_failure.dart';

abstract class IMpinFacade {
  Future<Either<MpinFailure, MpinDto>> verifyMpin({required String mpin});

  Future<Either<MpinFailure, MpinDto>> verifyBiometric();
}
