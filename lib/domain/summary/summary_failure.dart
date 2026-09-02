import 'package:freezed_annotation/freezed_annotation.dart';
part 'summary_failure.freezed.dart';

@freezed
abstract class SummaryFailure with _$SummaryFailure {
  const factory SummaryFailure.unableToGetBeneficiary() = _UnableToGetBeneficiary;
  const factory SummaryFailure.unableToGetSourceCurrency() = _UnableToGetSourceCurrency;
  const factory SummaryFailure.unableToGetDestinationCurrency() = _UnableToGetDestinationCurrency;
  const factory SummaryFailure.unableToCalculateSourceAmount() = _UnableToCalculateSourceAmount;
  const factory SummaryFailure.unableToCalculateDestinationAmount() = _UnableToCalculateDestinationAmount;
  const factory SummaryFailure.unableToGetPaymentMethod() = _UnableToGetPaymentMethod;
  const factory SummaryFailure.unableToCreateTemporarySession(String message) = _UnableToCreateTemporarySession;
  const factory SummaryFailure.unableToGetSummaryStatusEnquiry(String message) = _UnableToGetSummaryStatusEnquiry;
  const factory SummaryFailure.serverError() = _ServerError;
}
