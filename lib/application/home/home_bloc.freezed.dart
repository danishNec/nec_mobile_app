// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitializeEvent value)?  initialize,TResult Function( _GetHomeAdvertisementEvent value)?  getHomeAdvertisement,TResult Function( _GetHomeUserDataEvent value)?  getHomeUserData,TResult Function( _GetHomeRecentBeneficiariesEvent value)?  getHomeRecentBeneficiaries,TResult Function( _GetHomeSourceCurrencyListEvent value)?  getHomeSourceCurrencyList,TResult Function( _GetHomeDestinationCurrencyListEvent value)?  getHomeDestinationCurrencyList,TResult Function( _DestinationCountrySelectedEvent value)?  destinationCountrySelected,TResult Function( _GetHomeTransferTypesEvent value)?  getHomeTransferTypes,TResult Function( _TransferTypeSelectedEvent value)?  transferTypeSelected,TResult Function( _GetHomeBankOrAgentListEvent value)?  getHomeBankOrAgentList,TResult Function( _BankOrAgentSelectedEvent value)?  bankOrAgentSelected,TResult Function( _GetHomePaymentMethodEvent value)?  getHomePaymentMethod,TResult Function( _PaymentMethodSelectedEvent value)?  paymentMethodSelected,TResult Function( _SourceAmountChangedEvent value)?  sourceAmountChanged,TResult Function( _DestinationAmountChangedEvent value)?  destinationAmountChanged,TResult Function( _GetBeneficiaryListEvent value)?  getBeneficiaryList,TResult Function( _SelectedBeneficiaryIndexChangedEvent value)?  selectedBeneficiaryIndexChanged,TResult Function( _AddOrEditBeneficiaryChangedEvent value)?  addOrEditBeneficiaryChanged,TResult Function( _DeleteBeneficiaryEvent value)?  deleteBeneficiary,TResult Function( _CurrentEmailAddressChanged value)?  currentEmailAddressChanged,TResult Function( _UpdateEmailAddressChanged value)?  updateEmailAddressChanged,TResult Function( _RequestUpdateEmailAddressPressed value)?  requestUpdateEmailAddressPressed,TResult Function( _EmailOtpChanged value)?  emailOtpChanged,TResult Function( _ContinueOtpButtonPressed value)?  continueOtpButtonPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _GetHomeAdvertisementEvent() when getHomeAdvertisement != null:
return getHomeAdvertisement(_that);case _GetHomeUserDataEvent() when getHomeUserData != null:
return getHomeUserData(_that);case _GetHomeRecentBeneficiariesEvent() when getHomeRecentBeneficiaries != null:
return getHomeRecentBeneficiaries(_that);case _GetHomeSourceCurrencyListEvent() when getHomeSourceCurrencyList != null:
return getHomeSourceCurrencyList(_that);case _GetHomeDestinationCurrencyListEvent() when getHomeDestinationCurrencyList != null:
return getHomeDestinationCurrencyList(_that);case _DestinationCountrySelectedEvent() when destinationCountrySelected != null:
return destinationCountrySelected(_that);case _GetHomeTransferTypesEvent() when getHomeTransferTypes != null:
return getHomeTransferTypes(_that);case _TransferTypeSelectedEvent() when transferTypeSelected != null:
return transferTypeSelected(_that);case _GetHomeBankOrAgentListEvent() when getHomeBankOrAgentList != null:
return getHomeBankOrAgentList(_that);case _BankOrAgentSelectedEvent() when bankOrAgentSelected != null:
return bankOrAgentSelected(_that);case _GetHomePaymentMethodEvent() when getHomePaymentMethod != null:
return getHomePaymentMethod(_that);case _PaymentMethodSelectedEvent() when paymentMethodSelected != null:
return paymentMethodSelected(_that);case _SourceAmountChangedEvent() when sourceAmountChanged != null:
return sourceAmountChanged(_that);case _DestinationAmountChangedEvent() when destinationAmountChanged != null:
return destinationAmountChanged(_that);case _GetBeneficiaryListEvent() when getBeneficiaryList != null:
return getBeneficiaryList(_that);case _SelectedBeneficiaryIndexChangedEvent() when selectedBeneficiaryIndexChanged != null:
return selectedBeneficiaryIndexChanged(_that);case _AddOrEditBeneficiaryChangedEvent() when addOrEditBeneficiaryChanged != null:
return addOrEditBeneficiaryChanged(_that);case _DeleteBeneficiaryEvent() when deleteBeneficiary != null:
return deleteBeneficiary(_that);case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed(_that);case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitializeEvent value)  initialize,required TResult Function( _GetHomeAdvertisementEvent value)  getHomeAdvertisement,required TResult Function( _GetHomeUserDataEvent value)  getHomeUserData,required TResult Function( _GetHomeRecentBeneficiariesEvent value)  getHomeRecentBeneficiaries,required TResult Function( _GetHomeSourceCurrencyListEvent value)  getHomeSourceCurrencyList,required TResult Function( _GetHomeDestinationCurrencyListEvent value)  getHomeDestinationCurrencyList,required TResult Function( _DestinationCountrySelectedEvent value)  destinationCountrySelected,required TResult Function( _GetHomeTransferTypesEvent value)  getHomeTransferTypes,required TResult Function( _TransferTypeSelectedEvent value)  transferTypeSelected,required TResult Function( _GetHomeBankOrAgentListEvent value)  getHomeBankOrAgentList,required TResult Function( _BankOrAgentSelectedEvent value)  bankOrAgentSelected,required TResult Function( _GetHomePaymentMethodEvent value)  getHomePaymentMethod,required TResult Function( _PaymentMethodSelectedEvent value)  paymentMethodSelected,required TResult Function( _SourceAmountChangedEvent value)  sourceAmountChanged,required TResult Function( _DestinationAmountChangedEvent value)  destinationAmountChanged,required TResult Function( _GetBeneficiaryListEvent value)  getBeneficiaryList,required TResult Function( _SelectedBeneficiaryIndexChangedEvent value)  selectedBeneficiaryIndexChanged,required TResult Function( _AddOrEditBeneficiaryChangedEvent value)  addOrEditBeneficiaryChanged,required TResult Function( _DeleteBeneficiaryEvent value)  deleteBeneficiary,required TResult Function( _CurrentEmailAddressChanged value)  currentEmailAddressChanged,required TResult Function( _UpdateEmailAddressChanged value)  updateEmailAddressChanged,required TResult Function( _RequestUpdateEmailAddressPressed value)  requestUpdateEmailAddressPressed,required TResult Function( _EmailOtpChanged value)  emailOtpChanged,required TResult Function( _ContinueOtpButtonPressed value)  continueOtpButtonPressed,}){
final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that);case _GetHomeAdvertisementEvent():
return getHomeAdvertisement(_that);case _GetHomeUserDataEvent():
return getHomeUserData(_that);case _GetHomeRecentBeneficiariesEvent():
return getHomeRecentBeneficiaries(_that);case _GetHomeSourceCurrencyListEvent():
return getHomeSourceCurrencyList(_that);case _GetHomeDestinationCurrencyListEvent():
return getHomeDestinationCurrencyList(_that);case _DestinationCountrySelectedEvent():
return destinationCountrySelected(_that);case _GetHomeTransferTypesEvent():
return getHomeTransferTypes(_that);case _TransferTypeSelectedEvent():
return transferTypeSelected(_that);case _GetHomeBankOrAgentListEvent():
return getHomeBankOrAgentList(_that);case _BankOrAgentSelectedEvent():
return bankOrAgentSelected(_that);case _GetHomePaymentMethodEvent():
return getHomePaymentMethod(_that);case _PaymentMethodSelectedEvent():
return paymentMethodSelected(_that);case _SourceAmountChangedEvent():
return sourceAmountChanged(_that);case _DestinationAmountChangedEvent():
return destinationAmountChanged(_that);case _GetBeneficiaryListEvent():
return getBeneficiaryList(_that);case _SelectedBeneficiaryIndexChangedEvent():
return selectedBeneficiaryIndexChanged(_that);case _AddOrEditBeneficiaryChangedEvent():
return addOrEditBeneficiaryChanged(_that);case _DeleteBeneficiaryEvent():
return deleteBeneficiary(_that);case _CurrentEmailAddressChanged():
return currentEmailAddressChanged(_that);case _UpdateEmailAddressChanged():
return updateEmailAddressChanged(_that);case _RequestUpdateEmailAddressPressed():
return requestUpdateEmailAddressPressed(_that);case _EmailOtpChanged():
return emailOtpChanged(_that);case _ContinueOtpButtonPressed():
return continueOtpButtonPressed(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitializeEvent value)?  initialize,TResult? Function( _GetHomeAdvertisementEvent value)?  getHomeAdvertisement,TResult? Function( _GetHomeUserDataEvent value)?  getHomeUserData,TResult? Function( _GetHomeRecentBeneficiariesEvent value)?  getHomeRecentBeneficiaries,TResult? Function( _GetHomeSourceCurrencyListEvent value)?  getHomeSourceCurrencyList,TResult? Function( _GetHomeDestinationCurrencyListEvent value)?  getHomeDestinationCurrencyList,TResult? Function( _DestinationCountrySelectedEvent value)?  destinationCountrySelected,TResult? Function( _GetHomeTransferTypesEvent value)?  getHomeTransferTypes,TResult? Function( _TransferTypeSelectedEvent value)?  transferTypeSelected,TResult? Function( _GetHomeBankOrAgentListEvent value)?  getHomeBankOrAgentList,TResult? Function( _BankOrAgentSelectedEvent value)?  bankOrAgentSelected,TResult? Function( _GetHomePaymentMethodEvent value)?  getHomePaymentMethod,TResult? Function( _PaymentMethodSelectedEvent value)?  paymentMethodSelected,TResult? Function( _SourceAmountChangedEvent value)?  sourceAmountChanged,TResult? Function( _DestinationAmountChangedEvent value)?  destinationAmountChanged,TResult? Function( _GetBeneficiaryListEvent value)?  getBeneficiaryList,TResult? Function( _SelectedBeneficiaryIndexChangedEvent value)?  selectedBeneficiaryIndexChanged,TResult? Function( _AddOrEditBeneficiaryChangedEvent value)?  addOrEditBeneficiaryChanged,TResult? Function( _DeleteBeneficiaryEvent value)?  deleteBeneficiary,TResult? Function( _CurrentEmailAddressChanged value)?  currentEmailAddressChanged,TResult? Function( _UpdateEmailAddressChanged value)?  updateEmailAddressChanged,TResult? Function( _RequestUpdateEmailAddressPressed value)?  requestUpdateEmailAddressPressed,TResult? Function( _EmailOtpChanged value)?  emailOtpChanged,TResult? Function( _ContinueOtpButtonPressed value)?  continueOtpButtonPressed,}){
final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that);case _GetHomeAdvertisementEvent() when getHomeAdvertisement != null:
return getHomeAdvertisement(_that);case _GetHomeUserDataEvent() when getHomeUserData != null:
return getHomeUserData(_that);case _GetHomeRecentBeneficiariesEvent() when getHomeRecentBeneficiaries != null:
return getHomeRecentBeneficiaries(_that);case _GetHomeSourceCurrencyListEvent() when getHomeSourceCurrencyList != null:
return getHomeSourceCurrencyList(_that);case _GetHomeDestinationCurrencyListEvent() when getHomeDestinationCurrencyList != null:
return getHomeDestinationCurrencyList(_that);case _DestinationCountrySelectedEvent() when destinationCountrySelected != null:
return destinationCountrySelected(_that);case _GetHomeTransferTypesEvent() when getHomeTransferTypes != null:
return getHomeTransferTypes(_that);case _TransferTypeSelectedEvent() when transferTypeSelected != null:
return transferTypeSelected(_that);case _GetHomeBankOrAgentListEvent() when getHomeBankOrAgentList != null:
return getHomeBankOrAgentList(_that);case _BankOrAgentSelectedEvent() when bankOrAgentSelected != null:
return bankOrAgentSelected(_that);case _GetHomePaymentMethodEvent() when getHomePaymentMethod != null:
return getHomePaymentMethod(_that);case _PaymentMethodSelectedEvent() when paymentMethodSelected != null:
return paymentMethodSelected(_that);case _SourceAmountChangedEvent() when sourceAmountChanged != null:
return sourceAmountChanged(_that);case _DestinationAmountChangedEvent() when destinationAmountChanged != null:
return destinationAmountChanged(_that);case _GetBeneficiaryListEvent() when getBeneficiaryList != null:
return getBeneficiaryList(_that);case _SelectedBeneficiaryIndexChangedEvent() when selectedBeneficiaryIndexChanged != null:
return selectedBeneficiaryIndexChanged(_that);case _AddOrEditBeneficiaryChangedEvent() when addOrEditBeneficiaryChanged != null:
return addOrEditBeneficiaryChanged(_that);case _DeleteBeneficiaryEvent() when deleteBeneficiary != null:
return deleteBeneficiary(_that);case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed(_that);case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isRefresh,  bool clearAmounts)?  initialize,TResult Function()?  getHomeAdvertisement,TResult Function()?  getHomeUserData,TResult Function( bool isRefresh)?  getHomeRecentBeneficiaries,TResult Function()?  getHomeSourceCurrencyList,TResult Function()?  getHomeDestinationCurrencyList,TResult Function( CommonSelectableItem selectedCommonDestinationItem)?  destinationCountrySelected,TResult Function()?  getHomeTransferTypes,TResult Function( CommonSelectableItem selectedTransferTypeItem)?  transferTypeSelected,TResult Function( String destinationCountryCode,  String destinationCurrencyCode,  String transferTypeCode)?  getHomeBankOrAgentList,TResult Function( String selectedBankOrAgent,  String selectedBankOrAgentCode)?  bankOrAgentSelected,TResult Function()?  getHomePaymentMethod,TResult Function( CommonSelectableItem selectedPaymentMethodItem)?  paymentMethodSelected,TResult Function( String sourceAmount)?  sourceAmountChanged,TResult Function( String destinationAmount)?  destinationAmountChanged,TResult Function()?  getBeneficiaryList,TResult Function( int selectedBeneficiaryIndex)?  selectedBeneficiaryIndexChanged,TResult Function( String? eId,  String? beneficiaryFirstName,  String? beneficiaryLastName,  String? beneficiaryCountryCode,  String? beneficiaryBankName,  String? disbursalMode,  String? currencyCode,  String? purposeName,  String? incomeSourceName,  String? purposeOfTransaction,  String? sourceOfFund)?  addOrEditBeneficiaryChanged,TResult Function( String eId)?  deleteBeneficiary,TResult Function( String emailAddress)?  currentEmailAddressChanged,TResult Function( String emailAddress)?  updateEmailAddressChanged,TResult Function()?  requestUpdateEmailAddressPressed,TResult Function( String emailOtp)?  emailOtpChanged,TResult Function()?  continueOtpButtonPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.isRefresh,_that.clearAmounts);case _GetHomeAdvertisementEvent() when getHomeAdvertisement != null:
return getHomeAdvertisement();case _GetHomeUserDataEvent() when getHomeUserData != null:
return getHomeUserData();case _GetHomeRecentBeneficiariesEvent() when getHomeRecentBeneficiaries != null:
return getHomeRecentBeneficiaries(_that.isRefresh);case _GetHomeSourceCurrencyListEvent() when getHomeSourceCurrencyList != null:
return getHomeSourceCurrencyList();case _GetHomeDestinationCurrencyListEvent() when getHomeDestinationCurrencyList != null:
return getHomeDestinationCurrencyList();case _DestinationCountrySelectedEvent() when destinationCountrySelected != null:
return destinationCountrySelected(_that.selectedCommonDestinationItem);case _GetHomeTransferTypesEvent() when getHomeTransferTypes != null:
return getHomeTransferTypes();case _TransferTypeSelectedEvent() when transferTypeSelected != null:
return transferTypeSelected(_that.selectedTransferTypeItem);case _GetHomeBankOrAgentListEvent() when getHomeBankOrAgentList != null:
return getHomeBankOrAgentList(_that.destinationCountryCode,_that.destinationCurrencyCode,_that.transferTypeCode);case _BankOrAgentSelectedEvent() when bankOrAgentSelected != null:
return bankOrAgentSelected(_that.selectedBankOrAgent,_that.selectedBankOrAgentCode);case _GetHomePaymentMethodEvent() when getHomePaymentMethod != null:
return getHomePaymentMethod();case _PaymentMethodSelectedEvent() when paymentMethodSelected != null:
return paymentMethodSelected(_that.selectedPaymentMethodItem);case _SourceAmountChangedEvent() when sourceAmountChanged != null:
return sourceAmountChanged(_that.sourceAmount);case _DestinationAmountChangedEvent() when destinationAmountChanged != null:
return destinationAmountChanged(_that.destinationAmount);case _GetBeneficiaryListEvent() when getBeneficiaryList != null:
return getBeneficiaryList();case _SelectedBeneficiaryIndexChangedEvent() when selectedBeneficiaryIndexChanged != null:
return selectedBeneficiaryIndexChanged(_that.selectedBeneficiaryIndex);case _AddOrEditBeneficiaryChangedEvent() when addOrEditBeneficiaryChanged != null:
return addOrEditBeneficiaryChanged(_that.eId,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryCountryCode,_that.beneficiaryBankName,_that.disbursalMode,_that.currencyCode,_that.purposeName,_that.incomeSourceName,_that.purposeOfTransaction,_that.sourceOfFund);case _DeleteBeneficiaryEvent() when deleteBeneficiary != null:
return deleteBeneficiary(_that.eId);case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that.emailAddress);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that.emailAddress);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed();case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that.emailOtp);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isRefresh,  bool clearAmounts)  initialize,required TResult Function()  getHomeAdvertisement,required TResult Function()  getHomeUserData,required TResult Function( bool isRefresh)  getHomeRecentBeneficiaries,required TResult Function()  getHomeSourceCurrencyList,required TResult Function()  getHomeDestinationCurrencyList,required TResult Function( CommonSelectableItem selectedCommonDestinationItem)  destinationCountrySelected,required TResult Function()  getHomeTransferTypes,required TResult Function( CommonSelectableItem selectedTransferTypeItem)  transferTypeSelected,required TResult Function( String destinationCountryCode,  String destinationCurrencyCode,  String transferTypeCode)  getHomeBankOrAgentList,required TResult Function( String selectedBankOrAgent,  String selectedBankOrAgentCode)  bankOrAgentSelected,required TResult Function()  getHomePaymentMethod,required TResult Function( CommonSelectableItem selectedPaymentMethodItem)  paymentMethodSelected,required TResult Function( String sourceAmount)  sourceAmountChanged,required TResult Function( String destinationAmount)  destinationAmountChanged,required TResult Function()  getBeneficiaryList,required TResult Function( int selectedBeneficiaryIndex)  selectedBeneficiaryIndexChanged,required TResult Function( String? eId,  String? beneficiaryFirstName,  String? beneficiaryLastName,  String? beneficiaryCountryCode,  String? beneficiaryBankName,  String? disbursalMode,  String? currencyCode,  String? purposeName,  String? incomeSourceName,  String? purposeOfTransaction,  String? sourceOfFund)  addOrEditBeneficiaryChanged,required TResult Function( String eId)  deleteBeneficiary,required TResult Function( String emailAddress)  currentEmailAddressChanged,required TResult Function( String emailAddress)  updateEmailAddressChanged,required TResult Function()  requestUpdateEmailAddressPressed,required TResult Function( String emailOtp)  emailOtpChanged,required TResult Function()  continueOtpButtonPressed,}) {final _that = this;
switch (_that) {
case _InitializeEvent():
return initialize(_that.isRefresh,_that.clearAmounts);case _GetHomeAdvertisementEvent():
return getHomeAdvertisement();case _GetHomeUserDataEvent():
return getHomeUserData();case _GetHomeRecentBeneficiariesEvent():
return getHomeRecentBeneficiaries(_that.isRefresh);case _GetHomeSourceCurrencyListEvent():
return getHomeSourceCurrencyList();case _GetHomeDestinationCurrencyListEvent():
return getHomeDestinationCurrencyList();case _DestinationCountrySelectedEvent():
return destinationCountrySelected(_that.selectedCommonDestinationItem);case _GetHomeTransferTypesEvent():
return getHomeTransferTypes();case _TransferTypeSelectedEvent():
return transferTypeSelected(_that.selectedTransferTypeItem);case _GetHomeBankOrAgentListEvent():
return getHomeBankOrAgentList(_that.destinationCountryCode,_that.destinationCurrencyCode,_that.transferTypeCode);case _BankOrAgentSelectedEvent():
return bankOrAgentSelected(_that.selectedBankOrAgent,_that.selectedBankOrAgentCode);case _GetHomePaymentMethodEvent():
return getHomePaymentMethod();case _PaymentMethodSelectedEvent():
return paymentMethodSelected(_that.selectedPaymentMethodItem);case _SourceAmountChangedEvent():
return sourceAmountChanged(_that.sourceAmount);case _DestinationAmountChangedEvent():
return destinationAmountChanged(_that.destinationAmount);case _GetBeneficiaryListEvent():
return getBeneficiaryList();case _SelectedBeneficiaryIndexChangedEvent():
return selectedBeneficiaryIndexChanged(_that.selectedBeneficiaryIndex);case _AddOrEditBeneficiaryChangedEvent():
return addOrEditBeneficiaryChanged(_that.eId,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryCountryCode,_that.beneficiaryBankName,_that.disbursalMode,_that.currencyCode,_that.purposeName,_that.incomeSourceName,_that.purposeOfTransaction,_that.sourceOfFund);case _DeleteBeneficiaryEvent():
return deleteBeneficiary(_that.eId);case _CurrentEmailAddressChanged():
return currentEmailAddressChanged(_that.emailAddress);case _UpdateEmailAddressChanged():
return updateEmailAddressChanged(_that.emailAddress);case _RequestUpdateEmailAddressPressed():
return requestUpdateEmailAddressPressed();case _EmailOtpChanged():
return emailOtpChanged(_that.emailOtp);case _ContinueOtpButtonPressed():
return continueOtpButtonPressed();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isRefresh,  bool clearAmounts)?  initialize,TResult? Function()?  getHomeAdvertisement,TResult? Function()?  getHomeUserData,TResult? Function( bool isRefresh)?  getHomeRecentBeneficiaries,TResult? Function()?  getHomeSourceCurrencyList,TResult? Function()?  getHomeDestinationCurrencyList,TResult? Function( CommonSelectableItem selectedCommonDestinationItem)?  destinationCountrySelected,TResult? Function()?  getHomeTransferTypes,TResult? Function( CommonSelectableItem selectedTransferTypeItem)?  transferTypeSelected,TResult? Function( String destinationCountryCode,  String destinationCurrencyCode,  String transferTypeCode)?  getHomeBankOrAgentList,TResult? Function( String selectedBankOrAgent,  String selectedBankOrAgentCode)?  bankOrAgentSelected,TResult? Function()?  getHomePaymentMethod,TResult? Function( CommonSelectableItem selectedPaymentMethodItem)?  paymentMethodSelected,TResult? Function( String sourceAmount)?  sourceAmountChanged,TResult? Function( String destinationAmount)?  destinationAmountChanged,TResult? Function()?  getBeneficiaryList,TResult? Function( int selectedBeneficiaryIndex)?  selectedBeneficiaryIndexChanged,TResult? Function( String? eId,  String? beneficiaryFirstName,  String? beneficiaryLastName,  String? beneficiaryCountryCode,  String? beneficiaryBankName,  String? disbursalMode,  String? currencyCode,  String? purposeName,  String? incomeSourceName,  String? purposeOfTransaction,  String? sourceOfFund)?  addOrEditBeneficiaryChanged,TResult? Function( String eId)?  deleteBeneficiary,TResult? Function( String emailAddress)?  currentEmailAddressChanged,TResult? Function( String emailAddress)?  updateEmailAddressChanged,TResult? Function()?  requestUpdateEmailAddressPressed,TResult? Function( String emailOtp)?  emailOtpChanged,TResult? Function()?  continueOtpButtonPressed,}) {final _that = this;
switch (_that) {
case _InitializeEvent() when initialize != null:
return initialize(_that.isRefresh,_that.clearAmounts);case _GetHomeAdvertisementEvent() when getHomeAdvertisement != null:
return getHomeAdvertisement();case _GetHomeUserDataEvent() when getHomeUserData != null:
return getHomeUserData();case _GetHomeRecentBeneficiariesEvent() when getHomeRecentBeneficiaries != null:
return getHomeRecentBeneficiaries(_that.isRefresh);case _GetHomeSourceCurrencyListEvent() when getHomeSourceCurrencyList != null:
return getHomeSourceCurrencyList();case _GetHomeDestinationCurrencyListEvent() when getHomeDestinationCurrencyList != null:
return getHomeDestinationCurrencyList();case _DestinationCountrySelectedEvent() when destinationCountrySelected != null:
return destinationCountrySelected(_that.selectedCommonDestinationItem);case _GetHomeTransferTypesEvent() when getHomeTransferTypes != null:
return getHomeTransferTypes();case _TransferTypeSelectedEvent() when transferTypeSelected != null:
return transferTypeSelected(_that.selectedTransferTypeItem);case _GetHomeBankOrAgentListEvent() when getHomeBankOrAgentList != null:
return getHomeBankOrAgentList(_that.destinationCountryCode,_that.destinationCurrencyCode,_that.transferTypeCode);case _BankOrAgentSelectedEvent() when bankOrAgentSelected != null:
return bankOrAgentSelected(_that.selectedBankOrAgent,_that.selectedBankOrAgentCode);case _GetHomePaymentMethodEvent() when getHomePaymentMethod != null:
return getHomePaymentMethod();case _PaymentMethodSelectedEvent() when paymentMethodSelected != null:
return paymentMethodSelected(_that.selectedPaymentMethodItem);case _SourceAmountChangedEvent() when sourceAmountChanged != null:
return sourceAmountChanged(_that.sourceAmount);case _DestinationAmountChangedEvent() when destinationAmountChanged != null:
return destinationAmountChanged(_that.destinationAmount);case _GetBeneficiaryListEvent() when getBeneficiaryList != null:
return getBeneficiaryList();case _SelectedBeneficiaryIndexChangedEvent() when selectedBeneficiaryIndexChanged != null:
return selectedBeneficiaryIndexChanged(_that.selectedBeneficiaryIndex);case _AddOrEditBeneficiaryChangedEvent() when addOrEditBeneficiaryChanged != null:
return addOrEditBeneficiaryChanged(_that.eId,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryCountryCode,_that.beneficiaryBankName,_that.disbursalMode,_that.currencyCode,_that.purposeName,_that.incomeSourceName,_that.purposeOfTransaction,_that.sourceOfFund);case _DeleteBeneficiaryEvent() when deleteBeneficiary != null:
return deleteBeneficiary(_that.eId);case _CurrentEmailAddressChanged() when currentEmailAddressChanged != null:
return currentEmailAddressChanged(_that.emailAddress);case _UpdateEmailAddressChanged() when updateEmailAddressChanged != null:
return updateEmailAddressChanged(_that.emailAddress);case _RequestUpdateEmailAddressPressed() when requestUpdateEmailAddressPressed != null:
return requestUpdateEmailAddressPressed();case _EmailOtpChanged() when emailOtpChanged != null:
return emailOtpChanged(_that.emailOtp);case _ContinueOtpButtonPressed() when continueOtpButtonPressed != null:
return continueOtpButtonPressed();case _:
  return null;

}
}

}

/// @nodoc


class _InitializeEvent implements HomeEvent {
  const _InitializeEvent({this.isRefresh = false, this.clearAmounts = false});
  

@JsonKey() final  bool isRefresh;
@JsonKey() final  bool clearAmounts;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitializeEventCopyWith<_InitializeEvent> get copyWith => __$InitializeEventCopyWithImpl<_InitializeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitializeEvent&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh)&&(identical(other.clearAmounts, clearAmounts) || other.clearAmounts == clearAmounts));
}


@override
int get hashCode => Object.hash(runtimeType,isRefresh,clearAmounts);

@override
String toString() {
  return 'HomeEvent.initialize(isRefresh: $isRefresh, clearAmounts: $clearAmounts)';
}


}

/// @nodoc
abstract mixin class _$InitializeEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$InitializeEventCopyWith(_InitializeEvent value, $Res Function(_InitializeEvent) _then) = __$InitializeEventCopyWithImpl;
@useResult
$Res call({
 bool isRefresh, bool clearAmounts
});




}
/// @nodoc
class __$InitializeEventCopyWithImpl<$Res>
    implements _$InitializeEventCopyWith<$Res> {
  __$InitializeEventCopyWithImpl(this._self, this._then);

  final _InitializeEvent _self;
  final $Res Function(_InitializeEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRefresh = null,Object? clearAmounts = null,}) {
  return _then(_InitializeEvent(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,clearAmounts: null == clearAmounts ? _self.clearAmounts : clearAmounts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _GetHomeAdvertisementEvent implements HomeEvent {
  const _GetHomeAdvertisementEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeAdvertisementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomeAdvertisement()';
}


}




/// @nodoc


class _GetHomeUserDataEvent implements HomeEvent {
  const _GetHomeUserDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeUserDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomeUserData()';
}


}




/// @nodoc


class _GetHomeRecentBeneficiariesEvent implements HomeEvent {
  const _GetHomeRecentBeneficiariesEvent({this.isRefresh = false});
  

@JsonKey() final  bool isRefresh;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHomeRecentBeneficiariesEventCopyWith<_GetHomeRecentBeneficiariesEvent> get copyWith => __$GetHomeRecentBeneficiariesEventCopyWithImpl<_GetHomeRecentBeneficiariesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeRecentBeneficiariesEvent&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,isRefresh);

@override
String toString() {
  return 'HomeEvent.getHomeRecentBeneficiaries(isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class _$GetHomeRecentBeneficiariesEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$GetHomeRecentBeneficiariesEventCopyWith(_GetHomeRecentBeneficiariesEvent value, $Res Function(_GetHomeRecentBeneficiariesEvent) _then) = __$GetHomeRecentBeneficiariesEventCopyWithImpl;
@useResult
$Res call({
 bool isRefresh
});




}
/// @nodoc
class __$GetHomeRecentBeneficiariesEventCopyWithImpl<$Res>
    implements _$GetHomeRecentBeneficiariesEventCopyWith<$Res> {
  __$GetHomeRecentBeneficiariesEventCopyWithImpl(this._self, this._then);

  final _GetHomeRecentBeneficiariesEvent _self;
  final $Res Function(_GetHomeRecentBeneficiariesEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRefresh = null,}) {
  return _then(_GetHomeRecentBeneficiariesEvent(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _GetHomeSourceCurrencyListEvent implements HomeEvent {
  const _GetHomeSourceCurrencyListEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeSourceCurrencyListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomeSourceCurrencyList()';
}


}




/// @nodoc


class _GetHomeDestinationCurrencyListEvent implements HomeEvent {
  const _GetHomeDestinationCurrencyListEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeDestinationCurrencyListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomeDestinationCurrencyList()';
}


}




/// @nodoc


class _DestinationCountrySelectedEvent implements HomeEvent {
  const _DestinationCountrySelectedEvent({required this.selectedCommonDestinationItem});
  

 final  CommonSelectableItem selectedCommonDestinationItem;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationCountrySelectedEventCopyWith<_DestinationCountrySelectedEvent> get copyWith => __$DestinationCountrySelectedEventCopyWithImpl<_DestinationCountrySelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DestinationCountrySelectedEvent&&(identical(other.selectedCommonDestinationItem, selectedCommonDestinationItem) || other.selectedCommonDestinationItem == selectedCommonDestinationItem));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCommonDestinationItem);

@override
String toString() {
  return 'HomeEvent.destinationCountrySelected(selectedCommonDestinationItem: $selectedCommonDestinationItem)';
}


}

/// @nodoc
abstract mixin class _$DestinationCountrySelectedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$DestinationCountrySelectedEventCopyWith(_DestinationCountrySelectedEvent value, $Res Function(_DestinationCountrySelectedEvent) _then) = __$DestinationCountrySelectedEventCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedCommonDestinationItem
});


$CommonSelectableItemCopyWith<$Res> get selectedCommonDestinationItem;

}
/// @nodoc
class __$DestinationCountrySelectedEventCopyWithImpl<$Res>
    implements _$DestinationCountrySelectedEventCopyWith<$Res> {
  __$DestinationCountrySelectedEventCopyWithImpl(this._self, this._then);

  final _DestinationCountrySelectedEvent _self;
  final $Res Function(_DestinationCountrySelectedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedCommonDestinationItem = null,}) {
  return _then(_DestinationCountrySelectedEvent(
selectedCommonDestinationItem: null == selectedCommonDestinationItem ? _self.selectedCommonDestinationItem : selectedCommonDestinationItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedCommonDestinationItem {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedCommonDestinationItem, (value) {
    return _then(_self.copyWith(selectedCommonDestinationItem: value));
  });
}
}

/// @nodoc


class _GetHomeTransferTypesEvent implements HomeEvent {
  const _GetHomeTransferTypesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeTransferTypesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomeTransferTypes()';
}


}




/// @nodoc


class _TransferTypeSelectedEvent implements HomeEvent {
  const _TransferTypeSelectedEvent({required this.selectedTransferTypeItem});
  

 final  CommonSelectableItem selectedTransferTypeItem;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferTypeSelectedEventCopyWith<_TransferTypeSelectedEvent> get copyWith => __$TransferTypeSelectedEventCopyWithImpl<_TransferTypeSelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransferTypeSelectedEvent&&(identical(other.selectedTransferTypeItem, selectedTransferTypeItem) || other.selectedTransferTypeItem == selectedTransferTypeItem));
}


@override
int get hashCode => Object.hash(runtimeType,selectedTransferTypeItem);

@override
String toString() {
  return 'HomeEvent.transferTypeSelected(selectedTransferTypeItem: $selectedTransferTypeItem)';
}


}

/// @nodoc
abstract mixin class _$TransferTypeSelectedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$TransferTypeSelectedEventCopyWith(_TransferTypeSelectedEvent value, $Res Function(_TransferTypeSelectedEvent) _then) = __$TransferTypeSelectedEventCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedTransferTypeItem
});


$CommonSelectableItemCopyWith<$Res> get selectedTransferTypeItem;

}
/// @nodoc
class __$TransferTypeSelectedEventCopyWithImpl<$Res>
    implements _$TransferTypeSelectedEventCopyWith<$Res> {
  __$TransferTypeSelectedEventCopyWithImpl(this._self, this._then);

  final _TransferTypeSelectedEvent _self;
  final $Res Function(_TransferTypeSelectedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedTransferTypeItem = null,}) {
  return _then(_TransferTypeSelectedEvent(
selectedTransferTypeItem: null == selectedTransferTypeItem ? _self.selectedTransferTypeItem : selectedTransferTypeItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedTransferTypeItem {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedTransferTypeItem, (value) {
    return _then(_self.copyWith(selectedTransferTypeItem: value));
  });
}
}

/// @nodoc


class _GetHomeBankOrAgentListEvent implements HomeEvent {
  const _GetHomeBankOrAgentListEvent({required this.destinationCountryCode, required this.destinationCurrencyCode, required this.transferTypeCode});
  

 final  String destinationCountryCode;
 final  String destinationCurrencyCode;
 final  String transferTypeCode;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHomeBankOrAgentListEventCopyWith<_GetHomeBankOrAgentListEvent> get copyWith => __$GetHomeBankOrAgentListEventCopyWithImpl<_GetHomeBankOrAgentListEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeBankOrAgentListEvent&&(identical(other.destinationCountryCode, destinationCountryCode) || other.destinationCountryCode == destinationCountryCode)&&(identical(other.destinationCurrencyCode, destinationCurrencyCode) || other.destinationCurrencyCode == destinationCurrencyCode)&&(identical(other.transferTypeCode, transferTypeCode) || other.transferTypeCode == transferTypeCode));
}


@override
int get hashCode => Object.hash(runtimeType,destinationCountryCode,destinationCurrencyCode,transferTypeCode);

@override
String toString() {
  return 'HomeEvent.getHomeBankOrAgentList(destinationCountryCode: $destinationCountryCode, destinationCurrencyCode: $destinationCurrencyCode, transferTypeCode: $transferTypeCode)';
}


}

/// @nodoc
abstract mixin class _$GetHomeBankOrAgentListEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$GetHomeBankOrAgentListEventCopyWith(_GetHomeBankOrAgentListEvent value, $Res Function(_GetHomeBankOrAgentListEvent) _then) = __$GetHomeBankOrAgentListEventCopyWithImpl;
@useResult
$Res call({
 String destinationCountryCode, String destinationCurrencyCode, String transferTypeCode
});




}
/// @nodoc
class __$GetHomeBankOrAgentListEventCopyWithImpl<$Res>
    implements _$GetHomeBankOrAgentListEventCopyWith<$Res> {
  __$GetHomeBankOrAgentListEventCopyWithImpl(this._self, this._then);

  final _GetHomeBankOrAgentListEvent _self;
  final $Res Function(_GetHomeBankOrAgentListEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? destinationCountryCode = null,Object? destinationCurrencyCode = null,Object? transferTypeCode = null,}) {
  return _then(_GetHomeBankOrAgentListEvent(
destinationCountryCode: null == destinationCountryCode ? _self.destinationCountryCode : destinationCountryCode // ignore: cast_nullable_to_non_nullable
as String,destinationCurrencyCode: null == destinationCurrencyCode ? _self.destinationCurrencyCode : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
as String,transferTypeCode: null == transferTypeCode ? _self.transferTypeCode : transferTypeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BankOrAgentSelectedEvent implements HomeEvent {
  const _BankOrAgentSelectedEvent({required this.selectedBankOrAgent, required this.selectedBankOrAgentCode});
  

 final  String selectedBankOrAgent;
 final  String selectedBankOrAgentCode;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankOrAgentSelectedEventCopyWith<_BankOrAgentSelectedEvent> get copyWith => __$BankOrAgentSelectedEventCopyWithImpl<_BankOrAgentSelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankOrAgentSelectedEvent&&(identical(other.selectedBankOrAgent, selectedBankOrAgent) || other.selectedBankOrAgent == selectedBankOrAgent)&&(identical(other.selectedBankOrAgentCode, selectedBankOrAgentCode) || other.selectedBankOrAgentCode == selectedBankOrAgentCode));
}


@override
int get hashCode => Object.hash(runtimeType,selectedBankOrAgent,selectedBankOrAgentCode);

@override
String toString() {
  return 'HomeEvent.bankOrAgentSelected(selectedBankOrAgent: $selectedBankOrAgent, selectedBankOrAgentCode: $selectedBankOrAgentCode)';
}


}

/// @nodoc
abstract mixin class _$BankOrAgentSelectedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$BankOrAgentSelectedEventCopyWith(_BankOrAgentSelectedEvent value, $Res Function(_BankOrAgentSelectedEvent) _then) = __$BankOrAgentSelectedEventCopyWithImpl;
@useResult
$Res call({
 String selectedBankOrAgent, String selectedBankOrAgentCode
});




}
/// @nodoc
class __$BankOrAgentSelectedEventCopyWithImpl<$Res>
    implements _$BankOrAgentSelectedEventCopyWith<$Res> {
  __$BankOrAgentSelectedEventCopyWithImpl(this._self, this._then);

  final _BankOrAgentSelectedEvent _self;
  final $Res Function(_BankOrAgentSelectedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedBankOrAgent = null,Object? selectedBankOrAgentCode = null,}) {
  return _then(_BankOrAgentSelectedEvent(
selectedBankOrAgent: null == selectedBankOrAgent ? _self.selectedBankOrAgent : selectedBankOrAgent // ignore: cast_nullable_to_non_nullable
as String,selectedBankOrAgentCode: null == selectedBankOrAgentCode ? _self.selectedBankOrAgentCode : selectedBankOrAgentCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetHomePaymentMethodEvent implements HomeEvent {
  const _GetHomePaymentMethodEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomePaymentMethodEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomePaymentMethod()';
}


}




/// @nodoc


class _PaymentMethodSelectedEvent implements HomeEvent {
  const _PaymentMethodSelectedEvent({required this.selectedPaymentMethodItem});
  

 final  CommonSelectableItem selectedPaymentMethodItem;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodSelectedEventCopyWith<_PaymentMethodSelectedEvent> get copyWith => __$PaymentMethodSelectedEventCopyWithImpl<_PaymentMethodSelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodSelectedEvent&&(identical(other.selectedPaymentMethodItem, selectedPaymentMethodItem) || other.selectedPaymentMethodItem == selectedPaymentMethodItem));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPaymentMethodItem);

@override
String toString() {
  return 'HomeEvent.paymentMethodSelected(selectedPaymentMethodItem: $selectedPaymentMethodItem)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodSelectedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$PaymentMethodSelectedEventCopyWith(_PaymentMethodSelectedEvent value, $Res Function(_PaymentMethodSelectedEvent) _then) = __$PaymentMethodSelectedEventCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedPaymentMethodItem
});


$CommonSelectableItemCopyWith<$Res> get selectedPaymentMethodItem;

}
/// @nodoc
class __$PaymentMethodSelectedEventCopyWithImpl<$Res>
    implements _$PaymentMethodSelectedEventCopyWith<$Res> {
  __$PaymentMethodSelectedEventCopyWithImpl(this._self, this._then);

  final _PaymentMethodSelectedEvent _self;
  final $Res Function(_PaymentMethodSelectedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedPaymentMethodItem = null,}) {
  return _then(_PaymentMethodSelectedEvent(
selectedPaymentMethodItem: null == selectedPaymentMethodItem ? _self.selectedPaymentMethodItem : selectedPaymentMethodItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedPaymentMethodItem {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedPaymentMethodItem, (value) {
    return _then(_self.copyWith(selectedPaymentMethodItem: value));
  });
}
}

/// @nodoc


class _SourceAmountChangedEvent implements HomeEvent {
  const _SourceAmountChangedEvent({required this.sourceAmount});
  

 final  String sourceAmount;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceAmountChangedEventCopyWith<_SourceAmountChangedEvent> get copyWith => __$SourceAmountChangedEventCopyWithImpl<_SourceAmountChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceAmountChangedEvent&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount));
}


@override
int get hashCode => Object.hash(runtimeType,sourceAmount);

@override
String toString() {
  return 'HomeEvent.sourceAmountChanged(sourceAmount: $sourceAmount)';
}


}

/// @nodoc
abstract mixin class _$SourceAmountChangedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$SourceAmountChangedEventCopyWith(_SourceAmountChangedEvent value, $Res Function(_SourceAmountChangedEvent) _then) = __$SourceAmountChangedEventCopyWithImpl;
@useResult
$Res call({
 String sourceAmount
});




}
/// @nodoc
class __$SourceAmountChangedEventCopyWithImpl<$Res>
    implements _$SourceAmountChangedEventCopyWith<$Res> {
  __$SourceAmountChangedEventCopyWithImpl(this._self, this._then);

  final _SourceAmountChangedEvent _self;
  final $Res Function(_SourceAmountChangedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sourceAmount = null,}) {
  return _then(_SourceAmountChangedEvent(
sourceAmount: null == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DestinationAmountChangedEvent implements HomeEvent {
  const _DestinationAmountChangedEvent({required this.destinationAmount});
  

 final  String destinationAmount;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationAmountChangedEventCopyWith<_DestinationAmountChangedEvent> get copyWith => __$DestinationAmountChangedEventCopyWithImpl<_DestinationAmountChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DestinationAmountChangedEvent&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount));
}


@override
int get hashCode => Object.hash(runtimeType,destinationAmount);

@override
String toString() {
  return 'HomeEvent.destinationAmountChanged(destinationAmount: $destinationAmount)';
}


}

/// @nodoc
abstract mixin class _$DestinationAmountChangedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$DestinationAmountChangedEventCopyWith(_DestinationAmountChangedEvent value, $Res Function(_DestinationAmountChangedEvent) _then) = __$DestinationAmountChangedEventCopyWithImpl;
@useResult
$Res call({
 String destinationAmount
});




}
/// @nodoc
class __$DestinationAmountChangedEventCopyWithImpl<$Res>
    implements _$DestinationAmountChangedEventCopyWith<$Res> {
  __$DestinationAmountChangedEventCopyWithImpl(this._self, this._then);

  final _DestinationAmountChangedEvent _self;
  final $Res Function(_DestinationAmountChangedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? destinationAmount = null,}) {
  return _then(_DestinationAmountChangedEvent(
destinationAmount: null == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetBeneficiaryListEvent implements HomeEvent {
  const _GetBeneficiaryListEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getBeneficiaryList()';
}


}




/// @nodoc


class _SelectedBeneficiaryIndexChangedEvent implements HomeEvent {
  const _SelectedBeneficiaryIndexChangedEvent({required this.selectedBeneficiaryIndex});
  

 final  int selectedBeneficiaryIndex;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedBeneficiaryIndexChangedEventCopyWith<_SelectedBeneficiaryIndexChangedEvent> get copyWith => __$SelectedBeneficiaryIndexChangedEventCopyWithImpl<_SelectedBeneficiaryIndexChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectedBeneficiaryIndexChangedEvent&&(identical(other.selectedBeneficiaryIndex, selectedBeneficiaryIndex) || other.selectedBeneficiaryIndex == selectedBeneficiaryIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedBeneficiaryIndex);

@override
String toString() {
  return 'HomeEvent.selectedBeneficiaryIndexChanged(selectedBeneficiaryIndex: $selectedBeneficiaryIndex)';
}


}

/// @nodoc
abstract mixin class _$SelectedBeneficiaryIndexChangedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$SelectedBeneficiaryIndexChangedEventCopyWith(_SelectedBeneficiaryIndexChangedEvent value, $Res Function(_SelectedBeneficiaryIndexChangedEvent) _then) = __$SelectedBeneficiaryIndexChangedEventCopyWithImpl;
@useResult
$Res call({
 int selectedBeneficiaryIndex
});




}
/// @nodoc
class __$SelectedBeneficiaryIndexChangedEventCopyWithImpl<$Res>
    implements _$SelectedBeneficiaryIndexChangedEventCopyWith<$Res> {
  __$SelectedBeneficiaryIndexChangedEventCopyWithImpl(this._self, this._then);

  final _SelectedBeneficiaryIndexChangedEvent _self;
  final $Res Function(_SelectedBeneficiaryIndexChangedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedBeneficiaryIndex = null,}) {
  return _then(_SelectedBeneficiaryIndexChangedEvent(
selectedBeneficiaryIndex: null == selectedBeneficiaryIndex ? _self.selectedBeneficiaryIndex : selectedBeneficiaryIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddOrEditBeneficiaryChangedEvent implements HomeEvent {
  const _AddOrEditBeneficiaryChangedEvent({this.eId, this.beneficiaryFirstName, this.beneficiaryLastName, this.beneficiaryCountryCode, this.beneficiaryBankName, this.disbursalMode, this.currencyCode, this.purposeName, this.incomeSourceName, this.purposeOfTransaction, this.sourceOfFund});
  

 final  String? eId;
 final  String? beneficiaryFirstName;
 final  String? beneficiaryLastName;
 final  String? beneficiaryCountryCode;
 final  String? beneficiaryBankName;
 final  String? disbursalMode;
 final  String? currencyCode;
 final  String? purposeName;
 final  String? incomeSourceName;
 final  String? purposeOfTransaction;
 final  String? sourceOfFund;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddOrEditBeneficiaryChangedEventCopyWith<_AddOrEditBeneficiaryChangedEvent> get copyWith => __$AddOrEditBeneficiaryChangedEventCopyWithImpl<_AddOrEditBeneficiaryChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddOrEditBeneficiaryChangedEvent&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund));
}


@override
int get hashCode => Object.hash(runtimeType,eId,beneficiaryFirstName,beneficiaryLastName,beneficiaryCountryCode,beneficiaryBankName,disbursalMode,currencyCode,purposeName,incomeSourceName,purposeOfTransaction,sourceOfFund);

@override
String toString() {
  return 'HomeEvent.addOrEditBeneficiaryChanged(eId: $eId, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryLastName: $beneficiaryLastName, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryBankName: $beneficiaryBankName, disbursalMode: $disbursalMode, currencyCode: $currencyCode, purposeName: $purposeName, incomeSourceName: $incomeSourceName, purposeOfTransaction: $purposeOfTransaction, sourceOfFund: $sourceOfFund)';
}


}

/// @nodoc
abstract mixin class _$AddOrEditBeneficiaryChangedEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$AddOrEditBeneficiaryChangedEventCopyWith(_AddOrEditBeneficiaryChangedEvent value, $Res Function(_AddOrEditBeneficiaryChangedEvent) _then) = __$AddOrEditBeneficiaryChangedEventCopyWithImpl;
@useResult
$Res call({
 String? eId, String? beneficiaryFirstName, String? beneficiaryLastName, String? beneficiaryCountryCode, String? beneficiaryBankName, String? disbursalMode, String? currencyCode, String? purposeName, String? incomeSourceName, String? purposeOfTransaction, String? sourceOfFund
});




}
/// @nodoc
class __$AddOrEditBeneficiaryChangedEventCopyWithImpl<$Res>
    implements _$AddOrEditBeneficiaryChangedEventCopyWith<$Res> {
  __$AddOrEditBeneficiaryChangedEventCopyWithImpl(this._self, this._then);

  final _AddOrEditBeneficiaryChangedEvent _self;
  final $Res Function(_AddOrEditBeneficiaryChangedEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryBankName = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? purposeName = freezed,Object? incomeSourceName = freezed,Object? purposeOfTransaction = freezed,Object? sourceOfFund = freezed,}) {
  return _then(_AddOrEditBeneficiaryChangedEvent(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _DeleteBeneficiaryEvent implements HomeEvent {
  const _DeleteBeneficiaryEvent(this.eId);
  

 final  String eId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteBeneficiaryEventCopyWith<_DeleteBeneficiaryEvent> get copyWith => __$DeleteBeneficiaryEventCopyWithImpl<_DeleteBeneficiaryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteBeneficiaryEvent&&(identical(other.eId, eId) || other.eId == eId));
}


@override
int get hashCode => Object.hash(runtimeType,eId);

@override
String toString() {
  return 'HomeEvent.deleteBeneficiary(eId: $eId)';
}


}

/// @nodoc
abstract mixin class _$DeleteBeneficiaryEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$DeleteBeneficiaryEventCopyWith(_DeleteBeneficiaryEvent value, $Res Function(_DeleteBeneficiaryEvent) _then) = __$DeleteBeneficiaryEventCopyWithImpl;
@useResult
$Res call({
 String eId
});




}
/// @nodoc
class __$DeleteBeneficiaryEventCopyWithImpl<$Res>
    implements _$DeleteBeneficiaryEventCopyWith<$Res> {
  __$DeleteBeneficiaryEventCopyWithImpl(this._self, this._then);

  final _DeleteBeneficiaryEvent _self;
  final $Res Function(_DeleteBeneficiaryEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eId = null,}) {
  return _then(_DeleteBeneficiaryEvent(
null == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CurrentEmailAddressChanged implements HomeEvent {
  const _CurrentEmailAddressChanged({required this.emailAddress});
  

 final  String emailAddress;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentEmailAddressChangedCopyWith<_CurrentEmailAddressChanged> get copyWith => __$CurrentEmailAddressChangedCopyWithImpl<_CurrentEmailAddressChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentEmailAddressChanged&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress));
}


@override
int get hashCode => Object.hash(runtimeType,emailAddress);

@override
String toString() {
  return 'HomeEvent.currentEmailAddressChanged(emailAddress: $emailAddress)';
}


}

/// @nodoc
abstract mixin class _$CurrentEmailAddressChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$CurrentEmailAddressChangedCopyWith(_CurrentEmailAddressChanged value, $Res Function(_CurrentEmailAddressChanged) _then) = __$CurrentEmailAddressChangedCopyWithImpl;
@useResult
$Res call({
 String emailAddress
});




}
/// @nodoc
class __$CurrentEmailAddressChangedCopyWithImpl<$Res>
    implements _$CurrentEmailAddressChangedCopyWith<$Res> {
  __$CurrentEmailAddressChangedCopyWithImpl(this._self, this._then);

  final _CurrentEmailAddressChanged _self;
  final $Res Function(_CurrentEmailAddressChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailAddress = null,}) {
  return _then(_CurrentEmailAddressChanged(
emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateEmailAddressChanged implements HomeEvent {
  const _UpdateEmailAddressChanged({required this.emailAddress});
  

 final  String emailAddress;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEmailAddressChangedCopyWith<_UpdateEmailAddressChanged> get copyWith => __$UpdateEmailAddressChangedCopyWithImpl<_UpdateEmailAddressChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEmailAddressChanged&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress));
}


@override
int get hashCode => Object.hash(runtimeType,emailAddress);

@override
String toString() {
  return 'HomeEvent.updateEmailAddressChanged(emailAddress: $emailAddress)';
}


}

/// @nodoc
abstract mixin class _$UpdateEmailAddressChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$UpdateEmailAddressChangedCopyWith(_UpdateEmailAddressChanged value, $Res Function(_UpdateEmailAddressChanged) _then) = __$UpdateEmailAddressChangedCopyWithImpl;
@useResult
$Res call({
 String emailAddress
});




}
/// @nodoc
class __$UpdateEmailAddressChangedCopyWithImpl<$Res>
    implements _$UpdateEmailAddressChangedCopyWith<$Res> {
  __$UpdateEmailAddressChangedCopyWithImpl(this._self, this._then);

  final _UpdateEmailAddressChanged _self;
  final $Res Function(_UpdateEmailAddressChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailAddress = null,}) {
  return _then(_UpdateEmailAddressChanged(
emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RequestUpdateEmailAddressPressed implements HomeEvent {
  const _RequestUpdateEmailAddressPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestUpdateEmailAddressPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.requestUpdateEmailAddressPressed()';
}


}




/// @nodoc


class _EmailOtpChanged implements HomeEvent {
  const _EmailOtpChanged({required this.emailOtp});
  

 final  String emailOtp;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailOtpChangedCopyWith<_EmailOtpChanged> get copyWith => __$EmailOtpChangedCopyWithImpl<_EmailOtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailOtpChanged&&(identical(other.emailOtp, emailOtp) || other.emailOtp == emailOtp));
}


@override
int get hashCode => Object.hash(runtimeType,emailOtp);

@override
String toString() {
  return 'HomeEvent.emailOtpChanged(emailOtp: $emailOtp)';
}


}

/// @nodoc
abstract mixin class _$EmailOtpChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$EmailOtpChangedCopyWith(_EmailOtpChanged value, $Res Function(_EmailOtpChanged) _then) = __$EmailOtpChangedCopyWithImpl;
@useResult
$Res call({
 String emailOtp
});




}
/// @nodoc
class __$EmailOtpChangedCopyWithImpl<$Res>
    implements _$EmailOtpChangedCopyWith<$Res> {
  __$EmailOtpChangedCopyWithImpl(this._self, this._then);

  final _EmailOtpChanged _self;
  final $Res Function(_EmailOtpChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailOtp = null,}) {
  return _then(_EmailOtpChanged(
emailOtp: null == emailOtp ? _self.emailOtp : emailOtp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ContinueOtpButtonPressed implements HomeEvent {
  const _ContinueOtpButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContinueOtpButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.continueOtpButtonPressed()';
}


}




/// @nodoc
mixin _$HomeState {

 bool get isUserLoading; bool get isRecentBeneficiariesLoading; bool get isSendMoneyFormLoading; bool get isRefreshing; bool get isSubmitting; bool get isOtpSubmitting; bool get showErrorMessages; bool get showOtpErrorMessages; bool get isRateLoading; bool get isSourceAmountCalculating; bool get isDestinationAmountCalculating; bool get isBeneficiaryListLoading; bool get isDeletingBeneficiary; String get lastRawSourceAmount; String get lastRawDestinationAmount; bool get isLastInputSource; HomeAdvertisementDto? get homeAdvertisementDto; HomeUserDto? get homeUserDto; HomeRecentBeneficiariesDto? get homeRecentBeneficiariesDto; CommonSelectableDto? get commonSourceSelectableDto; CommonSelectableItem? get selectedCommonSourceItem; CommonSelectableDto? get commonDestinationSelectableDto; CommonSelectableItem? get selectedCommonDestinationItem; HomeTransferTypeDto? get homeTransferTypeDto; CommonSelectableItem? get selectedTransferTypeItem; HomeBankOrAgentListDto? get homeBankOrAgentListDto; CommonSelectableItem? get selectedBankOrAgentItem; HomePaymentMethodDto? get homePaymentMethodDto; CommonSelectableItem? get selectedPaymentMethodItem; CommonSendMoneyDto get commonSendMoneyDto; HomeBeneficiaryListDto? get homeBeneficiaryListDto; int get selectedBeneficiaryIndex; String get currentEmailAddress; EmailAddress get emailAddress; Otp get emailOtp; Option<Either<HomeFailure, HomeAdvertisementDto>> get homeAdvertisementFailureOrSuccessOption; Option<Either<HomeFailure, HomeUserDto>> get homeUserFailureOrSuccessOption; Option<Either<HomeFailure, HomeRecentBeneficiariesDto>> get homeRecentBeneficiariesFailureOrSuccessOption; Option<Either<HomeFailure, HomeSourceCurrencyListDto>> get homeSourceCurrencyListFailureOrSuccessOption; Option<Either<HomeFailure, HomeDestinationCurrencyListDto>> get homeDestinationCurrencyListFailureOrSuccessOption; Option<Either<HomeFailure, HomeTransferTypeDto>> get homeTransferTypesFailureOrSuccessOption; Option<Either<HomeFailure, HomeBankOrAgentListDto>> get homeBankOrAgentListFailureOrSuccessOption; Option<Either<HomeFailure, HomePaymentMethodDto>> get homePaymentMethodFailureOrSuccessOption; Option<Either<HomeFailure, HomeCalculateAmountDto>> get homeCalculatedSourceAmountFailureOrSuccessOption; Option<Either<HomeFailure, HomeCalculateAmountDto>> get homeCalculatedDestinationAmountFailureOrSuccessOption; Option<Either<HomeFailure, HomeBeneficiaryListDto>> get homeBeneficiaryListFailureOrSuccessOption; Option<Either<HomeFailure, String>> get homeDeleteBeneficiaryFailureOrSuccessOption; Option<Either<HomeFailure, Unit>> get homeRequestEmailOtpFailureOrSuccessOption; Option<Either<HomeFailure, Unit>> get homeVerifyEmailOtpFailureOrSuccessOption;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isUserLoading, isUserLoading) || other.isUserLoading == isUserLoading)&&(identical(other.isRecentBeneficiariesLoading, isRecentBeneficiariesLoading) || other.isRecentBeneficiariesLoading == isRecentBeneficiariesLoading)&&(identical(other.isSendMoneyFormLoading, isSendMoneyFormLoading) || other.isSendMoneyFormLoading == isSendMoneyFormLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.isRateLoading, isRateLoading) || other.isRateLoading == isRateLoading)&&(identical(other.isSourceAmountCalculating, isSourceAmountCalculating) || other.isSourceAmountCalculating == isSourceAmountCalculating)&&(identical(other.isDestinationAmountCalculating, isDestinationAmountCalculating) || other.isDestinationAmountCalculating == isDestinationAmountCalculating)&&(identical(other.isBeneficiaryListLoading, isBeneficiaryListLoading) || other.isBeneficiaryListLoading == isBeneficiaryListLoading)&&(identical(other.isDeletingBeneficiary, isDeletingBeneficiary) || other.isDeletingBeneficiary == isDeletingBeneficiary)&&(identical(other.lastRawSourceAmount, lastRawSourceAmount) || other.lastRawSourceAmount == lastRawSourceAmount)&&(identical(other.lastRawDestinationAmount, lastRawDestinationAmount) || other.lastRawDestinationAmount == lastRawDestinationAmount)&&(identical(other.isLastInputSource, isLastInputSource) || other.isLastInputSource == isLastInputSource)&&(identical(other.homeAdvertisementDto, homeAdvertisementDto) || other.homeAdvertisementDto == homeAdvertisementDto)&&(identical(other.homeUserDto, homeUserDto) || other.homeUserDto == homeUserDto)&&(identical(other.homeRecentBeneficiariesDto, homeRecentBeneficiariesDto) || other.homeRecentBeneficiariesDto == homeRecentBeneficiariesDto)&&(identical(other.commonSourceSelectableDto, commonSourceSelectableDto) || other.commonSourceSelectableDto == commonSourceSelectableDto)&&(identical(other.selectedCommonSourceItem, selectedCommonSourceItem) || other.selectedCommonSourceItem == selectedCommonSourceItem)&&(identical(other.commonDestinationSelectableDto, commonDestinationSelectableDto) || other.commonDestinationSelectableDto == commonDestinationSelectableDto)&&(identical(other.selectedCommonDestinationItem, selectedCommonDestinationItem) || other.selectedCommonDestinationItem == selectedCommonDestinationItem)&&(identical(other.homeTransferTypeDto, homeTransferTypeDto) || other.homeTransferTypeDto == homeTransferTypeDto)&&(identical(other.selectedTransferTypeItem, selectedTransferTypeItem) || other.selectedTransferTypeItem == selectedTransferTypeItem)&&(identical(other.homeBankOrAgentListDto, homeBankOrAgentListDto) || other.homeBankOrAgentListDto == homeBankOrAgentListDto)&&(identical(other.selectedBankOrAgentItem, selectedBankOrAgentItem) || other.selectedBankOrAgentItem == selectedBankOrAgentItem)&&(identical(other.homePaymentMethodDto, homePaymentMethodDto) || other.homePaymentMethodDto == homePaymentMethodDto)&&(identical(other.selectedPaymentMethodItem, selectedPaymentMethodItem) || other.selectedPaymentMethodItem == selectedPaymentMethodItem)&&(identical(other.commonSendMoneyDto, commonSendMoneyDto) || other.commonSendMoneyDto == commonSendMoneyDto)&&(identical(other.homeBeneficiaryListDto, homeBeneficiaryListDto) || other.homeBeneficiaryListDto == homeBeneficiaryListDto)&&(identical(other.selectedBeneficiaryIndex, selectedBeneficiaryIndex) || other.selectedBeneficiaryIndex == selectedBeneficiaryIndex)&&(identical(other.currentEmailAddress, currentEmailAddress) || other.currentEmailAddress == currentEmailAddress)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.emailOtp, emailOtp) || other.emailOtp == emailOtp)&&(identical(other.homeAdvertisementFailureOrSuccessOption, homeAdvertisementFailureOrSuccessOption) || other.homeAdvertisementFailureOrSuccessOption == homeAdvertisementFailureOrSuccessOption)&&(identical(other.homeUserFailureOrSuccessOption, homeUserFailureOrSuccessOption) || other.homeUserFailureOrSuccessOption == homeUserFailureOrSuccessOption)&&(identical(other.homeRecentBeneficiariesFailureOrSuccessOption, homeRecentBeneficiariesFailureOrSuccessOption) || other.homeRecentBeneficiariesFailureOrSuccessOption == homeRecentBeneficiariesFailureOrSuccessOption)&&(identical(other.homeSourceCurrencyListFailureOrSuccessOption, homeSourceCurrencyListFailureOrSuccessOption) || other.homeSourceCurrencyListFailureOrSuccessOption == homeSourceCurrencyListFailureOrSuccessOption)&&(identical(other.homeDestinationCurrencyListFailureOrSuccessOption, homeDestinationCurrencyListFailureOrSuccessOption) || other.homeDestinationCurrencyListFailureOrSuccessOption == homeDestinationCurrencyListFailureOrSuccessOption)&&(identical(other.homeTransferTypesFailureOrSuccessOption, homeTransferTypesFailureOrSuccessOption) || other.homeTransferTypesFailureOrSuccessOption == homeTransferTypesFailureOrSuccessOption)&&(identical(other.homeBankOrAgentListFailureOrSuccessOption, homeBankOrAgentListFailureOrSuccessOption) || other.homeBankOrAgentListFailureOrSuccessOption == homeBankOrAgentListFailureOrSuccessOption)&&(identical(other.homePaymentMethodFailureOrSuccessOption, homePaymentMethodFailureOrSuccessOption) || other.homePaymentMethodFailureOrSuccessOption == homePaymentMethodFailureOrSuccessOption)&&(identical(other.homeCalculatedSourceAmountFailureOrSuccessOption, homeCalculatedSourceAmountFailureOrSuccessOption) || other.homeCalculatedSourceAmountFailureOrSuccessOption == homeCalculatedSourceAmountFailureOrSuccessOption)&&(identical(other.homeCalculatedDestinationAmountFailureOrSuccessOption, homeCalculatedDestinationAmountFailureOrSuccessOption) || other.homeCalculatedDestinationAmountFailureOrSuccessOption == homeCalculatedDestinationAmountFailureOrSuccessOption)&&(identical(other.homeBeneficiaryListFailureOrSuccessOption, homeBeneficiaryListFailureOrSuccessOption) || other.homeBeneficiaryListFailureOrSuccessOption == homeBeneficiaryListFailureOrSuccessOption)&&(identical(other.homeDeleteBeneficiaryFailureOrSuccessOption, homeDeleteBeneficiaryFailureOrSuccessOption) || other.homeDeleteBeneficiaryFailureOrSuccessOption == homeDeleteBeneficiaryFailureOrSuccessOption)&&(identical(other.homeRequestEmailOtpFailureOrSuccessOption, homeRequestEmailOtpFailureOrSuccessOption) || other.homeRequestEmailOtpFailureOrSuccessOption == homeRequestEmailOtpFailureOrSuccessOption)&&(identical(other.homeVerifyEmailOtpFailureOrSuccessOption, homeVerifyEmailOtpFailureOrSuccessOption) || other.homeVerifyEmailOtpFailureOrSuccessOption == homeVerifyEmailOtpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isUserLoading,isRecentBeneficiariesLoading,isSendMoneyFormLoading,isRefreshing,isSubmitting,isOtpSubmitting,showErrorMessages,showOtpErrorMessages,isRateLoading,isSourceAmountCalculating,isDestinationAmountCalculating,isBeneficiaryListLoading,isDeletingBeneficiary,lastRawSourceAmount,lastRawDestinationAmount,isLastInputSource,homeAdvertisementDto,homeUserDto,homeRecentBeneficiariesDto,commonSourceSelectableDto,selectedCommonSourceItem,commonDestinationSelectableDto,selectedCommonDestinationItem,homeTransferTypeDto,selectedTransferTypeItem,homeBankOrAgentListDto,selectedBankOrAgentItem,homePaymentMethodDto,selectedPaymentMethodItem,commonSendMoneyDto,homeBeneficiaryListDto,selectedBeneficiaryIndex,currentEmailAddress,emailAddress,emailOtp,homeAdvertisementFailureOrSuccessOption,homeUserFailureOrSuccessOption,homeRecentBeneficiariesFailureOrSuccessOption,homeSourceCurrencyListFailureOrSuccessOption,homeDestinationCurrencyListFailureOrSuccessOption,homeTransferTypesFailureOrSuccessOption,homeBankOrAgentListFailureOrSuccessOption,homePaymentMethodFailureOrSuccessOption,homeCalculatedSourceAmountFailureOrSuccessOption,homeCalculatedDestinationAmountFailureOrSuccessOption,homeBeneficiaryListFailureOrSuccessOption,homeDeleteBeneficiaryFailureOrSuccessOption,homeRequestEmailOtpFailureOrSuccessOption,homeVerifyEmailOtpFailureOrSuccessOption]);

@override
String toString() {
  return 'HomeState(isUserLoading: $isUserLoading, isRecentBeneficiariesLoading: $isRecentBeneficiariesLoading, isSendMoneyFormLoading: $isSendMoneyFormLoading, isRefreshing: $isRefreshing, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, showErrorMessages: $showErrorMessages, showOtpErrorMessages: $showOtpErrorMessages, isRateLoading: $isRateLoading, isSourceAmountCalculating: $isSourceAmountCalculating, isDestinationAmountCalculating: $isDestinationAmountCalculating, isBeneficiaryListLoading: $isBeneficiaryListLoading, isDeletingBeneficiary: $isDeletingBeneficiary, lastRawSourceAmount: $lastRawSourceAmount, lastRawDestinationAmount: $lastRawDestinationAmount, isLastInputSource: $isLastInputSource, homeAdvertisementDto: $homeAdvertisementDto, homeUserDto: $homeUserDto, homeRecentBeneficiariesDto: $homeRecentBeneficiariesDto, commonSourceSelectableDto: $commonSourceSelectableDto, selectedCommonSourceItem: $selectedCommonSourceItem, commonDestinationSelectableDto: $commonDestinationSelectableDto, selectedCommonDestinationItem: $selectedCommonDestinationItem, homeTransferTypeDto: $homeTransferTypeDto, selectedTransferTypeItem: $selectedTransferTypeItem, homeBankOrAgentListDto: $homeBankOrAgentListDto, selectedBankOrAgentItem: $selectedBankOrAgentItem, homePaymentMethodDto: $homePaymentMethodDto, selectedPaymentMethodItem: $selectedPaymentMethodItem, commonSendMoneyDto: $commonSendMoneyDto, homeBeneficiaryListDto: $homeBeneficiaryListDto, selectedBeneficiaryIndex: $selectedBeneficiaryIndex, currentEmailAddress: $currentEmailAddress, emailAddress: $emailAddress, emailOtp: $emailOtp, homeAdvertisementFailureOrSuccessOption: $homeAdvertisementFailureOrSuccessOption, homeUserFailureOrSuccessOption: $homeUserFailureOrSuccessOption, homeRecentBeneficiariesFailureOrSuccessOption: $homeRecentBeneficiariesFailureOrSuccessOption, homeSourceCurrencyListFailureOrSuccessOption: $homeSourceCurrencyListFailureOrSuccessOption, homeDestinationCurrencyListFailureOrSuccessOption: $homeDestinationCurrencyListFailureOrSuccessOption, homeTransferTypesFailureOrSuccessOption: $homeTransferTypesFailureOrSuccessOption, homeBankOrAgentListFailureOrSuccessOption: $homeBankOrAgentListFailureOrSuccessOption, homePaymentMethodFailureOrSuccessOption: $homePaymentMethodFailureOrSuccessOption, homeCalculatedSourceAmountFailureOrSuccessOption: $homeCalculatedSourceAmountFailureOrSuccessOption, homeCalculatedDestinationAmountFailureOrSuccessOption: $homeCalculatedDestinationAmountFailureOrSuccessOption, homeBeneficiaryListFailureOrSuccessOption: $homeBeneficiaryListFailureOrSuccessOption, homeDeleteBeneficiaryFailureOrSuccessOption: $homeDeleteBeneficiaryFailureOrSuccessOption, homeRequestEmailOtpFailureOrSuccessOption: $homeRequestEmailOtpFailureOrSuccessOption, homeVerifyEmailOtpFailureOrSuccessOption: $homeVerifyEmailOtpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isUserLoading, bool isRecentBeneficiariesLoading, bool isSendMoneyFormLoading, bool isRefreshing, bool isSubmitting, bool isOtpSubmitting, bool showErrorMessages, bool showOtpErrorMessages, bool isRateLoading, bool isSourceAmountCalculating, bool isDestinationAmountCalculating, bool isBeneficiaryListLoading, bool isDeletingBeneficiary, String lastRawSourceAmount, String lastRawDestinationAmount, bool isLastInputSource, HomeAdvertisementDto? homeAdvertisementDto, HomeUserDto? homeUserDto, HomeRecentBeneficiariesDto? homeRecentBeneficiariesDto, CommonSelectableDto? commonSourceSelectableDto, CommonSelectableItem? selectedCommonSourceItem, CommonSelectableDto? commonDestinationSelectableDto, CommonSelectableItem? selectedCommonDestinationItem, HomeTransferTypeDto? homeTransferTypeDto, CommonSelectableItem? selectedTransferTypeItem, HomeBankOrAgentListDto? homeBankOrAgentListDto, CommonSelectableItem? selectedBankOrAgentItem, HomePaymentMethodDto? homePaymentMethodDto, CommonSelectableItem? selectedPaymentMethodItem, CommonSendMoneyDto commonSendMoneyDto, HomeBeneficiaryListDto? homeBeneficiaryListDto, int selectedBeneficiaryIndex, String currentEmailAddress, EmailAddress emailAddress, Otp emailOtp, Option<Either<HomeFailure, HomeAdvertisementDto>> homeAdvertisementFailureOrSuccessOption, Option<Either<HomeFailure, HomeUserDto>> homeUserFailureOrSuccessOption, Option<Either<HomeFailure, HomeRecentBeneficiariesDto>> homeRecentBeneficiariesFailureOrSuccessOption, Option<Either<HomeFailure, HomeSourceCurrencyListDto>> homeSourceCurrencyListFailureOrSuccessOption, Option<Either<HomeFailure, HomeDestinationCurrencyListDto>> homeDestinationCurrencyListFailureOrSuccessOption, Option<Either<HomeFailure, HomeTransferTypeDto>> homeTransferTypesFailureOrSuccessOption, Option<Either<HomeFailure, HomeBankOrAgentListDto>> homeBankOrAgentListFailureOrSuccessOption, Option<Either<HomeFailure, HomePaymentMethodDto>> homePaymentMethodFailureOrSuccessOption, Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedSourceAmountFailureOrSuccessOption, Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedDestinationAmountFailureOrSuccessOption, Option<Either<HomeFailure, HomeBeneficiaryListDto>> homeBeneficiaryListFailureOrSuccessOption, Option<Either<HomeFailure, String>> homeDeleteBeneficiaryFailureOrSuccessOption, Option<Either<HomeFailure, Unit>> homeRequestEmailOtpFailureOrSuccessOption, Option<Either<HomeFailure, Unit>> homeVerifyEmailOtpFailureOrSuccessOption
});


$HomeAdvertisementDtoCopyWith<$Res>? get homeAdvertisementDto;$HomeUserDtoCopyWith<$Res>? get homeUserDto;$HomeRecentBeneficiariesDtoCopyWith<$Res>? get homeRecentBeneficiariesDto;$CommonSelectableDtoCopyWith<$Res>? get commonSourceSelectableDto;$CommonSelectableItemCopyWith<$Res>? get selectedCommonSourceItem;$CommonSelectableDtoCopyWith<$Res>? get commonDestinationSelectableDto;$CommonSelectableItemCopyWith<$Res>? get selectedCommonDestinationItem;$HomeTransferTypeDtoCopyWith<$Res>? get homeTransferTypeDto;$CommonSelectableItemCopyWith<$Res>? get selectedTransferTypeItem;$HomeBankOrAgentListDtoCopyWith<$Res>? get homeBankOrAgentListDto;$CommonSelectableItemCopyWith<$Res>? get selectedBankOrAgentItem;$HomePaymentMethodDtoCopyWith<$Res>? get homePaymentMethodDto;$CommonSelectableItemCopyWith<$Res>? get selectedPaymentMethodItem;$CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto;$HomeBeneficiaryListDtoCopyWith<$Res>? get homeBeneficiaryListDto;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isUserLoading = null,Object? isRecentBeneficiariesLoading = null,Object? isSendMoneyFormLoading = null,Object? isRefreshing = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? showErrorMessages = null,Object? showOtpErrorMessages = null,Object? isRateLoading = null,Object? isSourceAmountCalculating = null,Object? isDestinationAmountCalculating = null,Object? isBeneficiaryListLoading = null,Object? isDeletingBeneficiary = null,Object? lastRawSourceAmount = null,Object? lastRawDestinationAmount = null,Object? isLastInputSource = null,Object? homeAdvertisementDto = freezed,Object? homeUserDto = freezed,Object? homeRecentBeneficiariesDto = freezed,Object? commonSourceSelectableDto = freezed,Object? selectedCommonSourceItem = freezed,Object? commonDestinationSelectableDto = freezed,Object? selectedCommonDestinationItem = freezed,Object? homeTransferTypeDto = freezed,Object? selectedTransferTypeItem = freezed,Object? homeBankOrAgentListDto = freezed,Object? selectedBankOrAgentItem = freezed,Object? homePaymentMethodDto = freezed,Object? selectedPaymentMethodItem = freezed,Object? commonSendMoneyDto = null,Object? homeBeneficiaryListDto = freezed,Object? selectedBeneficiaryIndex = null,Object? currentEmailAddress = null,Object? emailAddress = null,Object? emailOtp = null,Object? homeAdvertisementFailureOrSuccessOption = null,Object? homeUserFailureOrSuccessOption = null,Object? homeRecentBeneficiariesFailureOrSuccessOption = null,Object? homeSourceCurrencyListFailureOrSuccessOption = null,Object? homeDestinationCurrencyListFailureOrSuccessOption = null,Object? homeTransferTypesFailureOrSuccessOption = null,Object? homeBankOrAgentListFailureOrSuccessOption = null,Object? homePaymentMethodFailureOrSuccessOption = null,Object? homeCalculatedSourceAmountFailureOrSuccessOption = null,Object? homeCalculatedDestinationAmountFailureOrSuccessOption = null,Object? homeBeneficiaryListFailureOrSuccessOption = null,Object? homeDeleteBeneficiaryFailureOrSuccessOption = null,Object? homeRequestEmailOtpFailureOrSuccessOption = null,Object? homeVerifyEmailOtpFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isUserLoading: null == isUserLoading ? _self.isUserLoading : isUserLoading // ignore: cast_nullable_to_non_nullable
as bool,isRecentBeneficiariesLoading: null == isRecentBeneficiariesLoading ? _self.isRecentBeneficiariesLoading : isRecentBeneficiariesLoading // ignore: cast_nullable_to_non_nullable
as bool,isSendMoneyFormLoading: null == isSendMoneyFormLoading ? _self.isSendMoneyFormLoading : isSendMoneyFormLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isRateLoading: null == isRateLoading ? _self.isRateLoading : isRateLoading // ignore: cast_nullable_to_non_nullable
as bool,isSourceAmountCalculating: null == isSourceAmountCalculating ? _self.isSourceAmountCalculating : isSourceAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,isDestinationAmountCalculating: null == isDestinationAmountCalculating ? _self.isDestinationAmountCalculating : isDestinationAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,isBeneficiaryListLoading: null == isBeneficiaryListLoading ? _self.isBeneficiaryListLoading : isBeneficiaryListLoading // ignore: cast_nullable_to_non_nullable
as bool,isDeletingBeneficiary: null == isDeletingBeneficiary ? _self.isDeletingBeneficiary : isDeletingBeneficiary // ignore: cast_nullable_to_non_nullable
as bool,lastRawSourceAmount: null == lastRawSourceAmount ? _self.lastRawSourceAmount : lastRawSourceAmount // ignore: cast_nullable_to_non_nullable
as String,lastRawDestinationAmount: null == lastRawDestinationAmount ? _self.lastRawDestinationAmount : lastRawDestinationAmount // ignore: cast_nullable_to_non_nullable
as String,isLastInputSource: null == isLastInputSource ? _self.isLastInputSource : isLastInputSource // ignore: cast_nullable_to_non_nullable
as bool,homeAdvertisementDto: freezed == homeAdvertisementDto ? _self.homeAdvertisementDto : homeAdvertisementDto // ignore: cast_nullable_to_non_nullable
as HomeAdvertisementDto?,homeUserDto: freezed == homeUserDto ? _self.homeUserDto : homeUserDto // ignore: cast_nullable_to_non_nullable
as HomeUserDto?,homeRecentBeneficiariesDto: freezed == homeRecentBeneficiariesDto ? _self.homeRecentBeneficiariesDto : homeRecentBeneficiariesDto // ignore: cast_nullable_to_non_nullable
as HomeRecentBeneficiariesDto?,commonSourceSelectableDto: freezed == commonSourceSelectableDto ? _self.commonSourceSelectableDto : commonSourceSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonSourceItem: freezed == selectedCommonSourceItem ? _self.selectedCommonSourceItem : selectedCommonSourceItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonDestinationSelectableDto: freezed == commonDestinationSelectableDto ? _self.commonDestinationSelectableDto : commonDestinationSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonDestinationItem: freezed == selectedCommonDestinationItem ? _self.selectedCommonDestinationItem : selectedCommonDestinationItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,homeTransferTypeDto: freezed == homeTransferTypeDto ? _self.homeTransferTypeDto : homeTransferTypeDto // ignore: cast_nullable_to_non_nullable
as HomeTransferTypeDto?,selectedTransferTypeItem: freezed == selectedTransferTypeItem ? _self.selectedTransferTypeItem : selectedTransferTypeItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,homeBankOrAgentListDto: freezed == homeBankOrAgentListDto ? _self.homeBankOrAgentListDto : homeBankOrAgentListDto // ignore: cast_nullable_to_non_nullable
as HomeBankOrAgentListDto?,selectedBankOrAgentItem: freezed == selectedBankOrAgentItem ? _self.selectedBankOrAgentItem : selectedBankOrAgentItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,homePaymentMethodDto: freezed == homePaymentMethodDto ? _self.homePaymentMethodDto : homePaymentMethodDto // ignore: cast_nullable_to_non_nullable
as HomePaymentMethodDto?,selectedPaymentMethodItem: freezed == selectedPaymentMethodItem ? _self.selectedPaymentMethodItem : selectedPaymentMethodItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonSendMoneyDto: null == commonSendMoneyDto ? _self.commonSendMoneyDto : commonSendMoneyDto // ignore: cast_nullable_to_non_nullable
as CommonSendMoneyDto,homeBeneficiaryListDto: freezed == homeBeneficiaryListDto ? _self.homeBeneficiaryListDto : homeBeneficiaryListDto // ignore: cast_nullable_to_non_nullable
as HomeBeneficiaryListDto?,selectedBeneficiaryIndex: null == selectedBeneficiaryIndex ? _self.selectedBeneficiaryIndex : selectedBeneficiaryIndex // ignore: cast_nullable_to_non_nullable
as int,currentEmailAddress: null == currentEmailAddress ? _self.currentEmailAddress : currentEmailAddress // ignore: cast_nullable_to_non_nullable
as String,emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as EmailAddress,emailOtp: null == emailOtp ? _self.emailOtp : emailOtp // ignore: cast_nullable_to_non_nullable
as Otp,homeAdvertisementFailureOrSuccessOption: null == homeAdvertisementFailureOrSuccessOption ? _self.homeAdvertisementFailureOrSuccessOption : homeAdvertisementFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeAdvertisementDto>>,homeUserFailureOrSuccessOption: null == homeUserFailureOrSuccessOption ? _self.homeUserFailureOrSuccessOption : homeUserFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeUserDto>>,homeRecentBeneficiariesFailureOrSuccessOption: null == homeRecentBeneficiariesFailureOrSuccessOption ? _self.homeRecentBeneficiariesFailureOrSuccessOption : homeRecentBeneficiariesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeRecentBeneficiariesDto>>,homeSourceCurrencyListFailureOrSuccessOption: null == homeSourceCurrencyListFailureOrSuccessOption ? _self.homeSourceCurrencyListFailureOrSuccessOption : homeSourceCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeSourceCurrencyListDto>>,homeDestinationCurrencyListFailureOrSuccessOption: null == homeDestinationCurrencyListFailureOrSuccessOption ? _self.homeDestinationCurrencyListFailureOrSuccessOption : homeDestinationCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeDestinationCurrencyListDto>>,homeTransferTypesFailureOrSuccessOption: null == homeTransferTypesFailureOrSuccessOption ? _self.homeTransferTypesFailureOrSuccessOption : homeTransferTypesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeTransferTypeDto>>,homeBankOrAgentListFailureOrSuccessOption: null == homeBankOrAgentListFailureOrSuccessOption ? _self.homeBankOrAgentListFailureOrSuccessOption : homeBankOrAgentListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeBankOrAgentListDto>>,homePaymentMethodFailureOrSuccessOption: null == homePaymentMethodFailureOrSuccessOption ? _self.homePaymentMethodFailureOrSuccessOption : homePaymentMethodFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomePaymentMethodDto>>,homeCalculatedSourceAmountFailureOrSuccessOption: null == homeCalculatedSourceAmountFailureOrSuccessOption ? _self.homeCalculatedSourceAmountFailureOrSuccessOption : homeCalculatedSourceAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeCalculateAmountDto>>,homeCalculatedDestinationAmountFailureOrSuccessOption: null == homeCalculatedDestinationAmountFailureOrSuccessOption ? _self.homeCalculatedDestinationAmountFailureOrSuccessOption : homeCalculatedDestinationAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeCalculateAmountDto>>,homeBeneficiaryListFailureOrSuccessOption: null == homeBeneficiaryListFailureOrSuccessOption ? _self.homeBeneficiaryListFailureOrSuccessOption : homeBeneficiaryListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeBeneficiaryListDto>>,homeDeleteBeneficiaryFailureOrSuccessOption: null == homeDeleteBeneficiaryFailureOrSuccessOption ? _self.homeDeleteBeneficiaryFailureOrSuccessOption : homeDeleteBeneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, String>>,homeRequestEmailOtpFailureOrSuccessOption: null == homeRequestEmailOtpFailureOrSuccessOption ? _self.homeRequestEmailOtpFailureOrSuccessOption : homeRequestEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, Unit>>,homeVerifyEmailOtpFailureOrSuccessOption: null == homeVerifyEmailOtpFailureOrSuccessOption ? _self.homeVerifyEmailOtpFailureOrSuccessOption : homeVerifyEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, Unit>>,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeAdvertisementDtoCopyWith<$Res>? get homeAdvertisementDto {
    if (_self.homeAdvertisementDto == null) {
    return null;
  }

  return $HomeAdvertisementDtoCopyWith<$Res>(_self.homeAdvertisementDto!, (value) {
    return _then(_self.copyWith(homeAdvertisementDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeUserDtoCopyWith<$Res>? get homeUserDto {
    if (_self.homeUserDto == null) {
    return null;
  }

  return $HomeUserDtoCopyWith<$Res>(_self.homeUserDto!, (value) {
    return _then(_self.copyWith(homeUserDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeRecentBeneficiariesDtoCopyWith<$Res>? get homeRecentBeneficiariesDto {
    if (_self.homeRecentBeneficiariesDto == null) {
    return null;
  }

  return $HomeRecentBeneficiariesDtoCopyWith<$Res>(_self.homeRecentBeneficiariesDto!, (value) {
    return _then(_self.copyWith(homeRecentBeneficiariesDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDtoCopyWith<$Res>? get commonSourceSelectableDto {
    if (_self.commonSourceSelectableDto == null) {
    return null;
  }

  return $CommonSelectableDtoCopyWith<$Res>(_self.commonSourceSelectableDto!, (value) {
    return _then(_self.copyWith(commonSourceSelectableDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedCommonSourceItem {
    if (_self.selectedCommonSourceItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedCommonSourceItem!, (value) {
    return _then(_self.copyWith(selectedCommonSourceItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDtoCopyWith<$Res>? get commonDestinationSelectableDto {
    if (_self.commonDestinationSelectableDto == null) {
    return null;
  }

  return $CommonSelectableDtoCopyWith<$Res>(_self.commonDestinationSelectableDto!, (value) {
    return _then(_self.copyWith(commonDestinationSelectableDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedCommonDestinationItem {
    if (_self.selectedCommonDestinationItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedCommonDestinationItem!, (value) {
    return _then(_self.copyWith(selectedCommonDestinationItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeTransferTypeDtoCopyWith<$Res>? get homeTransferTypeDto {
    if (_self.homeTransferTypeDto == null) {
    return null;
  }

  return $HomeTransferTypeDtoCopyWith<$Res>(_self.homeTransferTypeDto!, (value) {
    return _then(_self.copyWith(homeTransferTypeDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedTransferTypeItem {
    if (_self.selectedTransferTypeItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedTransferTypeItem!, (value) {
    return _then(_self.copyWith(selectedTransferTypeItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeBankOrAgentListDtoCopyWith<$Res>? get homeBankOrAgentListDto {
    if (_self.homeBankOrAgentListDto == null) {
    return null;
  }

  return $HomeBankOrAgentListDtoCopyWith<$Res>(_self.homeBankOrAgentListDto!, (value) {
    return _then(_self.copyWith(homeBankOrAgentListDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBankOrAgentItem {
    if (_self.selectedBankOrAgentItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBankOrAgentItem!, (value) {
    return _then(_self.copyWith(selectedBankOrAgentItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomePaymentMethodDtoCopyWith<$Res>? get homePaymentMethodDto {
    if (_self.homePaymentMethodDto == null) {
    return null;
  }

  return $HomePaymentMethodDtoCopyWith<$Res>(_self.homePaymentMethodDto!, (value) {
    return _then(_self.copyWith(homePaymentMethodDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedPaymentMethodItem {
    if (_self.selectedPaymentMethodItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedPaymentMethodItem!, (value) {
    return _then(_self.copyWith(selectedPaymentMethodItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto {
  
  return $CommonSendMoneyDtoCopyWith<$Res>(_self.commonSendMoneyDto, (value) {
    return _then(_self.copyWith(commonSendMoneyDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeBeneficiaryListDtoCopyWith<$Res>? get homeBeneficiaryListDto {
    if (_self.homeBeneficiaryListDto == null) {
    return null;
  }

  return $HomeBeneficiaryListDtoCopyWith<$Res>(_self.homeBeneficiaryListDto!, (value) {
    return _then(_self.copyWith(homeBeneficiaryListDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isUserLoading,  bool isRecentBeneficiariesLoading,  bool isSendMoneyFormLoading,  bool isRefreshing,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  bool isRateLoading,  bool isSourceAmountCalculating,  bool isDestinationAmountCalculating,  bool isBeneficiaryListLoading,  bool isDeletingBeneficiary,  String lastRawSourceAmount,  String lastRawDestinationAmount,  bool isLastInputSource,  HomeAdvertisementDto? homeAdvertisementDto,  HomeUserDto? homeUserDto,  HomeRecentBeneficiariesDto? homeRecentBeneficiariesDto,  CommonSelectableDto? commonSourceSelectableDto,  CommonSelectableItem? selectedCommonSourceItem,  CommonSelectableDto? commonDestinationSelectableDto,  CommonSelectableItem? selectedCommonDestinationItem,  HomeTransferTypeDto? homeTransferTypeDto,  CommonSelectableItem? selectedTransferTypeItem,  HomeBankOrAgentListDto? homeBankOrAgentListDto,  CommonSelectableItem? selectedBankOrAgentItem,  HomePaymentMethodDto? homePaymentMethodDto,  CommonSelectableItem? selectedPaymentMethodItem,  CommonSendMoneyDto commonSendMoneyDto,  HomeBeneficiaryListDto? homeBeneficiaryListDto,  int selectedBeneficiaryIndex,  String currentEmailAddress,  EmailAddress emailAddress,  Otp emailOtp,  Option<Either<HomeFailure, HomeAdvertisementDto>> homeAdvertisementFailureOrSuccessOption,  Option<Either<HomeFailure, HomeUserDto>> homeUserFailureOrSuccessOption,  Option<Either<HomeFailure, HomeRecentBeneficiariesDto>> homeRecentBeneficiariesFailureOrSuccessOption,  Option<Either<HomeFailure, HomeSourceCurrencyListDto>> homeSourceCurrencyListFailureOrSuccessOption,  Option<Either<HomeFailure, HomeDestinationCurrencyListDto>> homeDestinationCurrencyListFailureOrSuccessOption,  Option<Either<HomeFailure, HomeTransferTypeDto>> homeTransferTypesFailureOrSuccessOption,  Option<Either<HomeFailure, HomeBankOrAgentListDto>> homeBankOrAgentListFailureOrSuccessOption,  Option<Either<HomeFailure, HomePaymentMethodDto>> homePaymentMethodFailureOrSuccessOption,  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedSourceAmountFailureOrSuccessOption,  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedDestinationAmountFailureOrSuccessOption,  Option<Either<HomeFailure, HomeBeneficiaryListDto>> homeBeneficiaryListFailureOrSuccessOption,  Option<Either<HomeFailure, String>> homeDeleteBeneficiaryFailureOrSuccessOption,  Option<Either<HomeFailure, Unit>> homeRequestEmailOtpFailureOrSuccessOption,  Option<Either<HomeFailure, Unit>> homeVerifyEmailOtpFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isUserLoading,_that.isRecentBeneficiariesLoading,_that.isSendMoneyFormLoading,_that.isRefreshing,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.isRateLoading,_that.isSourceAmountCalculating,_that.isDestinationAmountCalculating,_that.isBeneficiaryListLoading,_that.isDeletingBeneficiary,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource,_that.homeAdvertisementDto,_that.homeUserDto,_that.homeRecentBeneficiariesDto,_that.commonSourceSelectableDto,_that.selectedCommonSourceItem,_that.commonDestinationSelectableDto,_that.selectedCommonDestinationItem,_that.homeTransferTypeDto,_that.selectedTransferTypeItem,_that.homeBankOrAgentListDto,_that.selectedBankOrAgentItem,_that.homePaymentMethodDto,_that.selectedPaymentMethodItem,_that.commonSendMoneyDto,_that.homeBeneficiaryListDto,_that.selectedBeneficiaryIndex,_that.currentEmailAddress,_that.emailAddress,_that.emailOtp,_that.homeAdvertisementFailureOrSuccessOption,_that.homeUserFailureOrSuccessOption,_that.homeRecentBeneficiariesFailureOrSuccessOption,_that.homeSourceCurrencyListFailureOrSuccessOption,_that.homeDestinationCurrencyListFailureOrSuccessOption,_that.homeTransferTypesFailureOrSuccessOption,_that.homeBankOrAgentListFailureOrSuccessOption,_that.homePaymentMethodFailureOrSuccessOption,_that.homeCalculatedSourceAmountFailureOrSuccessOption,_that.homeCalculatedDestinationAmountFailureOrSuccessOption,_that.homeBeneficiaryListFailureOrSuccessOption,_that.homeDeleteBeneficiaryFailureOrSuccessOption,_that.homeRequestEmailOtpFailureOrSuccessOption,_that.homeVerifyEmailOtpFailureOrSuccessOption);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isUserLoading,  bool isRecentBeneficiariesLoading,  bool isSendMoneyFormLoading,  bool isRefreshing,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  bool isRateLoading,  bool isSourceAmountCalculating,  bool isDestinationAmountCalculating,  bool isBeneficiaryListLoading,  bool isDeletingBeneficiary,  String lastRawSourceAmount,  String lastRawDestinationAmount,  bool isLastInputSource,  HomeAdvertisementDto? homeAdvertisementDto,  HomeUserDto? homeUserDto,  HomeRecentBeneficiariesDto? homeRecentBeneficiariesDto,  CommonSelectableDto? commonSourceSelectableDto,  CommonSelectableItem? selectedCommonSourceItem,  CommonSelectableDto? commonDestinationSelectableDto,  CommonSelectableItem? selectedCommonDestinationItem,  HomeTransferTypeDto? homeTransferTypeDto,  CommonSelectableItem? selectedTransferTypeItem,  HomeBankOrAgentListDto? homeBankOrAgentListDto,  CommonSelectableItem? selectedBankOrAgentItem,  HomePaymentMethodDto? homePaymentMethodDto,  CommonSelectableItem? selectedPaymentMethodItem,  CommonSendMoneyDto commonSendMoneyDto,  HomeBeneficiaryListDto? homeBeneficiaryListDto,  int selectedBeneficiaryIndex,  String currentEmailAddress,  EmailAddress emailAddress,  Otp emailOtp,  Option<Either<HomeFailure, HomeAdvertisementDto>> homeAdvertisementFailureOrSuccessOption,  Option<Either<HomeFailure, HomeUserDto>> homeUserFailureOrSuccessOption,  Option<Either<HomeFailure, HomeRecentBeneficiariesDto>> homeRecentBeneficiariesFailureOrSuccessOption,  Option<Either<HomeFailure, HomeSourceCurrencyListDto>> homeSourceCurrencyListFailureOrSuccessOption,  Option<Either<HomeFailure, HomeDestinationCurrencyListDto>> homeDestinationCurrencyListFailureOrSuccessOption,  Option<Either<HomeFailure, HomeTransferTypeDto>> homeTransferTypesFailureOrSuccessOption,  Option<Either<HomeFailure, HomeBankOrAgentListDto>> homeBankOrAgentListFailureOrSuccessOption,  Option<Either<HomeFailure, HomePaymentMethodDto>> homePaymentMethodFailureOrSuccessOption,  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedSourceAmountFailureOrSuccessOption,  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedDestinationAmountFailureOrSuccessOption,  Option<Either<HomeFailure, HomeBeneficiaryListDto>> homeBeneficiaryListFailureOrSuccessOption,  Option<Either<HomeFailure, String>> homeDeleteBeneficiaryFailureOrSuccessOption,  Option<Either<HomeFailure, Unit>> homeRequestEmailOtpFailureOrSuccessOption,  Option<Either<HomeFailure, Unit>> homeVerifyEmailOtpFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isUserLoading,_that.isRecentBeneficiariesLoading,_that.isSendMoneyFormLoading,_that.isRefreshing,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.isRateLoading,_that.isSourceAmountCalculating,_that.isDestinationAmountCalculating,_that.isBeneficiaryListLoading,_that.isDeletingBeneficiary,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource,_that.homeAdvertisementDto,_that.homeUserDto,_that.homeRecentBeneficiariesDto,_that.commonSourceSelectableDto,_that.selectedCommonSourceItem,_that.commonDestinationSelectableDto,_that.selectedCommonDestinationItem,_that.homeTransferTypeDto,_that.selectedTransferTypeItem,_that.homeBankOrAgentListDto,_that.selectedBankOrAgentItem,_that.homePaymentMethodDto,_that.selectedPaymentMethodItem,_that.commonSendMoneyDto,_that.homeBeneficiaryListDto,_that.selectedBeneficiaryIndex,_that.currentEmailAddress,_that.emailAddress,_that.emailOtp,_that.homeAdvertisementFailureOrSuccessOption,_that.homeUserFailureOrSuccessOption,_that.homeRecentBeneficiariesFailureOrSuccessOption,_that.homeSourceCurrencyListFailureOrSuccessOption,_that.homeDestinationCurrencyListFailureOrSuccessOption,_that.homeTransferTypesFailureOrSuccessOption,_that.homeBankOrAgentListFailureOrSuccessOption,_that.homePaymentMethodFailureOrSuccessOption,_that.homeCalculatedSourceAmountFailureOrSuccessOption,_that.homeCalculatedDestinationAmountFailureOrSuccessOption,_that.homeBeneficiaryListFailureOrSuccessOption,_that.homeDeleteBeneficiaryFailureOrSuccessOption,_that.homeRequestEmailOtpFailureOrSuccessOption,_that.homeVerifyEmailOtpFailureOrSuccessOption);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isUserLoading,  bool isRecentBeneficiariesLoading,  bool isSendMoneyFormLoading,  bool isRefreshing,  bool isSubmitting,  bool isOtpSubmitting,  bool showErrorMessages,  bool showOtpErrorMessages,  bool isRateLoading,  bool isSourceAmountCalculating,  bool isDestinationAmountCalculating,  bool isBeneficiaryListLoading,  bool isDeletingBeneficiary,  String lastRawSourceAmount,  String lastRawDestinationAmount,  bool isLastInputSource,  HomeAdvertisementDto? homeAdvertisementDto,  HomeUserDto? homeUserDto,  HomeRecentBeneficiariesDto? homeRecentBeneficiariesDto,  CommonSelectableDto? commonSourceSelectableDto,  CommonSelectableItem? selectedCommonSourceItem,  CommonSelectableDto? commonDestinationSelectableDto,  CommonSelectableItem? selectedCommonDestinationItem,  HomeTransferTypeDto? homeTransferTypeDto,  CommonSelectableItem? selectedTransferTypeItem,  HomeBankOrAgentListDto? homeBankOrAgentListDto,  CommonSelectableItem? selectedBankOrAgentItem,  HomePaymentMethodDto? homePaymentMethodDto,  CommonSelectableItem? selectedPaymentMethodItem,  CommonSendMoneyDto commonSendMoneyDto,  HomeBeneficiaryListDto? homeBeneficiaryListDto,  int selectedBeneficiaryIndex,  String currentEmailAddress,  EmailAddress emailAddress,  Otp emailOtp,  Option<Either<HomeFailure, HomeAdvertisementDto>> homeAdvertisementFailureOrSuccessOption,  Option<Either<HomeFailure, HomeUserDto>> homeUserFailureOrSuccessOption,  Option<Either<HomeFailure, HomeRecentBeneficiariesDto>> homeRecentBeneficiariesFailureOrSuccessOption,  Option<Either<HomeFailure, HomeSourceCurrencyListDto>> homeSourceCurrencyListFailureOrSuccessOption,  Option<Either<HomeFailure, HomeDestinationCurrencyListDto>> homeDestinationCurrencyListFailureOrSuccessOption,  Option<Either<HomeFailure, HomeTransferTypeDto>> homeTransferTypesFailureOrSuccessOption,  Option<Either<HomeFailure, HomeBankOrAgentListDto>> homeBankOrAgentListFailureOrSuccessOption,  Option<Either<HomeFailure, HomePaymentMethodDto>> homePaymentMethodFailureOrSuccessOption,  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedSourceAmountFailureOrSuccessOption,  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedDestinationAmountFailureOrSuccessOption,  Option<Either<HomeFailure, HomeBeneficiaryListDto>> homeBeneficiaryListFailureOrSuccessOption,  Option<Either<HomeFailure, String>> homeDeleteBeneficiaryFailureOrSuccessOption,  Option<Either<HomeFailure, Unit>> homeRequestEmailOtpFailureOrSuccessOption,  Option<Either<HomeFailure, Unit>> homeVerifyEmailOtpFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isUserLoading,_that.isRecentBeneficiariesLoading,_that.isSendMoneyFormLoading,_that.isRefreshing,_that.isSubmitting,_that.isOtpSubmitting,_that.showErrorMessages,_that.showOtpErrorMessages,_that.isRateLoading,_that.isSourceAmountCalculating,_that.isDestinationAmountCalculating,_that.isBeneficiaryListLoading,_that.isDeletingBeneficiary,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource,_that.homeAdvertisementDto,_that.homeUserDto,_that.homeRecentBeneficiariesDto,_that.commonSourceSelectableDto,_that.selectedCommonSourceItem,_that.commonDestinationSelectableDto,_that.selectedCommonDestinationItem,_that.homeTransferTypeDto,_that.selectedTransferTypeItem,_that.homeBankOrAgentListDto,_that.selectedBankOrAgentItem,_that.homePaymentMethodDto,_that.selectedPaymentMethodItem,_that.commonSendMoneyDto,_that.homeBeneficiaryListDto,_that.selectedBeneficiaryIndex,_that.currentEmailAddress,_that.emailAddress,_that.emailOtp,_that.homeAdvertisementFailureOrSuccessOption,_that.homeUserFailureOrSuccessOption,_that.homeRecentBeneficiariesFailureOrSuccessOption,_that.homeSourceCurrencyListFailureOrSuccessOption,_that.homeDestinationCurrencyListFailureOrSuccessOption,_that.homeTransferTypesFailureOrSuccessOption,_that.homeBankOrAgentListFailureOrSuccessOption,_that.homePaymentMethodFailureOrSuccessOption,_that.homeCalculatedSourceAmountFailureOrSuccessOption,_that.homeCalculatedDestinationAmountFailureOrSuccessOption,_that.homeBeneficiaryListFailureOrSuccessOption,_that.homeDeleteBeneficiaryFailureOrSuccessOption,_that.homeRequestEmailOtpFailureOrSuccessOption,_that.homeVerifyEmailOtpFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.isUserLoading = true, this.isRecentBeneficiariesLoading = true, this.isSendMoneyFormLoading = true, this.isRefreshing = false, required this.isSubmitting, required this.isOtpSubmitting, required this.showErrorMessages, required this.showOtpErrorMessages, required this.isRateLoading, required this.isSourceAmountCalculating, required this.isDestinationAmountCalculating, required this.isBeneficiaryListLoading, required this.isDeletingBeneficiary, this.lastRawSourceAmount = '', this.lastRawDestinationAmount = '', this.isLastInputSource = true, this.homeAdvertisementDto, this.homeUserDto, this.homeRecentBeneficiariesDto, this.commonSourceSelectableDto, this.selectedCommonSourceItem, this.commonDestinationSelectableDto, this.selectedCommonDestinationItem, this.homeTransferTypeDto, this.selectedTransferTypeItem, this.homeBankOrAgentListDto, this.selectedBankOrAgentItem, this.homePaymentMethodDto, this.selectedPaymentMethodItem, required this.commonSendMoneyDto, this.homeBeneficiaryListDto, required this.selectedBeneficiaryIndex, required this.currentEmailAddress, required this.emailAddress, required this.emailOtp, required this.homeAdvertisementFailureOrSuccessOption, required this.homeUserFailureOrSuccessOption, required this.homeRecentBeneficiariesFailureOrSuccessOption, required this.homeSourceCurrencyListFailureOrSuccessOption, required this.homeDestinationCurrencyListFailureOrSuccessOption, required this.homeTransferTypesFailureOrSuccessOption, required this.homeBankOrAgentListFailureOrSuccessOption, required this.homePaymentMethodFailureOrSuccessOption, required this.homeCalculatedSourceAmountFailureOrSuccessOption, required this.homeCalculatedDestinationAmountFailureOrSuccessOption, required this.homeBeneficiaryListFailureOrSuccessOption, required this.homeDeleteBeneficiaryFailureOrSuccessOption, required this.homeRequestEmailOtpFailureOrSuccessOption, required this.homeVerifyEmailOtpFailureOrSuccessOption});
  

@override@JsonKey() final  bool isUserLoading;
@override@JsonKey() final  bool isRecentBeneficiariesLoading;
@override@JsonKey() final  bool isSendMoneyFormLoading;
@override@JsonKey() final  bool isRefreshing;
@override final  bool isSubmitting;
@override final  bool isOtpSubmitting;
@override final  bool showErrorMessages;
@override final  bool showOtpErrorMessages;
@override final  bool isRateLoading;
@override final  bool isSourceAmountCalculating;
@override final  bool isDestinationAmountCalculating;
@override final  bool isBeneficiaryListLoading;
@override final  bool isDeletingBeneficiary;
@override@JsonKey() final  String lastRawSourceAmount;
@override@JsonKey() final  String lastRawDestinationAmount;
@override@JsonKey() final  bool isLastInputSource;
@override final  HomeAdvertisementDto? homeAdvertisementDto;
@override final  HomeUserDto? homeUserDto;
@override final  HomeRecentBeneficiariesDto? homeRecentBeneficiariesDto;
@override final  CommonSelectableDto? commonSourceSelectableDto;
@override final  CommonSelectableItem? selectedCommonSourceItem;
@override final  CommonSelectableDto? commonDestinationSelectableDto;
@override final  CommonSelectableItem? selectedCommonDestinationItem;
@override final  HomeTransferTypeDto? homeTransferTypeDto;
@override final  CommonSelectableItem? selectedTransferTypeItem;
@override final  HomeBankOrAgentListDto? homeBankOrAgentListDto;
@override final  CommonSelectableItem? selectedBankOrAgentItem;
@override final  HomePaymentMethodDto? homePaymentMethodDto;
@override final  CommonSelectableItem? selectedPaymentMethodItem;
@override final  CommonSendMoneyDto commonSendMoneyDto;
@override final  HomeBeneficiaryListDto? homeBeneficiaryListDto;
@override final  int selectedBeneficiaryIndex;
@override final  String currentEmailAddress;
@override final  EmailAddress emailAddress;
@override final  Otp emailOtp;
@override final  Option<Either<HomeFailure, HomeAdvertisementDto>> homeAdvertisementFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeUserDto>> homeUserFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeRecentBeneficiariesDto>> homeRecentBeneficiariesFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeSourceCurrencyListDto>> homeSourceCurrencyListFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeDestinationCurrencyListDto>> homeDestinationCurrencyListFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeTransferTypeDto>> homeTransferTypesFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeBankOrAgentListDto>> homeBankOrAgentListFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomePaymentMethodDto>> homePaymentMethodFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedSourceAmountFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedDestinationAmountFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, HomeBeneficiaryListDto>> homeBeneficiaryListFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, String>> homeDeleteBeneficiaryFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, Unit>> homeRequestEmailOtpFailureOrSuccessOption;
@override final  Option<Either<HomeFailure, Unit>> homeVerifyEmailOtpFailureOrSuccessOption;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isUserLoading, isUserLoading) || other.isUserLoading == isUserLoading)&&(identical(other.isRecentBeneficiariesLoading, isRecentBeneficiariesLoading) || other.isRecentBeneficiariesLoading == isRecentBeneficiariesLoading)&&(identical(other.isSendMoneyFormLoading, isSendMoneyFormLoading) || other.isSendMoneyFormLoading == isSendMoneyFormLoading)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.isRateLoading, isRateLoading) || other.isRateLoading == isRateLoading)&&(identical(other.isSourceAmountCalculating, isSourceAmountCalculating) || other.isSourceAmountCalculating == isSourceAmountCalculating)&&(identical(other.isDestinationAmountCalculating, isDestinationAmountCalculating) || other.isDestinationAmountCalculating == isDestinationAmountCalculating)&&(identical(other.isBeneficiaryListLoading, isBeneficiaryListLoading) || other.isBeneficiaryListLoading == isBeneficiaryListLoading)&&(identical(other.isDeletingBeneficiary, isDeletingBeneficiary) || other.isDeletingBeneficiary == isDeletingBeneficiary)&&(identical(other.lastRawSourceAmount, lastRawSourceAmount) || other.lastRawSourceAmount == lastRawSourceAmount)&&(identical(other.lastRawDestinationAmount, lastRawDestinationAmount) || other.lastRawDestinationAmount == lastRawDestinationAmount)&&(identical(other.isLastInputSource, isLastInputSource) || other.isLastInputSource == isLastInputSource)&&(identical(other.homeAdvertisementDto, homeAdvertisementDto) || other.homeAdvertisementDto == homeAdvertisementDto)&&(identical(other.homeUserDto, homeUserDto) || other.homeUserDto == homeUserDto)&&(identical(other.homeRecentBeneficiariesDto, homeRecentBeneficiariesDto) || other.homeRecentBeneficiariesDto == homeRecentBeneficiariesDto)&&(identical(other.commonSourceSelectableDto, commonSourceSelectableDto) || other.commonSourceSelectableDto == commonSourceSelectableDto)&&(identical(other.selectedCommonSourceItem, selectedCommonSourceItem) || other.selectedCommonSourceItem == selectedCommonSourceItem)&&(identical(other.commonDestinationSelectableDto, commonDestinationSelectableDto) || other.commonDestinationSelectableDto == commonDestinationSelectableDto)&&(identical(other.selectedCommonDestinationItem, selectedCommonDestinationItem) || other.selectedCommonDestinationItem == selectedCommonDestinationItem)&&(identical(other.homeTransferTypeDto, homeTransferTypeDto) || other.homeTransferTypeDto == homeTransferTypeDto)&&(identical(other.selectedTransferTypeItem, selectedTransferTypeItem) || other.selectedTransferTypeItem == selectedTransferTypeItem)&&(identical(other.homeBankOrAgentListDto, homeBankOrAgentListDto) || other.homeBankOrAgentListDto == homeBankOrAgentListDto)&&(identical(other.selectedBankOrAgentItem, selectedBankOrAgentItem) || other.selectedBankOrAgentItem == selectedBankOrAgentItem)&&(identical(other.homePaymentMethodDto, homePaymentMethodDto) || other.homePaymentMethodDto == homePaymentMethodDto)&&(identical(other.selectedPaymentMethodItem, selectedPaymentMethodItem) || other.selectedPaymentMethodItem == selectedPaymentMethodItem)&&(identical(other.commonSendMoneyDto, commonSendMoneyDto) || other.commonSendMoneyDto == commonSendMoneyDto)&&(identical(other.homeBeneficiaryListDto, homeBeneficiaryListDto) || other.homeBeneficiaryListDto == homeBeneficiaryListDto)&&(identical(other.selectedBeneficiaryIndex, selectedBeneficiaryIndex) || other.selectedBeneficiaryIndex == selectedBeneficiaryIndex)&&(identical(other.currentEmailAddress, currentEmailAddress) || other.currentEmailAddress == currentEmailAddress)&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.emailOtp, emailOtp) || other.emailOtp == emailOtp)&&(identical(other.homeAdvertisementFailureOrSuccessOption, homeAdvertisementFailureOrSuccessOption) || other.homeAdvertisementFailureOrSuccessOption == homeAdvertisementFailureOrSuccessOption)&&(identical(other.homeUserFailureOrSuccessOption, homeUserFailureOrSuccessOption) || other.homeUserFailureOrSuccessOption == homeUserFailureOrSuccessOption)&&(identical(other.homeRecentBeneficiariesFailureOrSuccessOption, homeRecentBeneficiariesFailureOrSuccessOption) || other.homeRecentBeneficiariesFailureOrSuccessOption == homeRecentBeneficiariesFailureOrSuccessOption)&&(identical(other.homeSourceCurrencyListFailureOrSuccessOption, homeSourceCurrencyListFailureOrSuccessOption) || other.homeSourceCurrencyListFailureOrSuccessOption == homeSourceCurrencyListFailureOrSuccessOption)&&(identical(other.homeDestinationCurrencyListFailureOrSuccessOption, homeDestinationCurrencyListFailureOrSuccessOption) || other.homeDestinationCurrencyListFailureOrSuccessOption == homeDestinationCurrencyListFailureOrSuccessOption)&&(identical(other.homeTransferTypesFailureOrSuccessOption, homeTransferTypesFailureOrSuccessOption) || other.homeTransferTypesFailureOrSuccessOption == homeTransferTypesFailureOrSuccessOption)&&(identical(other.homeBankOrAgentListFailureOrSuccessOption, homeBankOrAgentListFailureOrSuccessOption) || other.homeBankOrAgentListFailureOrSuccessOption == homeBankOrAgentListFailureOrSuccessOption)&&(identical(other.homePaymentMethodFailureOrSuccessOption, homePaymentMethodFailureOrSuccessOption) || other.homePaymentMethodFailureOrSuccessOption == homePaymentMethodFailureOrSuccessOption)&&(identical(other.homeCalculatedSourceAmountFailureOrSuccessOption, homeCalculatedSourceAmountFailureOrSuccessOption) || other.homeCalculatedSourceAmountFailureOrSuccessOption == homeCalculatedSourceAmountFailureOrSuccessOption)&&(identical(other.homeCalculatedDestinationAmountFailureOrSuccessOption, homeCalculatedDestinationAmountFailureOrSuccessOption) || other.homeCalculatedDestinationAmountFailureOrSuccessOption == homeCalculatedDestinationAmountFailureOrSuccessOption)&&(identical(other.homeBeneficiaryListFailureOrSuccessOption, homeBeneficiaryListFailureOrSuccessOption) || other.homeBeneficiaryListFailureOrSuccessOption == homeBeneficiaryListFailureOrSuccessOption)&&(identical(other.homeDeleteBeneficiaryFailureOrSuccessOption, homeDeleteBeneficiaryFailureOrSuccessOption) || other.homeDeleteBeneficiaryFailureOrSuccessOption == homeDeleteBeneficiaryFailureOrSuccessOption)&&(identical(other.homeRequestEmailOtpFailureOrSuccessOption, homeRequestEmailOtpFailureOrSuccessOption) || other.homeRequestEmailOtpFailureOrSuccessOption == homeRequestEmailOtpFailureOrSuccessOption)&&(identical(other.homeVerifyEmailOtpFailureOrSuccessOption, homeVerifyEmailOtpFailureOrSuccessOption) || other.homeVerifyEmailOtpFailureOrSuccessOption == homeVerifyEmailOtpFailureOrSuccessOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isUserLoading,isRecentBeneficiariesLoading,isSendMoneyFormLoading,isRefreshing,isSubmitting,isOtpSubmitting,showErrorMessages,showOtpErrorMessages,isRateLoading,isSourceAmountCalculating,isDestinationAmountCalculating,isBeneficiaryListLoading,isDeletingBeneficiary,lastRawSourceAmount,lastRawDestinationAmount,isLastInputSource,homeAdvertisementDto,homeUserDto,homeRecentBeneficiariesDto,commonSourceSelectableDto,selectedCommonSourceItem,commonDestinationSelectableDto,selectedCommonDestinationItem,homeTransferTypeDto,selectedTransferTypeItem,homeBankOrAgentListDto,selectedBankOrAgentItem,homePaymentMethodDto,selectedPaymentMethodItem,commonSendMoneyDto,homeBeneficiaryListDto,selectedBeneficiaryIndex,currentEmailAddress,emailAddress,emailOtp,homeAdvertisementFailureOrSuccessOption,homeUserFailureOrSuccessOption,homeRecentBeneficiariesFailureOrSuccessOption,homeSourceCurrencyListFailureOrSuccessOption,homeDestinationCurrencyListFailureOrSuccessOption,homeTransferTypesFailureOrSuccessOption,homeBankOrAgentListFailureOrSuccessOption,homePaymentMethodFailureOrSuccessOption,homeCalculatedSourceAmountFailureOrSuccessOption,homeCalculatedDestinationAmountFailureOrSuccessOption,homeBeneficiaryListFailureOrSuccessOption,homeDeleteBeneficiaryFailureOrSuccessOption,homeRequestEmailOtpFailureOrSuccessOption,homeVerifyEmailOtpFailureOrSuccessOption]);

@override
String toString() {
  return 'HomeState(isUserLoading: $isUserLoading, isRecentBeneficiariesLoading: $isRecentBeneficiariesLoading, isSendMoneyFormLoading: $isSendMoneyFormLoading, isRefreshing: $isRefreshing, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, showErrorMessages: $showErrorMessages, showOtpErrorMessages: $showOtpErrorMessages, isRateLoading: $isRateLoading, isSourceAmountCalculating: $isSourceAmountCalculating, isDestinationAmountCalculating: $isDestinationAmountCalculating, isBeneficiaryListLoading: $isBeneficiaryListLoading, isDeletingBeneficiary: $isDeletingBeneficiary, lastRawSourceAmount: $lastRawSourceAmount, lastRawDestinationAmount: $lastRawDestinationAmount, isLastInputSource: $isLastInputSource, homeAdvertisementDto: $homeAdvertisementDto, homeUserDto: $homeUserDto, homeRecentBeneficiariesDto: $homeRecentBeneficiariesDto, commonSourceSelectableDto: $commonSourceSelectableDto, selectedCommonSourceItem: $selectedCommonSourceItem, commonDestinationSelectableDto: $commonDestinationSelectableDto, selectedCommonDestinationItem: $selectedCommonDestinationItem, homeTransferTypeDto: $homeTransferTypeDto, selectedTransferTypeItem: $selectedTransferTypeItem, homeBankOrAgentListDto: $homeBankOrAgentListDto, selectedBankOrAgentItem: $selectedBankOrAgentItem, homePaymentMethodDto: $homePaymentMethodDto, selectedPaymentMethodItem: $selectedPaymentMethodItem, commonSendMoneyDto: $commonSendMoneyDto, homeBeneficiaryListDto: $homeBeneficiaryListDto, selectedBeneficiaryIndex: $selectedBeneficiaryIndex, currentEmailAddress: $currentEmailAddress, emailAddress: $emailAddress, emailOtp: $emailOtp, homeAdvertisementFailureOrSuccessOption: $homeAdvertisementFailureOrSuccessOption, homeUserFailureOrSuccessOption: $homeUserFailureOrSuccessOption, homeRecentBeneficiariesFailureOrSuccessOption: $homeRecentBeneficiariesFailureOrSuccessOption, homeSourceCurrencyListFailureOrSuccessOption: $homeSourceCurrencyListFailureOrSuccessOption, homeDestinationCurrencyListFailureOrSuccessOption: $homeDestinationCurrencyListFailureOrSuccessOption, homeTransferTypesFailureOrSuccessOption: $homeTransferTypesFailureOrSuccessOption, homeBankOrAgentListFailureOrSuccessOption: $homeBankOrAgentListFailureOrSuccessOption, homePaymentMethodFailureOrSuccessOption: $homePaymentMethodFailureOrSuccessOption, homeCalculatedSourceAmountFailureOrSuccessOption: $homeCalculatedSourceAmountFailureOrSuccessOption, homeCalculatedDestinationAmountFailureOrSuccessOption: $homeCalculatedDestinationAmountFailureOrSuccessOption, homeBeneficiaryListFailureOrSuccessOption: $homeBeneficiaryListFailureOrSuccessOption, homeDeleteBeneficiaryFailureOrSuccessOption: $homeDeleteBeneficiaryFailureOrSuccessOption, homeRequestEmailOtpFailureOrSuccessOption: $homeRequestEmailOtpFailureOrSuccessOption, homeVerifyEmailOtpFailureOrSuccessOption: $homeVerifyEmailOtpFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isUserLoading, bool isRecentBeneficiariesLoading, bool isSendMoneyFormLoading, bool isRefreshing, bool isSubmitting, bool isOtpSubmitting, bool showErrorMessages, bool showOtpErrorMessages, bool isRateLoading, bool isSourceAmountCalculating, bool isDestinationAmountCalculating, bool isBeneficiaryListLoading, bool isDeletingBeneficiary, String lastRawSourceAmount, String lastRawDestinationAmount, bool isLastInputSource, HomeAdvertisementDto? homeAdvertisementDto, HomeUserDto? homeUserDto, HomeRecentBeneficiariesDto? homeRecentBeneficiariesDto, CommonSelectableDto? commonSourceSelectableDto, CommonSelectableItem? selectedCommonSourceItem, CommonSelectableDto? commonDestinationSelectableDto, CommonSelectableItem? selectedCommonDestinationItem, HomeTransferTypeDto? homeTransferTypeDto, CommonSelectableItem? selectedTransferTypeItem, HomeBankOrAgentListDto? homeBankOrAgentListDto, CommonSelectableItem? selectedBankOrAgentItem, HomePaymentMethodDto? homePaymentMethodDto, CommonSelectableItem? selectedPaymentMethodItem, CommonSendMoneyDto commonSendMoneyDto, HomeBeneficiaryListDto? homeBeneficiaryListDto, int selectedBeneficiaryIndex, String currentEmailAddress, EmailAddress emailAddress, Otp emailOtp, Option<Either<HomeFailure, HomeAdvertisementDto>> homeAdvertisementFailureOrSuccessOption, Option<Either<HomeFailure, HomeUserDto>> homeUserFailureOrSuccessOption, Option<Either<HomeFailure, HomeRecentBeneficiariesDto>> homeRecentBeneficiariesFailureOrSuccessOption, Option<Either<HomeFailure, HomeSourceCurrencyListDto>> homeSourceCurrencyListFailureOrSuccessOption, Option<Either<HomeFailure, HomeDestinationCurrencyListDto>> homeDestinationCurrencyListFailureOrSuccessOption, Option<Either<HomeFailure, HomeTransferTypeDto>> homeTransferTypesFailureOrSuccessOption, Option<Either<HomeFailure, HomeBankOrAgentListDto>> homeBankOrAgentListFailureOrSuccessOption, Option<Either<HomeFailure, HomePaymentMethodDto>> homePaymentMethodFailureOrSuccessOption, Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedSourceAmountFailureOrSuccessOption, Option<Either<HomeFailure, HomeCalculateAmountDto>> homeCalculatedDestinationAmountFailureOrSuccessOption, Option<Either<HomeFailure, HomeBeneficiaryListDto>> homeBeneficiaryListFailureOrSuccessOption, Option<Either<HomeFailure, String>> homeDeleteBeneficiaryFailureOrSuccessOption, Option<Either<HomeFailure, Unit>> homeRequestEmailOtpFailureOrSuccessOption, Option<Either<HomeFailure, Unit>> homeVerifyEmailOtpFailureOrSuccessOption
});


@override $HomeAdvertisementDtoCopyWith<$Res>? get homeAdvertisementDto;@override $HomeUserDtoCopyWith<$Res>? get homeUserDto;@override $HomeRecentBeneficiariesDtoCopyWith<$Res>? get homeRecentBeneficiariesDto;@override $CommonSelectableDtoCopyWith<$Res>? get commonSourceSelectableDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedCommonSourceItem;@override $CommonSelectableDtoCopyWith<$Res>? get commonDestinationSelectableDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedCommonDestinationItem;@override $HomeTransferTypeDtoCopyWith<$Res>? get homeTransferTypeDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedTransferTypeItem;@override $HomeBankOrAgentListDtoCopyWith<$Res>? get homeBankOrAgentListDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedBankOrAgentItem;@override $HomePaymentMethodDtoCopyWith<$Res>? get homePaymentMethodDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedPaymentMethodItem;@override $CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto;@override $HomeBeneficiaryListDtoCopyWith<$Res>? get homeBeneficiaryListDto;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isUserLoading = null,Object? isRecentBeneficiariesLoading = null,Object? isSendMoneyFormLoading = null,Object? isRefreshing = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? showErrorMessages = null,Object? showOtpErrorMessages = null,Object? isRateLoading = null,Object? isSourceAmountCalculating = null,Object? isDestinationAmountCalculating = null,Object? isBeneficiaryListLoading = null,Object? isDeletingBeneficiary = null,Object? lastRawSourceAmount = null,Object? lastRawDestinationAmount = null,Object? isLastInputSource = null,Object? homeAdvertisementDto = freezed,Object? homeUserDto = freezed,Object? homeRecentBeneficiariesDto = freezed,Object? commonSourceSelectableDto = freezed,Object? selectedCommonSourceItem = freezed,Object? commonDestinationSelectableDto = freezed,Object? selectedCommonDestinationItem = freezed,Object? homeTransferTypeDto = freezed,Object? selectedTransferTypeItem = freezed,Object? homeBankOrAgentListDto = freezed,Object? selectedBankOrAgentItem = freezed,Object? homePaymentMethodDto = freezed,Object? selectedPaymentMethodItem = freezed,Object? commonSendMoneyDto = null,Object? homeBeneficiaryListDto = freezed,Object? selectedBeneficiaryIndex = null,Object? currentEmailAddress = null,Object? emailAddress = null,Object? emailOtp = null,Object? homeAdvertisementFailureOrSuccessOption = null,Object? homeUserFailureOrSuccessOption = null,Object? homeRecentBeneficiariesFailureOrSuccessOption = null,Object? homeSourceCurrencyListFailureOrSuccessOption = null,Object? homeDestinationCurrencyListFailureOrSuccessOption = null,Object? homeTransferTypesFailureOrSuccessOption = null,Object? homeBankOrAgentListFailureOrSuccessOption = null,Object? homePaymentMethodFailureOrSuccessOption = null,Object? homeCalculatedSourceAmountFailureOrSuccessOption = null,Object? homeCalculatedDestinationAmountFailureOrSuccessOption = null,Object? homeBeneficiaryListFailureOrSuccessOption = null,Object? homeDeleteBeneficiaryFailureOrSuccessOption = null,Object? homeRequestEmailOtpFailureOrSuccessOption = null,Object? homeVerifyEmailOtpFailureOrSuccessOption = null,}) {
  return _then(_HomeState(
isUserLoading: null == isUserLoading ? _self.isUserLoading : isUserLoading // ignore: cast_nullable_to_non_nullable
as bool,isRecentBeneficiariesLoading: null == isRecentBeneficiariesLoading ? _self.isRecentBeneficiariesLoading : isRecentBeneficiariesLoading // ignore: cast_nullable_to_non_nullable
as bool,isSendMoneyFormLoading: null == isSendMoneyFormLoading ? _self.isSendMoneyFormLoading : isSendMoneyFormLoading // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isRateLoading: null == isRateLoading ? _self.isRateLoading : isRateLoading // ignore: cast_nullable_to_non_nullable
as bool,isSourceAmountCalculating: null == isSourceAmountCalculating ? _self.isSourceAmountCalculating : isSourceAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,isDestinationAmountCalculating: null == isDestinationAmountCalculating ? _self.isDestinationAmountCalculating : isDestinationAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,isBeneficiaryListLoading: null == isBeneficiaryListLoading ? _self.isBeneficiaryListLoading : isBeneficiaryListLoading // ignore: cast_nullable_to_non_nullable
as bool,isDeletingBeneficiary: null == isDeletingBeneficiary ? _self.isDeletingBeneficiary : isDeletingBeneficiary // ignore: cast_nullable_to_non_nullable
as bool,lastRawSourceAmount: null == lastRawSourceAmount ? _self.lastRawSourceAmount : lastRawSourceAmount // ignore: cast_nullable_to_non_nullable
as String,lastRawDestinationAmount: null == lastRawDestinationAmount ? _self.lastRawDestinationAmount : lastRawDestinationAmount // ignore: cast_nullable_to_non_nullable
as String,isLastInputSource: null == isLastInputSource ? _self.isLastInputSource : isLastInputSource // ignore: cast_nullable_to_non_nullable
as bool,homeAdvertisementDto: freezed == homeAdvertisementDto ? _self.homeAdvertisementDto : homeAdvertisementDto // ignore: cast_nullable_to_non_nullable
as HomeAdvertisementDto?,homeUserDto: freezed == homeUserDto ? _self.homeUserDto : homeUserDto // ignore: cast_nullable_to_non_nullable
as HomeUserDto?,homeRecentBeneficiariesDto: freezed == homeRecentBeneficiariesDto ? _self.homeRecentBeneficiariesDto : homeRecentBeneficiariesDto // ignore: cast_nullable_to_non_nullable
as HomeRecentBeneficiariesDto?,commonSourceSelectableDto: freezed == commonSourceSelectableDto ? _self.commonSourceSelectableDto : commonSourceSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonSourceItem: freezed == selectedCommonSourceItem ? _self.selectedCommonSourceItem : selectedCommonSourceItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonDestinationSelectableDto: freezed == commonDestinationSelectableDto ? _self.commonDestinationSelectableDto : commonDestinationSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonDestinationItem: freezed == selectedCommonDestinationItem ? _self.selectedCommonDestinationItem : selectedCommonDestinationItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,homeTransferTypeDto: freezed == homeTransferTypeDto ? _self.homeTransferTypeDto : homeTransferTypeDto // ignore: cast_nullable_to_non_nullable
as HomeTransferTypeDto?,selectedTransferTypeItem: freezed == selectedTransferTypeItem ? _self.selectedTransferTypeItem : selectedTransferTypeItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,homeBankOrAgentListDto: freezed == homeBankOrAgentListDto ? _self.homeBankOrAgentListDto : homeBankOrAgentListDto // ignore: cast_nullable_to_non_nullable
as HomeBankOrAgentListDto?,selectedBankOrAgentItem: freezed == selectedBankOrAgentItem ? _self.selectedBankOrAgentItem : selectedBankOrAgentItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,homePaymentMethodDto: freezed == homePaymentMethodDto ? _self.homePaymentMethodDto : homePaymentMethodDto // ignore: cast_nullable_to_non_nullable
as HomePaymentMethodDto?,selectedPaymentMethodItem: freezed == selectedPaymentMethodItem ? _self.selectedPaymentMethodItem : selectedPaymentMethodItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonSendMoneyDto: null == commonSendMoneyDto ? _self.commonSendMoneyDto : commonSendMoneyDto // ignore: cast_nullable_to_non_nullable
as CommonSendMoneyDto,homeBeneficiaryListDto: freezed == homeBeneficiaryListDto ? _self.homeBeneficiaryListDto : homeBeneficiaryListDto // ignore: cast_nullable_to_non_nullable
as HomeBeneficiaryListDto?,selectedBeneficiaryIndex: null == selectedBeneficiaryIndex ? _self.selectedBeneficiaryIndex : selectedBeneficiaryIndex // ignore: cast_nullable_to_non_nullable
as int,currentEmailAddress: null == currentEmailAddress ? _self.currentEmailAddress : currentEmailAddress // ignore: cast_nullable_to_non_nullable
as String,emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as EmailAddress,emailOtp: null == emailOtp ? _self.emailOtp : emailOtp // ignore: cast_nullable_to_non_nullable
as Otp,homeAdvertisementFailureOrSuccessOption: null == homeAdvertisementFailureOrSuccessOption ? _self.homeAdvertisementFailureOrSuccessOption : homeAdvertisementFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeAdvertisementDto>>,homeUserFailureOrSuccessOption: null == homeUserFailureOrSuccessOption ? _self.homeUserFailureOrSuccessOption : homeUserFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeUserDto>>,homeRecentBeneficiariesFailureOrSuccessOption: null == homeRecentBeneficiariesFailureOrSuccessOption ? _self.homeRecentBeneficiariesFailureOrSuccessOption : homeRecentBeneficiariesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeRecentBeneficiariesDto>>,homeSourceCurrencyListFailureOrSuccessOption: null == homeSourceCurrencyListFailureOrSuccessOption ? _self.homeSourceCurrencyListFailureOrSuccessOption : homeSourceCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeSourceCurrencyListDto>>,homeDestinationCurrencyListFailureOrSuccessOption: null == homeDestinationCurrencyListFailureOrSuccessOption ? _self.homeDestinationCurrencyListFailureOrSuccessOption : homeDestinationCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeDestinationCurrencyListDto>>,homeTransferTypesFailureOrSuccessOption: null == homeTransferTypesFailureOrSuccessOption ? _self.homeTransferTypesFailureOrSuccessOption : homeTransferTypesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeTransferTypeDto>>,homeBankOrAgentListFailureOrSuccessOption: null == homeBankOrAgentListFailureOrSuccessOption ? _self.homeBankOrAgentListFailureOrSuccessOption : homeBankOrAgentListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeBankOrAgentListDto>>,homePaymentMethodFailureOrSuccessOption: null == homePaymentMethodFailureOrSuccessOption ? _self.homePaymentMethodFailureOrSuccessOption : homePaymentMethodFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomePaymentMethodDto>>,homeCalculatedSourceAmountFailureOrSuccessOption: null == homeCalculatedSourceAmountFailureOrSuccessOption ? _self.homeCalculatedSourceAmountFailureOrSuccessOption : homeCalculatedSourceAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeCalculateAmountDto>>,homeCalculatedDestinationAmountFailureOrSuccessOption: null == homeCalculatedDestinationAmountFailureOrSuccessOption ? _self.homeCalculatedDestinationAmountFailureOrSuccessOption : homeCalculatedDestinationAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeCalculateAmountDto>>,homeBeneficiaryListFailureOrSuccessOption: null == homeBeneficiaryListFailureOrSuccessOption ? _self.homeBeneficiaryListFailureOrSuccessOption : homeBeneficiaryListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, HomeBeneficiaryListDto>>,homeDeleteBeneficiaryFailureOrSuccessOption: null == homeDeleteBeneficiaryFailureOrSuccessOption ? _self.homeDeleteBeneficiaryFailureOrSuccessOption : homeDeleteBeneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, String>>,homeRequestEmailOtpFailureOrSuccessOption: null == homeRequestEmailOtpFailureOrSuccessOption ? _self.homeRequestEmailOtpFailureOrSuccessOption : homeRequestEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, Unit>>,homeVerifyEmailOtpFailureOrSuccessOption: null == homeVerifyEmailOtpFailureOrSuccessOption ? _self.homeVerifyEmailOtpFailureOrSuccessOption : homeVerifyEmailOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<HomeFailure, Unit>>,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeAdvertisementDtoCopyWith<$Res>? get homeAdvertisementDto {
    if (_self.homeAdvertisementDto == null) {
    return null;
  }

  return $HomeAdvertisementDtoCopyWith<$Res>(_self.homeAdvertisementDto!, (value) {
    return _then(_self.copyWith(homeAdvertisementDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeUserDtoCopyWith<$Res>? get homeUserDto {
    if (_self.homeUserDto == null) {
    return null;
  }

  return $HomeUserDtoCopyWith<$Res>(_self.homeUserDto!, (value) {
    return _then(_self.copyWith(homeUserDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeRecentBeneficiariesDtoCopyWith<$Res>? get homeRecentBeneficiariesDto {
    if (_self.homeRecentBeneficiariesDto == null) {
    return null;
  }

  return $HomeRecentBeneficiariesDtoCopyWith<$Res>(_self.homeRecentBeneficiariesDto!, (value) {
    return _then(_self.copyWith(homeRecentBeneficiariesDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDtoCopyWith<$Res>? get commonSourceSelectableDto {
    if (_self.commonSourceSelectableDto == null) {
    return null;
  }

  return $CommonSelectableDtoCopyWith<$Res>(_self.commonSourceSelectableDto!, (value) {
    return _then(_self.copyWith(commonSourceSelectableDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedCommonSourceItem {
    if (_self.selectedCommonSourceItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedCommonSourceItem!, (value) {
    return _then(_self.copyWith(selectedCommonSourceItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDtoCopyWith<$Res>? get commonDestinationSelectableDto {
    if (_self.commonDestinationSelectableDto == null) {
    return null;
  }

  return $CommonSelectableDtoCopyWith<$Res>(_self.commonDestinationSelectableDto!, (value) {
    return _then(_self.copyWith(commonDestinationSelectableDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedCommonDestinationItem {
    if (_self.selectedCommonDestinationItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedCommonDestinationItem!, (value) {
    return _then(_self.copyWith(selectedCommonDestinationItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeTransferTypeDtoCopyWith<$Res>? get homeTransferTypeDto {
    if (_self.homeTransferTypeDto == null) {
    return null;
  }

  return $HomeTransferTypeDtoCopyWith<$Res>(_self.homeTransferTypeDto!, (value) {
    return _then(_self.copyWith(homeTransferTypeDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedTransferTypeItem {
    if (_self.selectedTransferTypeItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedTransferTypeItem!, (value) {
    return _then(_self.copyWith(selectedTransferTypeItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeBankOrAgentListDtoCopyWith<$Res>? get homeBankOrAgentListDto {
    if (_self.homeBankOrAgentListDto == null) {
    return null;
  }

  return $HomeBankOrAgentListDtoCopyWith<$Res>(_self.homeBankOrAgentListDto!, (value) {
    return _then(_self.copyWith(homeBankOrAgentListDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBankOrAgentItem {
    if (_self.selectedBankOrAgentItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBankOrAgentItem!, (value) {
    return _then(_self.copyWith(selectedBankOrAgentItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomePaymentMethodDtoCopyWith<$Res>? get homePaymentMethodDto {
    if (_self.homePaymentMethodDto == null) {
    return null;
  }

  return $HomePaymentMethodDtoCopyWith<$Res>(_self.homePaymentMethodDto!, (value) {
    return _then(_self.copyWith(homePaymentMethodDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedPaymentMethodItem {
    if (_self.selectedPaymentMethodItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedPaymentMethodItem!, (value) {
    return _then(_self.copyWith(selectedPaymentMethodItem: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto {
  
  return $CommonSendMoneyDtoCopyWith<$Res>(_self.commonSendMoneyDto, (value) {
    return _then(_self.copyWith(commonSendMoneyDto: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeBeneficiaryListDtoCopyWith<$Res>? get homeBeneficiaryListDto {
    if (_self.homeBeneficiaryListDto == null) {
    return null;
  }

  return $HomeBeneficiaryListDtoCopyWith<$Res>(_self.homeBeneficiaryListDto!, (value) {
    return _then(_self.copyWith(homeBeneficiaryListDto: value));
  });
}
}

// dart format on
