import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/common/common_payment_result_dto.dart';
import '../../domain/common/common_selectable_dto.dart';
import '../../domain/common/common_send_money_dto.dart';
import '../../domain/summary/i_summary_facade.dart';
import '../../domain/summary/summary_beneficiary_by_id_dto.dart';
import '../../domain/summary/summary_calculate_amount_dto.dart';
import '../../domain/summary/summary_currency_list_dto.dart';
import '../../domain/summary/summary_failure.dart';
import '../../domain/summary/summary_payment_method_dto.dart';
import '../../domain/summary/summary_status_enquiry_dto.dart';
import '../../domain/summary/summary_temporary_session_dto.dart';

part 'summary_event.dart';
part 'summary_state.dart';
part 'summary_bloc.freezed.dart';

@injectable
class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final ISummaryFacade _summaryFacade;

  SummaryBloc(this._summaryFacade) : super(SummaryState.initial()) {
    on<_PrepareSummary>(_onPrepareSummaryToState);
    on<_RetryBeneficiary>(_onRetryBeneficiaryToState);
    on<_RetryPaymentMethod>(_onRetryPaymentMethodToState);
    on<_BeneficiaryUpdatedChanged>(_onBeneficiaryUpdatedChangedToState);
    on<_SourceAmountChanged>(
      _onSourceAmountChangedToState,
      transformer: _debounce(const Duration(milliseconds: 300)),
    );
    on<_DestinationAmountChanged>(
      _onDestinationAmountChangedToState,
      transformer: _debounce(const Duration(milliseconds: 300)),
    );
    on<_PaymentMethodChanged>(_onPaymentMethodChangedToState);
    on<_PostCreateTemporarySession>(_onPostCreateTemporarySessionToState);
    on<_GetSummaryStatusEnquiry>(_onGetSummaryStatusEnquiryToState);
  }

  // ── Progressive parallel initialiser ──────────────────────────────────────
  //
  // All 4 APIs fire simultaneously. Each section emits its own state update the
  // moment its API resolves — sections with cached data (currency lists, payment
  // modes) appear almost instantly while slower endpoints are still in flight.
  //
  // Cross-dependency: destination currency selection depends on the beneficiary's
  // currencyCode. Two resolution paths handle both orderings:
  //   • Beneficiary arrives AFTER dest currency: _onBeneficiaryResolved
  //     re-derives the selection from whatever is already in state.
  //   • Dest currency arrives AFTER beneficiary: _onDestCurrencyResolved reads
  //     the beneficiary already in state and matches correctly.
  //
  // Dart is single-threaded; .then callbacks are serialised on the event loop,
  // so concurrent emit() calls never interleave and state.copyWith() always
  // reads the latest emitted state.

  FutureOr<void> _onPrepareSummaryToState(
    _PrepareSummary event,
    Emitter<SummaryState> emit,
  ) async {
    // Show page structure immediately with per-section shimmers.
    // isInitialLoading = false so the full-page shimmer gate is bypassed; each
    // section widget reads its own Option field to decide whether to shimmer.
    emit(
      SummaryState.initial().copyWith(
        beneficiaryId: event.beneficiaryId,
        lastRawSourceAmount: event.lastRawSourceAmount ?? '',
        lastRawDestinationAmount: event.lastRawDestinationAmount ?? '',
        isLastInputSource: event.isLastInputSource ?? true,
        selectedPaymentMethodItem: event.paymentMethodItem,
        isInitialLoading: false,
      ),
    );

    // Fire all 4 concurrently; each .then emits as soon as that API resolves.
    await Future.wait([
      _summaryFacade
          .getBeneficiaryById(event.beneficiaryId)
          .then((r) => _onBeneficiaryResolved(r, emit)),
      _summaryFacade.getHomeSourceCurrencyList().then(
        (r) => _onSourceCurrencyResolved(r, emit),
      ),
      _summaryFacade.getHomeDestinationCurrencyList().then(
        (r) => _onDestCurrencyResolved(r, emit),
      ),
      _summaryFacade.getSummaryPaymentMethod().then(
        (r) => _onPaymentMethodResolved(r, emit, event.paymentMethodItem),
      ),
    ]);

    // Trigger rate calculation once all required inputs are in state.
    // By this point every .then has run and state reflects all 4 results.
    _maybeAutoCalculate();
  }

  // ── Per-section resolution helpers ────────────────────────────────────────

  void _onBeneficiaryResolved(
    Either<SummaryFailure, SummaryBeneficiaryByIdDto> result,
    Emitter<SummaryState> emit,
  ) {
    final beneficiaryDto = result.fold((_) => null, (dto) => dto);
    final beneficiary = beneficiaryDto?.data?.beneficiaryById;

    // Re-derive destination selection if the currency list already landed.
    // Handles the case where dest currency resolved before beneficiary.
    CommonSelectableItem? updatedDestItem;
    final existingDestList =
        state.commonDestinationSelectableDto?.data?.list ?? [];
    if (beneficiary != null && existingDestList.isNotEmpty) {
      final code = beneficiary.currencyCode?.toUpperCase();
      updatedDestItem =
          existingDestList.firstWhereOrNull(
            (item) => item.trailingCode?.toUpperCase() == code,
          ) ??
          existingDestList.first;
    }

    emit(
      state.copyWith(
        isBeneficiaryLoading: false,
        beneficiaryFailure: result.fold((f) => f, (_) => null),
        summaryBeneficiaryByIdDto: beneficiaryDto,
        selectedCommonDestinationItem:
            updatedDestItem ?? state.selectedCommonDestinationItem,
        summaryBeneficiaryByIdFailureOrSuccessOption: some(result),
      ),
    );
  }

  void _onSourceCurrencyResolved(
    Either<SummaryFailure, SummaryCurrencyListDto> result,
    Emitter<SummaryState> emit,
  ) {
    CommonSelectableDto? selectableDto;
    CommonSelectableItem? selectedItem;
    result.fold((_) {}, (dto) {
      final list = dto.data?.currencyList ?? [];
      if (list.isEmpty) return;
      final items = _toCurrencySelectableItems(list);
      selectableDto = CommonSelectableDto(
        data: CommonSelectableData(list: items),
      );
      selectedItem = items.first;
    });

    emit(
      state.copyWith(
        commonSourceSelectableDto:
            selectableDto ?? state.commonSourceSelectableDto,
        selectedCommonSourceItem:
            selectedItem ?? state.selectedCommonSourceItem,
        summarySourceCurrencyListFailureOrSuccessOption: some(result),
      ),
    );
  }

  void _onDestCurrencyResolved(
    Either<SummaryFailure, SummaryCurrencyListDto> result,
    Emitter<SummaryState> emit,
  ) {
    CommonSelectableDto? selectableDto;
    CommonSelectableItem? selectedItem;
    result.fold((_) {}, (dto) {
      final list = dto.data?.currencyList ?? [];
      if (list.isEmpty) return;
      // Match beneficiary's currency if already available; fall back to first.
      final beneficiaryCurrencyCode = state
          .summaryBeneficiaryByIdDto
          ?.data
          ?.beneficiaryById
          ?.currencyCode
          ?.toUpperCase();
      final matched = beneficiaryCurrencyCode != null
          ? list.firstWhereOrNull(
              (c) => c.currencyCode?.toUpperCase() == beneficiaryCurrencyCode,
            )
          : null;
      final selected = matched ?? list.first;
      final items = _toCurrencySelectableItems(list);
      selectableDto = CommonSelectableDto(
        data: CommonSelectableData(list: items),
      );
      selectedItem = CommonSelectableItem(
        leading: selected.flagUrl,
        titleName: selected.countryName ?? '',
        titleCode: selected.countryCode ?? '',
        trailingName: selected.currencyName ?? '',
        trailingCode: selected.currencyCode ?? '',
      );
    });

    emit(
      state.copyWith(
        commonDestinationSelectableDto:
            selectableDto ?? state.commonDestinationSelectableDto,
        selectedCommonDestinationItem:
            selectedItem ?? state.selectedCommonDestinationItem,
        summaryDestinationCurrencyListFailureOrSuccessOption: some(result),
      ),
    );
  }

  void _onPaymentMethodResolved(
    Either<SummaryFailure, SummaryPaymentMethodDto> result,
    Emitter<SummaryState> emit,
    CommonSelectableItem? initialPaymentItem,
  ) {
    CommonSelectableDto? selectableDto;
    SummaryPaymentMethodDto? paymentMethodDto;
    CommonSelectableItem? selectedItem;
    result.fold((_) {}, (dto) {
      final modes = dto.data?.paymentModes ?? [];
      if (modes.isEmpty) return;
      paymentMethodDto = dto;
      final beneficiary =
          state.summaryBeneficiaryByIdDto?.data?.beneficiaryById;
      final preferredCode = beneficiary?.tranList?.isNotEmpty == true
          ? beneficiary?.tranList?.first.paymentModeCode
          : initialPaymentItem?.titleCode;
      final selected = preferredCode != null
          ? modes.firstWhereOrNull(
                  (m) => m.code?.toUpperCase() == preferredCode.toUpperCase(),
                ) ??
                modes.first
          : modes.first;
      selectableDto = CommonSelectableDto(
        data: CommonSelectableData(
          list: modes
              .map(
                (m) => CommonSelectableItem(
                  titleName: m.name ?? '',
                  titleCode: m.code ?? '',
                ),
              )
              .toList(),
        ),
      );
      selectedItem = CommonSelectableItem(
        titleName: selected.name ?? '',
        titleCode: selected.code ?? '',
      );
    });

    emit(
      state.copyWith(
        isPaymentMethodLoading: false,
        paymentMethodFailure: result.fold((f) => f, (_) => null),
        summaryPaymentMethodDto: paymentMethodDto,
        commonPaymentMethodSelectableDto:
            selectableDto ?? state.commonPaymentMethodSelectableDto,
        selectedPaymentMethodItem:
            selectedItem ?? state.selectedPaymentMethodItem,
        summaryPaymentMethodFailureOrSuccessOption: some(result),
      ),
    );
  }

  // Triggers rate calculation when all required inputs are present.
  // Called after all 4 parallel APIs resolve.
  void _maybeAutoCalculate() {
    final hasAll =
        state.summaryBeneficiaryByIdDto != null &&
        state.selectedCommonSourceItem != null &&
        state.selectedCommonDestinationItem != null &&
        state.selectedPaymentMethodItem != null;
    if (hasAll) {
      add(SummaryEvent.paymentMethodChanged(state.selectedPaymentMethodItem!));
    }
  }

  // ── Section-level retry ──────────────────────────────────────────────────
  //
  // The user never needs to close and reopen the app. A "Retry" button in each
  // failed section re-fetches only that section's data and, when successful,
  // re-triggers the rate calculation chain.

  FutureOr<void> _onRetryBeneficiaryToState(
    _RetryBeneficiary event,
    Emitter<SummaryState> emit,
  ) async {
    final id = state.beneficiaryId ?? '';
    if (id.isEmpty) return;

    emit(
      state.copyWith(
        isBeneficiaryLoading: true,
        beneficiaryFailure: null,
        summaryBeneficiaryByIdFailureOrSuccessOption: none(),
      ),
    );

    final result = await _summaryFacade.getBeneficiaryById(id);
    final beneficiaryDto = result.fold((_) => null, (dto) => dto);
    final beneficiary = beneficiaryDto?.data?.beneficiaryById;

    CommonSelectableItem? updatedDestItem;
    final existingDestList =
        state.commonDestinationSelectableDto?.data?.list ?? [];
    if (beneficiary != null && existingDestList.isNotEmpty) {
      final code = beneficiary.currencyCode?.toUpperCase();
      updatedDestItem =
          existingDestList.firstWhereOrNull(
            (item) => item.trailingCode?.toUpperCase() == code,
          ) ??
          existingDestList.first;
    }

    emit(
      state.copyWith(
        isBeneficiaryLoading: false,
        beneficiaryFailure: result.fold((f) => f, (_) => null),
        summaryBeneficiaryByIdDto: beneficiaryDto,
        selectedCommonDestinationItem:
            updatedDestItem ?? state.selectedCommonDestinationItem,
        summaryBeneficiaryByIdFailureOrSuccessOption: some(result),
      ),
    );

    if (beneficiaryDto != null) {
      final payment = state.selectedPaymentMethodItem;
      if (payment != null) add(SummaryEvent.paymentMethodChanged(payment));
    }
  }

  FutureOr<void> _onRetryPaymentMethodToState(
    _RetryPaymentMethod event,
    Emitter<SummaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isPaymentMethodLoading: true,
        paymentMethodFailure: null,
        summaryPaymentMethodFailureOrSuccessOption: none(),
      ),
    );

    final result = await _summaryFacade.getSummaryPaymentMethod();
    final paymentMethodDto = result.fold((_) => null, (dto) => dto);

    CommonSelectableDto? selectableDto;
    CommonSelectableItem? selectedItem;
    result.fold((_) {}, (dto) {
      final modes = dto.data?.paymentModes ?? [];
      if (modes.isEmpty) return;
      final beneficiary =
          state.summaryBeneficiaryByIdDto?.data?.beneficiaryById;
      final preferredCode = beneficiary?.tranList?.isNotEmpty == true
          ? beneficiary?.tranList?.first.paymentModeCode
          : state.selectedPaymentMethodItem?.titleCode;
      final selected = preferredCode != null
          ? modes.firstWhereOrNull(
                  (m) => m.code?.toUpperCase() == preferredCode.toUpperCase(),
                ) ??
                modes.first
          : modes.first;
      selectableDto = CommonSelectableDto(
        data: CommonSelectableData(
          list: modes
              .map(
                (m) => CommonSelectableItem(
                  titleName: m.name ?? '',
                  titleCode: m.code ?? '',
                ),
              )
              .toList(),
        ),
      );
      selectedItem = CommonSelectableItem(
        titleName: selected.name ?? '',
        titleCode: selected.code ?? '',
      );
    });

    emit(
      state.copyWith(
        isPaymentMethodLoading: false,
        paymentMethodFailure: result.fold((f) => f, (_) => null),
        summaryPaymentMethodDto: paymentMethodDto,
        commonPaymentMethodSelectableDto:
            selectableDto ?? state.commonPaymentMethodSelectableDto,
        selectedPaymentMethodItem:
            selectedItem ?? state.selectedPaymentMethodItem,
        summaryPaymentMethodFailureOrSuccessOption: some(result),
      ),
    );

    final resolvedPayment = selectedItem ?? state.selectedPaymentMethodItem;
    if (resolvedPayment != null && state.summaryBeneficiaryByIdDto != null) {
      add(SummaryEvent.paymentMethodChanged(resolvedPayment));
    }
  }

  // ── Amount calculation handlers (debounced) ──────────────────────────────

  FutureOr<void> _onSourceAmountChangedToState(
    _SourceAmountChanged event,
    Emitter<SummaryState> emit,
  ) async {
    emit(
      state.copyWith(
        lastRawSourceAmount: event.sourceAmount,
        isLastInputSource: true,
        isSourceAmountCalculating: false,
        isDestinationAmountCalculating: true,
        summaryCalculatedSourceAmountFailureOrSuccessOption: none(),
        summaryCalculatedDestinationAmountFailureOrSuccessOption: none(),
        summaryTemporarySessionFailureOrSuccessOption: none(),
      ),
    );

    final result = await _summaryFacade.getCalculatedSourceAmount(
      destinationCountryCode:
          state.selectedCommonDestinationItem?.titleCode ?? '',
      destinationCurrencyCode:
          state.selectedCommonDestinationItem?.trailingCode ?? '',
      sourceCountryCode: state.selectedCommonSourceItem?.titleCode ?? '',
      sourceCurrencyCode: state.selectedCommonSourceItem?.trailingCode ?? '',
      sourceAmount: event.sourceAmount.trim().isEmpty
          ? '0'
          : event.sourceAmount,
      productCode: _productCode,
      transferTypeCode: _transferTypeCode,
      paymentMethodCode: _paymentMethodCode,
    );

    emit(
      state.copyWith(
        isInitialLoading: false,
        isSourceAmountCalculating: false,
        isDestinationAmountCalculating: false,
        lastRawDestinationAmount: result.isLeft()
            ? ''
            : state.lastRawDestinationAmount,
        commonSendMoneyDto: _toSendMoneyDto(result),
        summaryCalculatedSourceAmountFailureOrSuccessOption: some(result),
        summaryCalculatedDestinationAmountFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onDestinationAmountChangedToState(
    _DestinationAmountChanged event,
    Emitter<SummaryState> emit,
  ) async {
    emit(
      state.copyWith(
        lastRawDestinationAmount: event.destinationAmount,
        isLastInputSource: false,
        isSourceAmountCalculating: true,
        isDestinationAmountCalculating: false,
        summaryCalculatedSourceAmountFailureOrSuccessOption: none(),
        summaryCalculatedDestinationAmountFailureOrSuccessOption: none(),
        summaryTemporarySessionFailureOrSuccessOption: none(),
      ),
    );

    final result = await _summaryFacade.getCalculatedDestinationAmount(
      destinationCountryCode:
          state.selectedCommonDestinationItem?.titleCode ?? '',
      destinationCurrencyCode:
          state.selectedCommonDestinationItem?.trailingCode ?? '',
      sourceCountryCode: state.selectedCommonSourceItem?.titleCode ?? '',
      sourceCurrencyCode: state.selectedCommonSourceItem?.trailingCode ?? '',
      destinationAmount: event.destinationAmount.trim().isEmpty
          ? '0'
          : event.destinationAmount,
      productCode: _productCode,
      transferTypeCode: _transferTypeCode,
      paymentMethodCode: _paymentMethodCode,
    );

    emit(
      state.copyWith(
        isInitialLoading: false,
        isSourceAmountCalculating: false,
        isDestinationAmountCalculating: false,
        lastRawSourceAmount: result.isLeft() ? '' : state.lastRawSourceAmount,
        commonSendMoneyDto: _toSendMoneyDto(result),
        summaryCalculatedSourceAmountFailureOrSuccessOption: none(),
        summaryCalculatedDestinationAmountFailureOrSuccessOption: some(result),
      ),
    );
  }

  FutureOr<void> _onPaymentMethodChangedToState(
    _PaymentMethodChanged event,
    Emitter<SummaryState> emit,
  ) async {
    emit(
      state.copyWith(
        summaryTemporarySessionFailureOrSuccessOption: none(),
        selectedPaymentMethodItem: event.selectedPaymentMethodItem,
      ),
    );
    final useDestination =
        !state.isLastInputSource && state.lastRawDestinationAmount.isNotEmpty;
    if (useDestination) {
      add(
        SummaryEvent.destinationAmountChanged(
          destinationAmount: state.lastRawDestinationAmount,
        ),
      );
    } else {
      add(
        SummaryEvent.sourceAmountChanged(
          sourceAmount: state.lastRawSourceAmount,
        ),
      );
    }
  }

  // ── Session & status ─────────────────────────────────────────────────────

  FutureOr<void> _onPostCreateTemporarySessionToState(
    _PostCreateTemporarySession event,
    Emitter<SummaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        summaryTemporarySessionFailureOrSuccessOption: none(),
      ),
    );

    final beneficiary = state.summaryBeneficiaryByIdDto?.data?.beneficiaryById;
    final sourceItem = state.selectedCommonSourceItem;
    final destinationItem = state.selectedCommonDestinationItem;
    final sendMoney = state.commonSendMoneyDto;

    final failureOrSuccess = await _summaryFacade.createTemporarySession(
      sourceAmount: sendMoney.sourceAmount ?? 0.0,
      sourceCurrencyCode: sourceItem?.trailingCode ?? '',
      sourceCountryCode: sourceItem?.titleCode ?? '',
      destinationAmount: sendMoney.destinationAmount ?? 0.0,
      destinationCurrencyCode: destinationItem?.trailingCode ?? '',
      destinationCountryCode: destinationItem?.titleCode ?? '',
      displayRate: sendMoney.rate ?? 0.0,
      rateOperator: sendMoney.rateOperator ?? '',
      transferTypeCode: beneficiary?.disbursalMode ?? '',
      productCode: beneficiary?.productCode ?? 0,
      serviceCode: beneficiary?.serviceCode ?? '',
      purposeOfTransactionCode: beneficiary?.purposeOfTransaction ?? '',
      purposeOfTransactionName: beneficiary?.purposeName ?? '',
      sourceOfFundsCode: beneficiary?.sourceOfFund ?? '',
      sourceOfFundsName: beneficiary?.incomeSourceName ?? '',
      beneficiaryCode: beneficiary?.beneficiaryCode ?? 0,
      beneficiaryId: beneficiary?.eId ?? '',
      commission: sendMoney.commission ?? 0.0,
      paymentCommission: sendMoney.fee ?? 0.0,
      fcCommission: sendMoney.fCCommission ?? 0.0,
      taxPercentage: sendMoney.taxPercentage ?? 0,
      taxCollected: sendMoney.tax ?? 0.0,
      netAmount: sendMoney.totalPayableAmount ?? 0.0,
      paymentMethodCode: state.selectedPaymentMethodItem?.titleCode ?? '',
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        summaryTemporarySessionDto: failureOrSuccess.fold(
          (_) => null,
          (dto) => dto,
        ),
        summaryTemporarySessionFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  FutureOr<void> _onGetSummaryStatusEnquiryToState(
    _GetSummaryStatusEnquiry event,
    Emitter<SummaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isRateLoading: true,
        summaryTemporarySessionFailureOrSuccessOption: none(),
        summaryStatusEnquiryFailureOrSuccessOption: none(),
      ),
    );

    final result = await _summaryFacade.getSummaryStatusEnquiry(
      temporarySessionId: event.temporarySessionId,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isRateLoading: false,
          summaryStatusEnquiryFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (dto) {
        final d = dto.data;
        emit(
          state.copyWith(
            isRateLoading: false,
            commonPaymentResultDto: CommonPaymentResultDto(
              success: dto.success,
              message: dto.message,
              data: PaymentResultData(
                trackId: d?.trackId ?? '',
                transactionReference: d?.transactionReference ?? '',
                amount: d?.amount ?? 0.0,
                beneficiaryName: d?.beneficiaryName ?? '',
                paymentIntentId: d?.paymentIntentId ?? '',
                paymentMethod: d?.paymentMethod ?? '',
                transactionDate: d?.transactionDate,
                paymentStatus: d?.paymentStatus ?? '',
                authResponseCode: d?.authResponseCode ?? '',
                statusDescription: d?.statusDescription ?? '',
                referenceNo: d?.referenceNo ?? '',
                pGTransactionId: d?.pGTransactionId ?? '',
              ),
            ),
            summaryStatusEnquiryFailureOrSuccessOption: some(right(dto)),
          ),
        );
      },
    );
  }

  // ── Beneficiary in-place edit ────────────────────────────────────────────

  FutureOr<void> _onBeneficiaryUpdatedChangedToState(
    _BeneficiaryUpdatedChanged event,
    Emitter<SummaryState> emit,
  ) async {
    final currentDto = state.summaryBeneficiaryByIdDto;
    final beneficiary = currentDto?.data?.beneficiaryById;
    if (beneficiary == null) return;

    emit(
      state.copyWith(
        summaryBeneficiaryByIdDto: currentDto?.copyWith(
          data: currentDto.data?.copyWith(
            beneficiaryById: beneficiary.copyWith(
              eId: event.eId,
              beneficiaryFirstName: event.beneficiaryFirstName,
              beneficiaryLastName: event.beneficiaryLastName,
              beneficiaryCountryCode: event.beneficiaryCountryCode,
              beneficiaryBankName: event.beneficiaryBankName,
              disbursalMode: event.disbursalMode,
              currencyCode: event.currencyCode,
              purposeName: event.purposeName,
              incomeSourceName: event.incomeSourceName,
              purposeOfTransaction: event.purposeOfTransaction,
              sourceOfFund: event.sourceOfFund,
            ),
          ),
        ),
      ),
    );
  }

  // ── Private helpers ──────────────────────────────────────────────────────

  String get _productCode {
    final beneficiary = state.summaryBeneficiaryByIdDto?.data?.beneficiaryById;
    return (beneficiary?.productCode ?? 0).toString();
  }

  String get _transferTypeCode =>
      state.summaryBeneficiaryByIdDto?.data?.beneficiaryById?.disbursalMode ??
      '';

  String get _paymentMethodCode {
    final beneficiary = state.summaryBeneficiaryByIdDto?.data?.beneficiaryById;
    return beneficiary?.tranList?.isNotEmpty == true
        ? beneficiary?.tranList?.first.paymentModeCode ?? ''
        : state.selectedPaymentMethodItem?.titleCode ?? '';
  }

  CommonSendMoneyDto _toSendMoneyDto(
    Either<SummaryFailure, SummaryCalculateAmountDto> result,
  ) => result.fold((_) => CommonSendMoneyDto.empty(), (dto) {
    final amount = dto.data?.amount;
    return CommonSendMoneyDto(
      sourceAmount: amount?.payAmount ?? 0.0,
      destinationAmount: amount?.netReceiveAmount ?? 0.0,
      displayRate: amount?.displayRate ?? 0.0,
      rate: amount?.rate ?? 0.0,
      rateOperator: amount?.rateOperator,
      netLcAmount: amount?.netPayAmount ?? 0.0,
      commission: amount?.commission ?? 0.0,
      fee: amount?.fee ?? 0.0,
      tax: amount?.tax ?? 0.0,
      taxPercentage: amount?.taxPercentage,
      payAmount: amount?.payAmount ?? 0.0,
      totalPayableAmount: amount?.netPayAmount ?? 0.0,
    );
  });

  List<CommonSelectableItem> _toCurrencySelectableItems(
    List<CurrencyList> list,
  ) => list
      .map(
        (c) => CommonSelectableItem(
          leading: c.flagUrl,
          titleName: c.countryName ?? '',
          titleCode: c.countryCode ?? '',
          trailingName: c.currencyName ?? '',
          trailingCode: c.currencyCode ?? '',
        ),
      )
      .toList();

  EventTransformer<T> _debounce<T>(Duration duration) =>
      (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}
