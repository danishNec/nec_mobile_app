part of 'branches_bloc.dart';

@freezed
sealed class BranchesState with _$BranchesState {
  const factory BranchesState({
    required bool isLoading,
    required bool isSearching,
    required String searchQuery,
    required Option<Either<BranchesFailure, BranchesDto>>
        branchesListFailureOrSuccessOption,
  }) = _BranchesState;
  factory BranchesState.initial() => BranchesState(
        isLoading: false,
        isSearching: false,
        searchQuery: '',
        branchesListFailureOrSuccessOption: none(),
      );
}
