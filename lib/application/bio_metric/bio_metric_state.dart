part of 'bio_metric_bloc.dart';

@freezed
sealed class BioMetricState with _$BioMetricState {
  const factory BioMetricState({
    required bool isBiometricAvailable,
    required bool isAuthenticating,
    required bool isBiometricEnabled,
  }) = _BioMetricState;

  factory BioMetricState.initial() => const BioMetricState(
    isBiometricAvailable: false,
    isAuthenticating: false,
    isBiometricEnabled: false,
  );
}