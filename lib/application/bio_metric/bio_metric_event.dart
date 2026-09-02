part of 'bio_metric_bloc.dart';

@freezed
class BioMetricEvent with _$BioMetricEvent {
  const factory BioMetricEvent.checkSupport() = _CheckSupport;
  const factory BioMetricEvent.enable() = _Enable;
}