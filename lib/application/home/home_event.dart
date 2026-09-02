part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize({
    @Default(false) bool isRefresh,
    @Default(false) bool clearAmounts,
  }) = _InitializeEvent;
  const factory HomeEvent.getHomeAdvertisement() = _GetHomeAdvertisementEvent;
  const factory HomeEvent.getHomeUserData() = _GetHomeUserDataEvent;
  const factory HomeEvent.getHomeRecentBeneficiaries({
    @Default(false) bool isRefresh,
  }) = _GetHomeRecentBeneficiariesEvent;
  const factory HomeEvent.getHomeSourceCurrencyList() =
      _GetHomeSourceCurrencyListEvent;
  const factory HomeEvent.getHomeDestinationCurrencyList() =
      _GetHomeDestinationCurrencyListEvent;
  const factory HomeEvent.destinationCountrySelected({
    required CommonSelectableItem selectedCommonDestinationItem,
  }) = _DestinationCountrySelectedEvent;
  const factory HomeEvent.getHomeTransferTypes() = _GetHomeTransferTypesEvent;
  const factory HomeEvent.transferTypeSelected({
    required CommonSelectableItem selectedTransferTypeItem,
  }) = _TransferTypeSelectedEvent;
  const factory HomeEvent.getHomeBankOrAgentList({
    required String destinationCountryCode,
    required String destinationCurrencyCode,
    required String transferTypeCode,
  }) = _GetHomeBankOrAgentListEvent;
  const factory HomeEvent.bankOrAgentSelected({
    required String selectedBankOrAgent,
    required String selectedBankOrAgentCode,
  }) = _BankOrAgentSelectedEvent;
  const factory HomeEvent.getHomePaymentMethod() = _GetHomePaymentMethodEvent;
  const factory HomeEvent.paymentMethodSelected({
    required CommonSelectableItem selectedPaymentMethodItem,
  }) = _PaymentMethodSelectedEvent;
  const factory HomeEvent.sourceAmountChanged({required String sourceAmount}) =
      _SourceAmountChangedEvent;
  const factory HomeEvent.destinationAmountChanged({
    required String destinationAmount,
  }) = _DestinationAmountChangedEvent;
  const factory HomeEvent.getBeneficiaryList() = _GetBeneficiaryListEvent;
  const factory HomeEvent.selectedBeneficiaryIndexChanged({
    required int selectedBeneficiaryIndex,
  }) = _SelectedBeneficiaryIndexChangedEvent;
  const factory HomeEvent.addOrEditBeneficiaryChanged({
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
  }) = _AddOrEditBeneficiaryChangedEvent;
  const factory HomeEvent.deleteBeneficiary(String eId) =
      _DeleteBeneficiaryEvent;
  const factory HomeEvent.currentEmailAddressChanged({
    required String emailAddress,
  }) = _CurrentEmailAddressChanged;
  const factory HomeEvent.updateEmailAddressChanged({
    required String emailAddress,
  }) = _UpdateEmailAddressChanged;
  const factory HomeEvent.requestUpdateEmailAddressPressed() =
      _RequestUpdateEmailAddressPressed;
  const factory HomeEvent.emailOtpChanged({required String emailOtp}) =
      _EmailOtpChanged;
  const factory HomeEvent.continueOtpButtonPressed() =
      _ContinueOtpButtonPressed;
}
