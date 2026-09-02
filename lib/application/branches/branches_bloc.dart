import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/branches/branches_dto.dart';
import '../../domain/branches/branches_failure.dart';
import '../../domain/branches/i_branches_facade.dart';

part 'branches_event.dart';
part 'branches_state.dart';
part 'branches_bloc.freezed.dart';

@injectable
class BranchesBloc extends Bloc<BranchesEvent, BranchesState> {
  final IBranchesFacade _branchesFacade;
  BranchesBloc(this._branchesFacade) : super(BranchesState.initial()) {
    on<_GetBranchesList>(_onGetBranchesList);
    on<_SearchBranches>(_onSearchBranches);
  }

  FutureOr<void> _onGetBranchesList(
    _GetBranchesList event,
    Emitter<BranchesState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        isSearching: false,
        searchQuery: '',
        branchesListFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _branchesFacade.getBranchesList();
    emit(
      state.copyWith(
        isLoading: false,
        branchesListFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  FutureOr<void> _onSearchBranches(
    _SearchBranches event,
    Emitter<BranchesState> emit,
  ) async {
    emit(state.copyWith(isSearching: true));
    await Future.delayed(const Duration(milliseconds: 800));
    emit(state.copyWith(isSearching: false, searchQuery: event.query));
  }
}
