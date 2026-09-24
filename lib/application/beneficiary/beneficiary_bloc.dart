import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/beneficiary/beneficiary_bank_branch_combo_list_dto.dart';
import '../../domain/beneficiary/beneficiary_bank_combo_list_dto.dart';
import '../../domain/beneficiary/beneficiary_bank_or_agent_list_dto.dart';
import '../../domain/beneficiary/beneficiary_by_id_dto.dart';
import '../../domain/beneficiary/beneficiary_combo_list_dto.dart';
import '../../domain/beneficiary/beneficiary_country_list_dto.dart';
import '../../domain/beneficiary/beneficiary_currency_list_dto.dart';
import '../../domain/beneficiary/beneficiary_failure.dart';
import '../../domain/beneficiary/beneficiary_list_dto.dart';
import '../../domain/beneficiary/beneficiary_product_field_settings_dto.dart';
import '../../domain/beneficiary/beneficiary_purpose_of_transfer_dto.dart';
import '../../domain/beneficiary/beneficiary_source_of_fund_dto.dart';
import '../../domain/beneficiary/beneficiary_transfer_mode_list_dto.dart';
import '../../domain/beneficiary/i_beneficiary_facade.dart';
import '../../domain/beneficiary/value_validators.dart';
import '../../domain/common/common_combo_dto.dart';
import '../../domain/common/common_selectable_dto.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/beneficiary/beneficiary_bank_branch_route_dto.dart';
import '../../domain/beneficiary/beneficiary_route_code_dto.dart';

part 'beneficiary_event.dart';
part 'beneficiary_state.dart';
part 'beneficiary_bloc.freezed.dart';

@injectable
class BeneficiaryBloc extends Bloc<BeneficiaryEvent, BeneficiaryState> {
  final IBeneficiaryFacade _beneficiaryFacade;

  BeneficiaryBloc(this._beneficiaryFacade) : super(BeneficiaryState.initial()) {
    on<_GetBeneficiaries>(_onGetBeneficiariesToState);
    on<_GetBeneficiaryById>(_onGetBeneficiaryByIdToState);
    on<_PrepareBeneficiaryForEdit>(_onPrepareBeneficiaryForEditToState);
    on<_PrepareBeneficiaryForAddFromHome>(
      _onPrepareBeneficiaryForAddFromHomeToState,
    );
    on<_GetBeneficiaryCountries>(_onGetBeneficiaryCountriesToState);
    on<_BeneficiaryCountrySelected>(_onBeneficiaryCountrySelectedToState);
    on<_GetBeneficiaryCurrencies>(_onGetBeneficiaryCurrenciesToState);
    on<_BeneficiaryCurrencySelected>(_onBeneficiaryCurrencySelectedToState);
    on<_GetBeneficiaryTransferTypes>(_onGetBeneficiaryTransferTypesToState);
    on<_BeneficiaryTransferTypeSelected>(
      _onBeneficiaryTransferTypeSelectedToState,
    );
    on<_GetBeneficiaryBanksOrAgents>(_onGetBeneficiaryBanksOrAgentsToState);
    on<_BeneficiaryBankOrAgentSelected>(
      _onBeneficiaryBankOrAgentSelectedToState,
    );
    on<_GetBeneficiaryProductFields>(_onGetBeneficiaryProductFieldsToState);
    on<_BeneficiaryProductFieldChanged>(
      _onBeneficiaryProductFieldChangedToState,
    );
    on<_ClearBeneficiaryProductFieldValue>(
      _onClearBeneficiaryProductFieldValueToState,
    );
    on<_GetBeneficiaryCombo>(_onGetBeneficiaryComboToState);
    on<_GetBankCombo>(_onGetBankComboToState);
    on<_GetBranchCombo>(_onGetBranchComboToState);
    on<_GetBeneficiaryPurposeOfTransactions>(
      _onGetBeneficiaryPurposeOfTransactionsToState,
    );
    on<_BeneficiaryPurposeOfTransactionSelected>(
      _onBeneficiaryPurposeOfTransactionSelectedToState,
    );
    on<_GetBeneficiarySourceOfFunds>(_onGetBeneficiarySourceOfFundsToState);
    on<_BeneficiarySourceOfFundSelected>(
      _onBeneficiarySourceOfFundSelectedToState,
    );
    on<_SaveOrUpdateBeneficiaryPressed>(
      _onSaveOrUpdateBeneficiaryPressedToState,
    );
    on<_BeneficiaryOtpChanged>(_onBeneficiaryOtpChangedToState);
    on<_BeneficiaryOtpSubmitted>(_onBeneficiaryOtpSubmittedToState);
    on<_ResendBeneficiaryOtp>(_onResendBeneficiaryOtpToState);
    on<_BeneficiaryBankComboChanged>(_onBeneficiaryBankComboChangedToState);
    on<_BeneficiaryBranchComboChanged>(_onBeneficiaryBranchComboChangedToState);
    on<_BeneficiaryRouteCodeChanged>(
      (event, emit) => _handleRouteCodeLookup(event.routeCode, emit),
      transformer: _debounce(const Duration(milliseconds: 500)),
    );
    // Dropdown selection uses the same lookup logic but fires immediately.
    on<_BeneficiaryRouteCodeSelected>(
      (event, emit) => _handleRouteCodeLookup(event.routeCode, emit),
    );
    on<_LoadFormSupportData>(_onLoadFormSupportDataToState);
    on<_DeleteBeneficiary>(_onDeleteBeneficiaryToState);
  }

  static const _bankCodeField = 'beneficiaryBankCode';
  static const _branchCodeField = 'beneficiaryBranchCode';
  static const _routeCodeField = 'routeCode';

  FutureOr<void> _onGetBeneficiariesToState(
    _GetBeneficiaries event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isLoading: true,
        beneficiaryFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _beneficiaryFacade.getBeneficiaryList();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryListDto: data,
          beneficiaryFailureOrSuccessOption: some(right(data)),
        ),
      ),
    );
  }

  FutureOr<void> _onGetBeneficiaryByIdToState(
    _GetBeneficiaryById event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isLoading: true,
        isInitialLoading: true,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryByIdFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _beneficiaryFacade.getBeneficiaryById(
      beneficiaryId: event.beneficiaryId ?? '',
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryByIdFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            beneficiaryByIdDto: data,
            beneficiaryByIdFailureOrSuccessOption: some(right(data)),
          ),
        );
        final beneficiary = data.data?.beneficiaryById;
        if (beneficiary != null) {
          final beneficiaryCountryCode = beneficiary.beneficiaryCountryCode;
          final beneficiaryCurrencyCode = beneficiary.currencyCode;
          final beneficiaryTransferTypeCode = beneficiary.disbursalMode;
          final beneficiaryBankOrAgentName = beneficiary.beneficiaryBankName;
          final beneficiaryBankOrAgentCode = beneficiary.productCode;
          final purposeOfTransactionName = beneficiary.purposeName;
          final purposeOfTransactionCode = beneficiary.purposeOfTransaction;
          final sourceOfFundName = beneficiary.incomeSourceName;
          final sourceOfFundCode = beneficiary.sourceOfFund;
          add(
            BeneficiaryEvent.prepareBeneficiaryForEdit(
              beneficiaryCountry: CommonSelectableItem(
                titleCode: beneficiaryCountryCode,
              ),
              beneficiaryCurrency: CommonSelectableItem(
                trailingCode: beneficiaryCurrencyCode,
              ),
              beneficiaryTransferType: CommonSelectableItem(
                titleCode: beneficiaryTransferTypeCode,
              ),
              beneficiaryBankOrAgent: CommonSelectableItem(
                titleName: beneficiaryBankOrAgentName,
                titleCode: beneficiaryBankOrAgentCode.toString(),
              ),
              beneficiaryPurposeOfTransaction: CommonSelectableItem(
                titleCode: purposeOfTransactionCode,
                titleName: purposeOfTransactionName,
              ),
              beneficiarySourceOfFund: CommonSelectableItem(
                titleCode: sourceOfFundCode,
                titleName: sourceOfFundName,
              ),
            ),
          );
        }
      },
    );
  }

  FutureOr<void> _onPrepareBeneficiaryForEditToState(
    _PrepareBeneficiaryForEdit event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isEditing: true,
        beneficiaryListDto: state.beneficiaryListDto,
        selectedBeneficiaryCountry: event.beneficiaryCountry,
        selectedBeneficiaryCurrency: event.beneficiaryCurrency,
        selectedBeneficiaryTransferType: event.beneficiaryTransferType,
        selectedBeneficiaryBankOrAgent: event.beneficiaryBankOrAgent,
        selectedBeneficiaryPurposeOfTransaction:
            event.beneficiaryPurposeOfTransaction,
        selectedBeneficiarySourceOfFund: event.beneficiarySourceOfFund,
      ),
    );
    add(const BeneficiaryEvent.getBeneficiaryProductFields());
  }

  FutureOr<void> _onPrepareBeneficiaryForAddFromHomeToState(
    _PrepareBeneficiaryForAddFromHome event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isInitialLoading: true,
        isAddingFromHome: true,
        beneficiaryListDto: state.beneficiaryListDto,
        selectedBeneficiaryCountry: event.beneficiaryCountry,
        selectedBeneficiaryCurrency: event.beneficiaryCurrency,
        selectedBeneficiaryTransferType: event.beneficiaryTransferType,
        selectedBeneficiaryBankOrAgent: event.beneficiaryBankOrAgent,
      ),
    );
    add(const BeneficiaryEvent.getBeneficiaryProductFields());
  }

  FutureOr<void> _onGetBeneficiaryCountriesToState(
    _GetBeneficiaryCountries event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isLoading: true,
        isInitialLoading: true,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryCountryListFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryCountryList();

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          isInitialLoading: false,
          beneficiaryCountryListFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: state.isInitialLoading,
            beneficiaryCountryListDto: data,
            beneficiaryCountryListFailureOrSuccessOption: some(right(data)),
          ),
        );
        final list = data.data?.currencyList ?? [];
        if (list.isNotEmpty && list.length == 1) {
          add(
            BeneficiaryEvent.beneficiaryCountrySelected(
              CommonSelectableItem(
                titleName: list.first.countryName?.toUpperCase() ?? '',
                titleCode: list.first.countryCode,
              ),
            ),
          );
        }
        if (list.length != 1) emit(state.copyWith(isInitialLoading: false));
      },
    );
  }

  FutureOr<void> _onBeneficiaryCountrySelectedToState(
    _BeneficiaryCountrySelected event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isInitialLoading: state.isInitialLoading,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryByIdDto: state.beneficiaryByIdDto,
        beneficiaryByIdFailureOrSuccessOption:
            state.beneficiaryByIdFailureOrSuccessOption,
        beneficiaryCountryListDto: state.beneficiaryCountryListDto,
        beneficiaryCountryListFailureOrSuccessOption:
            state.beneficiaryCountryListFailureOrSuccessOption,
        selectedBeneficiaryCountry: event.selectedBeneficiaryCountry,
      ),
    );

    add(const BeneficiaryEvent.getBeneficiaryCurrencies());
  }

  FutureOr<void> _onGetBeneficiaryCurrenciesToState(
    _GetBeneficiaryCurrencies event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isLoading: true,
        isInitialLoading: state.isInitialLoading,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryByIdDto: state.beneficiaryByIdDto,
        beneficiaryByIdFailureOrSuccessOption:
            state.beneficiaryByIdFailureOrSuccessOption,
        beneficiaryCountryListDto: state.beneficiaryCountryListDto,
        selectedBeneficiaryCountry: state.selectedBeneficiaryCountry,
        beneficiaryCountryListFailureOrSuccessOption:
            state.beneficiaryCountryListFailureOrSuccessOption,
        beneficiaryCurrenciesFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryCurrencyListByCountry(
      beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          isInitialLoading: false,
          beneficiaryCurrenciesFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: state.isInitialLoading,
            beneficiaryCurrencyListDto: data,
            beneficiaryCurrenciesFailureOrSuccessOption: some(right(data)),
          ),
        );

        final list = data.data?.currencyList ?? [];
        if (list.isNotEmpty && list.length == 1) {
          add(
            BeneficiaryEvent.beneficiaryCurrencySelected(
              CommonSelectableItem(
                titleName: list.first.currencyName?.toUpperCase() ?? '',
                titleCode: list.first.currencyCode,
                trailingCode: list.first.currencyCode,
              ),
            ),
          );
        }
        if (list.length != 1) emit(state.copyWith(isInitialLoading: false));
      },
    );
  }

  FutureOr<void> _onBeneficiaryCurrencySelectedToState(
    _BeneficiaryCurrencySelected event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isInitialLoading: state.isInitialLoading,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryByIdDto: state.beneficiaryByIdDto,
        beneficiaryByIdFailureOrSuccessOption:
            state.beneficiaryByIdFailureOrSuccessOption,
        beneficiaryCountryListDto: state.beneficiaryCountryListDto,
        selectedBeneficiaryCountry: state.selectedBeneficiaryCountry,
        beneficiaryCountryListFailureOrSuccessOption:
            state.beneficiaryCountryListFailureOrSuccessOption,
        beneficiaryCurrencyListDto: state.beneficiaryCurrencyListDto,
        beneficiaryCurrenciesFailureOrSuccessOption:
            state.beneficiaryCurrenciesFailureOrSuccessOption,
        selectedBeneficiaryCurrency: event.selectedBeneficiaryCurrency,
      ),
    );

    add(const BeneficiaryEvent.getBeneficiaryTransferTypes());
  }

  FutureOr<void> _onGetBeneficiaryTransferTypesToState(
    _GetBeneficiaryTransferTypes event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isLoading: true,
        isInitialLoading: state.isInitialLoading,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryByIdDto: state.beneficiaryByIdDto,
        beneficiaryByIdFailureOrSuccessOption:
            state.beneficiaryByIdFailureOrSuccessOption,
        beneficiaryCountryListDto: state.beneficiaryCountryListDto,
        selectedBeneficiaryCountry: state.selectedBeneficiaryCountry,
        beneficiaryCountryListFailureOrSuccessOption:
            state.beneficiaryCountryListFailureOrSuccessOption,
        beneficiaryCurrencyListDto: state.beneficiaryCurrencyListDto,
        selectedBeneficiaryCurrency: state.selectedBeneficiaryCurrency,
        beneficiaryCurrenciesFailureOrSuccessOption:
            state.beneficiaryCurrenciesFailureOrSuccessOption,
        beneficiaryTransferTypesFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryTransferModeList(
      beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode ?? '',
      beneficiaryCurrencyCode:
          state.selectedBeneficiaryCurrency?.trailingCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          isInitialLoading: false,
          beneficiaryTransferTypesFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: state.isInitialLoading,
            beneficiaryTransferModeListDto: data,
            beneficiaryTransferTypesFailureOrSuccessOption: some(right(data)),
          ),
        );

        final list = data.data?.transferModeList ?? [];
        if (list.isNotEmpty && list.length == 1) {
          add(
            BeneficiaryEvent.beneficiaryTransferTypeSelected(
              CommonSelectableItem(
                titleName: list.first.name?.toUpperCase() ?? '',
                titleCode: list.first.code,
              ),
            ),
          );
        }
        if (list.length != 1) emit(state.copyWith(isInitialLoading: false));
      },
    );
  }

  FutureOr<void> _onBeneficiaryTransferTypeSelectedToState(
    _BeneficiaryTransferTypeSelected event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isInitialLoading: state.isInitialLoading,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryByIdDto: state.beneficiaryByIdDto,
        beneficiaryByIdFailureOrSuccessOption:
            state.beneficiaryByIdFailureOrSuccessOption,
        beneficiaryCountryListDto: state.beneficiaryCountryListDto,
        selectedBeneficiaryCountry: state.selectedBeneficiaryCountry,
        beneficiaryCountryListFailureOrSuccessOption:
            state.beneficiaryCountryListFailureOrSuccessOption,
        beneficiaryCurrencyListDto: state.beneficiaryCurrencyListDto,
        selectedBeneficiaryCurrency: state.selectedBeneficiaryCurrency,
        beneficiaryCurrenciesFailureOrSuccessOption:
            state.beneficiaryCurrenciesFailureOrSuccessOption,
        beneficiaryTransferModeListDto: state.beneficiaryTransferModeListDto,
        beneficiaryTransferTypesFailureOrSuccessOption:
            state.beneficiaryTransferTypesFailureOrSuccessOption,
        selectedBeneficiaryTransferType: event.selectedBeneficiaryTransferType,
      ),
    );

    add(const BeneficiaryEvent.getBeneficiaryBanksOrAgents());
  }

  FutureOr<void> _onGetBeneficiaryBanksOrAgentsToState(
    _GetBeneficiaryBanksOrAgents event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isLoading: true,
        isInitialLoading: state.isInitialLoading,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryByIdDto: state.beneficiaryByIdDto,
        beneficiaryByIdFailureOrSuccessOption:
            state.beneficiaryByIdFailureOrSuccessOption,
        beneficiaryCountryListDto: state.beneficiaryCountryListDto,
        selectedBeneficiaryCountry: state.selectedBeneficiaryCountry,
        beneficiaryCountryListFailureOrSuccessOption:
            state.beneficiaryCountryListFailureOrSuccessOption,
        beneficiaryCurrencyListDto: state.beneficiaryCurrencyListDto,
        selectedBeneficiaryCurrency: state.selectedBeneficiaryCurrency,
        beneficiaryCurrenciesFailureOrSuccessOption:
            state.beneficiaryCurrenciesFailureOrSuccessOption,
        beneficiaryTransferModeListDto: state.beneficiaryTransferModeListDto,
        selectedBeneficiaryTransferType: state.selectedBeneficiaryTransferType,
        beneficiaryTransferTypesFailureOrSuccessOption:
            state.beneficiaryTransferTypesFailureOrSuccessOption,
        beneficiaryBankOrAgentListFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryBankOrAgentList(
      beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode ?? '',
      beneficiaryCurrencyCode:
          state.selectedBeneficiaryCurrency?.trailingCode ?? '',
      beneficiaryTransferTypeCode:
          state.selectedBeneficiaryTransferType?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          isInitialLoading: false,
          beneficiaryBankOrAgentListFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: state.isInitialLoading,
            beneficiaryBankOrAgentListDto: data,
            beneficiaryBankOrAgentListFailureOrSuccessOption: some(right(data)),
          ),
        );

        final list = data.data?.productList ?? [];
        if (list.length == 1) {
          add(
            BeneficiaryEvent.beneficiaryBankOrAgentSelected(
              CommonSelectableItem(
                titleName: list.first.name?.toUpperCase() ?? '',
                titleCode: list.first.code.toString(),
              ),
            ),
          );
        }
        if (list.length != 1) emit(state.copyWith(isInitialLoading: false));
      },
    );
  }

  FutureOr<void> _onBeneficiaryBankOrAgentSelectedToState(
    _BeneficiaryBankOrAgentSelected event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      BeneficiaryState.initial().copyWith(
        isInitialLoading: state.isInitialLoading,
        beneficiaryListDto: state.beneficiaryListDto,
        beneficiaryFailureOrSuccessOption:
            state.beneficiaryFailureOrSuccessOption,
        beneficiaryByIdDto: state.beneficiaryByIdDto,
        beneficiaryByIdFailureOrSuccessOption:
            state.beneficiaryByIdFailureOrSuccessOption,
        beneficiaryCountryListDto: state.beneficiaryCountryListDto,
        selectedBeneficiaryCountry: state.selectedBeneficiaryCountry,
        beneficiaryCountryListFailureOrSuccessOption:
            state.beneficiaryCountryListFailureOrSuccessOption,
        beneficiaryCurrencyListDto: state.beneficiaryCurrencyListDto,
        selectedBeneficiaryCurrency: state.selectedBeneficiaryCurrency,
        beneficiaryCurrenciesFailureOrSuccessOption:
            state.beneficiaryCurrenciesFailureOrSuccessOption,
        beneficiaryTransferModeListDto: state.beneficiaryTransferModeListDto,
        selectedBeneficiaryTransferType: state.selectedBeneficiaryTransferType,
        beneficiaryTransferTypesFailureOrSuccessOption:
            state.beneficiaryTransferTypesFailureOrSuccessOption,
        beneficiaryBankOrAgentListDto: state.beneficiaryBankOrAgentListDto,
        beneficiaryBankOrAgentListFailureOrSuccessOption:
            state.beneficiaryBankOrAgentListFailureOrSuccessOption,
        selectedBeneficiaryBankOrAgent: event.selectedBeneficiaryBankOrAgent,
      ),
    );
    add(const BeneficiaryEvent.getBeneficiaryProductFields());
  }

  FutureOr<void> _onGetBeneficiaryProductFieldsToState(
    _GetBeneficiaryProductFields event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        beneficiaryProductSettingsFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryProductFieldSettings(
      beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode ?? '',
      beneficiaryCurrencyCode:
          state.selectedBeneficiaryCurrency?.trailingCode ?? '',
      beneficiaryTransferTypeCode:
          state.selectedBeneficiaryTransferType?.titleCode ?? '',
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryProductSettingsFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        final fields = data.data?.allProductFieldSettingList?.beneficiary ?? [];

        final initialMap = <String, BeneficiaryDynamicInput>{};

        final beneficiary = state.beneficiaryByIdDto?.data?.beneficiaryById;

        for (final field in fields) {
          final fieldName = field.fieldName ?? '';
          String value = '';

          if (beneficiary != null) {
            final beneficiaryJson = beneficiary.toJson();
            final snakeKey = camelToSnake(fieldName);

            value = beneficiaryJson[snakeKey]?.toString() ?? '';
          }

          initialMap[fieldName] = BeneficiaryDynamicInput(
            input: value.toUpperCase(),
            mandatory: field.mandatory ?? false,
            minLength: field.minimumLength,
            maxLength: field.maximumLength,
          );
        }

        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: !state.isEditing ? false : state.isInitialLoading,
            dynamicFieldValues: initialMap,
            initialDynamicFieldValues: initialMap,
            beneficiaryProductFieldSettingsDto: data,
            beneficiaryProductSettingsFailureOrSuccessOption: some(right(data)),
          ),
        );

        add(const BeneficiaryEvent.loadFormSupportData());
      },
    );
  }

  FutureOr<void> _onBeneficiaryProductFieldChangedToState(
    _BeneficiaryProductFieldChanged event,
    Emitter<BeneficiaryState> emit,
  ) async {
    final validated = BeneficiaryDynamicInput(
      input: event.value,
      mandatory: event.backendField.mandatory ?? false,
      minLength: event.backendField.minimumLength,
      maxLength: event.backendField.maximumLength,
    );

    emit(
      state.copyWith(
        saveBeneficiaryFailureOrSuccessOption: none(),
        dynamicFieldValues: {
          ...state.dynamicFieldValues,
          event.backendField.fieldName ?? '': validated,
        },
      ),
    );
  }

  FutureOr<void> _onClearBeneficiaryProductFieldValueToState(
    _ClearBeneficiaryProductFieldValue event,
    Emitter<BeneficiaryState> emit,
  ) async {
    final field = event.backendField;

    final cleared = BeneficiaryDynamicInput(
      input: '',
      mandatory: field.mandatory ?? false,
      minLength: field.minimumLength,
      maxLength: field.maximumLength,
    );

    emit(
      state.copyWith(
        saveBeneficiaryFailureOrSuccessOption: none(),
        dynamicFieldValues: {
          ...state.dynamicFieldValues,
          field.fieldName ?? '': cleared,
        },
      ),
    );
  }

  FutureOr<void> _onGetBeneficiaryComboToState(
    _GetBeneficiaryCombo event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        beneficiaryComboListFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryComboList(
      beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode ?? '',
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryComboListFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            commonComboDto: CommonComboDto(
              countryList:
                  data.data?.countryList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              genderList:
                  data.data?.genderList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              residencyTypeList:
                  data.data?.residencyTypeList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              professionList:
                  data.data?.professionList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              salutationList:
                  data.data?.salutationList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              airportList:
                  data.data?.airportList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              beneficiaryBankAccountTypeList:
                  data.data?.beneficiaryBankAccountTypeList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              relationshipList:
                  data.data?.relationshipList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              memberCategoryList:
                  data.data?.memberCategoryList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
              routeTypeList:
                  data.data?.routeTypeList
                      ?.map(
                        (e) =>
                            ComboItem(code: e.code ?? '', name: e.name ?? ''),
                      )
                      .toList() ??
                  [],
            ),
            beneficiaryComboListFailureOrSuccessOption: some(right(data)),
          ),
        );
        add(const BeneficiaryEvent.getBankCombo());
      },
    );
  }

  FutureOr<void> _onGetBankComboToState(
    _GetBankCombo event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        beneficiaryBankComboListFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryBankComboList(
      beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode ?? '',
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
      transferTypeModeCode:
          state.selectedBeneficiaryTransferType?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryBankComboListFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        final bankList = data.data?.beneficiaryBankList ?? [];
        emit(
          state.copyWith(
            isLoading: false,
            commonComboDto: state.commonComboDto?.copyWith(
              beneficiaryBankList: bankList
                  .map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                  .toList(),
            ),
            beneficiaryBankComboListFailureOrSuccessOption: some(right(data)),
          ),
        );
        // Auto-select bank when only one option exists, consistent with how
        // country / currency / transfer-type handle single-item lists.
        // Skipped in edit mode because the bank is already pre-seeded via
        // setBeneficiaryForEdit → getBeneficiaryProductFields.
        if (bankList.length == 1 && !state.isEditing) {
          add(
            BeneficiaryEvent.beneficiaryBankComboChanged(
              bankCode: bankList.first.code ?? '',
              bankName: bankList.first.name ?? '',
            ),
          );
        }
      },
    );
    add(const BeneficiaryEvent.getBeneficiaryPurposeOfTransactions());
  }

  FutureOr<void> _onGetBranchComboToState(
    _GetBranchCombo event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        beneficiaryBankBranchComboListFailureOrSuccessOption: none(),
      ),
    );
    final result = await _beneficiaryFacade.getBeneficiaryBankBranchList(
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
      beneficiaryBankCode: event.bankCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryBankBranchComboListFailureOrSuccessOption: some(
            left(failure),
          ),
        ),
      ),
      (data) => emit(
        state.copyWith(
          isLoading: false,
          // Keep track of which bank the branch list belongs to.
          // Used by beneficiaryBranchComboChanged to call getBeneficiaryRouteCode.
          selectedBankComboCode: event.bankCode ?? '',
          commonComboDto: state.commonComboDto?.copyWith(
            beneficiaryBranchList:
                data.data?.beneficiaryBranchList
                    ?.map(
                      (e) => ComboItem(code: e.code ?? '', name: e.name ?? ''),
                    )
                    .toList() ??
                [],
          ),
          beneficiaryBankBranchComboListFailureOrSuccessOption: some(
            right(data),
          ),
        ),
      ),
    );

    // Add mode: if the call carried an expected branch (from IFSC reverse-fill),
    // validate it against the freshly loaded list and store only if found.
    // Graceful no-op if the branch isn't in the list.
    if (!state.isEditing) {
      final expectedBranch = event.expectedBranchCode ?? '';
      if (expectedBranch.isNotEmpty) {
        final branchList = state.commonComboDto?.beneficiaryBranchList ?? [];
        final branchInList = branchList.any((b) => b.code == expectedBranch);
        if (branchInList) {
          final updated = Map<String, BeneficiaryDynamicInput>.from(
            state.dynamicFieldValues,
          );
          if (updated.containsKey(_branchCodeField)) {
            updated[_branchCodeField] = _makeFieldInput(
              state,
              _branchCodeField,
              expectedBranch,
            );
            emit(state.copyWith(dynamicFieldValues: updated));
          }
        }
      }
      return;
    }

    // Edit mode: route code is already pre-filled from the saved beneficiary.
    // Fetch the route code combo list so the dropdown can render it.
    var branchCode =
        state.dynamicFieldValues[_branchCodeField]?.value.getOrElse(() => '') ??
        '';
    // Backend may return composite format "179481|065002" — use only the last part.
    branchCode = branchCode.split('|').last.trim();

    if (branchCode.isEmpty || (event.bankCode ?? '').isEmpty) {
      emit(state.copyWith(isInitialLoading: false));
      return;
    }

    emit(state.copyWith(isRouteCodeLoading: true));

    final routeResult = await _beneficiaryFacade.getBeneficiaryRouteCode(
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
      beneficiaryBankCode: event.bankCode ?? '',
      beneficiaryBankBranchCode: branchCode,
      transferTypeModeCode:
          state.selectedBeneficiaryTransferType?.titleCode ?? '',
    );

    routeResult.fold(
      (failure) => emit(
        state.copyWith(isRouteCodeLoading: false, isInitialLoading: false),
      ),
      (dto) {
        final list = dto.data?.beneficiaryRouteCodeList ?? [];
        emit(
          state.copyWith(
            isRouteCodeLoading: false,
            isInitialLoading: false,
            isRouteCodeAutoFilled: true,
            beneficiaryRouteCodeDto: dto,
            commonComboDto: state.commonComboDto?.copyWith(
              beneficiaryRouteCodeList: list
                  .map((e) => ComboItem(code: e.code ?? '', name: e.code ?? ''))
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  FutureOr<void> _onGetBeneficiaryPurposeOfTransactionsToState(
    _GetBeneficiaryPurposeOfTransactions event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        beneficiaryPurposeOfTransactionFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiaryPurposeOfTransferList(
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
      beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          beneficiaryPurposeOfTransactionFailureOrSuccessOption: some(
            left(failure),
          ),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            beneficiaryPurposeOfTransferDto: data,
            beneficiaryPurposeOfTransactionFailureOrSuccessOption: some(
              right(data),
            ),
          ),
        );
        add(const BeneficiaryEvent.getBeneficiarySourceOfFunds());
      },
    );
  }

  FutureOr<void> _onBeneficiaryPurposeOfTransactionSelectedToState(
    _BeneficiaryPurposeOfTransactionSelected event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedBeneficiaryPurposeOfTransaction:
            event.selectedPurposeOfTransaction,
      ),
    );
  }

  FutureOr<void> _onGetBeneficiarySourceOfFundsToState(
    _GetBeneficiarySourceOfFunds event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        beneficiarySourceOfFundFailureOrSuccessOption: none(),
      ),
    );

    final result = await _beneficiaryFacade.getBeneficiarySourceFundList(
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          isInitialLoading: false,
          beneficiarySourceOfFundFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        emit(
          state.copyWith(
            isLoading: false,
            isInitialLoading: !state.isEditing ? false : state.isInitialLoading,
            beneficiarySourceOfFundDto: data,
            beneficiarySourceOfFundFailureOrSuccessOption: some(right(data)),
          ),
        );
      },
    );
  }

  FutureOr<void> _onBeneficiarySourceOfFundSelectedToState(
    _BeneficiarySourceOfFundSelected event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedBeneficiarySourceOfFund: event.selectedSourceOfFund,
      ),
    );
  }

  FutureOr<void> _onSaveOrUpdateBeneficiaryPressedToState(
    _SaveOrUpdateBeneficiaryPressed event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        showErrorMessages: true,
        saveBeneficiaryFailureOrSuccessOption: none(),
      ),
    );

    final hasError = state.dynamicFieldValues.values.any(
      (field) => field.value.isLeft(),
    );
    if (hasError) {
      emit(state.copyWith(isSubmitting: false));
      return;
    }

    final failureOrSuccess = await _beneficiaryFacade.requestBeneficiaryOtp(
      beneficiary: _buildBeneficiaryPayload(state),
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isSubmitting: false,
          saveBeneficiaryFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) {
        if (data == 200) {
          // OTP sent — navigate to OTP screen. Start the resend cooldown.
          emit(
            state.copyWith(
              isSubmitting: false,
              otpResendCooldownUntil: DateTime.now().add(
                const Duration(seconds: 60),
              ),
              saveBeneficiaryFailureOrSuccessOption: some(right(data)),
            ),
          );
          return;
        }

        // No OTP required — server already persisted the record.
        if (state.isEditing) {
          // Safe local update: we have the real eId from the loaded beneficiary.
          final eId = state.beneficiaryByIdDto?.data?.beneficiaryById?.eId;
          final firstName = state
              .dynamicFieldValues['beneficiaryFirstName']
              ?.value
              .getOrElse(() => '');
          final lastName = state
              .dynamicFieldValues['beneficiaryLastName']
              ?.value
              .getOrElse(() => '');
          final newBeneficiary = BeneficiaryList(
            eId: eId,
            beneficiaryFirstName: firstName,
            beneficiaryLastName: lastName,
            beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode,
            beneficiaryBankName:
                state.selectedBeneficiaryBankOrAgent?.titleName,
            disbursalMode: state.selectedBeneficiaryTransferType?.titleCode,
            currencyCode: state.selectedBeneficiaryCurrency?.trailingCode,
            purposeName:
                state.selectedBeneficiaryPurposeOfTransaction?.titleName,
            purposeOfTransaction:
                state.selectedBeneficiaryPurposeOfTransaction?.titleCode,
            incomeSourceName: state.selectedBeneficiarySourceOfFund?.titleName,
            sourceOfFund: state.selectedBeneficiarySourceOfFund?.titleCode,
          );
          final prunedList =
              (state.beneficiaryListDto?.data?.beneficiaryList ?? [])
                  .where((e) => e.eId != eId)
                  .toList();
          emit(
            state.copyWith(
              isSubmitting: false,
              selectedBeneficiary: newBeneficiary,
              beneficiaryListDto: state.beneficiaryListDto?.copyWith(
                data: state.beneficiaryListDto?.data?.copyWith(
                  beneficiaryList: [newBeneficiary, ...prunedList],
                ),
              ),
              saveBeneficiaryFailureOrSuccessOption: some(right(data)),
            ),
          );
        } else {
          // Add without OTP: no server-assigned eId in this response.
          // Emit success; the UI should refresh the list on navigation.
          emit(
            state.copyWith(
              isSubmitting: false,
              saveBeneficiaryFailureOrSuccessOption: some(right(data)),
            ),
          );
        }
      },
    );
  }

  FutureOr<void> _onBeneficiaryOtpChangedToState(
    _BeneficiaryOtpChanged event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        beneficiaryOtp: BeneficiaryOtp(event.otpStr),
        saveBeneficiaryFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onBeneficiaryOtpSubmittedToState(
    _BeneficiaryOtpSubmitted event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isOtpSubmitting: true,
        showOtpErrorMessages: true,
        saveBeneficiaryFailureOrSuccessOption: none(),
        beneficiaryOtpFailureOrSuccessOption: none(),
      ),
    );

    if (!state.beneficiaryOtp.isValid()) {
      emit(state.copyWith(isOtpSubmitting: false));
      return;
    }

    final firstName = state.dynamicFieldValues['beneficiaryFirstName']?.value
        .getOrElse(() => '');
    final lastName = state.dynamicFieldValues['beneficiaryLastName']?.value
        .getOrElse(() => '');

    final failureOrSuccess = await _beneficiaryFacade.verifyBeneficiaryOtp(
      otp: state.beneficiaryOtp,
      beneficiary: _buildBeneficiaryPayload(state),
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isOtpSubmitting: false,
          beneficiaryOtpFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (eId) {
        // eId is the server-assigned id returned after successful OTP verification.
        final newBeneficiary = BeneficiaryList(
          eId: eId,
          beneficiaryFirstName: firstName,
          beneficiaryLastName: lastName,
          beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode,
          beneficiaryBankName: state.selectedBeneficiaryBankOrAgent?.titleName,
          disbursalMode: state.selectedBeneficiaryTransferType?.titleCode,
          currencyCode: state.selectedBeneficiaryCurrency?.trailingCode,
          purposeName: state.selectedBeneficiaryPurposeOfTransaction?.titleName,
          purposeOfTransaction:
              state.selectedBeneficiaryPurposeOfTransaction?.titleCode,
          incomeSourceName: state.selectedBeneficiarySourceOfFund?.titleName,
          sourceOfFund: state.selectedBeneficiarySourceOfFund?.titleCode,
        );
        final prunedList =
            (state.beneficiaryListDto?.data?.beneficiaryList ?? [])
                .where((e) => e.eId != eId)
                .toList();
        emit(
          state.copyWith(
            isOtpSubmitting: false,
            selectedBeneficiary: newBeneficiary,
            beneficiaryListDto: state.beneficiaryListDto?.copyWith(
              data: state.beneficiaryListDto?.data?.copyWith(
                beneficiaryList: [newBeneficiary, ...prunedList],
              ),
            ),
            beneficiaryOtpFailureOrSuccessOption: some(right(eId)),
          ),
        );
      },
    );
  }

  FutureOr<void> _onResendBeneficiaryOtpToState(
    _ResendBeneficiaryOtp event,
    Emitter<BeneficiaryState> emit,
  ) async {
    emit(
      state.copyWith(
        isResendingOtp: true,
        resendBeneficiaryOtpFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _beneficiaryFacade.requestBeneficiaryOtp(
      beneficiary: _buildBeneficiaryPayload(state),
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isResendingOtp: false,
          resendBeneficiaryOtpFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (data) => emit(
        state.copyWith(
          isResendingOtp: false,
          // Reset the cooldown on every successful resend.
          otpResendCooldownUntil: DateTime.now().add(
            const Duration(seconds: 60),
          ),
          resendBeneficiaryOtpFailureOrSuccessOption: some(right(data)),
        ),
      ),
    );
  }

  BeneficiaryDynamicInput _makeFieldInput(
    BeneficiaryState s,
    String fieldName,
    String value,
  ) {
    final field = s
        .beneficiaryProductFieldSettingsDto
        ?.data
        ?.allProductFieldSettingList
        ?.beneficiary
        ?.where((f) => f.fieldName == fieldName)
        .firstOrNull;
    return BeneficiaryDynamicInput(
      input: value,
      mandatory: field?.mandatory ?? false,
      minLength: field?.minimumLength,
      maxLength: field?.maximumLength,
    );
  }

  FutureOr<void> _onBeneficiaryBankComboChangedToState(
    _BeneficiaryBankComboChanged event,
    Emitter<BeneficiaryState> emit,
  ) async {
    final updated = Map<String, BeneficiaryDynamicInput>.from(
      state.dynamicFieldValues,
    );
    updated[_bankCodeField] = _makeFieldInput(
      state,
      _bankCodeField,
      event.bankCode,
    );
    if (updated.containsKey(_branchCodeField)) {
      updated[_branchCodeField] = _makeFieldInput(state, _branchCodeField, '');
    }
    if (updated.containsKey(_routeCodeField)) {
      updated[_routeCodeField] = _makeFieldInput(state, _routeCodeField, '');
    }
    emit(
      state.copyWith(
        dynamicFieldValues: updated,
        isRouteCodeAutoFilled: false,
        beneficiaryRouteCodeFailureOrSuccessOption: none(),
        beneficiaryBankBranchRouteFailureOrSuccessOption: none(),
        commonComboDto: state.commonComboDto?.copyWith(
          beneficiaryBranchList: [],
          beneficiaryRouteCodeList: [],
        ),
      ),
    );
    add(BeneficiaryEvent.getBranchCombo(event.bankCode));
  }

  FutureOr<void> _onBeneficiaryBranchComboChangedToState(
    _BeneficiaryBranchComboChanged event,
    Emitter<BeneficiaryState> emit,
  ) async {
    final updated = Map<String, BeneficiaryDynamicInput>.from(
      state.dynamicFieldValues,
    );
    updated[_branchCodeField] = _makeFieldInput(
      state,
      _branchCodeField,
      event.branchCode,
    );
    if (updated.containsKey(_routeCodeField)) {
      updated[_routeCodeField] = _makeFieldInput(state, _routeCodeField, '');
    }
    emit(
      state.copyWith(
        dynamicFieldValues: updated,
        isRouteCodeLoading: true,
        isRouteCodeAutoFilled: false,
        beneficiaryRouteCodeFailureOrSuccessOption: none(),
      ),
    );

    // selectedBankComboCode is set by _onGetBranchComboToState, which runs for
    // both the add path (via beneficiaryBankComboChanged) and the edit path
    // (via getBranchCombo called from _onGetSourceOfFundsToState).
    final bankCode = state.selectedBankComboCode;
    if (bankCode.isEmpty || event.branchCode.isEmpty) {
      emit(state.copyWith(isRouteCodeLoading: false));
      return;
    }

    final result = await _beneficiaryFacade.getBeneficiaryRouteCode(
      beneficiaryBankOrAgentCode:
          state.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
      beneficiaryBankCode: bankCode,
      beneficiaryBankBranchCode: event.branchCode,
      transferTypeModeCode:
          state.selectedBeneficiaryTransferType?.titleCode ?? '',
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isRouteCodeLoading: false,
          beneficiaryRouteCodeFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (dto) {
        final list = dto.data?.beneficiaryRouteCodeList ?? [];
        final routeCode =
            list
                .firstWhere(
                  (e) => e.isDefault == true,
                  orElse: () => list.isNotEmpty
                      ? list.first
                      : const BeneficiaryRouteCodeList(),
                )
                .code ??
            '';
        final newFields = Map<String, BeneficiaryDynamicInput>.from(
          state.dynamicFieldValues,
        );
        if (newFields.containsKey(_routeCodeField)) {
          newFields[_routeCodeField] = _makeFieldInput(
            state,
            _routeCodeField,
            routeCode,
          );
        }
        emit(
          state.copyWith(
            dynamicFieldValues: newFields,
            isRouteCodeLoading: false,
            isRouteCodeAutoFilled: routeCode.isNotEmpty,
            beneficiaryRouteCodeDto: dto,
            commonComboDto: state.commonComboDto?.copyWith(
              beneficiaryRouteCodeList: list
                  .map((e) => ComboItem(code: e.code ?? '', name: e.code ?? ''))
                  .toList(),
            ),
            beneficiaryRouteCodeFailureOrSuccessOption: some(right(dto)),
          ),
        );
      },
    );
  }

  // Shared logic for both text-input (debounced) and dropdown-selection (immediate)
  // IFSC/route-code paths. Validates the returned bank against the loaded bank list
  // before storing — prevents invisible stored values that don't match any dropdown item.
  // Branch code is intentionally NOT stored here; it is validated against the freshly
  // loaded branch list inside _onGetBranchComboToState via expectedBranchCode.
  FutureOr<void> _handleRouteCodeLookup(
    String routeCode,
    Emitter<BeneficiaryState> emit,
  ) async {
    final updated = Map<String, BeneficiaryDynamicInput>.from(
      state.dynamicFieldValues,
    );
    if (updated.containsKey(_routeCodeField)) {
      updated[_routeCodeField] = _makeFieldInput(
        state,
        _routeCodeField,
        routeCode,
      );
    }
    emit(
      state.copyWith(
        dynamicFieldValues: updated,
        isRouteCodeAutoFilled: false,
        isRouteLookupLoading: routeCode.isNotEmpty,
        beneficiaryBankBranchRouteFailureOrSuccessOption: none(),
      ),
    );

    if (routeCode.isEmpty) return;

    final result = await _beneficiaryFacade.getBeneficiaryBankBranchRoute(
      beneficiaryRouteCode: routeCode,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isRouteLookupLoading: false,
          beneficiaryBankBranchRouteFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (dto) {
        final bankCode = dto.data?.beneficiaryBankDetails?.code ?? '';
        final branchCode = dto.data?.beneficiaryBranchDetails?.code ?? '';

        // Validate bank against the currently loaded list.
        // Only store if the code actually exists — avoids invisible invalid selections.
        final bankList = state.commonComboDto?.beneficiaryBankList ?? [];
        final bankInList =
            bankCode.isNotEmpty && bankList.any((b) => b.code == bankCode);

        final newFields = Map<String, BeneficiaryDynamicInput>.from(
          state.dynamicFieldValues,
        );
        if (newFields.containsKey(_bankCodeField) && bankInList) {
          newFields[_bankCodeField] = _makeFieldInput(
            state,
            _bankCodeField,
            bankCode,
          );
        }
        // Branch is intentionally omitted — validated + stored after getBranchCombo
        // loads the branch list (see _onGetBranchComboToState, expectedBranchCode path).

        emit(
          state.copyWith(
            dynamicFieldValues: newFields,
            isRouteLookupLoading: false,
            beneficiaryBankBranchRouteDto: dto,
            beneficiaryBankBranchRouteFailureOrSuccessOption: some(right(dto)),
          ),
        );

        // Re-populate the branch dropdown for the auto-filled bank and pass the
        // expected branch code for post-load validation.
        // Circular-safe: getBranchCombo only updates commonComboDto.beneficiaryBranchList;
        // it never fires beneficiaryBranchComboChanged or triggers a route-code fetch
        // in add mode.
        if (bankInList) {
          add(
            BeneficiaryEvent.getBranchCombo(
              bankCode,
              expectedBranchCode: branchCode,
            ),
          );
        }
      },
    );
  }

  FutureOr<void> _onLoadFormSupportDataToState(
    _LoadFormSupportData event,
    Emitter<BeneficiaryState> emit,
  ) async {
    // Snapshot selectors before await so they stay consistent.
    final countryCode = state.selectedBeneficiaryCountry?.titleCode ?? '';
    final agentCode = state.selectedBeneficiaryBankOrAgent?.titleCode ?? '';
    final transferCode = state.selectedBeneficiaryTransferType?.titleCode ?? '';
    final isEditing = state.isEditing;
    final beneficiary = state.beneficiaryByIdDto?.data?.beneficiaryById;

    // Four APIs in parallel — previously sequential (4× round trips → 1×).
    final (comboResult, bankResult, purposeResult, sourceResult) = await (
      _beneficiaryFacade.getBeneficiaryComboList(
        beneficiaryCountryCode: countryCode,
        beneficiaryBankOrAgentCode: agentCode,
      ),
      _beneficiaryFacade.getBeneficiaryBankComboList(
        beneficiaryCountryCode: countryCode,
        beneficiaryBankOrAgentCode: agentCode,
        transferTypeModeCode: transferCode,
      ),
      _beneficiaryFacade.getBeneficiaryPurposeOfTransferList(
        beneficiaryBankOrAgentCode: agentCode,
        beneficiaryCountryCode: countryCode,
      ),
      _beneficiaryFacade.getBeneficiarySourceFundList(
        beneficiaryBankOrAgentCode: agentCode,
      ),
    ).wait;

    // Build merged CommonComboDto from both combo and bank results.
    CommonComboDto? mergedComboDto = state.commonComboDto;

    comboResult.fold((_) {}, (comboData) {
      mergedComboDto = CommonComboDto(
        countryList:
            comboData.data?.countryList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        genderList:
            comboData.data?.genderList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        residencyTypeList:
            comboData.data?.residencyTypeList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        professionList:
            comboData.data?.professionList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        salutationList:
            comboData.data?.salutationList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        airportList:
            comboData.data?.airportList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        beneficiaryBankAccountTypeList:
            comboData.data?.beneficiaryBankAccountTypeList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        relationshipList:
            comboData.data?.relationshipList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        memberCategoryList:
            comboData.data?.memberCategoryList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
        routeTypeList:
            comboData.data?.routeTypeList
                ?.map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
                .toList() ??
            [],
      );
    });

    bankResult.fold((_) {}, (bankData) {
      final bankList = bankData.data?.beneficiaryBankList ?? [];
      mergedComboDto = mergedComboDto?.copyWith(
        beneficiaryBankList: bankList
            .map((e) => ComboItem(code: e.code ?? '', name: e.name ?? ''))
            .toList(),
      );
    });

    emit(
      state.copyWith(
        isLoading: false,
        commonComboDto: mergedComboDto,
        beneficiaryComboListFailureOrSuccessOption: some(comboResult),
        beneficiaryBankComboListFailureOrSuccessOption: some(bankResult),
        beneficiaryPurposeOfTransferDto: purposeResult.fold(
          (_) => state.beneficiaryPurposeOfTransferDto,
          (d) => d,
        ),
        beneficiaryPurposeOfTransactionFailureOrSuccessOption: some(
          purposeResult,
        ),
        beneficiarySourceOfFundDto: sourceResult.fold(
          (_) => state.beneficiarySourceOfFundDto,
          (d) => d,
        ),
        beneficiarySourceOfFundFailureOrSuccessOption: some(sourceResult),
      ),
    );

    // Single-bank auto-selection consistent with other single-item dropdowns.
    bankResult.fold((_) {}, (bankData) {
      final bankList = bankData.data?.beneficiaryBankList ?? [];
      if (bankList.length == 1 && !isEditing) {
        add(
          BeneficiaryEvent.beneficiaryBankComboChanged(
            bankCode: bankList.first.code ?? '',
            bankName: bankList.first.name ?? '',
          ),
        );
      }
    });

    if (isEditing) {
      final purposeName = beneficiary?.purposeName;
      final purposeCode = beneficiary?.purposeOfTransaction;
      final sourceName = beneficiary?.incomeSourceName;
      final sourceCode = beneficiary?.sourceOfFund;
      final bankCode = beneficiary?.beneficiaryBankCode?.toString();

      if ((purposeCode ?? '').isNotEmpty) {
        add(
          BeneficiaryEvent.beneficiaryPurposeOfTransactionSelected(
            CommonSelectableItem(
              titleName: purposeName,
              titleCode: purposeCode,
            ),
          ),
        );
      }
      if ((sourceCode ?? '').isNotEmpty) {
        add(
          BeneficiaryEvent.beneficiarySourceOfFundSelected(
            CommonSelectableItem(titleName: sourceName, titleCode: sourceCode),
          ),
        );
      }
      if ((bankCode ?? '').isNotEmpty) {
        add(BeneficiaryEvent.getBranchCombo(bankCode));
      } else {
        emit(state.copyWith(isInitialLoading: false));
      }
    } else {
      emit(state.copyWith(isInitialLoading: false));
    }
  }

  FutureOr<void> _onDeleteBeneficiaryToState(
    _DeleteBeneficiary event,
    Emitter<BeneficiaryState> emit,
  ) async {
    if (event.isFromStateList) {
      final updatedList =
          (state.beneficiaryListDto?.data?.beneficiaryList ?? [])
              .where((b) => b.eId != event.beneficiaryId)
              .toList();
      emit(
        state.copyWith(
          isDeleting: false,
          beneficiaryListDto: state.beneficiaryListDto?.copyWith(
            data: state.beneficiaryListDto?.data?.copyWith(
              beneficiaryList: updatedList,
            ),
          ),
          deleteBeneficiaryFailureOrSuccessOption: none(),
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        isDeleting: true,
        deleteBeneficiaryFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _beneficiaryFacade.deleteBeneficiary(
      beneficiaryId: event.beneficiaryId,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isDeleting: false,
          deleteBeneficiaryFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (_) {
        final updatedList =
            (state.beneficiaryListDto?.data?.beneficiaryList ?? [])
                .where((b) => b.eId != event.beneficiaryId)
                .toList();
        emit(
          state.copyWith(
            isDeleting: false,
            beneficiaryListDto: state.beneficiaryListDto?.copyWith(
              data: state.beneficiaryListDto?.data?.copyWith(
                beneficiaryList: updatedList,
              ),
            ),
            deleteBeneficiaryFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
    );
  }

  Map<String, dynamic>? _buildBeneficiaryPayload(BeneficiaryState s) {
    final fields = <String, dynamic>{
      for (final entry in s.dynamicFieldValues.entries)
        camelToSnake(entry.key): entry.value.value.getOrElse(() => ''),
      if (s.isEditing)
        'e_id': s.beneficiaryByIdDto?.data?.beneficiaryById?.eId ?? '',
      'beneficiary_country_code': s.selectedBeneficiaryCountry?.titleCode ?? '',
      'currency_code': s.selectedBeneficiaryCurrency?.trailingCode ?? '',
      'disbursal_mode_code': s.selectedBeneficiaryTransferType?.titleCode ?? '',
      'product_code': s.selectedBeneficiaryBankOrAgent?.titleCode ?? '',
      'purpose_code':
          s.selectedBeneficiaryPurposeOfTransaction?.titleCode ?? '',
      'income_source_code': s.selectedBeneficiarySourceOfFund?.titleCode ?? '',
    };
    return _encodeDynamicFields(fields);
  }

  String camelToSnake(String input) {
    // Some backend field names (e.g. beneficiary first/last name) already
    // arrive with a leading underscore; without stripping it first, the
    // outgoing key becomes `_beneficiary_first_name` instead of
    // `beneficiary_first_name`, which the API rejects as invalid input.
    final withoutLeadingUnderscore = input.replaceFirst(RegExp(r'^_+'), '');
    return withoutLeadingUnderscore.replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => '_${match.group(0)!.toLowerCase()}',
    );
  }

  Map<String, dynamic>? _encodeDynamicFields(Map<String, dynamic>? fields) {
    if (fields == null) return null;

    return fields.map((key, value) {
      final raw = value is BeneficiaryDynamicInput
          ? value.value.getOrElse(() => '')
          : value;

      if (key == 'product_code') {
        return MapEntry(key, int.tryParse(raw.toString()) ?? raw);
      }

      return MapEntry(key, raw);
    });
  }

  EventTransformer<T> _debounce<T>(Duration duration) =>
      (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}
