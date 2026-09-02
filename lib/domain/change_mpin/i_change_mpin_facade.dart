import 'package:dartz/dartz.dart';
import 'change_current_mpin_dto.dart';
import 'change_mpin_failure.dart';

abstract class IChangeMpinFacade {
  Future<Either<ChangeMpinFailure, ChangeCurrentMpinDto>> changeCurrentMpin({
    required String mpin,
  });
  Future<Either<ChangeMpinFailure, Unit>> changeVerifyMpin({
    required String mpin,
  });
}
