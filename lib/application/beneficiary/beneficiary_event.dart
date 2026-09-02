part of 'beneficiary_bloc.dart';

@freezed
class BeneficiaryEvent with _$BeneficiaryEvent {
  const factory BeneficiaryEvent.getBeneficiaries() = _GetBeneficiaries;
  const factory BeneficiaryEvent.getBeneficiaryById(String? beneficiaryId) =
      _GetBeneficiaryById;
  const factory BeneficiaryEvent.prepareBeneficiaryForEdit({
    required CommonSelectableItem beneficiaryCountry,
    required CommonSelectableItem beneficiaryCurrency,
    required CommonSelectableItem beneficiaryTransferType,
    required CommonSelectableItem beneficiaryBankOrAgent,
    required CommonSelectableItem beneficiaryPurposeOfTransaction,
    required CommonSelectableItem beneficiarySourceOfFund,
  }) = _PrepareBeneficiaryForEdit;
  const factory BeneficiaryEvent.prepareBeneficiaryForAddFromHome({
    required CommonSelectableItem beneficiaryCountry,
    required CommonSelectableItem beneficiaryCurrency,
    required CommonSelectableItem beneficiaryTransferType,
    required CommonSelectableItem beneficiaryBankOrAgent,
  }) = _PrepareBeneficiaryForAddFromHome;
  const factory BeneficiaryEvent.getBeneficiaryCountries() =
      _GetBeneficiaryCountries;
  const factory BeneficiaryEvent.beneficiaryCountrySelected(
    CommonSelectableItem selectedBeneficiaryCountry,
  ) = _BeneficiaryCountrySelected;
  const factory BeneficiaryEvent.getBeneficiaryCurrencies() =
      _GetBeneficiaryCurrencies;
  const factory BeneficiaryEvent.beneficiaryCurrencySelected(
    CommonSelectableItem selectedBeneficiaryCurrency,
  ) = _BeneficiaryCurrencySelected;
  const factory BeneficiaryEvent.getBeneficiaryTransferTypes() =
      _GetBeneficiaryTransferTypes;
  const factory BeneficiaryEvent.beneficiaryTransferTypeSelected(
    CommonSelectableItem selectedBeneficiaryTransferType,
  ) = _BeneficiaryTransferTypeSelected;
  const factory BeneficiaryEvent.getBeneficiaryBanksOrAgents() =
      _GetBeneficiaryBanksOrAgents;
  const factory BeneficiaryEvent.beneficiaryBankOrAgentSelected(
    CommonSelectableItem selectedBeneficiaryBankOrAgent,
  ) = _BeneficiaryBankOrAgentSelected;
  const factory BeneficiaryEvent.getBeneficiaryProductFields() =
      _GetBeneficiaryProductFields;
  const factory BeneficiaryEvent.beneficiaryProductFieldChanged({
    required Beneficiary backendField,
    required String value,
  }) = _BeneficiaryProductFieldChanged;
  const factory BeneficiaryEvent.clearBeneficiaryProductFieldValue({
    required Beneficiary backendField,
  }) = _ClearBeneficiaryProductFieldValue;
  const factory BeneficiaryEvent.getBeneficiaryCombo() = _GetBeneficiaryCombo;
  const factory BeneficiaryEvent.getBankCombo() = _GetBankCombo;
  const factory BeneficiaryEvent.getBranchCombo(
    String? bankCode, {
    @Default('') String? expectedBranchCode,
  }) = _GetBranchCombo;
  const factory BeneficiaryEvent.getBeneficiaryPurposeOfTransactions() =
      _GetBeneficiaryPurposeOfTransactions;
  const factory BeneficiaryEvent.beneficiaryPurposeOfTransactionSelected(
    CommonSelectableItem selectedPurposeOfTransaction,
  ) = _BeneficiaryPurposeOfTransactionSelected;
  const factory BeneficiaryEvent.getBeneficiarySourceOfFunds() =
      _GetBeneficiarySourceOfFunds;
  const factory BeneficiaryEvent.beneficiarySourceOfFundSelected(
    CommonSelectableItem selectedSourceOfFund,
  ) = _BeneficiarySourceOfFundSelected;
  const factory BeneficiaryEvent.saveOrUpdateBeneficiaryPressed() =
      _SaveOrUpdateBeneficiaryPressed;
  const factory BeneficiaryEvent.beneficiaryOtpChanged(String otpStr) =
      _BeneficiaryOtpChanged;
  const factory BeneficiaryEvent.beneficiaryOtpSubmitted() =
      _BeneficiaryOtpSubmitted;
  const factory BeneficiaryEvent.resendBeneficiaryOtp() = _ResendBeneficiaryOtp;
  const factory BeneficiaryEvent.beneficiaryBankComboChanged({
    required String bankCode,
    required String bankName,
  }) = _BeneficiaryBankComboChanged;
  const factory BeneficiaryEvent.beneficiaryBranchComboChanged({
    required String branchCode,
    required String branchName,
  }) = _BeneficiaryBranchComboChanged;
  const factory BeneficiaryEvent.beneficiaryRouteCodeChanged(String routeCode) =
      _BeneficiaryRouteCodeChanged;
  const factory BeneficiaryEvent.beneficiaryRouteCodeSelected(
    String routeCode,
  ) = _BeneficiaryRouteCodeSelected;
  const factory BeneficiaryEvent.loadFormSupportData() = _LoadFormSupportData;
  const factory BeneficiaryEvent.deleteBeneficiary(
    String beneficiaryId, {
    @Default(false) bool isFromStateList,
  }) = _DeleteBeneficiary;
}
