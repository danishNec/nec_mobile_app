import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/prefs/app_prefs.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SharedPrefs _sharedPrefs;

  SplashBloc(this._sharedPrefs) : super(const SplashState.initial()) {
    on<_CheckAuthentication>(_onCheckAuthentication);
  }

  FutureOr<void> _onCheckAuthentication(
    _CheckAuthentication event,
    Emitter<SplashState> emit,
  ) async {
    emit(const SplashState.loadingProgress());

    try {
      final hasOnboarded = _sharedPrefs.getHasOnboarded();
      final isLoggedIn = _sharedPrefs.getIsLoggedIn();
      final isMpinSet = _sharedPrefs.getMpin();
      final token = _sharedPrefs.getToken();

      // isLoggedIn flag alone is unreliable — token may be missing due to
      // a crash mid-logout, prefs partial write, or secure-storage eviction.
      final hasValidSession = isLoggedIn && token != null && token.isNotEmpty;

      // Repair: flag says logged-in but no actual token exists.
      if (isLoggedIn && !hasValidSession) {
        await _sharedPrefs.setIsLoggedIn(false);
      }

      if (!hasOnboarded) {
        emit(const SplashState.loadedSuccessOnBoarding());
      } else if (!hasValidSession) {
        emit(const SplashState.loadedSuccessLogin());
      } else if (!isMpinSet) {
        emit(const SplashState.loadedSuccessSetMpin());
      } else {
        emit(const SplashState.loadedSuccessMain());
      }
    } catch (e) {
      emit(SplashState.loadedFailure(e.toString()));
    }
  }
}
