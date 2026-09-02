part of 'summary_bloc.dart';

@freezed
sealed class SummaryEvent with _$SummaryEvent {
  // ── Initialisation ───────────────────────────────────────────────────────
  const factory SummaryEvent.prepareSummary({
    required String beneficiaryId,
    CommonSelectableItem? paymentMethodItem,
    String? lastRawSourceAmount,
    String? lastRawDestinationAmount,
    bool? isLastInputSource,
  }) = _PrepareSummary;

  // ── Section-level retry (user taps "Retry" in a failed card) ─────────────
  const factory SummaryEvent.retryBeneficiary() = _RetryBeneficiary;
  const factory SummaryEvent.retryPaymentMethod() = _RetryPaymentMethod;

  // ── Beneficiary in-place edit (no network call) ───────────────────────────
  const factory SummaryEvent.beneficiaryUpdatedChanged({
    String? eId,
    String? beneficiaryFirstName,
    String? beneficiaryLastName,
    String? beneficiaryCountryCode,
    String? beneficiaryBankName,
    String? disbursalMode,
    String? currencyCode,
    String? purposeName,
    String? incomeSourceName,
    String? purposeOfTransaction,
    String? sourceOfFund,
  }) = _BeneficiaryUpdatedChanged;

  // ── Amount editing (debounced) ────────────────────────────────────────────
  const factory SummaryEvent.sourceAmountChanged({
    required String sourceAmount,
  }) = _SourceAmountChanged;

  const factory SummaryEvent.destinationAmountChanged({
    required String destinationAmount,
  }) = _DestinationAmountChanged;

  // ── Payment method selection ──────────────────────────────────────────────
  const factory SummaryEvent.paymentMethodChanged(
    CommonSelectableItem selectedPaymentMethodItem,
  ) = _PaymentMethodChanged;

  // ── Transaction submission ────────────────────────────────────────────────
  const factory SummaryEvent.postCreateTemporarySession() =
      _PostCreateTemporarySession;

  const factory SummaryEvent.getSummaryStatusEnquiry(
    String temporarySessionId,
  ) = _GetSummaryStatusEnquiry;
}
