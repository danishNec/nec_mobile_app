import 'package:freezed_annotation/freezed_annotation.dart';
part 'branches_failure.freezed.dart';

@freezed
sealed class BranchesFailure with _$BranchesFailure {
  const factory BranchesFailure.serverError() = _ServerError;
  const factory BranchesFailure.unableToGetBranches() = _UnableToGetBranches;
}
