part of 'summary_bloc.dart';

@freezed
sealed class SummaryState with _$SummaryState {
  const factory SummaryState({
    // ── Page-level flags ─────────────────────────────────────────────────────
    // True only during the initial parallel API burst; resolved in
    // _onPrepareSummaryToState once all 4 APIs complete (pass or fail).
    @Default(true) bool isInitialLoading,
    // Per-section loading flags (used for retry operations after initial load).
    @Default(false) bool isBeneficiaryLoading,
    @Default(false) bool isPaymentMethodLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool isRateLoading,
    @Default(false) bool isSourceAmountCalculating,
    @Default(false) bool isDestinationAmountCalculating,

    // ── Input preservation ───────────────────────────────────────────────────
    @Default('') String lastRawSourceAmount,
    @Default('') String lastRawDestinationAmount,
    @Default(true) bool isLastInputSource,

    // ── Retry support ────────────────────────────────────────────────────────
    // Stored so retry handlers can re-fetch without needing external input.
    String? beneficiaryId,
    // Non-null when the corresponding section failed on initial load or retry.
    SummaryFailure? beneficiaryFailure,
    SummaryFailure? paymentMethodFailure,

    // ── Domain data ──────────────────────────────────────────────────────────
    SummaryBeneficiaryByIdDto? summaryBeneficiaryByIdDto,
    required CommonSendMoneyDto commonSendMoneyDto,
    CommonSelectableDto? commonSourceSelectableDto,
    CommonSelectableItem? selectedCommonSourceItem,
    CommonSelectableDto? commonDestinationSelectableDto,
    CommonSelectableItem? selectedCommonDestinationItem,
    CommonSelectableDto? commonPaymentMethodSelectableDto,
    CommonSelectableItem? selectedPaymentMethodItem,
    SummaryPaymentMethodDto? summaryPaymentMethodDto,
    SummaryTemporarySessionDto? summaryTemporarySessionDto,
    CommonPaymentResultDto? commonPaymentResultDto,

    // ── Option streams (drive listeners / section rendering) ─────────────────
    required Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>>
    summaryBeneficiaryByIdFailureOrSuccessOption,
    required Option<Either<SummaryFailure, SummaryCurrencyListDto>>
    summarySourceCurrencyListFailureOrSuccessOption,
    required Option<Either<SummaryFailure, SummaryCurrencyListDto>>
    summaryDestinationCurrencyListFailureOrSuccessOption,
    required Option<Either<SummaryFailure, SummaryCalculateAmountDto>>
    summaryCalculatedSourceAmountFailureOrSuccessOption,
    required Option<Either<SummaryFailure, SummaryCalculateAmountDto>>
    summaryCalculatedDestinationAmountFailureOrSuccessOption,
    required Option<Either<SummaryFailure, SummaryPaymentMethodDto>>
    summaryPaymentMethodFailureOrSuccessOption,
    required Option<Either<SummaryFailure, SummaryTemporarySessionDto>>
    summaryTemporarySessionFailureOrSuccessOption,
    required Option<Either<SummaryFailure, SummaryStatusEnquiryDto>>
    summaryStatusEnquiryFailureOrSuccessOption,
  }) = _SummaryState;

  factory SummaryState.initial() => SummaryState(
    commonSendMoneyDto: CommonSendMoneyDto.empty(),
    summaryBeneficiaryByIdFailureOrSuccessOption: none(),
    summarySourceCurrencyListFailureOrSuccessOption: none(),
    summaryDestinationCurrencyListFailureOrSuccessOption: none(),
    summaryCalculatedSourceAmountFailureOrSuccessOption: none(),
    summaryCalculatedDestinationAmountFailureOrSuccessOption: none(),
    summaryPaymentMethodFailureOrSuccessOption: none(),
    summaryTemporarySessionFailureOrSuccessOption: none(),
    summaryStatusEnquiryFailureOrSuccessOption: none(),
  );
}