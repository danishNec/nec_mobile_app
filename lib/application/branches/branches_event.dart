part of 'branches_bloc.dart';

@freezed
sealed class BranchesEvent with _$BranchesEvent {
  const factory BranchesEvent.getBranchesList() = _GetBranchesList;
  const factory BranchesEvent.searchBranches(String query) = _SearchBranches;
}
