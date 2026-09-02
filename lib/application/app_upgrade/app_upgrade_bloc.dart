import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/app_upgrade/app_upgrade_failure.dart';
import '../../domain/app_upgrade/app_version_info.dart';
import '../../domain/app_upgrade/i_app_upgrade_facade.dart';

part 'app_upgrade_event.dart';
part 'app_upgrade_state.dart';
part 'app_upgrade_bloc.freezed.dart';

@injectable
class AppUpgradeBloc extends Bloc<AppUpgradeEvent, AppUpgradeState> {
  final IAppUpgradeFacade _facade;

  AppUpgradeBloc(this._facade) : super(AppUpgradeState.initial()) {
    on<_CheckForUpdate>(_onCheckForUpdate);
    on<_OpenStore>(_onOpenStore);
    on<_Dismissed>(_onDismissed);
  }

  FutureOr<void> _onCheckForUpdate(
    _CheckForUpdate event,
    Emitter<AppUpgradeState> emit,
  ) async {
    emit(state.copyWith(
      isChecking: true,
      checkFailureOrSuccessOption: none(),
    ));

    final result = await _facade.checkForUpdate();

    emit(state.copyWith(
      isChecking: false,
      checkFailureOrSuccessOption: some(result),
    ));
  }

  FutureOr<void> _onOpenStore(
    _OpenStore event,
    Emitter<AppUpgradeState> emit,
  ) async {
    emit(state.copyWith(
      isOpeningStore: true,
      openStoreFailureOrSuccessOption: none(),
    ));

    final result = await _facade.openStore(storeUrl: event.storeUrl);

    emit(state.copyWith(
      isOpeningStore: false,
      openStoreFailureOrSuccessOption: some(result),
    ));
  }

  FutureOr<void> _onDismissed(
    _Dismissed event,
    Emitter<AppUpgradeState> emit,
  ) {
    emit(AppUpgradeState.initial());
  }
}