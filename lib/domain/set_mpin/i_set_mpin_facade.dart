import 'package:dartz/dartz.dart';

import 'set_mpin_failure.dart';

abstract class ISetMpinFacade {
  Future<Either<SetMpinFailure, Unit>> verifyNewMpin({required String mpin});
}
