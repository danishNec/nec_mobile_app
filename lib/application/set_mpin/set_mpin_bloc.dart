import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/set_mpin/i_set_mpin_facade.dart';
import '../../domain/set_mpin/set_mpin_failure.dart';
import '../../domain/set_mpin/value_validators.dart';

part 'set_mpin_event.dart';
part 'set_mpin_state.dart';
part 'set_mpin_bloc.freezed.dart';

@injectable
class SetMpinBloc extends Bloc<SetMpinEvent, SetMpinState> {
  final ISetMpinFacade _setMpinFacade;
  SetMpinBloc(this._setMpinFacade) : super(SetMpinState.initial()) {
    on<_SetNewMpin>(_onSetNewMpinToState);
    on<_SetVerifyNewMpin>(_onSetVerifyNewMpinToState);
  }

  FutureOr<void> _onSetNewMpinToState(
    _SetNewMpin event,
    Emitter<SetMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        setNewMpinFailureOrSuccessOption: none(),
      ),
    );

    final mpin = NewMpin(event.mpin);
    final isValid = mpin.isValid();
    if (isValid) {
      emit(
        state.copyWith(
          isSubmitting: false,
          newMpin: mpin,
          setNewMpinFailureOrSuccessOption: some(right(unit)),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          newMpin: mpin,
          setNewMpinFailureOrSuccessOption: some(
            left(const SetMpinFailure.invalidNewMpin()),
          ),
        ),
      );
    }
  }

  FutureOr<void> _onSetVerifyNewMpinToState(
    _SetVerifyNewMpin event,
    Emitter<SetMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        setNewMpinFailureOrSuccessOption: none(),
        setVerifyMpinFailureOrSuccessOption: none(),
      ),
    );

    final isMatch = event.mpin == state.newMpin.getOrCrash();
    if (isMatch) {
      final failureOrSuccess = await _setMpinFacade.verifyNewMpin(
        mpin: event.mpin,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          setVerifyMpinFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          setVerifyMpinFailureOrSuccessOption: some(
            left(const SetMpinFailure.mismatchVerifyNewMpin()),
          ),
        ),
      );
    }
  }
}
