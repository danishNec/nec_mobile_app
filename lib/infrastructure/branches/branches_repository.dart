import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/branches/branches_dto.dart';
import '../../domain/branches/branches_failure.dart';
import '../../domain/branches/i_branches_facade.dart';
import '../../domain/core/services/api_services.dart';

@LazySingleton(as: IBranchesFacade)
class BranchesRepository implements IBranchesFacade {
  final ApiServices _apiServices;
  BranchesRepository(this._apiServices);
  @override
  Future<Either<BranchesFailure, BranchesDto>> getBranchesList() async {
    try {
      final response = await _apiServices.getBranches();
      if (response.isSuccessful) {
        final dto = BranchesDto.fromJson(response.body);
        return right(dto);
      } else {
        return left(const BranchesFailure.unableToGetBranches());
      }
    } catch (e) {
      return left(const BranchesFailure.serverError());
    }
  }
}
