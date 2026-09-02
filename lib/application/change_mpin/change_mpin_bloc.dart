import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/change_mpin/change_current_mpin_dto.dart';
import '../../domain/change_mpin/change_mpin_failure.dart';
import '../../domain/change_mpin/i_change_mpin_facade.dart';
import '../../domain/change_mpin/value_validators.dart';

part 'change_mpin_event.dart';
part 'change_mpin_state.dart';
part 'change_mpin_bloc.freezed.dart';

@injectable
class ChangeMpinBloc extends Bloc<ChangeMpinEvent, ChangeMpinState> {
  final IChangeMpinFacade _changeMpinFacade;
  ChangeMpinBloc(this._changeMpinFacade) : super(ChangeMpinState.initial()) {
    on<_ChangeCurrentMpin>(_onChangeCurrentMpin);
    on<_ChangeNewMpin>(_onChangeNewMpin);
    on<_ChangeVerifyMpin>(_onChangeVerifyMpin);
  }

  FutureOr<void> _onChangeCurrentMpin(
    _ChangeCurrentMpin event,
    Emitter<ChangeMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        changeNewMpinFailureOrSuccessOption: none(),
        changeVerifyMpinFailureOrSuccessOption: none(),
        changeMpinFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _changeMpinFacade.changeCurrentMpin(
      mpin: event.mpin,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isSubmitting: false,
          changeMpinFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (success) => emit(
        state.copyWith(
          isSubmitting: false,
          currentMpin: event.mpin,
          changeMpinFailureOrSuccessOption: some(right(success)),
        ),
      ),
    );
  }

  FutureOr<void> _onChangeNewMpin(
    _ChangeNewMpin event,
    Emitter<ChangeMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        changeMpinFailureOrSuccessOption: none(),
        changeNewMpinFailureOrSuccessOption: none(),
      ),
    );

    final mpin = NewMpin(event.mpin, state.currentMpin);
    final isValid = mpin.isValid();
    if (isValid) {
      emit(
        state.copyWith(
          isSubmitting: false,
          newMpin: mpin,
          changeNewMpinFailureOrSuccessOption: some(right(unit)),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          newMpin: mpin,
          changeNewMpinFailureOrSuccessOption: some(
            left(const ChangeMpinFailure.invalidNewMpin()),
          ),
        ),
      );
    }
  }

  FutureOr<void> _onChangeVerifyMpin(
    _ChangeVerifyMpin event,
    Emitter<ChangeMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        changeNewMpinFailureOrSuccessOption: none(),
        changeVerifyMpinFailureOrSuccessOption: none(),
      ),
    );

    final isMatch = event.mpin == state.newMpin.getOrCrash();
    if (isMatch) {
      final failureOrSuccess = await _changeMpinFacade.changeVerifyMpin(
        mpin: event.mpin,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          changeVerifyMpinFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          changeVerifyMpinFailureOrSuccessOption: some(
            left(const ChangeMpinFailure.mismatchVerifyMpin()),
          ),
        ),
      );
    }
  }
}
