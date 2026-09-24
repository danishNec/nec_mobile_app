import 'dart:async';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/common/common_selectable_dto.dart';
import '../../domain/common/common_send_money_dto.dart';
import '../../domain/home/home_advertisement_dto.dart';
import '../../domain/home/home_bank_or_agent_list_dto.dart';
import '../../domain/home/home_beneficiary_list_dto.dart';
import '../../domain/home/home_calculate_amount_dto.dart';
import '../../domain/home/home_destination_currency_list_dto.dart';
import '../../domain/home/home_failure.dart';
import '../../domain/home/home_payment_method_dto.dart';
import '../../domain/home/home_recent_beneficiaries_dto.dart';
import '../../domain/home/home_source_currency_list_dto.dart';
import '../../domain/home/home_transfer_type_dto.dart';
import '../../domain/home/home_user_dto.dart';
import '../../domain/home/i_home_facade.dart';
import '../../domain/home/value_validators.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeFacade _homeFacade;

  // TEMPORARY: on this backend, calculate-amount returns HTTP 690 for some
  // real product/payment-mode combinations (e.g. ProductCode 526 +
  // PaymentMode BT for BH/BHD -> IN/INR CASH PICKUP), regardless of which
  // valid PaymentMode is sent. ProductCode 130 + PaymentMode CA is confirmed
  // working via curl. Forcing these known-good values until the backend
  // issue is fixed. Remove this override (and the two constants below) once
  // the backend accepts the real selected product/payment mode.
  static const bool _forceWorkingCalculateAmountParams = true;
  static const String _fallbackProductCode = '130';
  static const String _fallbackPaymentModeCode = 'CA';

  // calculate-amount rejects requests with an empty/missing PaymentMode
  // (backend returns 690). Fall back to the first available payment mode
  // when the user hasn't explicitly picked one yet, instead of sending ''.
  String get _effectivePaymentMethodCode {
    if (_forceWorkingCalculateAmountParams) return _fallbackPaymentModeCode;
    return state.selectedPaymentMethodItem?.titleCode ??
        state.homePaymentMethodDto?.data?.paymentModes?.firstOrNull?.code ??
        '';
  }

  String get _effectiveProductCode {
    if (_forceWorkingCalculateAmountParams) return _fallbackProductCode;
    return state.selectedBankOrAgentItem?.titleCode ?? '';
  }

  HomeBloc(this._homeFacade) : super(HomeState.initial()) {
    on<_InitializeEvent>(_initialize);
    on<_GetHomeAdvertisementEvent>(_getHomeAdvertisement);
    on<_GetHomeUserDataEvent>(_getHomeUserData);
    on<_GetHomeRecentBeneficiariesEvent>(_getHomeRecentBeneficiaries);
    on<_GetHomeSourceCurrencyListEvent>(_getHomeSourceCurrencyList);
    on<_GetHomeDestinationCurrencyListEvent>(_getHomeDestinationCurrencyList);
    on<_DestinationCountrySelectedEvent>(_destinationCountrySelected);
    on<_GetHomeTransferTypesEvent>(_getHomeTransferTypes);
    on<_TransferTypeSelectedEvent>(_transferTypeSelected);
    on<_GetHomeBankOrAgentListEvent>(_getHomeBankOrAgentList);
    on<_BankOrAgentSelectedEvent>(_bankOrAgentSelected);
    on<_GetHomePaymentMethodEvent>(_getHomePaymentMethod);
    on<_PaymentMethodSelectedEvent>(_paymentMethodSelected);
    on<_SourceAmountChangedEvent>(
      _sourceAmountChanged,
      transformer: _debounce(const Duration(milliseconds: 300)),
    );
    on<_DestinationAmountChangedEvent>(
      _destinationAmountChanged,
      transformer: _debounce(const Duration(milliseconds: 300)),
    );
    on<_GetBeneficiaryListEvent>(_getBeneficiaryList);
    on<_SelectedBeneficiaryIndexChangedEvent>(_selectedBeneficiaryIndexChanged);
    on<_AddOrEditBeneficiaryChangedEvent>(_addOrEditBeneficiaryChanged);
    on<_DeleteBeneficiaryEvent>(_onDeleteBeneficiaryToState);
    on<_CurrentEmailAddressChanged>(_onCurrentEmailAddressChangedToState);
    on<_UpdateEmailAddressChanged>(_onUpdateEmailAddressChangedToState);
    on<_RequestUpdateEmailAddressPressed>(
      _onRequestUpdateEmailAddressPressedToState,
    );
    on<_EmailOtpChanged>(_onEmailOtpChangedToState);
    on<_ContinueOtpButtonPressed>(_onContinueOtpButtonPressedToState);
  }

  // ── Parallel initializer: fires all independent APIs concurrently ──

  FutureOr<void> _initialize(
    _InitializeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final isRefresh = event.isRefresh;

    if (isRefresh) {
      emit(
        state.copyWith(
          isRefreshing: true,
          homeAdvertisementFailureOrSuccessOption: none(),
          homeUserFailureOrSuccessOption: none(),
          homeRecentBeneficiariesFailureOrSuccessOption: none(),
          homeSourceCurrencyListFailureOrSuccessOption: none(),
          homeDestinationCurrencyListFailureOrSuccessOption: none(),
          // Clear user-entered amounts so the rate chain recalculates to zero.
          lastRawSourceAmount: event.clearAmounts ? '' : state.lastRawSourceAmount,
          lastRawDestinationAmount: event.clearAmounts ? '' : state.lastRawDestinationAmount,
          commonSendMoneyDto: event.clearAmounts ? CommonSendMoneyDto.empty() : state.commonSendMoneyDto,
        ),
      );
    } else {
      emit(HomeState.initial());
    }

    final (
      advertisementResult,
      userResult,
      beneficiariesResult,
      sourceCurrencyResult,
      destCurrencyResult,
    ) = await (
      _homeFacade.getHomeAdvertisement(),
      _homeFacade.getHomeUserData(),
      _homeFacade.getHomeBeneficiaries(),
      _homeFacade.getHomeSourceCurrencyList(),
      _homeFacade.getHomeDestinationCurrencyList(),
    ).wait;

    // Process source currencies — fold closure infers the correct CurrencyList type
    CommonSelectableDto? sourceCurrencySelectableDto;
    CommonSelectableItem? selectedSourceItem;
    sourceCurrencyResult.fold((_) {}, (dto) {
      final list = dto.data?.currencyList ?? [];
      if (list.isEmpty) return;
      sourceCurrencySelectableDto = CommonSelectableDto(
        data: CommonSelectableData(
          list: list
              .map(
                (e) => CommonSelectableItem(
                  leading: e.flagUrl,
                  titleName: e.countryName ?? '',
                  titleCode: e.countryCode ?? '',
                  trailingName: e.currencyName ?? '',
                  trailingCode: e.currencyCode ?? '',
                ),
              )
              .toList(),
        ),
      );
      selectedSourceItem = CommonSelectableItem(
        leading: list.first.flagUrl,
        titleName: list.first.countryName ?? '',
        titleCode: list.first.countryCode ?? '',
        trailingName: list.first.currencyName ?? '',
        trailingCode: list.first.currencyCode ?? '',
      );
    });

    // Process user nationality for destination auto-selection
    final userDto = userResult.fold((_) => null, (dto) => dto);
    final userNationalityCode = userDto?.data?.user?.nationalityCode;

    // Process destination currencies — separate fold closure avoids CurrencyList name clash
    CommonSelectableDto? destCurrencySelectableDto;
    CommonSelectableItem? selectedDestItem;
    destCurrencyResult.fold((_) {}, (dto) {
      final list = dto.data?.currencyList ?? [];
      if (list.isEmpty) return;
      // On refresh, restore the user's previously selected destination if still in the list
      final prevDest = isRefresh ? state.selectedCommonDestinationItem : null;
      final selected = prevDest != null
          ? list.firstWhereOrNull(
                (e) =>
                    e.countryCode == prevDest.titleCode &&
                    e.currencyCode == prevDest.trailingCode,
              ) ??
              list.firstWhere(
                (e) => e.countryCode == userNationalityCode,
                orElse: () => list.first,
              )
          : list.firstWhere(
              (e) => e.countryCode == userNationalityCode,
              orElse: () => list.first,
            );
      destCurrencySelectableDto = CommonSelectableDto(
        data: CommonSelectableData(
          list: list
              .map(
                (e) => CommonSelectableItem(
                  leading: e.flagUrl,
                  titleName: e.countryName ?? '',
                  titleCode: e.countryCode ?? '',
                  trailingName: e.currencyName ?? '',
                  trailingCode: e.currencyCode ?? '',
                ),
              )
              .toList(),
        ),
      );
      selectedDestItem = CommonSelectableItem(
        leading: selected.flagUrl,
        titleName: selected.countryName ?? '',
        titleCode: selected.countryCode ?? '',
        trailingName: selected.currencyName ?? '',
        trailingCode: selected.currencyCode ?? '',
      );
    });

    final beneficiariesDto = beneficiariesResult.fold(
      (_) => null,
      (dto) => dto,
    );
    final advertisementDto = advertisementResult.fold(
      (_) => null,
      (dto) => dto,
    );

    emit(
      state.copyWith(
        isUserLoading: false,
        isRecentBeneficiariesLoading: false,
        isSendMoneyFormLoading: false,
        isRefreshing: false,
        // User data (keep stale on refresh if new fetch failed)
        homeUserDto: userDto ?? (isRefresh ? state.homeUserDto : null),
        homeUserFailureOrSuccessOption: some(userResult),
        // Recent beneficiaries
        homeRecentBeneficiariesDto:
            beneficiariesDto ??
            (isRefresh ? state.homeRecentBeneficiariesDto : null),
        homeRecentBeneficiariesFailureOrSuccessOption: some(
          beneficiariesResult,
        ),
        // Source currency
        commonSourceSelectableDto:
            sourceCurrencySelectableDto ??
            (isRefresh ? state.commonSourceSelectableDto : null),
        selectedCommonSourceItem:
            selectedSourceItem ??
            (isRefresh ? state.selectedCommonSourceItem : null),
        homeSourceCurrencyListFailureOrSuccessOption: some(
          sourceCurrencyResult,
        ),
        // Destination currency list (selection handled below via destinationCountrySelected)
        commonDestinationSelectableDto:
            destCurrencySelectableDto ??
            (isRefresh ? state.commonDestinationSelectableDto : null),
        homeDestinationCurrencyListFailureOrSuccessOption: some(
          destCurrencyResult,
        ),
        // Advertisement — only trigger dialog on first load, not refresh
        homeAdvertisementDto: advertisementDto ?? state.homeAdvertisementDto,
        homeAdvertisementFailureOrSuccessOption: isRefresh
            ? none()
            : some(advertisementResult),
      ),
    );

    // Immediately clear the advertisement option so that subsequent rate-chain
    // emits (destinationCountrySelected, transferTypeSelected, etc.) don't
    // cause the listener to re-show the dialog. The emit above already queued
    // a stream event that will trigger the listener once.
    if (!isRefresh) {
      emit(state.copyWith(homeAdvertisementFailureOrSuccessOption: none()));
    }
    emit(state.copyWith(homeUserFailureOrSuccessOption: none()));

    // Trigger the rate chain if we resolved a destination country.
    // Use a fresh local so Dart flow analysis can narrow past the null check
    // (variables assigned inside closures can't be narrowed directly).
    final resolvedDestItem = selectedDestItem;
    if (resolvedDestItem != null) {
      final prevDest = state.selectedCommonDestinationItem;
      final isSameDest =
          prevDest?.titleCode == resolvedDestItem.titleCode &&
          prevDest?.trailingCode == resolvedDestItem.trailingCode;

      if (!isSameDest) {
        // Destination changed (or first load): run full chain
        add(
          HomeEvent.destinationCountrySelected(
            selectedCommonDestinationItem: resolvedDestItem,
          ),
        );
      } else {
        // Same destination on refresh: bypass the duplicate-selection guard
        emit(state.copyWith(isRateLoading: true));
        add(const HomeEvent.getHomeTransferTypes());
      }
    }
  }

  // ── Individual API handlers (used for manual retry per section) ──

  FutureOr<void> _getHomeAdvertisement(
    _GetHomeAdvertisementEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(homeAdvertisementFailureOrSuccessOption: none()));
    final result = await _homeFacade.getHomeAdvertisement();
    emit(
      state.copyWith(
        homeAdvertisementDto: result.fold((_) => null, (dto) => dto),
        homeAdvertisementFailureOrSuccessOption: some(result),
      ),
    );
    emit(state.copyWith(homeAdvertisementFailureOrSuccessOption: none()));
  }

  FutureOr<void> _getHomeUserData(
    _GetHomeUserDataEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isUserLoading: true,
        homeUserFailureOrSuccessOption: none(),
      ),
    );
    final result = await _homeFacade.getHomeUserData();
    emit(
      state.copyWith(
        isUserLoading: false,
        homeUserDto: result.fold((_) => null, (dto) => dto),
        homeUserFailureOrSuccessOption: some(result),
      ),
    );
    emit(state.copyWith(homeUserFailureOrSuccessOption: none()));
  }

  FutureOr<void> _getHomeRecentBeneficiaries(
    _GetHomeRecentBeneficiariesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isRecentBeneficiariesLoading: true,
        homeRecentBeneficiariesFailureOrSuccessOption: none(),
      ),
    );
    final result = await _homeFacade.getHomeBeneficiaries();
    emit(
      state.copyWith(
        isRecentBeneficiariesLoading: false,
        homeRecentBeneficiariesDto: result.fold((_) => null, (dto) => dto),
        homeRecentBeneficiariesFailureOrSuccessOption: some(result),
      ),
    );
  }

  FutureOr<void> _getHomeSourceCurrencyList(
    _GetHomeSourceCurrencyListEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(homeSourceCurrencyListFailureOrSuccessOption: none()));
    final result = await _homeFacade.getHomeSourceCurrencyList();
    result.fold(
      (f) => emit(
        state.copyWith(
          homeSourceCurrencyListFailureOrSuccessOption: some(left(f)),
        ),
      ),
      (dto) {
        final list = dto.data?.currencyList ?? [];
        emit(
          state.copyWith(
            commonSourceSelectableDto: CommonSelectableDto(
              data: CommonSelectableData(
                list: list
                    .map(
                      (e) => CommonSelectableItem(
                        leading: e.flagUrl,
                        titleName: e.countryName ?? '',
                        titleCode: e.countryCode ?? '',
                        trailingName: e.currencyName ?? '',
                        trailingCode: e.currencyCode ?? '',
                      ),
                    )
                    .toList(),
              ),
            ),
            selectedCommonSourceItem: list.isNotEmpty
                ? CommonSelectableItem(
                    leading: list.first.flagUrl,
                    titleName: list.first.countryName ?? '',
                    titleCode: list.first.countryCode ?? '',
                    trailingName: list.first.currencyName ?? '',
                    trailingCode: list.first.currencyCode ?? '',
                  )
                : null,
            homeSourceCurrencyListFailureOrSuccessOption: some(right(dto)),
          ),
        );
      },
    );
  }

  FutureOr<void> _getHomeDestinationCurrencyList(
    _GetHomeDestinationCurrencyListEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(homeDestinationCurrencyListFailureOrSuccessOption: none()),
    );
    final result = await _homeFacade.getHomeDestinationCurrencyList();
    result.fold(
      (f) => emit(
        state.copyWith(
          homeDestinationCurrencyListFailureOrSuccessOption: some(left(f)),
        ),
      ),
      (dto) {
        final list = dto.data?.currencyList ?? [];
        emit(
          state.copyWith(
            commonDestinationSelectableDto: CommonSelectableDto(
              data: CommonSelectableData(
                list: list
                    .map(
                      (e) => CommonSelectableItem(
                        leading: e.flagUrl,
                        titleName: e.countryName ?? '',
                        titleCode: e.countryCode ?? '',
                        trailingName: e.currencyName ?? '',
                        trailingCode: e.currencyCode ?? '',
                      ),
                    )
                    .toList(),
              ),
            ),
            homeDestinationCurrencyListFailureOrSuccessOption: some(right(dto)),
          ),
        );
      },
    );
  }

  // ── Chain: country selected → transfer types → bank/agent → payment method → calculate ──

  FutureOr<void> _destinationCountrySelected(
    _DestinationCountrySelectedEvent event,
    Emitter<HomeState> emit,
  ) async {
    final incoming = event.selectedCommonDestinationItem;
    if (state.selectedCommonDestinationItem?.titleCode == incoming.titleCode &&
        state.selectedCommonDestinationItem?.trailingCode ==
            incoming.trailingCode) {
      return;
    }
    emit(
      state.copyWith(
        isRateLoading: true,
        selectedCommonDestinationItem: incoming,
      ),
    );
    add(const HomeEvent.getHomeTransferTypes());
  }

  FutureOr<void> _getHomeTransferTypes(
    _GetHomeTransferTypesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(homeTransferTypesFailureOrSuccessOption: none()));
    final result = await _homeFacade.getHomeTransferTypes(
      destinationCurrencyCode:
          state.selectedCommonDestinationItem?.trailingCode ?? '',
      destinationCountryCode:
          state.selectedCommonDestinationItem?.titleCode ?? '',
    );
    result.fold(
      (f) => emit(
        state.copyWith(
          isRateLoading: false,
          homeTransferTypesFailureOrSuccessOption: some(left(f)),
        ),
      ),
      (dto) {
        emit(
          state.copyWith(
            homeTransferTypeDto: dto,
            homeTransferTypesFailureOrSuccessOption: some(right(dto)),
          ),
        );
        final list = dto.data?.transferModeList ?? [];
        if (list.isNotEmpty) {
          final prevCode = state.selectedTransferTypeItem?.titleCode;
          final match = prevCode != null
              ? list.firstWhereOrNull((e) => e.code == prevCode) ?? list.first
              : list.first;
          add(
            HomeEvent.transferTypeSelected(
              selectedTransferTypeItem: CommonSelectableItem(
                titleName: match.name ?? '',
                titleCode: match.code ?? '',
              ),
            ),
          );
        } else {
          emit(state.copyWith(isRateLoading: false));
        }
      },
    );
  }

  FutureOr<void> _transferTypeSelected(
    _TransferTypeSelectedEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(selectedTransferTypeItem: event.selectedTransferTypeItem),
    );
    add(
      HomeEvent.getHomeBankOrAgentList(
        destinationCountryCode:
            state.selectedCommonDestinationItem?.titleCode ?? '',
        destinationCurrencyCode:
            state.selectedCommonDestinationItem?.trailingCode ?? '',
        transferTypeCode: event.selectedTransferTypeItem.titleCode ?? '',
      ),
    );
  }

  FutureOr<void> _getHomeBankOrAgentList(
    _GetHomeBankOrAgentListEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(homeBankOrAgentListFailureOrSuccessOption: none()));
    final result = await _homeFacade.getHomeBankOrAgentList(
      destinationCountryCode: event.destinationCountryCode,
      destinationCurrencyCode: event.destinationCurrencyCode,
      transferTypeCode: event.transferTypeCode,
    );
    result.fold(
      (f) => emit(
        state.copyWith(
          isRateLoading: false,
          homeBankOrAgentListFailureOrSuccessOption: some(left(f)),
        ),
      ),
      (dto) {
        emit(
          state.copyWith(
            homeBankOrAgentListDto: dto,
            homeBankOrAgentListFailureOrSuccessOption: some(right(dto)),
          ),
        );
        final list = dto.data?.productList ?? [];
        if (list.isNotEmpty && list.length == 1) {
          add(
            HomeEvent.bankOrAgentSelected(
              selectedBankOrAgent: list.first.name ?? '',
              selectedBankOrAgentCode: list.first.code.toString(),
            ),
          );
        } else {
          final prevCode = state.selectedBankOrAgentItem?.titleCode;
          final match = prevCode != null
              ? list.firstWhereOrNull((e) => e.code.toString() == prevCode)
              : null;
          if (match != null) {
            add(
              HomeEvent.bankOrAgentSelected(
                selectedBankOrAgent: match.name ?? '',
                selectedBankOrAgentCode: match.code.toString(),
              ),
            );
          } else {
            // Multiple options — user must pick; rate chain pauses here.
            emit(state.copyWith(isRateLoading: false));
          }
        }
      },
    );
  }

  FutureOr<void> _bankOrAgentSelected(
    _BankOrAgentSelectedEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedBankOrAgentItem: CommonSelectableItem(
          titleName: event.selectedBankOrAgent,
          titleCode: event.selectedBankOrAgentCode,
        ),
      ),
    );
    add(HomeEvent.getHomePaymentMethod());
  }

  FutureOr<void> _getHomePaymentMethod(
    _GetHomePaymentMethodEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(homePaymentMethodFailureOrSuccessOption: none()));
    final result = await _homeFacade.getHomePaymentMethod();
    result.fold(
      (f) => emit(
        state.copyWith(
          isRateLoading: false,
          homePaymentMethodFailureOrSuccessOption: some(left(f)),
        ),
      ),
      (dto) {
        emit(
          state.copyWith(
            homePaymentMethodDto: dto,
            homePaymentMethodFailureOrSuccessOption: some(right(dto)),
          ),
        );
        final list = dto.data?.paymentModes ?? [];
        if (list.isNotEmpty && list.length == 1) {
          add(
            HomeEvent.paymentMethodSelected(
              selectedPaymentMethodItem: CommonSelectableItem(
                titleName: list.first.name ?? '',
                titleCode: list.first.code ?? '',
              ),
            ),
          );
        } else {
          final prevCode = state.selectedPaymentMethodItem?.titleCode;
          final match = prevCode != null
              ? list.firstWhereOrNull((e) => e.code == prevCode)
              : null;
          if (match != null) {
            add(
              HomeEvent.paymentMethodSelected(
                selectedPaymentMethodItem: CommonSelectableItem(
                  titleName: match.name ?? '',
                  titleCode: match.code ?? '',
                ),
              ),
            );
          } else {
            emit(state.copyWith(isRateLoading: false));
          }
        }
      },
    );
  }

  FutureOr<void> _paymentMethodSelected(
    _PaymentMethodSelectedEvent event,
    Emitter<HomeState> emit,
  ) async {
    final useDestination =
        !state.isLastInputSource && state.lastRawDestinationAmount.isNotEmpty;
    final rawAmount = useDestination
        ? state.lastRawDestinationAmount
        : state.lastRawSourceAmount;
    final safeAmount = rawAmount.trim().isEmpty ? '0' : rawAmount;

    emit(
      state.copyWith(
        selectedPaymentMethodItem: event.selectedPaymentMethodItem,
        isSourceAmountCalculating: useDestination,
        isDestinationAmountCalculating: !useDestination,
        homeCalculatedSourceAmountFailureOrSuccessOption: none(),
        homeCalculatedDestinationAmountFailureOrSuccessOption: none(),
      ),
    );

    final result = useDestination
        ? await _homeFacade.getCalculatedDestinationAmount(
            destinationCountryCode:
                state.selectedCommonDestinationItem?.titleCode ?? '',
            destinationCurrencyCode:
                state.selectedCommonDestinationItem?.trailingCode ?? '',
            sourceCountryCode: state.selectedCommonSourceItem?.titleCode ?? '',
            sourceCurrencyCode:
                state.selectedCommonSourceItem?.trailingCode ?? '',
            destinationAmount: safeAmount,
            productCode: _effectiveProductCode,
            transferTypeCode: state.selectedTransferTypeItem?.titleCode ?? '',
            paymentMethodCode: _effectivePaymentMethodCode,
          )
        : await _homeFacade.getCalculatedSourceAmount(
            destinationCountryCode:
                state.selectedCommonDestinationItem?.titleCode ?? '',
            destinationCurrencyCode:
                state.selectedCommonDestinationItem?.trailingCode ?? '',
            sourceCountryCode: state.selectedCommonSourceItem?.titleCode ?? '',
            sourceCurrencyCode:
                state.selectedCommonSourceItem?.trailingCode ?? '',
            sourceAmount: safeAmount,
            productCode: _effectiveProductCode,
            transferTypeCode: state.selectedTransferTypeItem?.titleCode ?? '',
            paymentMethodCode: _effectivePaymentMethodCode,
          );

    emit(
      state.copyWith(
        isSourceAmountCalculating: false,
        isDestinationAmountCalculating: false,
        isRateLoading: false,
        lastRawSourceAmount: result.isLeft() && useDestination
            ? ''
            : state.lastRawSourceAmount,
        lastRawDestinationAmount: result.isLeft() && !useDestination
            ? ''
            : state.lastRawDestinationAmount,
        commonSendMoneyDto: result.fold(
          (_) => CommonSendMoneyDto.empty(),
          (dto) => CommonSendMoneyDto(
            sourceAmount: dto.data?.amount?.payAmount ?? 0.0,
            destinationAmount: dto.data?.amount?.netReceiveAmount ?? 0.0,
            displayRate: dto.data?.amount?.displayRate ?? 0.0,
            rateOperator: dto.data?.amount?.mobileRateOperator,
            fee: dto.data?.amount?.commission ?? 0.0,
            tax: dto.data?.amount?.tax ?? 0.0,
            taxPercentage: dto.data?.amount?.taxPercentage,
            totalPayableAmount: dto.data?.amount?.netPayAmount ?? 0.0,
          ),
        ),
        homeCalculatedSourceAmountFailureOrSuccessOption: useDestination
            ? none()
            : some(result),
        homeCalculatedDestinationAmountFailureOrSuccessOption: useDestination
            ? some(result)
            : none(),
      ),
    );
  }

  // ── Amount calculation handlers (debounced) ──────────────────────────────

  FutureOr<void> _sourceAmountChanged(
    _SourceAmountChangedEvent event,
    Emitter<HomeState> emit,
  ) async {
    final safeAmount = event.sourceAmount.trim().isEmpty
        ? '0'
        : event.sourceAmount;
    emit(
      state.copyWith(
        lastRawSourceAmount: event.sourceAmount,
        isLastInputSource: true,
        isSourceAmountCalculating: false,
        isDestinationAmountCalculating: true,
        homeCalculatedSourceAmountFailureOrSuccessOption: none(),
        homeCalculatedDestinationAmountFailureOrSuccessOption: none(),
      ),
    );

    final result = await _homeFacade.getCalculatedSourceAmount(
      destinationCountryCode:
          state.selectedCommonDestinationItem?.titleCode ?? '',
      destinationCurrencyCode:
          state.selectedCommonDestinationItem?.trailingCode ?? '',
      sourceCountryCode: state.selectedCommonSourceItem?.titleCode ?? '',
      sourceCurrencyCode: state.selectedCommonSourceItem?.trailingCode ?? '',
      sourceAmount: safeAmount,
      productCode: _effectiveProductCode,
      transferTypeCode: state.selectedTransferTypeItem?.titleCode ?? '',
      paymentMethodCode: _effectivePaymentMethodCode,
    );

    emit(
      state.copyWith(
        isSourceAmountCalculating: false,
        isDestinationAmountCalculating: false,
        lastRawDestinationAmount: result.isLeft()
            ? ''
            : state.lastRawDestinationAmount,
        commonSendMoneyDto: result.fold(
          (_) => CommonSendMoneyDto.empty(),
          (dto) => CommonSendMoneyDto(
            sourceAmount: dto.data?.amount?.payAmount ?? 0.0,
            destinationAmount: dto.data?.amount?.netReceiveAmount ?? 0.0,
            displayRate: dto.data?.amount?.displayRate ?? 0.0,
            rateOperator: dto.data?.amount?.mobileRateOperator,
            fee: dto.data?.amount?.commission ?? 0.0,
            tax: dto.data?.amount?.tax ?? 0.0,
            taxPercentage: dto.data?.amount?.taxPercentage,
            totalPayableAmount: dto.data?.amount?.netPayAmount ?? 0.0,
          ),
        ),
        homeCalculatedSourceAmountFailureOrSuccessOption: some(result),
        homeCalculatedDestinationAmountFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _destinationAmountChanged(
    _DestinationAmountChangedEvent event,
    Emitter<HomeState> emit,
  ) async {
    final safeAmount = event.destinationAmount.trim().isEmpty
        ? '0'
        : event.destinationAmount;
    emit(
      state.copyWith(
        lastRawDestinationAmount: event.destinationAmount,
        isLastInputSource: false,
        isSourceAmountCalculating: true,
        isDestinationAmountCalculating: false,
        homeCalculatedSourceAmountFailureOrSuccessOption: none(),
        homeCalculatedDestinationAmountFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _homeFacade.getCalculatedDestinationAmount(
      destinationCountryCode:
          state.selectedCommonDestinationItem?.titleCode ?? '',
      destinationCurrencyCode:
          state.selectedCommonDestinationItem?.trailingCode ?? '',
      sourceCountryCode: state.selectedCommonSourceItem?.titleCode ?? '',
      sourceCurrencyCode: state.selectedCommonSourceItem?.trailingCode ?? '',
      destinationAmount: safeAmount,
      productCode: _effectiveProductCode,
      transferTypeCode: state.selectedTransferTypeItem?.titleCode ?? '',
      paymentMethodCode: _effectivePaymentMethodCode,
    );

    emit(
      state.copyWith(
        isSourceAmountCalculating: false,
        isDestinationAmountCalculating: false,
        lastRawSourceAmount: failureOrSuccess.isLeft()
            ? ''
            : state.lastRawSourceAmount,
        commonSendMoneyDto: failureOrSuccess.fold(
          (_) => CommonSendMoneyDto.empty(),
          (dto) => CommonSendMoneyDto(
            sourceAmount: dto.data?.amount?.payAmount ?? 0.0,
            destinationAmount: dto.data?.amount?.netReceiveAmount ?? 0.0,
            displayRate: dto.data?.amount?.displayRate ?? 0.0,
            rateOperator: dto.data?.amount?.mobileRateOperator,
            fee: dto.data?.amount?.fee ?? 0.0,
            tax: dto.data?.amount?.tax ?? 0.0,
            totalPayableAmount: dto.data?.amount?.netPayAmount ?? 0.0,
          ),
        ),
        homeCalculatedSourceAmountFailureOrSuccessOption: none(),
        homeCalculatedDestinationAmountFailureOrSuccessOption: some(
          failureOrSuccess,
        ),
      ),
    );
  }

  FutureOr<void> _getBeneficiaryList(
    _GetBeneficiaryListEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isBeneficiaryListLoading: true,
        selectedBeneficiaryIndex: -1,
        homeDeleteBeneficiaryFailureOrSuccessOption: none(),
        homeBeneficiaryListFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _homeFacade.getHomeBeneficiaryList(
      destinationCountryCode:
          state.selectedCommonDestinationItem?.titleCode ?? '',
      transferTypeCode: state.selectedTransferTypeItem?.titleCode ?? '',
    );

    failureOrSuccess.fold(
      (f) => emit(
        state.copyWith(
          isBeneficiaryListLoading: false,
          homeBeneficiaryListFailureOrSuccessOption: some(left(f)),
        ),
      ),
      (dto) => emit(
        state.copyWith(
          isBeneficiaryListLoading: false,
          homeBeneficiaryListDto: dto,
          homeBeneficiaryListFailureOrSuccessOption: some(right(dto)),
        ),
      ),
    );
  }

  FutureOr<void> _selectedBeneficiaryIndexChanged(
    _SelectedBeneficiaryIndexChangedEvent event,
    Emitter<HomeState> emit,
  ) async {
    final isSameIndex =
        state.selectedBeneficiaryIndex == event.selectedBeneficiaryIndex;

    emit(
      state.copyWith(
        selectedBeneficiaryIndex: isSameIndex
            ? -1
            : event.selectedBeneficiaryIndex,
      ),
    );
  }

  FutureOr<void> _addOrEditBeneficiaryChanged(
    _AddOrEditBeneficiaryChangedEvent event,
    Emitter<HomeState> emit,
  ) {
    final currentList =
        state.homeBeneficiaryListDto?.data?.beneficiaryList ?? [];
    final index = currentList.indexWhere((e) => e.eId == event.eId);
    List<BeneficiaryList> updatedList;
    if (index != -1) {
      updatedList = [...currentList];
      updatedList[index] = currentList[index].copyWith(
        beneficiaryFirstName: event.beneficiaryFirstName,
        beneficiaryLastName: event.beneficiaryLastName,
        beneficiaryCountryCode: event.beneficiaryCountryCode,
        disbursalMode: event.disbursalMode,
        currencyCode: event.currencyCode,
        productName: event.purposeName,
        incomeSourceName: event.incomeSourceName,
        purposeOfTransaction: event.purposeOfTransaction,
        sourceOfFund: event.sourceOfFund,
      );
    } else {
      updatedList = [
        BeneficiaryList(
          eId: event.eId,
          beneficiaryFirstName: event.beneficiaryFirstName,
          beneficiaryLastName: event.beneficiaryLastName,
          beneficiaryCountryCode: event.beneficiaryCountryCode,
          disbursalMode: event.disbursalMode,
          currencyCode: event.currencyCode,
          productName: event.purposeName,
          incomeSourceName: event.incomeSourceName,
          purposeOfTransaction: event.purposeOfTransaction,
          sourceOfFund: event.sourceOfFund,
        ),
        ...currentList,
      ];
    }
    emit(
      state.copyWith(
        selectedBeneficiaryIndex: -1,
        homeBeneficiaryListDto: state.homeBeneficiaryListDto?.copyWith(
          data: state.homeBeneficiaryListDto?.data?.copyWith(
            beneficiaryList: updatedList,
          ),
        ),
      ),
    );
  }

  FutureOr<void> _onDeleteBeneficiaryToState(
    _DeleteBeneficiaryEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isDeletingBeneficiary: true,
        homeDeleteBeneficiaryFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _homeFacade.deleteBeneficiary(
      eId: event.eId,
    );

    failureOrSuccess.fold(
      (f) => emit(
        state.copyWith(
          isDeletingBeneficiary: false,
          homeDeleteBeneficiaryFailureOrSuccessOption: some(left(f)),
        ),
      ),
      (success) {
        final updatedList = state.homeBeneficiaryListDto?.data?.beneficiaryList
            ?.where((e) => e.eId != event.eId)
            .toList();
        emit(
          state.copyWith(
            isDeletingBeneficiary: false,
            selectedBeneficiaryIndex: -1,
            homeBeneficiaryListDto: state.homeBeneficiaryListDto?.copyWith(
              data: state.homeBeneficiaryListDto?.data?.copyWith(
                beneficiaryList: updatedList ?? [],
              ),
            ),
            homeDeleteBeneficiaryFailureOrSuccessOption: some(right(success)),
          ),
        );
      },
    );
  }

  EventTransformer<T> _debounce<T>(Duration duration) =>
      (events, mapper) => events.debounceTime(duration).switchMap(mapper);

  FutureOr<void> _onCurrentEmailAddressChangedToState(
    _CurrentEmailAddressChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        currentEmailAddress: event.emailAddress.toLowerCase().trim(),
        homeRequestEmailOtpFailureOrSuccessOption: none(),
      ),
    );
    add(HomeEvent.updateEmailAddressChanged(emailAddress: event.emailAddress));
  }

  FutureOr<void> _onUpdateEmailAddressChangedToState(
    _UpdateEmailAddressChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailAddress),
        homeVerifyEmailOtpFailureOrSuccessOption: none(),
        homeRequestEmailOtpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onRequestUpdateEmailAddressPressedToState(
    _RequestUpdateEmailAddressPressed event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        homeVerifyEmailOtpFailureOrSuccessOption: none(),
        homeRequestEmailOtpFailureOrSuccessOption: none(),
      ),
    );
    final isEmailValid = state.emailAddress.isValid();
    if (isEmailValid) {
      if (state.currentEmailAddress.toLowerCase() ==
          state.emailAddress.getOrCrash().toLowerCase()) {
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            homeRequestEmailOtpFailureOrSuccessOption: some(
              left(const HomeFailure.emailNotChanged()),
            ),
          ),
        );
        return;
      }
      final failureOrSuccess = await _homeFacade.requestEmailOtp(
        email: state.emailAddress.getOrCrash(),
      );

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            isSubmitting: false,
            homeRequestEmailOtpFailureOrSuccessOption: some(left(failure)),
          ),
        ),
        (_) => emit(
          state.copyWith(
            isSubmitting: false,
            homeRequestEmailOtpFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          homeRequestEmailOtpFailureOrSuccessOption: none(),
        ),
      );
    }
  }

  FutureOr<void> _onEmailOtpChangedToState(
    _EmailOtpChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        emailOtp: Otp(event.emailOtp),
        homeRequestEmailOtpFailureOrSuccessOption: none(),
        homeVerifyEmailOtpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onContinueOtpButtonPressedToState(
    _ContinueOtpButtonPressed event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        isOtpSubmitting: true,
        homeRequestEmailOtpFailureOrSuccessOption: none(),
        homeVerifyEmailOtpFailureOrSuccessOption: none(),
      ),
    );
    final isOtpValid = state.emailOtp.isValid();
    if (isOtpValid) {
      final failureOrSuccess = await _homeFacade.verifyEmailOtp(
        otp: state.emailOtp.getOrCrash(),
        email: state.emailAddress.getOrCrash(),
      );

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            isOtpSubmitting: false,
            homeVerifyEmailOtpFailureOrSuccessOption: some(left(failure)),
          ),
        ),
        (_) => emit(
          state.copyWith(
            isOtpSubmitting: false,
            homeVerifyEmailOtpFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isOtpSubmitting: false,
          showOtpErrorMessages: true,
          homeVerifyEmailOtpFailureOrSuccessOption: none(),
        ),
      );
    }
  }
}
