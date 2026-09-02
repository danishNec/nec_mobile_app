import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/prefs/app_prefs.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

@injectable
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  final SharedPrefs _sharedPrefs;
  OnBoardingBloc(this._sharedPrefs) : super(const OnBoardingState.initial()) {
    on<_LoadOnBoarding>(_onLoadOnBoarding);
  }

  FutureOr<void> _onLoadOnBoarding(
    _LoadOnBoarding event,
    Emitter<OnBoardingState> emit,
  ) async {
    emit(const OnBoardingState.loadingProgress());
    try {
      await _sharedPrefs.setHasOnboarded(true);
      emit(const OnBoardingState.loadSuccessOnBoarding());
    } catch (e) {
      emit(OnBoardingState.loadFailure(e.toString()));
    }
  }
}
