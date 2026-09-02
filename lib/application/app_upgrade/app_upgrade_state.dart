part of 'app_upgrade_bloc.dart';

@freezed
sealed class AppUpgradeState with _$AppUpgradeState {
  const factory AppUpgradeState({
    required bool isChecking,
    required bool isOpeningStore,

    /// none()  — check not yet triggered
    /// some(left)  — check failed
    /// some(right) — check succeeded; inspect [AppVersionInfo.upgradeType]
    required Option<Either<AppUpgradeFailure, AppVersionInfo>>
        checkFailureOrSuccessOption,

    /// none()  — store-open not yet triggered
    /// some(left)  — could not launch the store URL
    /// some(right) — store launched successfully
    required Option<Either<AppUpgradeFailure, Unit>>
        openStoreFailureOrSuccessOption,
  }) = _AppUpgradeState;

  factory AppUpgradeState.initial() => AppUpgradeState(
        isChecking: false,
        isOpeningStore: false,
        checkFailureOrSuccessOption: none(),
        openStoreFailureOrSuccessOption: none(),
      );
}