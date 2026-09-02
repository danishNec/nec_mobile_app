import 'package:dartz/dartz.dart';

import 'branches_dto.dart';
import 'branches_failure.dart';

abstract class IBranchesFacade {
  Future<Either<BranchesFailure, BranchesDto>> getBranchesList();
}