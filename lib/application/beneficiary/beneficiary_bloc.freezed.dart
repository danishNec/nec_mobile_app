// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BeneficiaryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent()';
}


}

/// @nodoc
class $BeneficiaryEventCopyWith<$Res>  {
$BeneficiaryEventCopyWith(BeneficiaryEvent _, $Res Function(BeneficiaryEvent) __);
}


/// Adds pattern-matching-related methods to [BeneficiaryEvent].
extension BeneficiaryEventPatterns on BeneficiaryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetBeneficiaries value)?  getBeneficiaries,TResult Function( _GetBeneficiaryById value)?  getBeneficiaryById,TResult Function( _PrepareBeneficiaryForEdit value)?  prepareBeneficiaryForEdit,TResult Function( _PrepareBeneficiaryForAddFromHome value)?  prepareBeneficiaryForAddFromHome,TResult Function( _GetBeneficiaryCountries value)?  getBeneficiaryCountries,TResult Function( _BeneficiaryCountrySelected value)?  beneficiaryCountrySelected,TResult Function( _GetBeneficiaryCurrencies value)?  getBeneficiaryCurrencies,TResult Function( _BeneficiaryCurrencySelected value)?  beneficiaryCurrencySelected,TResult Function( _GetBeneficiaryTransferTypes value)?  getBeneficiaryTransferTypes,TResult Function( _BeneficiaryTransferTypeSelected value)?  beneficiaryTransferTypeSelected,TResult Function( _GetBeneficiaryBanksOrAgents value)?  getBeneficiaryBanksOrAgents,TResult Function( _BeneficiaryBankOrAgentSelected value)?  beneficiaryBankOrAgentSelected,TResult Function( _GetBeneficiaryProductFields value)?  getBeneficiaryProductFields,TResult Function( _BeneficiaryProductFieldChanged value)?  beneficiaryProductFieldChanged,TResult Function( _ClearBeneficiaryProductFieldValue value)?  clearBeneficiaryProductFieldValue,TResult Function( _GetBeneficiaryCombo value)?  getBeneficiaryCombo,TResult Function( _GetBankCombo value)?  getBankCombo,TResult Function( _GetBranchCombo value)?  getBranchCombo,TResult Function( _GetBeneficiaryPurposeOfTransactions value)?  getBeneficiaryPurposeOfTransactions,TResult Function( _BeneficiaryPurposeOfTransactionSelected value)?  beneficiaryPurposeOfTransactionSelected,TResult Function( _GetBeneficiarySourceOfFunds value)?  getBeneficiarySourceOfFunds,TResult Function( _BeneficiarySourceOfFundSelected value)?  beneficiarySourceOfFundSelected,TResult Function( _SaveOrUpdateBeneficiaryPressed value)?  saveOrUpdateBeneficiaryPressed,TResult Function( _BeneficiaryOtpChanged value)?  beneficiaryOtpChanged,TResult Function( _BeneficiaryOtpSubmitted value)?  beneficiaryOtpSubmitted,TResult Function( _ResendBeneficiaryOtp value)?  resendBeneficiaryOtp,TResult Function( _BeneficiaryBankComboChanged value)?  beneficiaryBankComboChanged,TResult Function( _BeneficiaryBranchComboChanged value)?  beneficiaryBranchComboChanged,TResult Function( _BeneficiaryRouteCodeChanged value)?  beneficiaryRouteCodeChanged,TResult Function( _BeneficiaryRouteCodeSelected value)?  beneficiaryRouteCodeSelected,TResult Function( _LoadFormSupportData value)?  loadFormSupportData,TResult Function( _DeleteBeneficiary value)?  deleteBeneficiary,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBeneficiaries() when getBeneficiaries != null:
return getBeneficiaries(_that);case _GetBeneficiaryById() when getBeneficiaryById != null:
return getBeneficiaryById(_that);case _PrepareBeneficiaryForEdit() when prepareBeneficiaryForEdit != null:
return prepareBeneficiaryForEdit(_that);case _PrepareBeneficiaryForAddFromHome() when prepareBeneficiaryForAddFromHome != null:
return prepareBeneficiaryForAddFromHome(_that);case _GetBeneficiaryCountries() when getBeneficiaryCountries != null:
return getBeneficiaryCountries(_that);case _BeneficiaryCountrySelected() when beneficiaryCountrySelected != null:
return beneficiaryCountrySelected(_that);case _GetBeneficiaryCurrencies() when getBeneficiaryCurrencies != null:
return getBeneficiaryCurrencies(_that);case _BeneficiaryCurrencySelected() when beneficiaryCurrencySelected != null:
return beneficiaryCurrencySelected(_that);case _GetBeneficiaryTransferTypes() when getBeneficiaryTransferTypes != null:
return getBeneficiaryTransferTypes(_that);case _BeneficiaryTransferTypeSelected() when beneficiaryTransferTypeSelected != null:
return beneficiaryTransferTypeSelected(_that);case _GetBeneficiaryBanksOrAgents() when getBeneficiaryBanksOrAgents != null:
return getBeneficiaryBanksOrAgents(_that);case _BeneficiaryBankOrAgentSelected() when beneficiaryBankOrAgentSelected != null:
return beneficiaryBankOrAgentSelected(_that);case _GetBeneficiaryProductFields() when getBeneficiaryProductFields != null:
return getBeneficiaryProductFields(_that);case _BeneficiaryProductFieldChanged() when beneficiaryProductFieldChanged != null:
return beneficiaryProductFieldChanged(_that);case _ClearBeneficiaryProductFieldValue() when clearBeneficiaryProductFieldValue != null:
return clearBeneficiaryProductFieldValue(_that);case _GetBeneficiaryCombo() when getBeneficiaryCombo != null:
return getBeneficiaryCombo(_that);case _GetBankCombo() when getBankCombo != null:
return getBankCombo(_that);case _GetBranchCombo() when getBranchCombo != null:
return getBranchCombo(_that);case _GetBeneficiaryPurposeOfTransactions() when getBeneficiaryPurposeOfTransactions != null:
return getBeneficiaryPurposeOfTransactions(_that);case _BeneficiaryPurposeOfTransactionSelected() when beneficiaryPurposeOfTransactionSelected != null:
return beneficiaryPurposeOfTransactionSelected(_that);case _GetBeneficiarySourceOfFunds() when getBeneficiarySourceOfFunds != null:
return getBeneficiarySourceOfFunds(_that);case _BeneficiarySourceOfFundSelected() when beneficiarySourceOfFundSelected != null:
return beneficiarySourceOfFundSelected(_that);case _SaveOrUpdateBeneficiaryPressed() when saveOrUpdateBeneficiaryPressed != null:
return saveOrUpdateBeneficiaryPressed(_that);case _BeneficiaryOtpChanged() when beneficiaryOtpChanged != null:
return beneficiaryOtpChanged(_that);case _BeneficiaryOtpSubmitted() when beneficiaryOtpSubmitted != null:
return beneficiaryOtpSubmitted(_that);case _ResendBeneficiaryOtp() when resendBeneficiaryOtp != null:
return resendBeneficiaryOtp(_that);case _BeneficiaryBankComboChanged() when beneficiaryBankComboChanged != null:
return beneficiaryBankComboChanged(_that);case _BeneficiaryBranchComboChanged() when beneficiaryBranchComboChanged != null:
return beneficiaryBranchComboChanged(_that);case _BeneficiaryRouteCodeChanged() when beneficiaryRouteCodeChanged != null:
return beneficiaryRouteCodeChanged(_that);case _BeneficiaryRouteCodeSelected() when beneficiaryRouteCodeSelected != null:
return beneficiaryRouteCodeSelected(_that);case _LoadFormSupportData() when loadFormSupportData != null:
return loadFormSupportData(_that);case _DeleteBeneficiary() when deleteBeneficiary != null:
return deleteBeneficiary(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetBeneficiaries value)  getBeneficiaries,required TResult Function( _GetBeneficiaryById value)  getBeneficiaryById,required TResult Function( _PrepareBeneficiaryForEdit value)  prepareBeneficiaryForEdit,required TResult Function( _PrepareBeneficiaryForAddFromHome value)  prepareBeneficiaryForAddFromHome,required TResult Function( _GetBeneficiaryCountries value)  getBeneficiaryCountries,required TResult Function( _BeneficiaryCountrySelected value)  beneficiaryCountrySelected,required TResult Function( _GetBeneficiaryCurrencies value)  getBeneficiaryCurrencies,required TResult Function( _BeneficiaryCurrencySelected value)  beneficiaryCurrencySelected,required TResult Function( _GetBeneficiaryTransferTypes value)  getBeneficiaryTransferTypes,required TResult Function( _BeneficiaryTransferTypeSelected value)  beneficiaryTransferTypeSelected,required TResult Function( _GetBeneficiaryBanksOrAgents value)  getBeneficiaryBanksOrAgents,required TResult Function( _BeneficiaryBankOrAgentSelected value)  beneficiaryBankOrAgentSelected,required TResult Function( _GetBeneficiaryProductFields value)  getBeneficiaryProductFields,required TResult Function( _BeneficiaryProductFieldChanged value)  beneficiaryProductFieldChanged,required TResult Function( _ClearBeneficiaryProductFieldValue value)  clearBeneficiaryProductFieldValue,required TResult Function( _GetBeneficiaryCombo value)  getBeneficiaryCombo,required TResult Function( _GetBankCombo value)  getBankCombo,required TResult Function( _GetBranchCombo value)  getBranchCombo,required TResult Function( _GetBeneficiaryPurposeOfTransactions value)  getBeneficiaryPurposeOfTransactions,required TResult Function( _BeneficiaryPurposeOfTransactionSelected value)  beneficiaryPurposeOfTransactionSelected,required TResult Function( _GetBeneficiarySourceOfFunds value)  getBeneficiarySourceOfFunds,required TResult Function( _BeneficiarySourceOfFundSelected value)  beneficiarySourceOfFundSelected,required TResult Function( _SaveOrUpdateBeneficiaryPressed value)  saveOrUpdateBeneficiaryPressed,required TResult Function( _BeneficiaryOtpChanged value)  beneficiaryOtpChanged,required TResult Function( _BeneficiaryOtpSubmitted value)  beneficiaryOtpSubmitted,required TResult Function( _ResendBeneficiaryOtp value)  resendBeneficiaryOtp,required TResult Function( _BeneficiaryBankComboChanged value)  beneficiaryBankComboChanged,required TResult Function( _BeneficiaryBranchComboChanged value)  beneficiaryBranchComboChanged,required TResult Function( _BeneficiaryRouteCodeChanged value)  beneficiaryRouteCodeChanged,required TResult Function( _BeneficiaryRouteCodeSelected value)  beneficiaryRouteCodeSelected,required TResult Function( _LoadFormSupportData value)  loadFormSupportData,required TResult Function( _DeleteBeneficiary value)  deleteBeneficiary,}){
final _that = this;
switch (_that) {
case _GetBeneficiaries():
return getBeneficiaries(_that);case _GetBeneficiaryById():
return getBeneficiaryById(_that);case _PrepareBeneficiaryForEdit():
return prepareBeneficiaryForEdit(_that);case _PrepareBeneficiaryForAddFromHome():
return prepareBeneficiaryForAddFromHome(_that);case _GetBeneficiaryCountries():
return getBeneficiaryCountries(_that);case _BeneficiaryCountrySelected():
return beneficiaryCountrySelected(_that);case _GetBeneficiaryCurrencies():
return getBeneficiaryCurrencies(_that);case _BeneficiaryCurrencySelected():
return beneficiaryCurrencySelected(_that);case _GetBeneficiaryTransferTypes():
return getBeneficiaryTransferTypes(_that);case _BeneficiaryTransferTypeSelected():
return beneficiaryTransferTypeSelected(_that);case _GetBeneficiaryBanksOrAgents():
return getBeneficiaryBanksOrAgents(_that);case _BeneficiaryBankOrAgentSelected():
return beneficiaryBankOrAgentSelected(_that);case _GetBeneficiaryProductFields():
return getBeneficiaryProductFields(_that);case _BeneficiaryProductFieldChanged():
return beneficiaryProductFieldChanged(_that);case _ClearBeneficiaryProductFieldValue():
return clearBeneficiaryProductFieldValue(_that);case _GetBeneficiaryCombo():
return getBeneficiaryCombo(_that);case _GetBankCombo():
return getBankCombo(_that);case _GetBranchCombo():
return getBranchCombo(_that);case _GetBeneficiaryPurposeOfTransactions():
return getBeneficiaryPurposeOfTransactions(_that);case _BeneficiaryPurposeOfTransactionSelected():
return beneficiaryPurposeOfTransactionSelected(_that);case _GetBeneficiarySourceOfFunds():
return getBeneficiarySourceOfFunds(_that);case _BeneficiarySourceOfFundSelected():
return beneficiarySourceOfFundSelected(_that);case _SaveOrUpdateBeneficiaryPressed():
return saveOrUpdateBeneficiaryPressed(_that);case _BeneficiaryOtpChanged():
return beneficiaryOtpChanged(_that);case _BeneficiaryOtpSubmitted():
return beneficiaryOtpSubmitted(_that);case _ResendBeneficiaryOtp():
return resendBeneficiaryOtp(_that);case _BeneficiaryBankComboChanged():
return beneficiaryBankComboChanged(_that);case _BeneficiaryBranchComboChanged():
return beneficiaryBranchComboChanged(_that);case _BeneficiaryRouteCodeChanged():
return beneficiaryRouteCodeChanged(_that);case _BeneficiaryRouteCodeSelected():
return beneficiaryRouteCodeSelected(_that);case _LoadFormSupportData():
return loadFormSupportData(_that);case _DeleteBeneficiary():
return deleteBeneficiary(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetBeneficiaries value)?  getBeneficiaries,TResult? Function( _GetBeneficiaryById value)?  getBeneficiaryById,TResult? Function( _PrepareBeneficiaryForEdit value)?  prepareBeneficiaryForEdit,TResult? Function( _PrepareBeneficiaryForAddFromHome value)?  prepareBeneficiaryForAddFromHome,TResult? Function( _GetBeneficiaryCountries value)?  getBeneficiaryCountries,TResult? Function( _BeneficiaryCountrySelected value)?  beneficiaryCountrySelected,TResult? Function( _GetBeneficiaryCurrencies value)?  getBeneficiaryCurrencies,TResult? Function( _BeneficiaryCurrencySelected value)?  beneficiaryCurrencySelected,TResult? Function( _GetBeneficiaryTransferTypes value)?  getBeneficiaryTransferTypes,TResult? Function( _BeneficiaryTransferTypeSelected value)?  beneficiaryTransferTypeSelected,TResult? Function( _GetBeneficiaryBanksOrAgents value)?  getBeneficiaryBanksOrAgents,TResult? Function( _BeneficiaryBankOrAgentSelected value)?  beneficiaryBankOrAgentSelected,TResult? Function( _GetBeneficiaryProductFields value)?  getBeneficiaryProductFields,TResult? Function( _BeneficiaryProductFieldChanged value)?  beneficiaryProductFieldChanged,TResult? Function( _ClearBeneficiaryProductFieldValue value)?  clearBeneficiaryProductFieldValue,TResult? Function( _GetBeneficiaryCombo value)?  getBeneficiaryCombo,TResult? Function( _GetBankCombo value)?  getBankCombo,TResult? Function( _GetBranchCombo value)?  getBranchCombo,TResult? Function( _GetBeneficiaryPurposeOfTransactions value)?  getBeneficiaryPurposeOfTransactions,TResult? Function( _BeneficiaryPurposeOfTransactionSelected value)?  beneficiaryPurposeOfTransactionSelected,TResult? Function( _GetBeneficiarySourceOfFunds value)?  getBeneficiarySourceOfFunds,TResult? Function( _BeneficiarySourceOfFundSelected value)?  beneficiarySourceOfFundSelected,TResult? Function( _SaveOrUpdateBeneficiaryPressed value)?  saveOrUpdateBeneficiaryPressed,TResult? Function( _BeneficiaryOtpChanged value)?  beneficiaryOtpChanged,TResult? Function( _BeneficiaryOtpSubmitted value)?  beneficiaryOtpSubmitted,TResult? Function( _ResendBeneficiaryOtp value)?  resendBeneficiaryOtp,TResult? Function( _BeneficiaryBankComboChanged value)?  beneficiaryBankComboChanged,TResult? Function( _BeneficiaryBranchComboChanged value)?  beneficiaryBranchComboChanged,TResult? Function( _BeneficiaryRouteCodeChanged value)?  beneficiaryRouteCodeChanged,TResult? Function( _BeneficiaryRouteCodeSelected value)?  beneficiaryRouteCodeSelected,TResult? Function( _LoadFormSupportData value)?  loadFormSupportData,TResult? Function( _DeleteBeneficiary value)?  deleteBeneficiary,}){
final _that = this;
switch (_that) {
case _GetBeneficiaries() when getBeneficiaries != null:
return getBeneficiaries(_that);case _GetBeneficiaryById() when getBeneficiaryById != null:
return getBeneficiaryById(_that);case _PrepareBeneficiaryForEdit() when prepareBeneficiaryForEdit != null:
return prepareBeneficiaryForEdit(_that);case _PrepareBeneficiaryForAddFromHome() when prepareBeneficiaryForAddFromHome != null:
return prepareBeneficiaryForAddFromHome(_that);case _GetBeneficiaryCountries() when getBeneficiaryCountries != null:
return getBeneficiaryCountries(_that);case _BeneficiaryCountrySelected() when beneficiaryCountrySelected != null:
return beneficiaryCountrySelected(_that);case _GetBeneficiaryCurrencies() when getBeneficiaryCurrencies != null:
return getBeneficiaryCurrencies(_that);case _BeneficiaryCurrencySelected() when beneficiaryCurrencySelected != null:
return beneficiaryCurrencySelected(_that);case _GetBeneficiaryTransferTypes() when getBeneficiaryTransferTypes != null:
return getBeneficiaryTransferTypes(_that);case _BeneficiaryTransferTypeSelected() when beneficiaryTransferTypeSelected != null:
return beneficiaryTransferTypeSelected(_that);case _GetBeneficiaryBanksOrAgents() when getBeneficiaryBanksOrAgents != null:
return getBeneficiaryBanksOrAgents(_that);case _BeneficiaryBankOrAgentSelected() when beneficiaryBankOrAgentSelected != null:
return beneficiaryBankOrAgentSelected(_that);case _GetBeneficiaryProductFields() when getBeneficiaryProductFields != null:
return getBeneficiaryProductFields(_that);case _BeneficiaryProductFieldChanged() when beneficiaryProductFieldChanged != null:
return beneficiaryProductFieldChanged(_that);case _ClearBeneficiaryProductFieldValue() when clearBeneficiaryProductFieldValue != null:
return clearBeneficiaryProductFieldValue(_that);case _GetBeneficiaryCombo() when getBeneficiaryCombo != null:
return getBeneficiaryCombo(_that);case _GetBankCombo() when getBankCombo != null:
return getBankCombo(_that);case _GetBranchCombo() when getBranchCombo != null:
return getBranchCombo(_that);case _GetBeneficiaryPurposeOfTransactions() when getBeneficiaryPurposeOfTransactions != null:
return getBeneficiaryPurposeOfTransactions(_that);case _BeneficiaryPurposeOfTransactionSelected() when beneficiaryPurposeOfTransactionSelected != null:
return beneficiaryPurposeOfTransactionSelected(_that);case _GetBeneficiarySourceOfFunds() when getBeneficiarySourceOfFunds != null:
return getBeneficiarySourceOfFunds(_that);case _BeneficiarySourceOfFundSelected() when beneficiarySourceOfFundSelected != null:
return beneficiarySourceOfFundSelected(_that);case _SaveOrUpdateBeneficiaryPressed() when saveOrUpdateBeneficiaryPressed != null:
return saveOrUpdateBeneficiaryPressed(_that);case _BeneficiaryOtpChanged() when beneficiaryOtpChanged != null:
return beneficiaryOtpChanged(_that);case _BeneficiaryOtpSubmitted() when beneficiaryOtpSubmitted != null:
return beneficiaryOtpSubmitted(_that);case _ResendBeneficiaryOtp() when resendBeneficiaryOtp != null:
return resendBeneficiaryOtp(_that);case _BeneficiaryBankComboChanged() when beneficiaryBankComboChanged != null:
return beneficiaryBankComboChanged(_that);case _BeneficiaryBranchComboChanged() when beneficiaryBranchComboChanged != null:
return beneficiaryBranchComboChanged(_that);case _BeneficiaryRouteCodeChanged() when beneficiaryRouteCodeChanged != null:
return beneficiaryRouteCodeChanged(_that);case _BeneficiaryRouteCodeSelected() when beneficiaryRouteCodeSelected != null:
return beneficiaryRouteCodeSelected(_that);case _LoadFormSupportData() when loadFormSupportData != null:
return loadFormSupportData(_that);case _DeleteBeneficiary() when deleteBeneficiary != null:
return deleteBeneficiary(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getBeneficiaries,TResult Function( String? beneficiaryId)?  getBeneficiaryById,TResult Function( CommonSelectableItem beneficiaryCountry,  CommonSelectableItem beneficiaryCurrency,  CommonSelectableItem beneficiaryTransferType,  CommonSelectableItem beneficiaryBankOrAgent,  CommonSelectableItem beneficiaryPurposeOfTransaction,  CommonSelectableItem beneficiarySourceOfFund)?  prepareBeneficiaryForEdit,TResult Function( CommonSelectableItem beneficiaryCountry,  CommonSelectableItem beneficiaryCurrency,  CommonSelectableItem beneficiaryTransferType,  CommonSelectableItem beneficiaryBankOrAgent)?  prepareBeneficiaryForAddFromHome,TResult Function()?  getBeneficiaryCountries,TResult Function( CommonSelectableItem selectedBeneficiaryCountry)?  beneficiaryCountrySelected,TResult Function()?  getBeneficiaryCurrencies,TResult Function( CommonSelectableItem selectedBeneficiaryCurrency)?  beneficiaryCurrencySelected,TResult Function()?  getBeneficiaryTransferTypes,TResult Function( CommonSelectableItem selectedBeneficiaryTransferType)?  beneficiaryTransferTypeSelected,TResult Function()?  getBeneficiaryBanksOrAgents,TResult Function( CommonSelectableItem selectedBeneficiaryBankOrAgent)?  beneficiaryBankOrAgentSelected,TResult Function()?  getBeneficiaryProductFields,TResult Function( Beneficiary backendField,  String value)?  beneficiaryProductFieldChanged,TResult Function( Beneficiary backendField)?  clearBeneficiaryProductFieldValue,TResult Function()?  getBeneficiaryCombo,TResult Function()?  getBankCombo,TResult Function( String? bankCode,  String? expectedBranchCode)?  getBranchCombo,TResult Function()?  getBeneficiaryPurposeOfTransactions,TResult Function( CommonSelectableItem selectedPurposeOfTransaction)?  beneficiaryPurposeOfTransactionSelected,TResult Function()?  getBeneficiarySourceOfFunds,TResult Function( CommonSelectableItem selectedSourceOfFund)?  beneficiarySourceOfFundSelected,TResult Function()?  saveOrUpdateBeneficiaryPressed,TResult Function( String otpStr)?  beneficiaryOtpChanged,TResult Function()?  beneficiaryOtpSubmitted,TResult Function()?  resendBeneficiaryOtp,TResult Function( String bankCode,  String bankName)?  beneficiaryBankComboChanged,TResult Function( String branchCode,  String branchName)?  beneficiaryBranchComboChanged,TResult Function( String routeCode)?  beneficiaryRouteCodeChanged,TResult Function( String routeCode)?  beneficiaryRouteCodeSelected,TResult Function()?  loadFormSupportData,TResult Function( String beneficiaryId,  bool isFromStateList)?  deleteBeneficiary,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBeneficiaries() when getBeneficiaries != null:
return getBeneficiaries();case _GetBeneficiaryById() when getBeneficiaryById != null:
return getBeneficiaryById(_that.beneficiaryId);case _PrepareBeneficiaryForEdit() when prepareBeneficiaryForEdit != null:
return prepareBeneficiaryForEdit(_that.beneficiaryCountry,_that.beneficiaryCurrency,_that.beneficiaryTransferType,_that.beneficiaryBankOrAgent,_that.beneficiaryPurposeOfTransaction,_that.beneficiarySourceOfFund);case _PrepareBeneficiaryForAddFromHome() when prepareBeneficiaryForAddFromHome != null:
return prepareBeneficiaryForAddFromHome(_that.beneficiaryCountry,_that.beneficiaryCurrency,_that.beneficiaryTransferType,_that.beneficiaryBankOrAgent);case _GetBeneficiaryCountries() when getBeneficiaryCountries != null:
return getBeneficiaryCountries();case _BeneficiaryCountrySelected() when beneficiaryCountrySelected != null:
return beneficiaryCountrySelected(_that.selectedBeneficiaryCountry);case _GetBeneficiaryCurrencies() when getBeneficiaryCurrencies != null:
return getBeneficiaryCurrencies();case _BeneficiaryCurrencySelected() when beneficiaryCurrencySelected != null:
return beneficiaryCurrencySelected(_that.selectedBeneficiaryCurrency);case _GetBeneficiaryTransferTypes() when getBeneficiaryTransferTypes != null:
return getBeneficiaryTransferTypes();case _BeneficiaryTransferTypeSelected() when beneficiaryTransferTypeSelected != null:
return beneficiaryTransferTypeSelected(_that.selectedBeneficiaryTransferType);case _GetBeneficiaryBanksOrAgents() when getBeneficiaryBanksOrAgents != null:
return getBeneficiaryBanksOrAgents();case _BeneficiaryBankOrAgentSelected() when beneficiaryBankOrAgentSelected != null:
return beneficiaryBankOrAgentSelected(_that.selectedBeneficiaryBankOrAgent);case _GetBeneficiaryProductFields() when getBeneficiaryProductFields != null:
return getBeneficiaryProductFields();case _BeneficiaryProductFieldChanged() when beneficiaryProductFieldChanged != null:
return beneficiaryProductFieldChanged(_that.backendField,_that.value);case _ClearBeneficiaryProductFieldValue() when clearBeneficiaryProductFieldValue != null:
return clearBeneficiaryProductFieldValue(_that.backendField);case _GetBeneficiaryCombo() when getBeneficiaryCombo != null:
return getBeneficiaryCombo();case _GetBankCombo() when getBankCombo != null:
return getBankCombo();case _GetBranchCombo() when getBranchCombo != null:
return getBranchCombo(_that.bankCode,_that.expectedBranchCode);case _GetBeneficiaryPurposeOfTransactions() when getBeneficiaryPurposeOfTransactions != null:
return getBeneficiaryPurposeOfTransactions();case _BeneficiaryPurposeOfTransactionSelected() when beneficiaryPurposeOfTransactionSelected != null:
return beneficiaryPurposeOfTransactionSelected(_that.selectedPurposeOfTransaction);case _GetBeneficiarySourceOfFunds() when getBeneficiarySourceOfFunds != null:
return getBeneficiarySourceOfFunds();case _BeneficiarySourceOfFundSelected() when beneficiarySourceOfFundSelected != null:
return beneficiarySourceOfFundSelected(_that.selectedSourceOfFund);case _SaveOrUpdateBeneficiaryPressed() when saveOrUpdateBeneficiaryPressed != null:
return saveOrUpdateBeneficiaryPressed();case _BeneficiaryOtpChanged() when beneficiaryOtpChanged != null:
return beneficiaryOtpChanged(_that.otpStr);case _BeneficiaryOtpSubmitted() when beneficiaryOtpSubmitted != null:
return beneficiaryOtpSubmitted();case _ResendBeneficiaryOtp() when resendBeneficiaryOtp != null:
return resendBeneficiaryOtp();case _BeneficiaryBankComboChanged() when beneficiaryBankComboChanged != null:
return beneficiaryBankComboChanged(_that.bankCode,_that.bankName);case _BeneficiaryBranchComboChanged() when beneficiaryBranchComboChanged != null:
return beneficiaryBranchComboChanged(_that.branchCode,_that.branchName);case _BeneficiaryRouteCodeChanged() when beneficiaryRouteCodeChanged != null:
return beneficiaryRouteCodeChanged(_that.routeCode);case _BeneficiaryRouteCodeSelected() when beneficiaryRouteCodeSelected != null:
return beneficiaryRouteCodeSelected(_that.routeCode);case _LoadFormSupportData() when loadFormSupportData != null:
return loadFormSupportData();case _DeleteBeneficiary() when deleteBeneficiary != null:
return deleteBeneficiary(_that.beneficiaryId,_that.isFromStateList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getBeneficiaries,required TResult Function( String? beneficiaryId)  getBeneficiaryById,required TResult Function( CommonSelectableItem beneficiaryCountry,  CommonSelectableItem beneficiaryCurrency,  CommonSelectableItem beneficiaryTransferType,  CommonSelectableItem beneficiaryBankOrAgent,  CommonSelectableItem beneficiaryPurposeOfTransaction,  CommonSelectableItem beneficiarySourceOfFund)  prepareBeneficiaryForEdit,required TResult Function( CommonSelectableItem beneficiaryCountry,  CommonSelectableItem beneficiaryCurrency,  CommonSelectableItem beneficiaryTransferType,  CommonSelectableItem beneficiaryBankOrAgent)  prepareBeneficiaryForAddFromHome,required TResult Function()  getBeneficiaryCountries,required TResult Function( CommonSelectableItem selectedBeneficiaryCountry)  beneficiaryCountrySelected,required TResult Function()  getBeneficiaryCurrencies,required TResult Function( CommonSelectableItem selectedBeneficiaryCurrency)  beneficiaryCurrencySelected,required TResult Function()  getBeneficiaryTransferTypes,required TResult Function( CommonSelectableItem selectedBeneficiaryTransferType)  beneficiaryTransferTypeSelected,required TResult Function()  getBeneficiaryBanksOrAgents,required TResult Function( CommonSelectableItem selectedBeneficiaryBankOrAgent)  beneficiaryBankOrAgentSelected,required TResult Function()  getBeneficiaryProductFields,required TResult Function( Beneficiary backendField,  String value)  beneficiaryProductFieldChanged,required TResult Function( Beneficiary backendField)  clearBeneficiaryProductFieldValue,required TResult Function()  getBeneficiaryCombo,required TResult Function()  getBankCombo,required TResult Function( String? bankCode,  String? expectedBranchCode)  getBranchCombo,required TResult Function()  getBeneficiaryPurposeOfTransactions,required TResult Function( CommonSelectableItem selectedPurposeOfTransaction)  beneficiaryPurposeOfTransactionSelected,required TResult Function()  getBeneficiarySourceOfFunds,required TResult Function( CommonSelectableItem selectedSourceOfFund)  beneficiarySourceOfFundSelected,required TResult Function()  saveOrUpdateBeneficiaryPressed,required TResult Function( String otpStr)  beneficiaryOtpChanged,required TResult Function()  beneficiaryOtpSubmitted,required TResult Function()  resendBeneficiaryOtp,required TResult Function( String bankCode,  String bankName)  beneficiaryBankComboChanged,required TResult Function( String branchCode,  String branchName)  beneficiaryBranchComboChanged,required TResult Function( String routeCode)  beneficiaryRouteCodeChanged,required TResult Function( String routeCode)  beneficiaryRouteCodeSelected,required TResult Function()  loadFormSupportData,required TResult Function( String beneficiaryId,  bool isFromStateList)  deleteBeneficiary,}) {final _that = this;
switch (_that) {
case _GetBeneficiaries():
return getBeneficiaries();case _GetBeneficiaryById():
return getBeneficiaryById(_that.beneficiaryId);case _PrepareBeneficiaryForEdit():
return prepareBeneficiaryForEdit(_that.beneficiaryCountry,_that.beneficiaryCurrency,_that.beneficiaryTransferType,_that.beneficiaryBankOrAgent,_that.beneficiaryPurposeOfTransaction,_that.beneficiarySourceOfFund);case _PrepareBeneficiaryForAddFromHome():
return prepareBeneficiaryForAddFromHome(_that.beneficiaryCountry,_that.beneficiaryCurrency,_that.beneficiaryTransferType,_that.beneficiaryBankOrAgent);case _GetBeneficiaryCountries():
return getBeneficiaryCountries();case _BeneficiaryCountrySelected():
return beneficiaryCountrySelected(_that.selectedBeneficiaryCountry);case _GetBeneficiaryCurrencies():
return getBeneficiaryCurrencies();case _BeneficiaryCurrencySelected():
return beneficiaryCurrencySelected(_that.selectedBeneficiaryCurrency);case _GetBeneficiaryTransferTypes():
return getBeneficiaryTransferTypes();case _BeneficiaryTransferTypeSelected():
return beneficiaryTransferTypeSelected(_that.selectedBeneficiaryTransferType);case _GetBeneficiaryBanksOrAgents():
return getBeneficiaryBanksOrAgents();case _BeneficiaryBankOrAgentSelected():
return beneficiaryBankOrAgentSelected(_that.selectedBeneficiaryBankOrAgent);case _GetBeneficiaryProductFields():
return getBeneficiaryProductFields();case _BeneficiaryProductFieldChanged():
return beneficiaryProductFieldChanged(_that.backendField,_that.value);case _ClearBeneficiaryProductFieldValue():
return clearBeneficiaryProductFieldValue(_that.backendField);case _GetBeneficiaryCombo():
return getBeneficiaryCombo();case _GetBankCombo():
return getBankCombo();case _GetBranchCombo():
return getBranchCombo(_that.bankCode,_that.expectedBranchCode);case _GetBeneficiaryPurposeOfTransactions():
return getBeneficiaryPurposeOfTransactions();case _BeneficiaryPurposeOfTransactionSelected():
return beneficiaryPurposeOfTransactionSelected(_that.selectedPurposeOfTransaction);case _GetBeneficiarySourceOfFunds():
return getBeneficiarySourceOfFunds();case _BeneficiarySourceOfFundSelected():
return beneficiarySourceOfFundSelected(_that.selectedSourceOfFund);case _SaveOrUpdateBeneficiaryPressed():
return saveOrUpdateBeneficiaryPressed();case _BeneficiaryOtpChanged():
return beneficiaryOtpChanged(_that.otpStr);case _BeneficiaryOtpSubmitted():
return beneficiaryOtpSubmitted();case _ResendBeneficiaryOtp():
return resendBeneficiaryOtp();case _BeneficiaryBankComboChanged():
return beneficiaryBankComboChanged(_that.bankCode,_that.bankName);case _BeneficiaryBranchComboChanged():
return beneficiaryBranchComboChanged(_that.branchCode,_that.branchName);case _BeneficiaryRouteCodeChanged():
return beneficiaryRouteCodeChanged(_that.routeCode);case _BeneficiaryRouteCodeSelected():
return beneficiaryRouteCodeSelected(_that.routeCode);case _LoadFormSupportData():
return loadFormSupportData();case _DeleteBeneficiary():
return deleteBeneficiary(_that.beneficiaryId,_that.isFromStateList);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getBeneficiaries,TResult? Function( String? beneficiaryId)?  getBeneficiaryById,TResult? Function( CommonSelectableItem beneficiaryCountry,  CommonSelectableItem beneficiaryCurrency,  CommonSelectableItem beneficiaryTransferType,  CommonSelectableItem beneficiaryBankOrAgent,  CommonSelectableItem beneficiaryPurposeOfTransaction,  CommonSelectableItem beneficiarySourceOfFund)?  prepareBeneficiaryForEdit,TResult? Function( CommonSelectableItem beneficiaryCountry,  CommonSelectableItem beneficiaryCurrency,  CommonSelectableItem beneficiaryTransferType,  CommonSelectableItem beneficiaryBankOrAgent)?  prepareBeneficiaryForAddFromHome,TResult? Function()?  getBeneficiaryCountries,TResult? Function( CommonSelectableItem selectedBeneficiaryCountry)?  beneficiaryCountrySelected,TResult? Function()?  getBeneficiaryCurrencies,TResult? Function( CommonSelectableItem selectedBeneficiaryCurrency)?  beneficiaryCurrencySelected,TResult? Function()?  getBeneficiaryTransferTypes,TResult? Function( CommonSelectableItem selectedBeneficiaryTransferType)?  beneficiaryTransferTypeSelected,TResult? Function()?  getBeneficiaryBanksOrAgents,TResult? Function( CommonSelectableItem selectedBeneficiaryBankOrAgent)?  beneficiaryBankOrAgentSelected,TResult? Function()?  getBeneficiaryProductFields,TResult? Function( Beneficiary backendField,  String value)?  beneficiaryProductFieldChanged,TResult? Function( Beneficiary backendField)?  clearBeneficiaryProductFieldValue,TResult? Function()?  getBeneficiaryCombo,TResult? Function()?  getBankCombo,TResult? Function( String? bankCode,  String? expectedBranchCode)?  getBranchCombo,TResult? Function()?  getBeneficiaryPurposeOfTransactions,TResult? Function( CommonSelectableItem selectedPurposeOfTransaction)?  beneficiaryPurposeOfTransactionSelected,TResult? Function()?  getBeneficiarySourceOfFunds,TResult? Function( CommonSelectableItem selectedSourceOfFund)?  beneficiarySourceOfFundSelected,TResult? Function()?  saveOrUpdateBeneficiaryPressed,TResult? Function( String otpStr)?  beneficiaryOtpChanged,TResult? Function()?  beneficiaryOtpSubmitted,TResult? Function()?  resendBeneficiaryOtp,TResult? Function( String bankCode,  String bankName)?  beneficiaryBankComboChanged,TResult? Function( String branchCode,  String branchName)?  beneficiaryBranchComboChanged,TResult? Function( String routeCode)?  beneficiaryRouteCodeChanged,TResult? Function( String routeCode)?  beneficiaryRouteCodeSelected,TResult? Function()?  loadFormSupportData,TResult? Function( String beneficiaryId,  bool isFromStateList)?  deleteBeneficiary,}) {final _that = this;
switch (_that) {
case _GetBeneficiaries() when getBeneficiaries != null:
return getBeneficiaries();case _GetBeneficiaryById() when getBeneficiaryById != null:
return getBeneficiaryById(_that.beneficiaryId);case _PrepareBeneficiaryForEdit() when prepareBeneficiaryForEdit != null:
return prepareBeneficiaryForEdit(_that.beneficiaryCountry,_that.beneficiaryCurrency,_that.beneficiaryTransferType,_that.beneficiaryBankOrAgent,_that.beneficiaryPurposeOfTransaction,_that.beneficiarySourceOfFund);case _PrepareBeneficiaryForAddFromHome() when prepareBeneficiaryForAddFromHome != null:
return prepareBeneficiaryForAddFromHome(_that.beneficiaryCountry,_that.beneficiaryCurrency,_that.beneficiaryTransferType,_that.beneficiaryBankOrAgent);case _GetBeneficiaryCountries() when getBeneficiaryCountries != null:
return getBeneficiaryCountries();case _BeneficiaryCountrySelected() when beneficiaryCountrySelected != null:
return beneficiaryCountrySelected(_that.selectedBeneficiaryCountry);case _GetBeneficiaryCurrencies() when getBeneficiaryCurrencies != null:
return getBeneficiaryCurrencies();case _BeneficiaryCurrencySelected() when beneficiaryCurrencySelected != null:
return beneficiaryCurrencySelected(_that.selectedBeneficiaryCurrency);case _GetBeneficiaryTransferTypes() when getBeneficiaryTransferTypes != null:
return getBeneficiaryTransferTypes();case _BeneficiaryTransferTypeSelected() when beneficiaryTransferTypeSelected != null:
return beneficiaryTransferTypeSelected(_that.selectedBeneficiaryTransferType);case _GetBeneficiaryBanksOrAgents() when getBeneficiaryBanksOrAgents != null:
return getBeneficiaryBanksOrAgents();case _BeneficiaryBankOrAgentSelected() when beneficiaryBankOrAgentSelected != null:
return beneficiaryBankOrAgentSelected(_that.selectedBeneficiaryBankOrAgent);case _GetBeneficiaryProductFields() when getBeneficiaryProductFields != null:
return getBeneficiaryProductFields();case _BeneficiaryProductFieldChanged() when beneficiaryProductFieldChanged != null:
return beneficiaryProductFieldChanged(_that.backendField,_that.value);case _ClearBeneficiaryProductFieldValue() when clearBeneficiaryProductFieldValue != null:
return clearBeneficiaryProductFieldValue(_that.backendField);case _GetBeneficiaryCombo() when getBeneficiaryCombo != null:
return getBeneficiaryCombo();case _GetBankCombo() when getBankCombo != null:
return getBankCombo();case _GetBranchCombo() when getBranchCombo != null:
return getBranchCombo(_that.bankCode,_that.expectedBranchCode);case _GetBeneficiaryPurposeOfTransactions() when getBeneficiaryPurposeOfTransactions != null:
return getBeneficiaryPurposeOfTransactions();case _BeneficiaryPurposeOfTransactionSelected() when beneficiaryPurposeOfTransactionSelected != null:
return beneficiaryPurposeOfTransactionSelected(_that.selectedPurposeOfTransaction);case _GetBeneficiarySourceOfFunds() when getBeneficiarySourceOfFunds != null:
return getBeneficiarySourceOfFunds();case _BeneficiarySourceOfFundSelected() when beneficiarySourceOfFundSelected != null:
return beneficiarySourceOfFundSelected(_that.selectedSourceOfFund);case _SaveOrUpdateBeneficiaryPressed() when saveOrUpdateBeneficiaryPressed != null:
return saveOrUpdateBeneficiaryPressed();case _BeneficiaryOtpChanged() when beneficiaryOtpChanged != null:
return beneficiaryOtpChanged(_that.otpStr);case _BeneficiaryOtpSubmitted() when beneficiaryOtpSubmitted != null:
return beneficiaryOtpSubmitted();case _ResendBeneficiaryOtp() when resendBeneficiaryOtp != null:
return resendBeneficiaryOtp();case _BeneficiaryBankComboChanged() when beneficiaryBankComboChanged != null:
return beneficiaryBankComboChanged(_that.bankCode,_that.bankName);case _BeneficiaryBranchComboChanged() when beneficiaryBranchComboChanged != null:
return beneficiaryBranchComboChanged(_that.branchCode,_that.branchName);case _BeneficiaryRouteCodeChanged() when beneficiaryRouteCodeChanged != null:
return beneficiaryRouteCodeChanged(_that.routeCode);case _BeneficiaryRouteCodeSelected() when beneficiaryRouteCodeSelected != null:
return beneficiaryRouteCodeSelected(_that.routeCode);case _LoadFormSupportData() when loadFormSupportData != null:
return loadFormSupportData();case _DeleteBeneficiary() when deleteBeneficiary != null:
return deleteBeneficiary(_that.beneficiaryId,_that.isFromStateList);case _:
  return null;

}
}

}

/// @nodoc


class _GetBeneficiaries implements BeneficiaryEvent {
  const _GetBeneficiaries();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaries);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaries()';
}


}




/// @nodoc


class _GetBeneficiaryById implements BeneficiaryEvent {
  const _GetBeneficiaryById(this.beneficiaryId);
  

 final  String? beneficiaryId;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBeneficiaryByIdCopyWith<_GetBeneficiaryById> get copyWith => __$GetBeneficiaryByIdCopyWithImpl<_GetBeneficiaryById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryById&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId));
}


@override
int get hashCode => Object.hash(runtimeType,beneficiaryId);

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryById(beneficiaryId: $beneficiaryId)';
}


}

/// @nodoc
abstract mixin class _$GetBeneficiaryByIdCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$GetBeneficiaryByIdCopyWith(_GetBeneficiaryById value, $Res Function(_GetBeneficiaryById) _then) = __$GetBeneficiaryByIdCopyWithImpl;
@useResult
$Res call({
 String? beneficiaryId
});




}
/// @nodoc
class __$GetBeneficiaryByIdCopyWithImpl<$Res>
    implements _$GetBeneficiaryByIdCopyWith<$Res> {
  __$GetBeneficiaryByIdCopyWithImpl(this._self, this._then);

  final _GetBeneficiaryById _self;
  final $Res Function(_GetBeneficiaryById) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? beneficiaryId = freezed,}) {
  return _then(_GetBeneficiaryById(
freezed == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _PrepareBeneficiaryForEdit implements BeneficiaryEvent {
  const _PrepareBeneficiaryForEdit({required this.beneficiaryCountry, required this.beneficiaryCurrency, required this.beneficiaryTransferType, required this.beneficiaryBankOrAgent, required this.beneficiaryPurposeOfTransaction, required this.beneficiarySourceOfFund});
  

 final  CommonSelectableItem beneficiaryCountry;
 final  CommonSelectableItem beneficiaryCurrency;
 final  CommonSelectableItem beneficiaryTransferType;
 final  CommonSelectableItem beneficiaryBankOrAgent;
 final  CommonSelectableItem beneficiaryPurposeOfTransaction;
 final  CommonSelectableItem beneficiarySourceOfFund;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrepareBeneficiaryForEditCopyWith<_PrepareBeneficiaryForEdit> get copyWith => __$PrepareBeneficiaryForEditCopyWithImpl<_PrepareBeneficiaryForEdit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrepareBeneficiaryForEdit&&(identical(other.beneficiaryCountry, beneficiaryCountry) || other.beneficiaryCountry == beneficiaryCountry)&&(identical(other.beneficiaryCurrency, beneficiaryCurrency) || other.beneficiaryCurrency == beneficiaryCurrency)&&(identical(other.beneficiaryTransferType, beneficiaryTransferType) || other.beneficiaryTransferType == beneficiaryTransferType)&&(identical(other.beneficiaryBankOrAgent, beneficiaryBankOrAgent) || other.beneficiaryBankOrAgent == beneficiaryBankOrAgent)&&(identical(other.beneficiaryPurposeOfTransaction, beneficiaryPurposeOfTransaction) || other.beneficiaryPurposeOfTransaction == beneficiaryPurposeOfTransaction)&&(identical(other.beneficiarySourceOfFund, beneficiarySourceOfFund) || other.beneficiarySourceOfFund == beneficiarySourceOfFund));
}


@override
int get hashCode => Object.hash(runtimeType,beneficiaryCountry,beneficiaryCurrency,beneficiaryTransferType,beneficiaryBankOrAgent,beneficiaryPurposeOfTransaction,beneficiarySourceOfFund);

@override
String toString() {
  return 'BeneficiaryEvent.prepareBeneficiaryForEdit(beneficiaryCountry: $beneficiaryCountry, beneficiaryCurrency: $beneficiaryCurrency, beneficiaryTransferType: $beneficiaryTransferType, beneficiaryBankOrAgent: $beneficiaryBankOrAgent, beneficiaryPurposeOfTransaction: $beneficiaryPurposeOfTransaction, beneficiarySourceOfFund: $beneficiarySourceOfFund)';
}


}

/// @nodoc
abstract mixin class _$PrepareBeneficiaryForEditCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$PrepareBeneficiaryForEditCopyWith(_PrepareBeneficiaryForEdit value, $Res Function(_PrepareBeneficiaryForEdit) _then) = __$PrepareBeneficiaryForEditCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem beneficiaryCountry, CommonSelectableItem beneficiaryCurrency, CommonSelectableItem beneficiaryTransferType, CommonSelectableItem beneficiaryBankOrAgent, CommonSelectableItem beneficiaryPurposeOfTransaction, CommonSelectableItem beneficiarySourceOfFund
});


$CommonSelectableItemCopyWith<$Res> get beneficiaryCountry;$CommonSelectableItemCopyWith<$Res> get beneficiaryCurrency;$CommonSelectableItemCopyWith<$Res> get beneficiaryTransferType;$CommonSelectableItemCopyWith<$Res> get beneficiaryBankOrAgent;$CommonSelectableItemCopyWith<$Res> get beneficiaryPurposeOfTransaction;$CommonSelectableItemCopyWith<$Res> get beneficiarySourceOfFund;

}
/// @nodoc
class __$PrepareBeneficiaryForEditCopyWithImpl<$Res>
    implements _$PrepareBeneficiaryForEditCopyWith<$Res> {
  __$PrepareBeneficiaryForEditCopyWithImpl(this._self, this._then);

  final _PrepareBeneficiaryForEdit _self;
  final $Res Function(_PrepareBeneficiaryForEdit) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? beneficiaryCountry = null,Object? beneficiaryCurrency = null,Object? beneficiaryTransferType = null,Object? beneficiaryBankOrAgent = null,Object? beneficiaryPurposeOfTransaction = null,Object? beneficiarySourceOfFund = null,}) {
  return _then(_PrepareBeneficiaryForEdit(
beneficiaryCountry: null == beneficiaryCountry ? _self.beneficiaryCountry : beneficiaryCountry // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiaryCurrency: null == beneficiaryCurrency ? _self.beneficiaryCurrency : beneficiaryCurrency // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiaryTransferType: null == beneficiaryTransferType ? _self.beneficiaryTransferType : beneficiaryTransferType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiaryBankOrAgent: null == beneficiaryBankOrAgent ? _self.beneficiaryBankOrAgent : beneficiaryBankOrAgent // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiaryPurposeOfTransaction: null == beneficiaryPurposeOfTransaction ? _self.beneficiaryPurposeOfTransaction : beneficiaryPurposeOfTransaction // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiarySourceOfFund: null == beneficiarySourceOfFund ? _self.beneficiarySourceOfFund : beneficiarySourceOfFund // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryCountry {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryCountry, (value) {
    return _then(_self.copyWith(beneficiaryCountry: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryCurrency {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryCurrency, (value) {
    return _then(_self.copyWith(beneficiaryCurrency: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryTransferType {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryTransferType, (value) {
    return _then(_self.copyWith(beneficiaryTransferType: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryBankOrAgent {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryBankOrAgent, (value) {
    return _then(_self.copyWith(beneficiaryBankOrAgent: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryPurposeOfTransaction {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryPurposeOfTransaction, (value) {
    return _then(_self.copyWith(beneficiaryPurposeOfTransaction: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiarySourceOfFund {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiarySourceOfFund, (value) {
    return _then(_self.copyWith(beneficiarySourceOfFund: value));
  });
}
}

/// @nodoc


class _PrepareBeneficiaryForAddFromHome implements BeneficiaryEvent {
  const _PrepareBeneficiaryForAddFromHome({required this.beneficiaryCountry, required this.beneficiaryCurrency, required this.beneficiaryTransferType, required this.beneficiaryBankOrAgent});
  

 final  CommonSelectableItem beneficiaryCountry;
 final  CommonSelectableItem beneficiaryCurrency;
 final  CommonSelectableItem beneficiaryTransferType;
 final  CommonSelectableItem beneficiaryBankOrAgent;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrepareBeneficiaryForAddFromHomeCopyWith<_PrepareBeneficiaryForAddFromHome> get copyWith => __$PrepareBeneficiaryForAddFromHomeCopyWithImpl<_PrepareBeneficiaryForAddFromHome>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrepareBeneficiaryForAddFromHome&&(identical(other.beneficiaryCountry, beneficiaryCountry) || other.beneficiaryCountry == beneficiaryCountry)&&(identical(other.beneficiaryCurrency, beneficiaryCurrency) || other.beneficiaryCurrency == beneficiaryCurrency)&&(identical(other.beneficiaryTransferType, beneficiaryTransferType) || other.beneficiaryTransferType == beneficiaryTransferType)&&(identical(other.beneficiaryBankOrAgent, beneficiaryBankOrAgent) || other.beneficiaryBankOrAgent == beneficiaryBankOrAgent));
}


@override
int get hashCode => Object.hash(runtimeType,beneficiaryCountry,beneficiaryCurrency,beneficiaryTransferType,beneficiaryBankOrAgent);

@override
String toString() {
  return 'BeneficiaryEvent.prepareBeneficiaryForAddFromHome(beneficiaryCountry: $beneficiaryCountry, beneficiaryCurrency: $beneficiaryCurrency, beneficiaryTransferType: $beneficiaryTransferType, beneficiaryBankOrAgent: $beneficiaryBankOrAgent)';
}


}

/// @nodoc
abstract mixin class _$PrepareBeneficiaryForAddFromHomeCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$PrepareBeneficiaryForAddFromHomeCopyWith(_PrepareBeneficiaryForAddFromHome value, $Res Function(_PrepareBeneficiaryForAddFromHome) _then) = __$PrepareBeneficiaryForAddFromHomeCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem beneficiaryCountry, CommonSelectableItem beneficiaryCurrency, CommonSelectableItem beneficiaryTransferType, CommonSelectableItem beneficiaryBankOrAgent
});


$CommonSelectableItemCopyWith<$Res> get beneficiaryCountry;$CommonSelectableItemCopyWith<$Res> get beneficiaryCurrency;$CommonSelectableItemCopyWith<$Res> get beneficiaryTransferType;$CommonSelectableItemCopyWith<$Res> get beneficiaryBankOrAgent;

}
/// @nodoc
class __$PrepareBeneficiaryForAddFromHomeCopyWithImpl<$Res>
    implements _$PrepareBeneficiaryForAddFromHomeCopyWith<$Res> {
  __$PrepareBeneficiaryForAddFromHomeCopyWithImpl(this._self, this._then);

  final _PrepareBeneficiaryForAddFromHome _self;
  final $Res Function(_PrepareBeneficiaryForAddFromHome) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? beneficiaryCountry = null,Object? beneficiaryCurrency = null,Object? beneficiaryTransferType = null,Object? beneficiaryBankOrAgent = null,}) {
  return _then(_PrepareBeneficiaryForAddFromHome(
beneficiaryCountry: null == beneficiaryCountry ? _self.beneficiaryCountry : beneficiaryCountry // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiaryCurrency: null == beneficiaryCurrency ? _self.beneficiaryCurrency : beneficiaryCurrency // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiaryTransferType: null == beneficiaryTransferType ? _self.beneficiaryTransferType : beneficiaryTransferType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,beneficiaryBankOrAgent: null == beneficiaryBankOrAgent ? _self.beneficiaryBankOrAgent : beneficiaryBankOrAgent // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryCountry {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryCountry, (value) {
    return _then(_self.copyWith(beneficiaryCountry: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryCurrency {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryCurrency, (value) {
    return _then(_self.copyWith(beneficiaryCurrency: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryTransferType {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryTransferType, (value) {
    return _then(_self.copyWith(beneficiaryTransferType: value));
  });
}/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get beneficiaryBankOrAgent {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.beneficiaryBankOrAgent, (value) {
    return _then(_self.copyWith(beneficiaryBankOrAgent: value));
  });
}
}

/// @nodoc


class _GetBeneficiaryCountries implements BeneficiaryEvent {
  const _GetBeneficiaryCountries();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryCountries);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryCountries()';
}


}




/// @nodoc


class _BeneficiaryCountrySelected implements BeneficiaryEvent {
  const _BeneficiaryCountrySelected(this.selectedBeneficiaryCountry);
  

 final  CommonSelectableItem selectedBeneficiaryCountry;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryCountrySelectedCopyWith<_BeneficiaryCountrySelected> get copyWith => __$BeneficiaryCountrySelectedCopyWithImpl<_BeneficiaryCountrySelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryCountrySelected&&(identical(other.selectedBeneficiaryCountry, selectedBeneficiaryCountry) || other.selectedBeneficiaryCountry == selectedBeneficiaryCountry));
}


@override
int get hashCode => Object.hash(runtimeType,selectedBeneficiaryCountry);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryCountrySelected(selectedBeneficiaryCountry: $selectedBeneficiaryCountry)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryCountrySelectedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryCountrySelectedCopyWith(_BeneficiaryCountrySelected value, $Res Function(_BeneficiaryCountrySelected) _then) = __$BeneficiaryCountrySelectedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedBeneficiaryCountry
});


$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryCountry;

}
/// @nodoc
class __$BeneficiaryCountrySelectedCopyWithImpl<$Res>
    implements _$BeneficiaryCountrySelectedCopyWith<$Res> {
  __$BeneficiaryCountrySelectedCopyWithImpl(this._self, this._then);

  final _BeneficiaryCountrySelected _self;
  final $Res Function(_BeneficiaryCountrySelected) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedBeneficiaryCountry = null,}) {
  return _then(_BeneficiaryCountrySelected(
null == selectedBeneficiaryCountry ? _self.selectedBeneficiaryCountry : selectedBeneficiaryCountry // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryCountry {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryCountry, (value) {
    return _then(_self.copyWith(selectedBeneficiaryCountry: value));
  });
}
}

/// @nodoc


class _GetBeneficiaryCurrencies implements BeneficiaryEvent {
  const _GetBeneficiaryCurrencies();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryCurrencies);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryCurrencies()';
}


}




/// @nodoc


class _BeneficiaryCurrencySelected implements BeneficiaryEvent {
  const _BeneficiaryCurrencySelected(this.selectedBeneficiaryCurrency);
  

 final  CommonSelectableItem selectedBeneficiaryCurrency;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryCurrencySelectedCopyWith<_BeneficiaryCurrencySelected> get copyWith => __$BeneficiaryCurrencySelectedCopyWithImpl<_BeneficiaryCurrencySelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryCurrencySelected&&(identical(other.selectedBeneficiaryCurrency, selectedBeneficiaryCurrency) || other.selectedBeneficiaryCurrency == selectedBeneficiaryCurrency));
}


@override
int get hashCode => Object.hash(runtimeType,selectedBeneficiaryCurrency);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryCurrencySelected(selectedBeneficiaryCurrency: $selectedBeneficiaryCurrency)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryCurrencySelectedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryCurrencySelectedCopyWith(_BeneficiaryCurrencySelected value, $Res Function(_BeneficiaryCurrencySelected) _then) = __$BeneficiaryCurrencySelectedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedBeneficiaryCurrency
});


$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryCurrency;

}
/// @nodoc
class __$BeneficiaryCurrencySelectedCopyWithImpl<$Res>
    implements _$BeneficiaryCurrencySelectedCopyWith<$Res> {
  __$BeneficiaryCurrencySelectedCopyWithImpl(this._self, this._then);

  final _BeneficiaryCurrencySelected _self;
  final $Res Function(_BeneficiaryCurrencySelected) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedBeneficiaryCurrency = null,}) {
  return _then(_BeneficiaryCurrencySelected(
null == selectedBeneficiaryCurrency ? _self.selectedBeneficiaryCurrency : selectedBeneficiaryCurrency // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryCurrency {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryCurrency, (value) {
    return _then(_self.copyWith(selectedBeneficiaryCurrency: value));
  });
}
}

/// @nodoc


class _GetBeneficiaryTransferTypes implements BeneficiaryEvent {
  const _GetBeneficiaryTransferTypes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryTransferTypes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryTransferTypes()';
}


}




/// @nodoc


class _BeneficiaryTransferTypeSelected implements BeneficiaryEvent {
  const _BeneficiaryTransferTypeSelected(this.selectedBeneficiaryTransferType);
  

 final  CommonSelectableItem selectedBeneficiaryTransferType;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryTransferTypeSelectedCopyWith<_BeneficiaryTransferTypeSelected> get copyWith => __$BeneficiaryTransferTypeSelectedCopyWithImpl<_BeneficiaryTransferTypeSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryTransferTypeSelected&&(identical(other.selectedBeneficiaryTransferType, selectedBeneficiaryTransferType) || other.selectedBeneficiaryTransferType == selectedBeneficiaryTransferType));
}


@override
int get hashCode => Object.hash(runtimeType,selectedBeneficiaryTransferType);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryTransferTypeSelected(selectedBeneficiaryTransferType: $selectedBeneficiaryTransferType)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryTransferTypeSelectedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryTransferTypeSelectedCopyWith(_BeneficiaryTransferTypeSelected value, $Res Function(_BeneficiaryTransferTypeSelected) _then) = __$BeneficiaryTransferTypeSelectedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedBeneficiaryTransferType
});


$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryTransferType;

}
/// @nodoc
class __$BeneficiaryTransferTypeSelectedCopyWithImpl<$Res>
    implements _$BeneficiaryTransferTypeSelectedCopyWith<$Res> {
  __$BeneficiaryTransferTypeSelectedCopyWithImpl(this._self, this._then);

  final _BeneficiaryTransferTypeSelected _self;
  final $Res Function(_BeneficiaryTransferTypeSelected) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedBeneficiaryTransferType = null,}) {
  return _then(_BeneficiaryTransferTypeSelected(
null == selectedBeneficiaryTransferType ? _self.selectedBeneficiaryTransferType : selectedBeneficiaryTransferType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryTransferType {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryTransferType, (value) {
    return _then(_self.copyWith(selectedBeneficiaryTransferType: value));
  });
}
}

/// @nodoc


class _GetBeneficiaryBanksOrAgents implements BeneficiaryEvent {
  const _GetBeneficiaryBanksOrAgents();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryBanksOrAgents);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryBanksOrAgents()';
}


}




/// @nodoc


class _BeneficiaryBankOrAgentSelected implements BeneficiaryEvent {
  const _BeneficiaryBankOrAgentSelected(this.selectedBeneficiaryBankOrAgent);
  

 final  CommonSelectableItem selectedBeneficiaryBankOrAgent;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryBankOrAgentSelectedCopyWith<_BeneficiaryBankOrAgentSelected> get copyWith => __$BeneficiaryBankOrAgentSelectedCopyWithImpl<_BeneficiaryBankOrAgentSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryBankOrAgentSelected&&(identical(other.selectedBeneficiaryBankOrAgent, selectedBeneficiaryBankOrAgent) || other.selectedBeneficiaryBankOrAgent == selectedBeneficiaryBankOrAgent));
}


@override
int get hashCode => Object.hash(runtimeType,selectedBeneficiaryBankOrAgent);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryBankOrAgentSelected(selectedBeneficiaryBankOrAgent: $selectedBeneficiaryBankOrAgent)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryBankOrAgentSelectedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryBankOrAgentSelectedCopyWith(_BeneficiaryBankOrAgentSelected value, $Res Function(_BeneficiaryBankOrAgentSelected) _then) = __$BeneficiaryBankOrAgentSelectedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedBeneficiaryBankOrAgent
});


$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryBankOrAgent;

}
/// @nodoc
class __$BeneficiaryBankOrAgentSelectedCopyWithImpl<$Res>
    implements _$BeneficiaryBankOrAgentSelectedCopyWith<$Res> {
  __$BeneficiaryBankOrAgentSelectedCopyWithImpl(this._self, this._then);

  final _BeneficiaryBankOrAgentSelected _self;
  final $Res Function(_BeneficiaryBankOrAgentSelected) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedBeneficiaryBankOrAgent = null,}) {
  return _then(_BeneficiaryBankOrAgentSelected(
null == selectedBeneficiaryBankOrAgent ? _self.selectedBeneficiaryBankOrAgent : selectedBeneficiaryBankOrAgent // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedBeneficiaryBankOrAgent {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryBankOrAgent, (value) {
    return _then(_self.copyWith(selectedBeneficiaryBankOrAgent: value));
  });
}
}

/// @nodoc


class _GetBeneficiaryProductFields implements BeneficiaryEvent {
  const _GetBeneficiaryProductFields();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryProductFields);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryProductFields()';
}


}




/// @nodoc


class _BeneficiaryProductFieldChanged implements BeneficiaryEvent {
  const _BeneficiaryProductFieldChanged({required this.backendField, required this.value});
  

 final  Beneficiary backendField;
 final  String value;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryProductFieldChangedCopyWith<_BeneficiaryProductFieldChanged> get copyWith => __$BeneficiaryProductFieldChangedCopyWithImpl<_BeneficiaryProductFieldChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryProductFieldChanged&&(identical(other.backendField, backendField) || other.backendField == backendField)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,backendField,value);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryProductFieldChanged(backendField: $backendField, value: $value)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryProductFieldChangedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryProductFieldChangedCopyWith(_BeneficiaryProductFieldChanged value, $Res Function(_BeneficiaryProductFieldChanged) _then) = __$BeneficiaryProductFieldChangedCopyWithImpl;
@useResult
$Res call({
 Beneficiary backendField, String value
});


$BeneficiaryCopyWith<$Res> get backendField;

}
/// @nodoc
class __$BeneficiaryProductFieldChangedCopyWithImpl<$Res>
    implements _$BeneficiaryProductFieldChangedCopyWith<$Res> {
  __$BeneficiaryProductFieldChangedCopyWithImpl(this._self, this._then);

  final _BeneficiaryProductFieldChanged _self;
  final $Res Function(_BeneficiaryProductFieldChanged) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? backendField = null,Object? value = null,}) {
  return _then(_BeneficiaryProductFieldChanged(
backendField: null == backendField ? _self.backendField : backendField // ignore: cast_nullable_to_non_nullable
as Beneficiary,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryCopyWith<$Res> get backendField {
  
  return $BeneficiaryCopyWith<$Res>(_self.backendField, (value) {
    return _then(_self.copyWith(backendField: value));
  });
}
}

/// @nodoc


class _ClearBeneficiaryProductFieldValue implements BeneficiaryEvent {
  const _ClearBeneficiaryProductFieldValue({required this.backendField});
  

 final  Beneficiary backendField;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClearBeneficiaryProductFieldValueCopyWith<_ClearBeneficiaryProductFieldValue> get copyWith => __$ClearBeneficiaryProductFieldValueCopyWithImpl<_ClearBeneficiaryProductFieldValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearBeneficiaryProductFieldValue&&(identical(other.backendField, backendField) || other.backendField == backendField));
}


@override
int get hashCode => Object.hash(runtimeType,backendField);

@override
String toString() {
  return 'BeneficiaryEvent.clearBeneficiaryProductFieldValue(backendField: $backendField)';
}


}

/// @nodoc
abstract mixin class _$ClearBeneficiaryProductFieldValueCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$ClearBeneficiaryProductFieldValueCopyWith(_ClearBeneficiaryProductFieldValue value, $Res Function(_ClearBeneficiaryProductFieldValue) _then) = __$ClearBeneficiaryProductFieldValueCopyWithImpl;
@useResult
$Res call({
 Beneficiary backendField
});


$BeneficiaryCopyWith<$Res> get backendField;

}
/// @nodoc
class __$ClearBeneficiaryProductFieldValueCopyWithImpl<$Res>
    implements _$ClearBeneficiaryProductFieldValueCopyWith<$Res> {
  __$ClearBeneficiaryProductFieldValueCopyWithImpl(this._self, this._then);

  final _ClearBeneficiaryProductFieldValue _self;
  final $Res Function(_ClearBeneficiaryProductFieldValue) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? backendField = null,}) {
  return _then(_ClearBeneficiaryProductFieldValue(
backendField: null == backendField ? _self.backendField : backendField // ignore: cast_nullable_to_non_nullable
as Beneficiary,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryCopyWith<$Res> get backendField {
  
  return $BeneficiaryCopyWith<$Res>(_self.backendField, (value) {
    return _then(_self.copyWith(backendField: value));
  });
}
}

/// @nodoc


class _GetBeneficiaryCombo implements BeneficiaryEvent {
  const _GetBeneficiaryCombo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryCombo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryCombo()';
}


}




/// @nodoc


class _GetBankCombo implements BeneficiaryEvent {
  const _GetBankCombo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBankCombo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBankCombo()';
}


}




/// @nodoc


class _GetBranchCombo implements BeneficiaryEvent {
  const _GetBranchCombo(this.bankCode, {this.expectedBranchCode = ''});
  

 final  String? bankCode;
@JsonKey() final  String? expectedBranchCode;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBranchComboCopyWith<_GetBranchCombo> get copyWith => __$GetBranchComboCopyWithImpl<_GetBranchCombo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBranchCombo&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.expectedBranchCode, expectedBranchCode) || other.expectedBranchCode == expectedBranchCode));
}


@override
int get hashCode => Object.hash(runtimeType,bankCode,expectedBranchCode);

@override
String toString() {
  return 'BeneficiaryEvent.getBranchCombo(bankCode: $bankCode, expectedBranchCode: $expectedBranchCode)';
}


}

/// @nodoc
abstract mixin class _$GetBranchComboCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$GetBranchComboCopyWith(_GetBranchCombo value, $Res Function(_GetBranchCombo) _then) = __$GetBranchComboCopyWithImpl;
@useResult
$Res call({
 String? bankCode, String? expectedBranchCode
});




}
/// @nodoc
class __$GetBranchComboCopyWithImpl<$Res>
    implements _$GetBranchComboCopyWith<$Res> {
  __$GetBranchComboCopyWithImpl(this._self, this._then);

  final _GetBranchCombo _self;
  final $Res Function(_GetBranchCombo) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bankCode = freezed,Object? expectedBranchCode = freezed,}) {
  return _then(_GetBranchCombo(
freezed == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String?,expectedBranchCode: freezed == expectedBranchCode ? _self.expectedBranchCode : expectedBranchCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _GetBeneficiaryPurposeOfTransactions implements BeneficiaryEvent {
  const _GetBeneficiaryPurposeOfTransactions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryPurposeOfTransactions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiaryPurposeOfTransactions()';
}


}




/// @nodoc


class _BeneficiaryPurposeOfTransactionSelected implements BeneficiaryEvent {
  const _BeneficiaryPurposeOfTransactionSelected(this.selectedPurposeOfTransaction);
  

 final  CommonSelectableItem selectedPurposeOfTransaction;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryPurposeOfTransactionSelectedCopyWith<_BeneficiaryPurposeOfTransactionSelected> get copyWith => __$BeneficiaryPurposeOfTransactionSelectedCopyWithImpl<_BeneficiaryPurposeOfTransactionSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryPurposeOfTransactionSelected&&(identical(other.selectedPurposeOfTransaction, selectedPurposeOfTransaction) || other.selectedPurposeOfTransaction == selectedPurposeOfTransaction));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPurposeOfTransaction);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryPurposeOfTransactionSelected(selectedPurposeOfTransaction: $selectedPurposeOfTransaction)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryPurposeOfTransactionSelectedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryPurposeOfTransactionSelectedCopyWith(_BeneficiaryPurposeOfTransactionSelected value, $Res Function(_BeneficiaryPurposeOfTransactionSelected) _then) = __$BeneficiaryPurposeOfTransactionSelectedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedPurposeOfTransaction
});


$CommonSelectableItemCopyWith<$Res> get selectedPurposeOfTransaction;

}
/// @nodoc
class __$BeneficiaryPurposeOfTransactionSelectedCopyWithImpl<$Res>
    implements _$BeneficiaryPurposeOfTransactionSelectedCopyWith<$Res> {
  __$BeneficiaryPurposeOfTransactionSelectedCopyWithImpl(this._self, this._then);

  final _BeneficiaryPurposeOfTransactionSelected _self;
  final $Res Function(_BeneficiaryPurposeOfTransactionSelected) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedPurposeOfTransaction = null,}) {
  return _then(_BeneficiaryPurposeOfTransactionSelected(
null == selectedPurposeOfTransaction ? _self.selectedPurposeOfTransaction : selectedPurposeOfTransaction // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedPurposeOfTransaction {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedPurposeOfTransaction, (value) {
    return _then(_self.copyWith(selectedPurposeOfTransaction: value));
  });
}
}

/// @nodoc


class _GetBeneficiarySourceOfFunds implements BeneficiaryEvent {
  const _GetBeneficiarySourceOfFunds();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiarySourceOfFunds);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.getBeneficiarySourceOfFunds()';
}


}




/// @nodoc


class _BeneficiarySourceOfFundSelected implements BeneficiaryEvent {
  const _BeneficiarySourceOfFundSelected(this.selectedSourceOfFund);
  

 final  CommonSelectableItem selectedSourceOfFund;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiarySourceOfFundSelectedCopyWith<_BeneficiarySourceOfFundSelected> get copyWith => __$BeneficiarySourceOfFundSelectedCopyWithImpl<_BeneficiarySourceOfFundSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiarySourceOfFundSelected&&(identical(other.selectedSourceOfFund, selectedSourceOfFund) || other.selectedSourceOfFund == selectedSourceOfFund));
}


@override
int get hashCode => Object.hash(runtimeType,selectedSourceOfFund);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiarySourceOfFundSelected(selectedSourceOfFund: $selectedSourceOfFund)';
}


}

/// @nodoc
abstract mixin class _$BeneficiarySourceOfFundSelectedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiarySourceOfFundSelectedCopyWith(_BeneficiarySourceOfFundSelected value, $Res Function(_BeneficiarySourceOfFundSelected) _then) = __$BeneficiarySourceOfFundSelectedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedSourceOfFund
});


$CommonSelectableItemCopyWith<$Res> get selectedSourceOfFund;

}
/// @nodoc
class __$BeneficiarySourceOfFundSelectedCopyWithImpl<$Res>
    implements _$BeneficiarySourceOfFundSelectedCopyWith<$Res> {
  __$BeneficiarySourceOfFundSelectedCopyWithImpl(this._self, this._then);

  final _BeneficiarySourceOfFundSelected _self;
  final $Res Function(_BeneficiarySourceOfFundSelected) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedSourceOfFund = null,}) {
  return _then(_BeneficiarySourceOfFundSelected(
null == selectedSourceOfFund ? _self.selectedSourceOfFund : selectedSourceOfFund // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res> get selectedSourceOfFund {
  
  return $CommonSelectableItemCopyWith<$Res>(_self.selectedSourceOfFund, (value) {
    return _then(_self.copyWith(selectedSourceOfFund: value));
  });
}
}

/// @nodoc


class _SaveOrUpdateBeneficiaryPressed implements BeneficiaryEvent {
  const _SaveOrUpdateBeneficiaryPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveOrUpdateBeneficiaryPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.saveOrUpdateBeneficiaryPressed()';
}


}




/// @nodoc


class _BeneficiaryOtpChanged implements BeneficiaryEvent {
  const _BeneficiaryOtpChanged(this.otpStr);
  

 final  String otpStr;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryOtpChangedCopyWith<_BeneficiaryOtpChanged> get copyWith => __$BeneficiaryOtpChangedCopyWithImpl<_BeneficiaryOtpChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryOtpChanged&&(identical(other.otpStr, otpStr) || other.otpStr == otpStr));
}


@override
int get hashCode => Object.hash(runtimeType,otpStr);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryOtpChanged(otpStr: $otpStr)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryOtpChangedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryOtpChangedCopyWith(_BeneficiaryOtpChanged value, $Res Function(_BeneficiaryOtpChanged) _then) = __$BeneficiaryOtpChangedCopyWithImpl;
@useResult
$Res call({
 String otpStr
});




}
/// @nodoc
class __$BeneficiaryOtpChangedCopyWithImpl<$Res>
    implements _$BeneficiaryOtpChangedCopyWith<$Res> {
  __$BeneficiaryOtpChangedCopyWithImpl(this._self, this._then);

  final _BeneficiaryOtpChanged _self;
  final $Res Function(_BeneficiaryOtpChanged) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otpStr = null,}) {
  return _then(_BeneficiaryOtpChanged(
null == otpStr ? _self.otpStr : otpStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BeneficiaryOtpSubmitted implements BeneficiaryEvent {
  const _BeneficiaryOtpSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryOtpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryOtpSubmitted()';
}


}




/// @nodoc


class _ResendBeneficiaryOtp implements BeneficiaryEvent {
  const _ResendBeneficiaryOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendBeneficiaryOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.resendBeneficiaryOtp()';
}


}




/// @nodoc


class _BeneficiaryBankComboChanged implements BeneficiaryEvent {
  const _BeneficiaryBankComboChanged({required this.bankCode, required this.bankName});
  

 final  String bankCode;
 final  String bankName;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryBankComboChangedCopyWith<_BeneficiaryBankComboChanged> get copyWith => __$BeneficiaryBankComboChangedCopyWithImpl<_BeneficiaryBankComboChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryBankComboChanged&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.bankName, bankName) || other.bankName == bankName));
}


@override
int get hashCode => Object.hash(runtimeType,bankCode,bankName);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryBankComboChanged(bankCode: $bankCode, bankName: $bankName)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryBankComboChangedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryBankComboChangedCopyWith(_BeneficiaryBankComboChanged value, $Res Function(_BeneficiaryBankComboChanged) _then) = __$BeneficiaryBankComboChangedCopyWithImpl;
@useResult
$Res call({
 String bankCode, String bankName
});




}
/// @nodoc
class __$BeneficiaryBankComboChangedCopyWithImpl<$Res>
    implements _$BeneficiaryBankComboChangedCopyWith<$Res> {
  __$BeneficiaryBankComboChangedCopyWithImpl(this._self, this._then);

  final _BeneficiaryBankComboChanged _self;
  final $Res Function(_BeneficiaryBankComboChanged) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bankCode = null,Object? bankName = null,}) {
  return _then(_BeneficiaryBankComboChanged(
bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BeneficiaryBranchComboChanged implements BeneficiaryEvent {
  const _BeneficiaryBranchComboChanged({required this.branchCode, required this.branchName});
  

 final  String branchCode;
 final  String branchName;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryBranchComboChangedCopyWith<_BeneficiaryBranchComboChanged> get copyWith => __$BeneficiaryBranchComboChangedCopyWithImpl<_BeneficiaryBranchComboChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryBranchComboChanged&&(identical(other.branchCode, branchCode) || other.branchCode == branchCode)&&(identical(other.branchName, branchName) || other.branchName == branchName));
}


@override
int get hashCode => Object.hash(runtimeType,branchCode,branchName);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryBranchComboChanged(branchCode: $branchCode, branchName: $branchName)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryBranchComboChangedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryBranchComboChangedCopyWith(_BeneficiaryBranchComboChanged value, $Res Function(_BeneficiaryBranchComboChanged) _then) = __$BeneficiaryBranchComboChangedCopyWithImpl;
@useResult
$Res call({
 String branchCode, String branchName
});




}
/// @nodoc
class __$BeneficiaryBranchComboChangedCopyWithImpl<$Res>
    implements _$BeneficiaryBranchComboChangedCopyWith<$Res> {
  __$BeneficiaryBranchComboChangedCopyWithImpl(this._self, this._then);

  final _BeneficiaryBranchComboChanged _self;
  final $Res Function(_BeneficiaryBranchComboChanged) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? branchCode = null,Object? branchName = null,}) {
  return _then(_BeneficiaryBranchComboChanged(
branchCode: null == branchCode ? _self.branchCode : branchCode // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BeneficiaryRouteCodeChanged implements BeneficiaryEvent {
  const _BeneficiaryRouteCodeChanged(this.routeCode);
  

 final  String routeCode;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryRouteCodeChangedCopyWith<_BeneficiaryRouteCodeChanged> get copyWith => __$BeneficiaryRouteCodeChangedCopyWithImpl<_BeneficiaryRouteCodeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryRouteCodeChanged&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode));
}


@override
int get hashCode => Object.hash(runtimeType,routeCode);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryRouteCodeChanged(routeCode: $routeCode)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryRouteCodeChangedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryRouteCodeChangedCopyWith(_BeneficiaryRouteCodeChanged value, $Res Function(_BeneficiaryRouteCodeChanged) _then) = __$BeneficiaryRouteCodeChangedCopyWithImpl;
@useResult
$Res call({
 String routeCode
});




}
/// @nodoc
class __$BeneficiaryRouteCodeChangedCopyWithImpl<$Res>
    implements _$BeneficiaryRouteCodeChangedCopyWith<$Res> {
  __$BeneficiaryRouteCodeChangedCopyWithImpl(this._self, this._then);

  final _BeneficiaryRouteCodeChanged _self;
  final $Res Function(_BeneficiaryRouteCodeChanged) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? routeCode = null,}) {
  return _then(_BeneficiaryRouteCodeChanged(
null == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _BeneficiaryRouteCodeSelected implements BeneficiaryEvent {
  const _BeneficiaryRouteCodeSelected(this.routeCode);
  

 final  String routeCode;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryRouteCodeSelectedCopyWith<_BeneficiaryRouteCodeSelected> get copyWith => __$BeneficiaryRouteCodeSelectedCopyWithImpl<_BeneficiaryRouteCodeSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryRouteCodeSelected&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode));
}


@override
int get hashCode => Object.hash(runtimeType,routeCode);

@override
String toString() {
  return 'BeneficiaryEvent.beneficiaryRouteCodeSelected(routeCode: $routeCode)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryRouteCodeSelectedCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$BeneficiaryRouteCodeSelectedCopyWith(_BeneficiaryRouteCodeSelected value, $Res Function(_BeneficiaryRouteCodeSelected) _then) = __$BeneficiaryRouteCodeSelectedCopyWithImpl;
@useResult
$Res call({
 String routeCode
});




}
/// @nodoc
class __$BeneficiaryRouteCodeSelectedCopyWithImpl<$Res>
    implements _$BeneficiaryRouteCodeSelectedCopyWith<$Res> {
  __$BeneficiaryRouteCodeSelectedCopyWithImpl(this._self, this._then);

  final _BeneficiaryRouteCodeSelected _self;
  final $Res Function(_BeneficiaryRouteCodeSelected) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? routeCode = null,}) {
  return _then(_BeneficiaryRouteCodeSelected(
null == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadFormSupportData implements BeneficiaryEvent {
  const _LoadFormSupportData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadFormSupportData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BeneficiaryEvent.loadFormSupportData()';
}


}




/// @nodoc


class _DeleteBeneficiary implements BeneficiaryEvent {
  const _DeleteBeneficiary(this.beneficiaryId, {this.isFromStateList = false});
  

 final  String beneficiaryId;
@JsonKey() final  bool isFromStateList;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteBeneficiaryCopyWith<_DeleteBeneficiary> get copyWith => __$DeleteBeneficiaryCopyWithImpl<_DeleteBeneficiary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteBeneficiary&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.isFromStateList, isFromStateList) || other.isFromStateList == isFromStateList));
}


@override
int get hashCode => Object.hash(runtimeType,beneficiaryId,isFromStateList);

@override
String toString() {
  return 'BeneficiaryEvent.deleteBeneficiary(beneficiaryId: $beneficiaryId, isFromStateList: $isFromStateList)';
}


}

/// @nodoc
abstract mixin class _$DeleteBeneficiaryCopyWith<$Res> implements $BeneficiaryEventCopyWith<$Res> {
  factory _$DeleteBeneficiaryCopyWith(_DeleteBeneficiary value, $Res Function(_DeleteBeneficiary) _then) = __$DeleteBeneficiaryCopyWithImpl;
@useResult
$Res call({
 String beneficiaryId, bool isFromStateList
});




}
/// @nodoc
class __$DeleteBeneficiaryCopyWithImpl<$Res>
    implements _$DeleteBeneficiaryCopyWith<$Res> {
  __$DeleteBeneficiaryCopyWithImpl(this._self, this._then);

  final _DeleteBeneficiary _self;
  final $Res Function(_DeleteBeneficiary) _then;

/// Create a copy of BeneficiaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? beneficiaryId = null,Object? isFromStateList = null,}) {
  return _then(_DeleteBeneficiary(
null == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as String,isFromStateList: null == isFromStateList ? _self.isFromStateList : isFromStateList // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$BeneficiaryState {

 bool get isEditing; bool get isAddingFromHome; bool get isLoading; bool get isInitialLoading; bool get showErrorMessages; bool get isSubmitting; bool get isOtpSubmitting; bool get isResendingOtp; bool get showOtpErrorMessages; BeneficiaryOtp get beneficiaryOtp; DateTime? get otpResendCooldownUntil; bool get isRouteCodeLoading; bool get isRouteLookupLoading; bool get isRouteCodeAutoFilled; String get selectedBankComboCode; BeneficiaryRouteCodeDto? get beneficiaryRouteCodeDto; BeneficiaryBankBranchRouteDto? get beneficiaryBankBranchRouteDto; BeneficiaryListDto? get beneficiaryListDto; BeneficiaryList? get selectedBeneficiary; BeneficiaryByIdDto? get beneficiaryByIdDto; BeneficiaryCountryListDto? get beneficiaryCountryListDto; CommonSelectableItem? get selectedBeneficiaryCountry; BeneficiaryCurrencyListDto? get beneficiaryCurrencyListDto; CommonSelectableItem? get selectedBeneficiaryCurrency; BeneficiaryTransferModeListDto? get beneficiaryTransferModeListDto; CommonSelectableItem? get selectedBeneficiaryTransferType; BeneficiaryBankOrAgentListDto? get beneficiaryBankOrAgentListDto; CommonSelectableItem? get selectedBeneficiaryBankOrAgent; BeneficiaryProductFieldSettingsDto? get beneficiaryProductFieldSettingsDto; Map<String, BeneficiaryDynamicInput> get dynamicFieldValues; Map<String, BeneficiaryDynamicInput> get initialDynamicFieldValues; BeneficiaryPurposeOfTransferDto? get beneficiaryPurposeOfTransferDto; CommonSelectableItem? get selectedBeneficiaryPurposeOfTransaction; BeneficiarySourceOfFundDto? get beneficiarySourceOfFundDto; CommonSelectableItem? get selectedBeneficiarySourceOfFund; CommonComboDto? get commonComboDto; Option<Either<BeneficiaryFailure, BeneficiaryListDto>> get beneficiaryFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>> get beneficiaryByIdFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>> get beneficiaryCountryListFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>> get beneficiaryCurrenciesFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>> get beneficiaryTransferTypesFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>> get beneficiaryBankOrAgentListFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>> get beneficiaryProductSettingsFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>> get beneficiaryComboListFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>> get beneficiaryBankComboListFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>> get beneficiaryBankBranchComboListFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>> get beneficiaryPurposeOfTransactionFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>> get beneficiarySourceOfFundFailureOrSuccessOption; Option<Either<BeneficiaryFailure, int>> get saveBeneficiaryFailureOrSuccessOption; Option<Either<BeneficiaryFailure, String>> get beneficiaryOtpFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>> get beneficiaryRouteCodeFailureOrSuccessOption; Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>> get beneficiaryBankBranchRouteFailureOrSuccessOption; Option<Either<BeneficiaryFailure, int>> get resendBeneficiaryOtpFailureOrSuccessOption; bool get isDeleting; Option<Either<BeneficiaryFailure, Unit>> get deleteBeneficiaryFailureOrSuccessOption;
/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryStateCopyWith<BeneficiaryState> get copyWith => _$BeneficiaryStateCopyWithImpl<BeneficiaryState>(this as BeneficiaryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryState&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isAddingFromHome, isAddingFromHome) || other.isAddingFromHome == isAddingFromHome)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.isResendingOtp, isResendingOtp) || other.isResendingOtp == isResendingOtp)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.beneficiaryOtp, beneficiaryOtp) || other.beneficiaryOtp == beneficiaryOtp)&&(identical(other.otpResendCooldownUntil, otpResendCooldownUntil) || other.otpResendCooldownUntil == otpResendCooldownUntil)&&(identical(other.isRouteCodeLoading, isRouteCodeLoading) || other.isRouteCodeLoading == isRouteCodeLoading)&&(identical(other.isRouteLookupLoading, isRouteLookupLoading) || other.isRouteLookupLoading == isRouteLookupLoading)&&(identical(other.isRouteCodeAutoFilled, isRouteCodeAutoFilled) || other.isRouteCodeAutoFilled == isRouteCodeAutoFilled)&&(identical(other.selectedBankComboCode, selectedBankComboCode) || other.selectedBankComboCode == selectedBankComboCode)&&(identical(other.beneficiaryRouteCodeDto, beneficiaryRouteCodeDto) || other.beneficiaryRouteCodeDto == beneficiaryRouteCodeDto)&&(identical(other.beneficiaryBankBranchRouteDto, beneficiaryBankBranchRouteDto) || other.beneficiaryBankBranchRouteDto == beneficiaryBankBranchRouteDto)&&(identical(other.beneficiaryListDto, beneficiaryListDto) || other.beneficiaryListDto == beneficiaryListDto)&&(identical(other.selectedBeneficiary, selectedBeneficiary) || other.selectedBeneficiary == selectedBeneficiary)&&(identical(other.beneficiaryByIdDto, beneficiaryByIdDto) || other.beneficiaryByIdDto == beneficiaryByIdDto)&&(identical(other.beneficiaryCountryListDto, beneficiaryCountryListDto) || other.beneficiaryCountryListDto == beneficiaryCountryListDto)&&(identical(other.selectedBeneficiaryCountry, selectedBeneficiaryCountry) || other.selectedBeneficiaryCountry == selectedBeneficiaryCountry)&&(identical(other.beneficiaryCurrencyListDto, beneficiaryCurrencyListDto) || other.beneficiaryCurrencyListDto == beneficiaryCurrencyListDto)&&(identical(other.selectedBeneficiaryCurrency, selectedBeneficiaryCurrency) || other.selectedBeneficiaryCurrency == selectedBeneficiaryCurrency)&&(identical(other.beneficiaryTransferModeListDto, beneficiaryTransferModeListDto) || other.beneficiaryTransferModeListDto == beneficiaryTransferModeListDto)&&(identical(other.selectedBeneficiaryTransferType, selectedBeneficiaryTransferType) || other.selectedBeneficiaryTransferType == selectedBeneficiaryTransferType)&&(identical(other.beneficiaryBankOrAgentListDto, beneficiaryBankOrAgentListDto) || other.beneficiaryBankOrAgentListDto == beneficiaryBankOrAgentListDto)&&(identical(other.selectedBeneficiaryBankOrAgent, selectedBeneficiaryBankOrAgent) || other.selectedBeneficiaryBankOrAgent == selectedBeneficiaryBankOrAgent)&&(identical(other.beneficiaryProductFieldSettingsDto, beneficiaryProductFieldSettingsDto) || other.beneficiaryProductFieldSettingsDto == beneficiaryProductFieldSettingsDto)&&const DeepCollectionEquality().equals(other.dynamicFieldValues, dynamicFieldValues)&&const DeepCollectionEquality().equals(other.initialDynamicFieldValues, initialDynamicFieldValues)&&(identical(other.beneficiaryPurposeOfTransferDto, beneficiaryPurposeOfTransferDto) || other.beneficiaryPurposeOfTransferDto == beneficiaryPurposeOfTransferDto)&&(identical(other.selectedBeneficiaryPurposeOfTransaction, selectedBeneficiaryPurposeOfTransaction) || other.selectedBeneficiaryPurposeOfTransaction == selectedBeneficiaryPurposeOfTransaction)&&(identical(other.beneficiarySourceOfFundDto, beneficiarySourceOfFundDto) || other.beneficiarySourceOfFundDto == beneficiarySourceOfFundDto)&&(identical(other.selectedBeneficiarySourceOfFund, selectedBeneficiarySourceOfFund) || other.selectedBeneficiarySourceOfFund == selectedBeneficiarySourceOfFund)&&(identical(other.commonComboDto, commonComboDto) || other.commonComboDto == commonComboDto)&&(identical(other.beneficiaryFailureOrSuccessOption, beneficiaryFailureOrSuccessOption) || other.beneficiaryFailureOrSuccessOption == beneficiaryFailureOrSuccessOption)&&(identical(other.beneficiaryByIdFailureOrSuccessOption, beneficiaryByIdFailureOrSuccessOption) || other.beneficiaryByIdFailureOrSuccessOption == beneficiaryByIdFailureOrSuccessOption)&&(identical(other.beneficiaryCountryListFailureOrSuccessOption, beneficiaryCountryListFailureOrSuccessOption) || other.beneficiaryCountryListFailureOrSuccessOption == beneficiaryCountryListFailureOrSuccessOption)&&(identical(other.beneficiaryCurrenciesFailureOrSuccessOption, beneficiaryCurrenciesFailureOrSuccessOption) || other.beneficiaryCurrenciesFailureOrSuccessOption == beneficiaryCurrenciesFailureOrSuccessOption)&&(identical(other.beneficiaryTransferTypesFailureOrSuccessOption, beneficiaryTransferTypesFailureOrSuccessOption) || other.beneficiaryTransferTypesFailureOrSuccessOption == beneficiaryTransferTypesFailureOrSuccessOption)&&(identical(other.beneficiaryBankOrAgentListFailureOrSuccessOption, beneficiaryBankOrAgentListFailureOrSuccessOption) || other.beneficiaryBankOrAgentListFailureOrSuccessOption == beneficiaryBankOrAgentListFailureOrSuccessOption)&&(identical(other.beneficiaryProductSettingsFailureOrSuccessOption, beneficiaryProductSettingsFailureOrSuccessOption) || other.beneficiaryProductSettingsFailureOrSuccessOption == beneficiaryProductSettingsFailureOrSuccessOption)&&(identical(other.beneficiaryComboListFailureOrSuccessOption, beneficiaryComboListFailureOrSuccessOption) || other.beneficiaryComboListFailureOrSuccessOption == beneficiaryComboListFailureOrSuccessOption)&&(identical(other.beneficiaryBankComboListFailureOrSuccessOption, beneficiaryBankComboListFailureOrSuccessOption) || other.beneficiaryBankComboListFailureOrSuccessOption == beneficiaryBankComboListFailureOrSuccessOption)&&(identical(other.beneficiaryBankBranchComboListFailureOrSuccessOption, beneficiaryBankBranchComboListFailureOrSuccessOption) || other.beneficiaryBankBranchComboListFailureOrSuccessOption == beneficiaryBankBranchComboListFailureOrSuccessOption)&&(identical(other.beneficiaryPurposeOfTransactionFailureOrSuccessOption, beneficiaryPurposeOfTransactionFailureOrSuccessOption) || other.beneficiaryPurposeOfTransactionFailureOrSuccessOption == beneficiaryPurposeOfTransactionFailureOrSuccessOption)&&(identical(other.beneficiarySourceOfFundFailureOrSuccessOption, beneficiarySourceOfFundFailureOrSuccessOption) || other.beneficiarySourceOfFundFailureOrSuccessOption == beneficiarySourceOfFundFailureOrSuccessOption)&&(identical(other.saveBeneficiaryFailureOrSuccessOption, saveBeneficiaryFailureOrSuccessOption) || other.saveBeneficiaryFailureOrSuccessOption == saveBeneficiaryFailureOrSuccessOption)&&(identical(other.beneficiaryOtpFailureOrSuccessOption, beneficiaryOtpFailureOrSuccessOption) || other.beneficiaryOtpFailureOrSuccessOption == beneficiaryOtpFailureOrSuccessOption)&&(identical(other.beneficiaryRouteCodeFailureOrSuccessOption, beneficiaryRouteCodeFailureOrSuccessOption) || other.beneficiaryRouteCodeFailureOrSuccessOption == beneficiaryRouteCodeFailureOrSuccessOption)&&(identical(other.beneficiaryBankBranchRouteFailureOrSuccessOption, beneficiaryBankBranchRouteFailureOrSuccessOption) || other.beneficiaryBankBranchRouteFailureOrSuccessOption == beneficiaryBankBranchRouteFailureOrSuccessOption)&&(identical(other.resendBeneficiaryOtpFailureOrSuccessOption, resendBeneficiaryOtpFailureOrSuccessOption) || other.resendBeneficiaryOtpFailureOrSuccessOption == resendBeneficiaryOtpFailureOrSuccessOption)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteBeneficiaryFailureOrSuccessOption, deleteBeneficiaryFailureOrSuccessOption) || other.deleteBeneficiaryFailureOrSuccessOption == deleteBeneficiaryFailureOrSuccessOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isEditing,isAddingFromHome,isLoading,isInitialLoading,showErrorMessages,isSubmitting,isOtpSubmitting,isResendingOtp,showOtpErrorMessages,beneficiaryOtp,otpResendCooldownUntil,isRouteCodeLoading,isRouteLookupLoading,isRouteCodeAutoFilled,selectedBankComboCode,beneficiaryRouteCodeDto,beneficiaryBankBranchRouteDto,beneficiaryListDto,selectedBeneficiary,beneficiaryByIdDto,beneficiaryCountryListDto,selectedBeneficiaryCountry,beneficiaryCurrencyListDto,selectedBeneficiaryCurrency,beneficiaryTransferModeListDto,selectedBeneficiaryTransferType,beneficiaryBankOrAgentListDto,selectedBeneficiaryBankOrAgent,beneficiaryProductFieldSettingsDto,const DeepCollectionEquality().hash(dynamicFieldValues),const DeepCollectionEquality().hash(initialDynamicFieldValues),beneficiaryPurposeOfTransferDto,selectedBeneficiaryPurposeOfTransaction,beneficiarySourceOfFundDto,selectedBeneficiarySourceOfFund,commonComboDto,beneficiaryFailureOrSuccessOption,beneficiaryByIdFailureOrSuccessOption,beneficiaryCountryListFailureOrSuccessOption,beneficiaryCurrenciesFailureOrSuccessOption,beneficiaryTransferTypesFailureOrSuccessOption,beneficiaryBankOrAgentListFailureOrSuccessOption,beneficiaryProductSettingsFailureOrSuccessOption,beneficiaryComboListFailureOrSuccessOption,beneficiaryBankComboListFailureOrSuccessOption,beneficiaryBankBranchComboListFailureOrSuccessOption,beneficiaryPurposeOfTransactionFailureOrSuccessOption,beneficiarySourceOfFundFailureOrSuccessOption,saveBeneficiaryFailureOrSuccessOption,beneficiaryOtpFailureOrSuccessOption,beneficiaryRouteCodeFailureOrSuccessOption,beneficiaryBankBranchRouteFailureOrSuccessOption,resendBeneficiaryOtpFailureOrSuccessOption,isDeleting,deleteBeneficiaryFailureOrSuccessOption]);

@override
String toString() {
  return 'BeneficiaryState(isEditing: $isEditing, isAddingFromHome: $isAddingFromHome, isLoading: $isLoading, isInitialLoading: $isInitialLoading, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, isResendingOtp: $isResendingOtp, showOtpErrorMessages: $showOtpErrorMessages, beneficiaryOtp: $beneficiaryOtp, otpResendCooldownUntil: $otpResendCooldownUntil, isRouteCodeLoading: $isRouteCodeLoading, isRouteLookupLoading: $isRouteLookupLoading, isRouteCodeAutoFilled: $isRouteCodeAutoFilled, selectedBankComboCode: $selectedBankComboCode, beneficiaryRouteCodeDto: $beneficiaryRouteCodeDto, beneficiaryBankBranchRouteDto: $beneficiaryBankBranchRouteDto, beneficiaryListDto: $beneficiaryListDto, selectedBeneficiary: $selectedBeneficiary, beneficiaryByIdDto: $beneficiaryByIdDto, beneficiaryCountryListDto: $beneficiaryCountryListDto, selectedBeneficiaryCountry: $selectedBeneficiaryCountry, beneficiaryCurrencyListDto: $beneficiaryCurrencyListDto, selectedBeneficiaryCurrency: $selectedBeneficiaryCurrency, beneficiaryTransferModeListDto: $beneficiaryTransferModeListDto, selectedBeneficiaryTransferType: $selectedBeneficiaryTransferType, beneficiaryBankOrAgentListDto: $beneficiaryBankOrAgentListDto, selectedBeneficiaryBankOrAgent: $selectedBeneficiaryBankOrAgent, beneficiaryProductFieldSettingsDto: $beneficiaryProductFieldSettingsDto, dynamicFieldValues: $dynamicFieldValues, initialDynamicFieldValues: $initialDynamicFieldValues, beneficiaryPurposeOfTransferDto: $beneficiaryPurposeOfTransferDto, selectedBeneficiaryPurposeOfTransaction: $selectedBeneficiaryPurposeOfTransaction, beneficiarySourceOfFundDto: $beneficiarySourceOfFundDto, selectedBeneficiarySourceOfFund: $selectedBeneficiarySourceOfFund, commonComboDto: $commonComboDto, beneficiaryFailureOrSuccessOption: $beneficiaryFailureOrSuccessOption, beneficiaryByIdFailureOrSuccessOption: $beneficiaryByIdFailureOrSuccessOption, beneficiaryCountryListFailureOrSuccessOption: $beneficiaryCountryListFailureOrSuccessOption, beneficiaryCurrenciesFailureOrSuccessOption: $beneficiaryCurrenciesFailureOrSuccessOption, beneficiaryTransferTypesFailureOrSuccessOption: $beneficiaryTransferTypesFailureOrSuccessOption, beneficiaryBankOrAgentListFailureOrSuccessOption: $beneficiaryBankOrAgentListFailureOrSuccessOption, beneficiaryProductSettingsFailureOrSuccessOption: $beneficiaryProductSettingsFailureOrSuccessOption, beneficiaryComboListFailureOrSuccessOption: $beneficiaryComboListFailureOrSuccessOption, beneficiaryBankComboListFailureOrSuccessOption: $beneficiaryBankComboListFailureOrSuccessOption, beneficiaryBankBranchComboListFailureOrSuccessOption: $beneficiaryBankBranchComboListFailureOrSuccessOption, beneficiaryPurposeOfTransactionFailureOrSuccessOption: $beneficiaryPurposeOfTransactionFailureOrSuccessOption, beneficiarySourceOfFundFailureOrSuccessOption: $beneficiarySourceOfFundFailureOrSuccessOption, saveBeneficiaryFailureOrSuccessOption: $saveBeneficiaryFailureOrSuccessOption, beneficiaryOtpFailureOrSuccessOption: $beneficiaryOtpFailureOrSuccessOption, beneficiaryRouteCodeFailureOrSuccessOption: $beneficiaryRouteCodeFailureOrSuccessOption, beneficiaryBankBranchRouteFailureOrSuccessOption: $beneficiaryBankBranchRouteFailureOrSuccessOption, resendBeneficiaryOtpFailureOrSuccessOption: $resendBeneficiaryOtpFailureOrSuccessOption, isDeleting: $isDeleting, deleteBeneficiaryFailureOrSuccessOption: $deleteBeneficiaryFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryStateCopyWith<$Res>  {
  factory $BeneficiaryStateCopyWith(BeneficiaryState value, $Res Function(BeneficiaryState) _then) = _$BeneficiaryStateCopyWithImpl;
@useResult
$Res call({
 bool isEditing, bool isAddingFromHome, bool isLoading, bool isInitialLoading, bool showErrorMessages, bool isSubmitting, bool isOtpSubmitting, bool isResendingOtp, bool showOtpErrorMessages, BeneficiaryOtp beneficiaryOtp, DateTime? otpResendCooldownUntil, bool isRouteCodeLoading, bool isRouteLookupLoading, bool isRouteCodeAutoFilled, String selectedBankComboCode, BeneficiaryRouteCodeDto? beneficiaryRouteCodeDto, BeneficiaryBankBranchRouteDto? beneficiaryBankBranchRouteDto, BeneficiaryListDto? beneficiaryListDto, BeneficiaryList? selectedBeneficiary, BeneficiaryByIdDto? beneficiaryByIdDto, BeneficiaryCountryListDto? beneficiaryCountryListDto, CommonSelectableItem? selectedBeneficiaryCountry, BeneficiaryCurrencyListDto? beneficiaryCurrencyListDto, CommonSelectableItem? selectedBeneficiaryCurrency, BeneficiaryTransferModeListDto? beneficiaryTransferModeListDto, CommonSelectableItem? selectedBeneficiaryTransferType, BeneficiaryBankOrAgentListDto? beneficiaryBankOrAgentListDto, CommonSelectableItem? selectedBeneficiaryBankOrAgent, BeneficiaryProductFieldSettingsDto? beneficiaryProductFieldSettingsDto, Map<String, BeneficiaryDynamicInput> dynamicFieldValues, Map<String, BeneficiaryDynamicInput> initialDynamicFieldValues, BeneficiaryPurposeOfTransferDto? beneficiaryPurposeOfTransferDto, CommonSelectableItem? selectedBeneficiaryPurposeOfTransaction, BeneficiarySourceOfFundDto? beneficiarySourceOfFundDto, CommonSelectableItem? selectedBeneficiarySourceOfFund, CommonComboDto? commonComboDto, Option<Either<BeneficiaryFailure, BeneficiaryListDto>> beneficiaryFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>> beneficiaryByIdFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>> beneficiaryCountryListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>> beneficiaryCurrenciesFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>> beneficiaryTransferTypesFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>> beneficiaryBankOrAgentListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>> beneficiaryProductSettingsFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>> beneficiaryComboListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>> beneficiaryBankComboListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>> beneficiaryBankBranchComboListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>> beneficiaryPurposeOfTransactionFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>> beneficiarySourceOfFundFailureOrSuccessOption, Option<Either<BeneficiaryFailure, int>> saveBeneficiaryFailureOrSuccessOption, Option<Either<BeneficiaryFailure, String>> beneficiaryOtpFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>> beneficiaryRouteCodeFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>> beneficiaryBankBranchRouteFailureOrSuccessOption, Option<Either<BeneficiaryFailure, int>> resendBeneficiaryOtpFailureOrSuccessOption, bool isDeleting, Option<Either<BeneficiaryFailure, Unit>> deleteBeneficiaryFailureOrSuccessOption
});


$BeneficiaryRouteCodeDtoCopyWith<$Res>? get beneficiaryRouteCodeDto;$BeneficiaryBankBranchRouteDtoCopyWith<$Res>? get beneficiaryBankBranchRouteDto;$BeneficiaryListDtoCopyWith<$Res>? get beneficiaryListDto;$BeneficiaryListCopyWith<$Res>? get selectedBeneficiary;$BeneficiaryByIdDtoCopyWith<$Res>? get beneficiaryByIdDto;$BeneficiaryCountryListDtoCopyWith<$Res>? get beneficiaryCountryListDto;$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCountry;$BeneficiaryCurrencyListDtoCopyWith<$Res>? get beneficiaryCurrencyListDto;$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCurrency;$BeneficiaryTransferModeListDtoCopyWith<$Res>? get beneficiaryTransferModeListDto;$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryTransferType;$BeneficiaryBankOrAgentListDtoCopyWith<$Res>? get beneficiaryBankOrAgentListDto;$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryBankOrAgent;$BeneficiaryProductFieldSettingsDtoCopyWith<$Res>? get beneficiaryProductFieldSettingsDto;$BeneficiaryPurposeOfTransferDtoCopyWith<$Res>? get beneficiaryPurposeOfTransferDto;$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryPurposeOfTransaction;$BeneficiarySourceOfFundDtoCopyWith<$Res>? get beneficiarySourceOfFundDto;$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiarySourceOfFund;$CommonComboDtoCopyWith<$Res>? get commonComboDto;

}
/// @nodoc
class _$BeneficiaryStateCopyWithImpl<$Res>
    implements $BeneficiaryStateCopyWith<$Res> {
  _$BeneficiaryStateCopyWithImpl(this._self, this._then);

  final BeneficiaryState _self;
  final $Res Function(BeneficiaryState) _then;

/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isEditing = null,Object? isAddingFromHome = null,Object? isLoading = null,Object? isInitialLoading = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? isResendingOtp = null,Object? showOtpErrorMessages = null,Object? beneficiaryOtp = null,Object? otpResendCooldownUntil = freezed,Object? isRouteCodeLoading = null,Object? isRouteLookupLoading = null,Object? isRouteCodeAutoFilled = null,Object? selectedBankComboCode = null,Object? beneficiaryRouteCodeDto = freezed,Object? beneficiaryBankBranchRouteDto = freezed,Object? beneficiaryListDto = freezed,Object? selectedBeneficiary = freezed,Object? beneficiaryByIdDto = freezed,Object? beneficiaryCountryListDto = freezed,Object? selectedBeneficiaryCountry = freezed,Object? beneficiaryCurrencyListDto = freezed,Object? selectedBeneficiaryCurrency = freezed,Object? beneficiaryTransferModeListDto = freezed,Object? selectedBeneficiaryTransferType = freezed,Object? beneficiaryBankOrAgentListDto = freezed,Object? selectedBeneficiaryBankOrAgent = freezed,Object? beneficiaryProductFieldSettingsDto = freezed,Object? dynamicFieldValues = null,Object? initialDynamicFieldValues = null,Object? beneficiaryPurposeOfTransferDto = freezed,Object? selectedBeneficiaryPurposeOfTransaction = freezed,Object? beneficiarySourceOfFundDto = freezed,Object? selectedBeneficiarySourceOfFund = freezed,Object? commonComboDto = freezed,Object? beneficiaryFailureOrSuccessOption = null,Object? beneficiaryByIdFailureOrSuccessOption = null,Object? beneficiaryCountryListFailureOrSuccessOption = null,Object? beneficiaryCurrenciesFailureOrSuccessOption = null,Object? beneficiaryTransferTypesFailureOrSuccessOption = null,Object? beneficiaryBankOrAgentListFailureOrSuccessOption = null,Object? beneficiaryProductSettingsFailureOrSuccessOption = null,Object? beneficiaryComboListFailureOrSuccessOption = null,Object? beneficiaryBankComboListFailureOrSuccessOption = null,Object? beneficiaryBankBranchComboListFailureOrSuccessOption = null,Object? beneficiaryPurposeOfTransactionFailureOrSuccessOption = null,Object? beneficiarySourceOfFundFailureOrSuccessOption = null,Object? saveBeneficiaryFailureOrSuccessOption = null,Object? beneficiaryOtpFailureOrSuccessOption = null,Object? beneficiaryRouteCodeFailureOrSuccessOption = null,Object? beneficiaryBankBranchRouteFailureOrSuccessOption = null,Object? resendBeneficiaryOtpFailureOrSuccessOption = null,Object? isDeleting = null,Object? deleteBeneficiaryFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isAddingFromHome: null == isAddingFromHome ? _self.isAddingFromHome : isAddingFromHome // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isResendingOtp: null == isResendingOtp ? _self.isResendingOtp : isResendingOtp // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,beneficiaryOtp: null == beneficiaryOtp ? _self.beneficiaryOtp : beneficiaryOtp // ignore: cast_nullable_to_non_nullable
as BeneficiaryOtp,otpResendCooldownUntil: freezed == otpResendCooldownUntil ? _self.otpResendCooldownUntil : otpResendCooldownUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,isRouteCodeLoading: null == isRouteCodeLoading ? _self.isRouteCodeLoading : isRouteCodeLoading // ignore: cast_nullable_to_non_nullable
as bool,isRouteLookupLoading: null == isRouteLookupLoading ? _self.isRouteLookupLoading : isRouteLookupLoading // ignore: cast_nullable_to_non_nullable
as bool,isRouteCodeAutoFilled: null == isRouteCodeAutoFilled ? _self.isRouteCodeAutoFilled : isRouteCodeAutoFilled // ignore: cast_nullable_to_non_nullable
as bool,selectedBankComboCode: null == selectedBankComboCode ? _self.selectedBankComboCode : selectedBankComboCode // ignore: cast_nullable_to_non_nullable
as String,beneficiaryRouteCodeDto: freezed == beneficiaryRouteCodeDto ? _self.beneficiaryRouteCodeDto : beneficiaryRouteCodeDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryRouteCodeDto?,beneficiaryBankBranchRouteDto: freezed == beneficiaryBankBranchRouteDto ? _self.beneficiaryBankBranchRouteDto : beneficiaryBankBranchRouteDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryBankBranchRouteDto?,beneficiaryListDto: freezed == beneficiaryListDto ? _self.beneficiaryListDto : beneficiaryListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryListDto?,selectedBeneficiary: freezed == selectedBeneficiary ? _self.selectedBeneficiary : selectedBeneficiary // ignore: cast_nullable_to_non_nullable
as BeneficiaryList?,beneficiaryByIdDto: freezed == beneficiaryByIdDto ? _self.beneficiaryByIdDto : beneficiaryByIdDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryByIdDto?,beneficiaryCountryListDto: freezed == beneficiaryCountryListDto ? _self.beneficiaryCountryListDto : beneficiaryCountryListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryCountryListDto?,selectedBeneficiaryCountry: freezed == selectedBeneficiaryCountry ? _self.selectedBeneficiaryCountry : selectedBeneficiaryCountry // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryCurrencyListDto: freezed == beneficiaryCurrencyListDto ? _self.beneficiaryCurrencyListDto : beneficiaryCurrencyListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryCurrencyListDto?,selectedBeneficiaryCurrency: freezed == selectedBeneficiaryCurrency ? _self.selectedBeneficiaryCurrency : selectedBeneficiaryCurrency // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryTransferModeListDto: freezed == beneficiaryTransferModeListDto ? _self.beneficiaryTransferModeListDto : beneficiaryTransferModeListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryTransferModeListDto?,selectedBeneficiaryTransferType: freezed == selectedBeneficiaryTransferType ? _self.selectedBeneficiaryTransferType : selectedBeneficiaryTransferType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryBankOrAgentListDto: freezed == beneficiaryBankOrAgentListDto ? _self.beneficiaryBankOrAgentListDto : beneficiaryBankOrAgentListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryBankOrAgentListDto?,selectedBeneficiaryBankOrAgent: freezed == selectedBeneficiaryBankOrAgent ? _self.selectedBeneficiaryBankOrAgent : selectedBeneficiaryBankOrAgent // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryProductFieldSettingsDto: freezed == beneficiaryProductFieldSettingsDto ? _self.beneficiaryProductFieldSettingsDto : beneficiaryProductFieldSettingsDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryProductFieldSettingsDto?,dynamicFieldValues: null == dynamicFieldValues ? _self.dynamicFieldValues : dynamicFieldValues // ignore: cast_nullable_to_non_nullable
as Map<String, BeneficiaryDynamicInput>,initialDynamicFieldValues: null == initialDynamicFieldValues ? _self.initialDynamicFieldValues : initialDynamicFieldValues // ignore: cast_nullable_to_non_nullable
as Map<String, BeneficiaryDynamicInput>,beneficiaryPurposeOfTransferDto: freezed == beneficiaryPurposeOfTransferDto ? _self.beneficiaryPurposeOfTransferDto : beneficiaryPurposeOfTransferDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryPurposeOfTransferDto?,selectedBeneficiaryPurposeOfTransaction: freezed == selectedBeneficiaryPurposeOfTransaction ? _self.selectedBeneficiaryPurposeOfTransaction : selectedBeneficiaryPurposeOfTransaction // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiarySourceOfFundDto: freezed == beneficiarySourceOfFundDto ? _self.beneficiarySourceOfFundDto : beneficiarySourceOfFundDto // ignore: cast_nullable_to_non_nullable
as BeneficiarySourceOfFundDto?,selectedBeneficiarySourceOfFund: freezed == selectedBeneficiarySourceOfFund ? _self.selectedBeneficiarySourceOfFund : selectedBeneficiarySourceOfFund // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonComboDto: freezed == commonComboDto ? _self.commonComboDto : commonComboDto // ignore: cast_nullable_to_non_nullable
as CommonComboDto?,beneficiaryFailureOrSuccessOption: null == beneficiaryFailureOrSuccessOption ? _self.beneficiaryFailureOrSuccessOption : beneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryListDto>>,beneficiaryByIdFailureOrSuccessOption: null == beneficiaryByIdFailureOrSuccessOption ? _self.beneficiaryByIdFailureOrSuccessOption : beneficiaryByIdFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>>,beneficiaryCountryListFailureOrSuccessOption: null == beneficiaryCountryListFailureOrSuccessOption ? _self.beneficiaryCountryListFailureOrSuccessOption : beneficiaryCountryListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>>,beneficiaryCurrenciesFailureOrSuccessOption: null == beneficiaryCurrenciesFailureOrSuccessOption ? _self.beneficiaryCurrenciesFailureOrSuccessOption : beneficiaryCurrenciesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>>,beneficiaryTransferTypesFailureOrSuccessOption: null == beneficiaryTransferTypesFailureOrSuccessOption ? _self.beneficiaryTransferTypesFailureOrSuccessOption : beneficiaryTransferTypesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>>,beneficiaryBankOrAgentListFailureOrSuccessOption: null == beneficiaryBankOrAgentListFailureOrSuccessOption ? _self.beneficiaryBankOrAgentListFailureOrSuccessOption : beneficiaryBankOrAgentListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>>,beneficiaryProductSettingsFailureOrSuccessOption: null == beneficiaryProductSettingsFailureOrSuccessOption ? _self.beneficiaryProductSettingsFailureOrSuccessOption : beneficiaryProductSettingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>>,beneficiaryComboListFailureOrSuccessOption: null == beneficiaryComboListFailureOrSuccessOption ? _self.beneficiaryComboListFailureOrSuccessOption : beneficiaryComboListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>>,beneficiaryBankComboListFailureOrSuccessOption: null == beneficiaryBankComboListFailureOrSuccessOption ? _self.beneficiaryBankComboListFailureOrSuccessOption : beneficiaryBankComboListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>>,beneficiaryBankBranchComboListFailureOrSuccessOption: null == beneficiaryBankBranchComboListFailureOrSuccessOption ? _self.beneficiaryBankBranchComboListFailureOrSuccessOption : beneficiaryBankBranchComboListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>>,beneficiaryPurposeOfTransactionFailureOrSuccessOption: null == beneficiaryPurposeOfTransactionFailureOrSuccessOption ? _self.beneficiaryPurposeOfTransactionFailureOrSuccessOption : beneficiaryPurposeOfTransactionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>>,beneficiarySourceOfFundFailureOrSuccessOption: null == beneficiarySourceOfFundFailureOrSuccessOption ? _self.beneficiarySourceOfFundFailureOrSuccessOption : beneficiarySourceOfFundFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>>,saveBeneficiaryFailureOrSuccessOption: null == saveBeneficiaryFailureOrSuccessOption ? _self.saveBeneficiaryFailureOrSuccessOption : saveBeneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, int>>,beneficiaryOtpFailureOrSuccessOption: null == beneficiaryOtpFailureOrSuccessOption ? _self.beneficiaryOtpFailureOrSuccessOption : beneficiaryOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, String>>,beneficiaryRouteCodeFailureOrSuccessOption: null == beneficiaryRouteCodeFailureOrSuccessOption ? _self.beneficiaryRouteCodeFailureOrSuccessOption : beneficiaryRouteCodeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>>,beneficiaryBankBranchRouteFailureOrSuccessOption: null == beneficiaryBankBranchRouteFailureOrSuccessOption ? _self.beneficiaryBankBranchRouteFailureOrSuccessOption : beneficiaryBankBranchRouteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>>,resendBeneficiaryOtpFailureOrSuccessOption: null == resendBeneficiaryOtpFailureOrSuccessOption ? _self.resendBeneficiaryOtpFailureOrSuccessOption : resendBeneficiaryOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, int>>,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteBeneficiaryFailureOrSuccessOption: null == deleteBeneficiaryFailureOrSuccessOption ? _self.deleteBeneficiaryFailureOrSuccessOption : deleteBeneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, Unit>>,
  ));
}
/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryRouteCodeDtoCopyWith<$Res>? get beneficiaryRouteCodeDto {
    if (_self.beneficiaryRouteCodeDto == null) {
    return null;
  }

  return $BeneficiaryRouteCodeDtoCopyWith<$Res>(_self.beneficiaryRouteCodeDto!, (value) {
    return _then(_self.copyWith(beneficiaryRouteCodeDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBankBranchRouteDtoCopyWith<$Res>? get beneficiaryBankBranchRouteDto {
    if (_self.beneficiaryBankBranchRouteDto == null) {
    return null;
  }

  return $BeneficiaryBankBranchRouteDtoCopyWith<$Res>(_self.beneficiaryBankBranchRouteDto!, (value) {
    return _then(_self.copyWith(beneficiaryBankBranchRouteDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryListDtoCopyWith<$Res>? get beneficiaryListDto {
    if (_self.beneficiaryListDto == null) {
    return null;
  }

  return $BeneficiaryListDtoCopyWith<$Res>(_self.beneficiaryListDto!, (value) {
    return _then(_self.copyWith(beneficiaryListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryListCopyWith<$Res>? get selectedBeneficiary {
    if (_self.selectedBeneficiary == null) {
    return null;
  }

  return $BeneficiaryListCopyWith<$Res>(_self.selectedBeneficiary!, (value) {
    return _then(_self.copyWith(selectedBeneficiary: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryByIdDtoCopyWith<$Res>? get beneficiaryByIdDto {
    if (_self.beneficiaryByIdDto == null) {
    return null;
  }

  return $BeneficiaryByIdDtoCopyWith<$Res>(_self.beneficiaryByIdDto!, (value) {
    return _then(_self.copyWith(beneficiaryByIdDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryCountryListDtoCopyWith<$Res>? get beneficiaryCountryListDto {
    if (_self.beneficiaryCountryListDto == null) {
    return null;
  }

  return $BeneficiaryCountryListDtoCopyWith<$Res>(_self.beneficiaryCountryListDto!, (value) {
    return _then(_self.copyWith(beneficiaryCountryListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCountry {
    if (_self.selectedBeneficiaryCountry == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryCountry!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryCountry: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryCurrencyListDtoCopyWith<$Res>? get beneficiaryCurrencyListDto {
    if (_self.beneficiaryCurrencyListDto == null) {
    return null;
  }

  return $BeneficiaryCurrencyListDtoCopyWith<$Res>(_self.beneficiaryCurrencyListDto!, (value) {
    return _then(_self.copyWith(beneficiaryCurrencyListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCurrency {
    if (_self.selectedBeneficiaryCurrency == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryCurrency!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryCurrency: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryTransferModeListDtoCopyWith<$Res>? get beneficiaryTransferModeListDto {
    if (_self.beneficiaryTransferModeListDto == null) {
    return null;
  }

  return $BeneficiaryTransferModeListDtoCopyWith<$Res>(_self.beneficiaryTransferModeListDto!, (value) {
    return _then(_self.copyWith(beneficiaryTransferModeListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryTransferType {
    if (_self.selectedBeneficiaryTransferType == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryTransferType!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryTransferType: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBankOrAgentListDtoCopyWith<$Res>? get beneficiaryBankOrAgentListDto {
    if (_self.beneficiaryBankOrAgentListDto == null) {
    return null;
  }

  return $BeneficiaryBankOrAgentListDtoCopyWith<$Res>(_self.beneficiaryBankOrAgentListDto!, (value) {
    return _then(_self.copyWith(beneficiaryBankOrAgentListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryBankOrAgent {
    if (_self.selectedBeneficiaryBankOrAgent == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryBankOrAgent!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryBankOrAgent: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryProductFieldSettingsDtoCopyWith<$Res>? get beneficiaryProductFieldSettingsDto {
    if (_self.beneficiaryProductFieldSettingsDto == null) {
    return null;
  }

  return $BeneficiaryProductFieldSettingsDtoCopyWith<$Res>(_self.beneficiaryProductFieldSettingsDto!, (value) {
    return _then(_self.copyWith(beneficiaryProductFieldSettingsDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryPurposeOfTransferDtoCopyWith<$Res>? get beneficiaryPurposeOfTransferDto {
    if (_self.beneficiaryPurposeOfTransferDto == null) {
    return null;
  }

  return $BeneficiaryPurposeOfTransferDtoCopyWith<$Res>(_self.beneficiaryPurposeOfTransferDto!, (value) {
    return _then(_self.copyWith(beneficiaryPurposeOfTransferDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryPurposeOfTransaction {
    if (_self.selectedBeneficiaryPurposeOfTransaction == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryPurposeOfTransaction!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryPurposeOfTransaction: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiarySourceOfFundDtoCopyWith<$Res>? get beneficiarySourceOfFundDto {
    if (_self.beneficiarySourceOfFundDto == null) {
    return null;
  }

  return $BeneficiarySourceOfFundDtoCopyWith<$Res>(_self.beneficiarySourceOfFundDto!, (value) {
    return _then(_self.copyWith(beneficiarySourceOfFundDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiarySourceOfFund {
    if (_self.selectedBeneficiarySourceOfFund == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiarySourceOfFund!, (value) {
    return _then(_self.copyWith(selectedBeneficiarySourceOfFund: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonComboDtoCopyWith<$Res>? get commonComboDto {
    if (_self.commonComboDto == null) {
    return null;
  }

  return $CommonComboDtoCopyWith<$Res>(_self.commonComboDto!, (value) {
    return _then(_self.copyWith(commonComboDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [BeneficiaryState].
extension BeneficiaryStatePatterns on BeneficiaryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryState value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryState value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isEditing,  bool isAddingFromHome,  bool isLoading,  bool isInitialLoading,  bool showErrorMessages,  bool isSubmitting,  bool isOtpSubmitting,  bool isResendingOtp,  bool showOtpErrorMessages,  BeneficiaryOtp beneficiaryOtp,  DateTime? otpResendCooldownUntil,  bool isRouteCodeLoading,  bool isRouteLookupLoading,  bool isRouteCodeAutoFilled,  String selectedBankComboCode,  BeneficiaryRouteCodeDto? beneficiaryRouteCodeDto,  BeneficiaryBankBranchRouteDto? beneficiaryBankBranchRouteDto,  BeneficiaryListDto? beneficiaryListDto,  BeneficiaryList? selectedBeneficiary,  BeneficiaryByIdDto? beneficiaryByIdDto,  BeneficiaryCountryListDto? beneficiaryCountryListDto,  CommonSelectableItem? selectedBeneficiaryCountry,  BeneficiaryCurrencyListDto? beneficiaryCurrencyListDto,  CommonSelectableItem? selectedBeneficiaryCurrency,  BeneficiaryTransferModeListDto? beneficiaryTransferModeListDto,  CommonSelectableItem? selectedBeneficiaryTransferType,  BeneficiaryBankOrAgentListDto? beneficiaryBankOrAgentListDto,  CommonSelectableItem? selectedBeneficiaryBankOrAgent,  BeneficiaryProductFieldSettingsDto? beneficiaryProductFieldSettingsDto,  Map<String, BeneficiaryDynamicInput> dynamicFieldValues,  Map<String, BeneficiaryDynamicInput> initialDynamicFieldValues,  BeneficiaryPurposeOfTransferDto? beneficiaryPurposeOfTransferDto,  CommonSelectableItem? selectedBeneficiaryPurposeOfTransaction,  BeneficiarySourceOfFundDto? beneficiarySourceOfFundDto,  CommonSelectableItem? selectedBeneficiarySourceOfFund,  CommonComboDto? commonComboDto,  Option<Either<BeneficiaryFailure, BeneficiaryListDto>> beneficiaryFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>> beneficiaryByIdFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>> beneficiaryCountryListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>> beneficiaryCurrenciesFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>> beneficiaryTransferTypesFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>> beneficiaryBankOrAgentListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>> beneficiaryProductSettingsFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>> beneficiaryComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>> beneficiaryBankComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>> beneficiaryBankBranchComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>> beneficiaryPurposeOfTransactionFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>> beneficiarySourceOfFundFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, int>> saveBeneficiaryFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, String>> beneficiaryOtpFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>> beneficiaryRouteCodeFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>> beneficiaryBankBranchRouteFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, int>> resendBeneficiaryOtpFailureOrSuccessOption,  bool isDeleting,  Option<Either<BeneficiaryFailure, Unit>> deleteBeneficiaryFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryState() when $default != null:
return $default(_that.isEditing,_that.isAddingFromHome,_that.isLoading,_that.isInitialLoading,_that.showErrorMessages,_that.isSubmitting,_that.isOtpSubmitting,_that.isResendingOtp,_that.showOtpErrorMessages,_that.beneficiaryOtp,_that.otpResendCooldownUntil,_that.isRouteCodeLoading,_that.isRouteLookupLoading,_that.isRouteCodeAutoFilled,_that.selectedBankComboCode,_that.beneficiaryRouteCodeDto,_that.beneficiaryBankBranchRouteDto,_that.beneficiaryListDto,_that.selectedBeneficiary,_that.beneficiaryByIdDto,_that.beneficiaryCountryListDto,_that.selectedBeneficiaryCountry,_that.beneficiaryCurrencyListDto,_that.selectedBeneficiaryCurrency,_that.beneficiaryTransferModeListDto,_that.selectedBeneficiaryTransferType,_that.beneficiaryBankOrAgentListDto,_that.selectedBeneficiaryBankOrAgent,_that.beneficiaryProductFieldSettingsDto,_that.dynamicFieldValues,_that.initialDynamicFieldValues,_that.beneficiaryPurposeOfTransferDto,_that.selectedBeneficiaryPurposeOfTransaction,_that.beneficiarySourceOfFundDto,_that.selectedBeneficiarySourceOfFund,_that.commonComboDto,_that.beneficiaryFailureOrSuccessOption,_that.beneficiaryByIdFailureOrSuccessOption,_that.beneficiaryCountryListFailureOrSuccessOption,_that.beneficiaryCurrenciesFailureOrSuccessOption,_that.beneficiaryTransferTypesFailureOrSuccessOption,_that.beneficiaryBankOrAgentListFailureOrSuccessOption,_that.beneficiaryProductSettingsFailureOrSuccessOption,_that.beneficiaryComboListFailureOrSuccessOption,_that.beneficiaryBankComboListFailureOrSuccessOption,_that.beneficiaryBankBranchComboListFailureOrSuccessOption,_that.beneficiaryPurposeOfTransactionFailureOrSuccessOption,_that.beneficiarySourceOfFundFailureOrSuccessOption,_that.saveBeneficiaryFailureOrSuccessOption,_that.beneficiaryOtpFailureOrSuccessOption,_that.beneficiaryRouteCodeFailureOrSuccessOption,_that.beneficiaryBankBranchRouteFailureOrSuccessOption,_that.resendBeneficiaryOtpFailureOrSuccessOption,_that.isDeleting,_that.deleteBeneficiaryFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isEditing,  bool isAddingFromHome,  bool isLoading,  bool isInitialLoading,  bool showErrorMessages,  bool isSubmitting,  bool isOtpSubmitting,  bool isResendingOtp,  bool showOtpErrorMessages,  BeneficiaryOtp beneficiaryOtp,  DateTime? otpResendCooldownUntil,  bool isRouteCodeLoading,  bool isRouteLookupLoading,  bool isRouteCodeAutoFilled,  String selectedBankComboCode,  BeneficiaryRouteCodeDto? beneficiaryRouteCodeDto,  BeneficiaryBankBranchRouteDto? beneficiaryBankBranchRouteDto,  BeneficiaryListDto? beneficiaryListDto,  BeneficiaryList? selectedBeneficiary,  BeneficiaryByIdDto? beneficiaryByIdDto,  BeneficiaryCountryListDto? beneficiaryCountryListDto,  CommonSelectableItem? selectedBeneficiaryCountry,  BeneficiaryCurrencyListDto? beneficiaryCurrencyListDto,  CommonSelectableItem? selectedBeneficiaryCurrency,  BeneficiaryTransferModeListDto? beneficiaryTransferModeListDto,  CommonSelectableItem? selectedBeneficiaryTransferType,  BeneficiaryBankOrAgentListDto? beneficiaryBankOrAgentListDto,  CommonSelectableItem? selectedBeneficiaryBankOrAgent,  BeneficiaryProductFieldSettingsDto? beneficiaryProductFieldSettingsDto,  Map<String, BeneficiaryDynamicInput> dynamicFieldValues,  Map<String, BeneficiaryDynamicInput> initialDynamicFieldValues,  BeneficiaryPurposeOfTransferDto? beneficiaryPurposeOfTransferDto,  CommonSelectableItem? selectedBeneficiaryPurposeOfTransaction,  BeneficiarySourceOfFundDto? beneficiarySourceOfFundDto,  CommonSelectableItem? selectedBeneficiarySourceOfFund,  CommonComboDto? commonComboDto,  Option<Either<BeneficiaryFailure, BeneficiaryListDto>> beneficiaryFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>> beneficiaryByIdFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>> beneficiaryCountryListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>> beneficiaryCurrenciesFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>> beneficiaryTransferTypesFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>> beneficiaryBankOrAgentListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>> beneficiaryProductSettingsFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>> beneficiaryComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>> beneficiaryBankComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>> beneficiaryBankBranchComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>> beneficiaryPurposeOfTransactionFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>> beneficiarySourceOfFundFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, int>> saveBeneficiaryFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, String>> beneficiaryOtpFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>> beneficiaryRouteCodeFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>> beneficiaryBankBranchRouteFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, int>> resendBeneficiaryOtpFailureOrSuccessOption,  bool isDeleting,  Option<Either<BeneficiaryFailure, Unit>> deleteBeneficiaryFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryState():
return $default(_that.isEditing,_that.isAddingFromHome,_that.isLoading,_that.isInitialLoading,_that.showErrorMessages,_that.isSubmitting,_that.isOtpSubmitting,_that.isResendingOtp,_that.showOtpErrorMessages,_that.beneficiaryOtp,_that.otpResendCooldownUntil,_that.isRouteCodeLoading,_that.isRouteLookupLoading,_that.isRouteCodeAutoFilled,_that.selectedBankComboCode,_that.beneficiaryRouteCodeDto,_that.beneficiaryBankBranchRouteDto,_that.beneficiaryListDto,_that.selectedBeneficiary,_that.beneficiaryByIdDto,_that.beneficiaryCountryListDto,_that.selectedBeneficiaryCountry,_that.beneficiaryCurrencyListDto,_that.selectedBeneficiaryCurrency,_that.beneficiaryTransferModeListDto,_that.selectedBeneficiaryTransferType,_that.beneficiaryBankOrAgentListDto,_that.selectedBeneficiaryBankOrAgent,_that.beneficiaryProductFieldSettingsDto,_that.dynamicFieldValues,_that.initialDynamicFieldValues,_that.beneficiaryPurposeOfTransferDto,_that.selectedBeneficiaryPurposeOfTransaction,_that.beneficiarySourceOfFundDto,_that.selectedBeneficiarySourceOfFund,_that.commonComboDto,_that.beneficiaryFailureOrSuccessOption,_that.beneficiaryByIdFailureOrSuccessOption,_that.beneficiaryCountryListFailureOrSuccessOption,_that.beneficiaryCurrenciesFailureOrSuccessOption,_that.beneficiaryTransferTypesFailureOrSuccessOption,_that.beneficiaryBankOrAgentListFailureOrSuccessOption,_that.beneficiaryProductSettingsFailureOrSuccessOption,_that.beneficiaryComboListFailureOrSuccessOption,_that.beneficiaryBankComboListFailureOrSuccessOption,_that.beneficiaryBankBranchComboListFailureOrSuccessOption,_that.beneficiaryPurposeOfTransactionFailureOrSuccessOption,_that.beneficiarySourceOfFundFailureOrSuccessOption,_that.saveBeneficiaryFailureOrSuccessOption,_that.beneficiaryOtpFailureOrSuccessOption,_that.beneficiaryRouteCodeFailureOrSuccessOption,_that.beneficiaryBankBranchRouteFailureOrSuccessOption,_that.resendBeneficiaryOtpFailureOrSuccessOption,_that.isDeleting,_that.deleteBeneficiaryFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isEditing,  bool isAddingFromHome,  bool isLoading,  bool isInitialLoading,  bool showErrorMessages,  bool isSubmitting,  bool isOtpSubmitting,  bool isResendingOtp,  bool showOtpErrorMessages,  BeneficiaryOtp beneficiaryOtp,  DateTime? otpResendCooldownUntil,  bool isRouteCodeLoading,  bool isRouteLookupLoading,  bool isRouteCodeAutoFilled,  String selectedBankComboCode,  BeneficiaryRouteCodeDto? beneficiaryRouteCodeDto,  BeneficiaryBankBranchRouteDto? beneficiaryBankBranchRouteDto,  BeneficiaryListDto? beneficiaryListDto,  BeneficiaryList? selectedBeneficiary,  BeneficiaryByIdDto? beneficiaryByIdDto,  BeneficiaryCountryListDto? beneficiaryCountryListDto,  CommonSelectableItem? selectedBeneficiaryCountry,  BeneficiaryCurrencyListDto? beneficiaryCurrencyListDto,  CommonSelectableItem? selectedBeneficiaryCurrency,  BeneficiaryTransferModeListDto? beneficiaryTransferModeListDto,  CommonSelectableItem? selectedBeneficiaryTransferType,  BeneficiaryBankOrAgentListDto? beneficiaryBankOrAgentListDto,  CommonSelectableItem? selectedBeneficiaryBankOrAgent,  BeneficiaryProductFieldSettingsDto? beneficiaryProductFieldSettingsDto,  Map<String, BeneficiaryDynamicInput> dynamicFieldValues,  Map<String, BeneficiaryDynamicInput> initialDynamicFieldValues,  BeneficiaryPurposeOfTransferDto? beneficiaryPurposeOfTransferDto,  CommonSelectableItem? selectedBeneficiaryPurposeOfTransaction,  BeneficiarySourceOfFundDto? beneficiarySourceOfFundDto,  CommonSelectableItem? selectedBeneficiarySourceOfFund,  CommonComboDto? commonComboDto,  Option<Either<BeneficiaryFailure, BeneficiaryListDto>> beneficiaryFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>> beneficiaryByIdFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>> beneficiaryCountryListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>> beneficiaryCurrenciesFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>> beneficiaryTransferTypesFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>> beneficiaryBankOrAgentListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>> beneficiaryProductSettingsFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>> beneficiaryComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>> beneficiaryBankComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>> beneficiaryBankBranchComboListFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>> beneficiaryPurposeOfTransactionFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>> beneficiarySourceOfFundFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, int>> saveBeneficiaryFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, String>> beneficiaryOtpFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>> beneficiaryRouteCodeFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>> beneficiaryBankBranchRouteFailureOrSuccessOption,  Option<Either<BeneficiaryFailure, int>> resendBeneficiaryOtpFailureOrSuccessOption,  bool isDeleting,  Option<Either<BeneficiaryFailure, Unit>> deleteBeneficiaryFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryState() when $default != null:
return $default(_that.isEditing,_that.isAddingFromHome,_that.isLoading,_that.isInitialLoading,_that.showErrorMessages,_that.isSubmitting,_that.isOtpSubmitting,_that.isResendingOtp,_that.showOtpErrorMessages,_that.beneficiaryOtp,_that.otpResendCooldownUntil,_that.isRouteCodeLoading,_that.isRouteLookupLoading,_that.isRouteCodeAutoFilled,_that.selectedBankComboCode,_that.beneficiaryRouteCodeDto,_that.beneficiaryBankBranchRouteDto,_that.beneficiaryListDto,_that.selectedBeneficiary,_that.beneficiaryByIdDto,_that.beneficiaryCountryListDto,_that.selectedBeneficiaryCountry,_that.beneficiaryCurrencyListDto,_that.selectedBeneficiaryCurrency,_that.beneficiaryTransferModeListDto,_that.selectedBeneficiaryTransferType,_that.beneficiaryBankOrAgentListDto,_that.selectedBeneficiaryBankOrAgent,_that.beneficiaryProductFieldSettingsDto,_that.dynamicFieldValues,_that.initialDynamicFieldValues,_that.beneficiaryPurposeOfTransferDto,_that.selectedBeneficiaryPurposeOfTransaction,_that.beneficiarySourceOfFundDto,_that.selectedBeneficiarySourceOfFund,_that.commonComboDto,_that.beneficiaryFailureOrSuccessOption,_that.beneficiaryByIdFailureOrSuccessOption,_that.beneficiaryCountryListFailureOrSuccessOption,_that.beneficiaryCurrenciesFailureOrSuccessOption,_that.beneficiaryTransferTypesFailureOrSuccessOption,_that.beneficiaryBankOrAgentListFailureOrSuccessOption,_that.beneficiaryProductSettingsFailureOrSuccessOption,_that.beneficiaryComboListFailureOrSuccessOption,_that.beneficiaryBankComboListFailureOrSuccessOption,_that.beneficiaryBankBranchComboListFailureOrSuccessOption,_that.beneficiaryPurposeOfTransactionFailureOrSuccessOption,_that.beneficiarySourceOfFundFailureOrSuccessOption,_that.saveBeneficiaryFailureOrSuccessOption,_that.beneficiaryOtpFailureOrSuccessOption,_that.beneficiaryRouteCodeFailureOrSuccessOption,_that.beneficiaryBankBranchRouteFailureOrSuccessOption,_that.resendBeneficiaryOtpFailureOrSuccessOption,_that.isDeleting,_that.deleteBeneficiaryFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _BeneficiaryState implements BeneficiaryState {
  const _BeneficiaryState({required this.isEditing, required this.isAddingFromHome, required this.isLoading, this.isInitialLoading = false, required this.showErrorMessages, required this.isSubmitting, required this.isOtpSubmitting, this.isResendingOtp = false, required this.showOtpErrorMessages, required this.beneficiaryOtp, this.otpResendCooldownUntil, this.isRouteCodeLoading = false, this.isRouteLookupLoading = false, this.isRouteCodeAutoFilled = false, this.selectedBankComboCode = '', this.beneficiaryRouteCodeDto, this.beneficiaryBankBranchRouteDto, this.beneficiaryListDto, this.selectedBeneficiary, this.beneficiaryByIdDto, this.beneficiaryCountryListDto, this.selectedBeneficiaryCountry, this.beneficiaryCurrencyListDto, this.selectedBeneficiaryCurrency, this.beneficiaryTransferModeListDto, this.selectedBeneficiaryTransferType, this.beneficiaryBankOrAgentListDto, this.selectedBeneficiaryBankOrAgent, this.beneficiaryProductFieldSettingsDto, required final  Map<String, BeneficiaryDynamicInput> dynamicFieldValues, required final  Map<String, BeneficiaryDynamicInput> initialDynamicFieldValues, this.beneficiaryPurposeOfTransferDto, this.selectedBeneficiaryPurposeOfTransaction, this.beneficiarySourceOfFundDto, this.selectedBeneficiarySourceOfFund, this.commonComboDto, required this.beneficiaryFailureOrSuccessOption, required this.beneficiaryByIdFailureOrSuccessOption, required this.beneficiaryCountryListFailureOrSuccessOption, required this.beneficiaryCurrenciesFailureOrSuccessOption, required this.beneficiaryTransferTypesFailureOrSuccessOption, required this.beneficiaryBankOrAgentListFailureOrSuccessOption, required this.beneficiaryProductSettingsFailureOrSuccessOption, required this.beneficiaryComboListFailureOrSuccessOption, required this.beneficiaryBankComboListFailureOrSuccessOption, required this.beneficiaryBankBranchComboListFailureOrSuccessOption, required this.beneficiaryPurposeOfTransactionFailureOrSuccessOption, required this.beneficiarySourceOfFundFailureOrSuccessOption, required this.saveBeneficiaryFailureOrSuccessOption, required this.beneficiaryOtpFailureOrSuccessOption, required this.beneficiaryRouteCodeFailureOrSuccessOption, required this.beneficiaryBankBranchRouteFailureOrSuccessOption, required this.resendBeneficiaryOtpFailureOrSuccessOption, this.isDeleting = false, required this.deleteBeneficiaryFailureOrSuccessOption}): _dynamicFieldValues = dynamicFieldValues,_initialDynamicFieldValues = initialDynamicFieldValues;
  

@override final  bool isEditing;
@override final  bool isAddingFromHome;
@override final  bool isLoading;
@override@JsonKey() final  bool isInitialLoading;
@override final  bool showErrorMessages;
@override final  bool isSubmitting;
@override final  bool isOtpSubmitting;
@override@JsonKey() final  bool isResendingOtp;
@override final  bool showOtpErrorMessages;
@override final  BeneficiaryOtp beneficiaryOtp;
@override final  DateTime? otpResendCooldownUntil;
@override@JsonKey() final  bool isRouteCodeLoading;
@override@JsonKey() final  bool isRouteLookupLoading;
@override@JsonKey() final  bool isRouteCodeAutoFilled;
@override@JsonKey() final  String selectedBankComboCode;
@override final  BeneficiaryRouteCodeDto? beneficiaryRouteCodeDto;
@override final  BeneficiaryBankBranchRouteDto? beneficiaryBankBranchRouteDto;
@override final  BeneficiaryListDto? beneficiaryListDto;
@override final  BeneficiaryList? selectedBeneficiary;
@override final  BeneficiaryByIdDto? beneficiaryByIdDto;
@override final  BeneficiaryCountryListDto? beneficiaryCountryListDto;
@override final  CommonSelectableItem? selectedBeneficiaryCountry;
@override final  BeneficiaryCurrencyListDto? beneficiaryCurrencyListDto;
@override final  CommonSelectableItem? selectedBeneficiaryCurrency;
@override final  BeneficiaryTransferModeListDto? beneficiaryTransferModeListDto;
@override final  CommonSelectableItem? selectedBeneficiaryTransferType;
@override final  BeneficiaryBankOrAgentListDto? beneficiaryBankOrAgentListDto;
@override final  CommonSelectableItem? selectedBeneficiaryBankOrAgent;
@override final  BeneficiaryProductFieldSettingsDto? beneficiaryProductFieldSettingsDto;
 final  Map<String, BeneficiaryDynamicInput> _dynamicFieldValues;
@override Map<String, BeneficiaryDynamicInput> get dynamicFieldValues {
  if (_dynamicFieldValues is EqualUnmodifiableMapView) return _dynamicFieldValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_dynamicFieldValues);
}

 final  Map<String, BeneficiaryDynamicInput> _initialDynamicFieldValues;
@override Map<String, BeneficiaryDynamicInput> get initialDynamicFieldValues {
  if (_initialDynamicFieldValues is EqualUnmodifiableMapView) return _initialDynamicFieldValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_initialDynamicFieldValues);
}

@override final  BeneficiaryPurposeOfTransferDto? beneficiaryPurposeOfTransferDto;
@override final  CommonSelectableItem? selectedBeneficiaryPurposeOfTransaction;
@override final  BeneficiarySourceOfFundDto? beneficiarySourceOfFundDto;
@override final  CommonSelectableItem? selectedBeneficiarySourceOfFund;
@override final  CommonComboDto? commonComboDto;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryListDto>> beneficiaryFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>> beneficiaryByIdFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>> beneficiaryCountryListFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>> beneficiaryCurrenciesFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>> beneficiaryTransferTypesFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>> beneficiaryBankOrAgentListFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>> beneficiaryProductSettingsFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>> beneficiaryComboListFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>> beneficiaryBankComboListFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>> beneficiaryBankBranchComboListFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>> beneficiaryPurposeOfTransactionFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>> beneficiarySourceOfFundFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, int>> saveBeneficiaryFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, String>> beneficiaryOtpFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>> beneficiaryRouteCodeFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>> beneficiaryBankBranchRouteFailureOrSuccessOption;
@override final  Option<Either<BeneficiaryFailure, int>> resendBeneficiaryOtpFailureOrSuccessOption;
@override@JsonKey() final  bool isDeleting;
@override final  Option<Either<BeneficiaryFailure, Unit>> deleteBeneficiaryFailureOrSuccessOption;

/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryStateCopyWith<_BeneficiaryState> get copyWith => __$BeneficiaryStateCopyWithImpl<_BeneficiaryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryState&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isAddingFromHome, isAddingFromHome) || other.isAddingFromHome == isAddingFromHome)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isOtpSubmitting, isOtpSubmitting) || other.isOtpSubmitting == isOtpSubmitting)&&(identical(other.isResendingOtp, isResendingOtp) || other.isResendingOtp == isResendingOtp)&&(identical(other.showOtpErrorMessages, showOtpErrorMessages) || other.showOtpErrorMessages == showOtpErrorMessages)&&(identical(other.beneficiaryOtp, beneficiaryOtp) || other.beneficiaryOtp == beneficiaryOtp)&&(identical(other.otpResendCooldownUntil, otpResendCooldownUntil) || other.otpResendCooldownUntil == otpResendCooldownUntil)&&(identical(other.isRouteCodeLoading, isRouteCodeLoading) || other.isRouteCodeLoading == isRouteCodeLoading)&&(identical(other.isRouteLookupLoading, isRouteLookupLoading) || other.isRouteLookupLoading == isRouteLookupLoading)&&(identical(other.isRouteCodeAutoFilled, isRouteCodeAutoFilled) || other.isRouteCodeAutoFilled == isRouteCodeAutoFilled)&&(identical(other.selectedBankComboCode, selectedBankComboCode) || other.selectedBankComboCode == selectedBankComboCode)&&(identical(other.beneficiaryRouteCodeDto, beneficiaryRouteCodeDto) || other.beneficiaryRouteCodeDto == beneficiaryRouteCodeDto)&&(identical(other.beneficiaryBankBranchRouteDto, beneficiaryBankBranchRouteDto) || other.beneficiaryBankBranchRouteDto == beneficiaryBankBranchRouteDto)&&(identical(other.beneficiaryListDto, beneficiaryListDto) || other.beneficiaryListDto == beneficiaryListDto)&&(identical(other.selectedBeneficiary, selectedBeneficiary) || other.selectedBeneficiary == selectedBeneficiary)&&(identical(other.beneficiaryByIdDto, beneficiaryByIdDto) || other.beneficiaryByIdDto == beneficiaryByIdDto)&&(identical(other.beneficiaryCountryListDto, beneficiaryCountryListDto) || other.beneficiaryCountryListDto == beneficiaryCountryListDto)&&(identical(other.selectedBeneficiaryCountry, selectedBeneficiaryCountry) || other.selectedBeneficiaryCountry == selectedBeneficiaryCountry)&&(identical(other.beneficiaryCurrencyListDto, beneficiaryCurrencyListDto) || other.beneficiaryCurrencyListDto == beneficiaryCurrencyListDto)&&(identical(other.selectedBeneficiaryCurrency, selectedBeneficiaryCurrency) || other.selectedBeneficiaryCurrency == selectedBeneficiaryCurrency)&&(identical(other.beneficiaryTransferModeListDto, beneficiaryTransferModeListDto) || other.beneficiaryTransferModeListDto == beneficiaryTransferModeListDto)&&(identical(other.selectedBeneficiaryTransferType, selectedBeneficiaryTransferType) || other.selectedBeneficiaryTransferType == selectedBeneficiaryTransferType)&&(identical(other.beneficiaryBankOrAgentListDto, beneficiaryBankOrAgentListDto) || other.beneficiaryBankOrAgentListDto == beneficiaryBankOrAgentListDto)&&(identical(other.selectedBeneficiaryBankOrAgent, selectedBeneficiaryBankOrAgent) || other.selectedBeneficiaryBankOrAgent == selectedBeneficiaryBankOrAgent)&&(identical(other.beneficiaryProductFieldSettingsDto, beneficiaryProductFieldSettingsDto) || other.beneficiaryProductFieldSettingsDto == beneficiaryProductFieldSettingsDto)&&const DeepCollectionEquality().equals(other._dynamicFieldValues, _dynamicFieldValues)&&const DeepCollectionEquality().equals(other._initialDynamicFieldValues, _initialDynamicFieldValues)&&(identical(other.beneficiaryPurposeOfTransferDto, beneficiaryPurposeOfTransferDto) || other.beneficiaryPurposeOfTransferDto == beneficiaryPurposeOfTransferDto)&&(identical(other.selectedBeneficiaryPurposeOfTransaction, selectedBeneficiaryPurposeOfTransaction) || other.selectedBeneficiaryPurposeOfTransaction == selectedBeneficiaryPurposeOfTransaction)&&(identical(other.beneficiarySourceOfFundDto, beneficiarySourceOfFundDto) || other.beneficiarySourceOfFundDto == beneficiarySourceOfFundDto)&&(identical(other.selectedBeneficiarySourceOfFund, selectedBeneficiarySourceOfFund) || other.selectedBeneficiarySourceOfFund == selectedBeneficiarySourceOfFund)&&(identical(other.commonComboDto, commonComboDto) || other.commonComboDto == commonComboDto)&&(identical(other.beneficiaryFailureOrSuccessOption, beneficiaryFailureOrSuccessOption) || other.beneficiaryFailureOrSuccessOption == beneficiaryFailureOrSuccessOption)&&(identical(other.beneficiaryByIdFailureOrSuccessOption, beneficiaryByIdFailureOrSuccessOption) || other.beneficiaryByIdFailureOrSuccessOption == beneficiaryByIdFailureOrSuccessOption)&&(identical(other.beneficiaryCountryListFailureOrSuccessOption, beneficiaryCountryListFailureOrSuccessOption) || other.beneficiaryCountryListFailureOrSuccessOption == beneficiaryCountryListFailureOrSuccessOption)&&(identical(other.beneficiaryCurrenciesFailureOrSuccessOption, beneficiaryCurrenciesFailureOrSuccessOption) || other.beneficiaryCurrenciesFailureOrSuccessOption == beneficiaryCurrenciesFailureOrSuccessOption)&&(identical(other.beneficiaryTransferTypesFailureOrSuccessOption, beneficiaryTransferTypesFailureOrSuccessOption) || other.beneficiaryTransferTypesFailureOrSuccessOption == beneficiaryTransferTypesFailureOrSuccessOption)&&(identical(other.beneficiaryBankOrAgentListFailureOrSuccessOption, beneficiaryBankOrAgentListFailureOrSuccessOption) || other.beneficiaryBankOrAgentListFailureOrSuccessOption == beneficiaryBankOrAgentListFailureOrSuccessOption)&&(identical(other.beneficiaryProductSettingsFailureOrSuccessOption, beneficiaryProductSettingsFailureOrSuccessOption) || other.beneficiaryProductSettingsFailureOrSuccessOption == beneficiaryProductSettingsFailureOrSuccessOption)&&(identical(other.beneficiaryComboListFailureOrSuccessOption, beneficiaryComboListFailureOrSuccessOption) || other.beneficiaryComboListFailureOrSuccessOption == beneficiaryComboListFailureOrSuccessOption)&&(identical(other.beneficiaryBankComboListFailureOrSuccessOption, beneficiaryBankComboListFailureOrSuccessOption) || other.beneficiaryBankComboListFailureOrSuccessOption == beneficiaryBankComboListFailureOrSuccessOption)&&(identical(other.beneficiaryBankBranchComboListFailureOrSuccessOption, beneficiaryBankBranchComboListFailureOrSuccessOption) || other.beneficiaryBankBranchComboListFailureOrSuccessOption == beneficiaryBankBranchComboListFailureOrSuccessOption)&&(identical(other.beneficiaryPurposeOfTransactionFailureOrSuccessOption, beneficiaryPurposeOfTransactionFailureOrSuccessOption) || other.beneficiaryPurposeOfTransactionFailureOrSuccessOption == beneficiaryPurposeOfTransactionFailureOrSuccessOption)&&(identical(other.beneficiarySourceOfFundFailureOrSuccessOption, beneficiarySourceOfFundFailureOrSuccessOption) || other.beneficiarySourceOfFundFailureOrSuccessOption == beneficiarySourceOfFundFailureOrSuccessOption)&&(identical(other.saveBeneficiaryFailureOrSuccessOption, saveBeneficiaryFailureOrSuccessOption) || other.saveBeneficiaryFailureOrSuccessOption == saveBeneficiaryFailureOrSuccessOption)&&(identical(other.beneficiaryOtpFailureOrSuccessOption, beneficiaryOtpFailureOrSuccessOption) || other.beneficiaryOtpFailureOrSuccessOption == beneficiaryOtpFailureOrSuccessOption)&&(identical(other.beneficiaryRouteCodeFailureOrSuccessOption, beneficiaryRouteCodeFailureOrSuccessOption) || other.beneficiaryRouteCodeFailureOrSuccessOption == beneficiaryRouteCodeFailureOrSuccessOption)&&(identical(other.beneficiaryBankBranchRouteFailureOrSuccessOption, beneficiaryBankBranchRouteFailureOrSuccessOption) || other.beneficiaryBankBranchRouteFailureOrSuccessOption == beneficiaryBankBranchRouteFailureOrSuccessOption)&&(identical(other.resendBeneficiaryOtpFailureOrSuccessOption, resendBeneficiaryOtpFailureOrSuccessOption) || other.resendBeneficiaryOtpFailureOrSuccessOption == resendBeneficiaryOtpFailureOrSuccessOption)&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting)&&(identical(other.deleteBeneficiaryFailureOrSuccessOption, deleteBeneficiaryFailureOrSuccessOption) || other.deleteBeneficiaryFailureOrSuccessOption == deleteBeneficiaryFailureOrSuccessOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isEditing,isAddingFromHome,isLoading,isInitialLoading,showErrorMessages,isSubmitting,isOtpSubmitting,isResendingOtp,showOtpErrorMessages,beneficiaryOtp,otpResendCooldownUntil,isRouteCodeLoading,isRouteLookupLoading,isRouteCodeAutoFilled,selectedBankComboCode,beneficiaryRouteCodeDto,beneficiaryBankBranchRouteDto,beneficiaryListDto,selectedBeneficiary,beneficiaryByIdDto,beneficiaryCountryListDto,selectedBeneficiaryCountry,beneficiaryCurrencyListDto,selectedBeneficiaryCurrency,beneficiaryTransferModeListDto,selectedBeneficiaryTransferType,beneficiaryBankOrAgentListDto,selectedBeneficiaryBankOrAgent,beneficiaryProductFieldSettingsDto,const DeepCollectionEquality().hash(_dynamicFieldValues),const DeepCollectionEquality().hash(_initialDynamicFieldValues),beneficiaryPurposeOfTransferDto,selectedBeneficiaryPurposeOfTransaction,beneficiarySourceOfFundDto,selectedBeneficiarySourceOfFund,commonComboDto,beneficiaryFailureOrSuccessOption,beneficiaryByIdFailureOrSuccessOption,beneficiaryCountryListFailureOrSuccessOption,beneficiaryCurrenciesFailureOrSuccessOption,beneficiaryTransferTypesFailureOrSuccessOption,beneficiaryBankOrAgentListFailureOrSuccessOption,beneficiaryProductSettingsFailureOrSuccessOption,beneficiaryComboListFailureOrSuccessOption,beneficiaryBankComboListFailureOrSuccessOption,beneficiaryBankBranchComboListFailureOrSuccessOption,beneficiaryPurposeOfTransactionFailureOrSuccessOption,beneficiarySourceOfFundFailureOrSuccessOption,saveBeneficiaryFailureOrSuccessOption,beneficiaryOtpFailureOrSuccessOption,beneficiaryRouteCodeFailureOrSuccessOption,beneficiaryBankBranchRouteFailureOrSuccessOption,resendBeneficiaryOtpFailureOrSuccessOption,isDeleting,deleteBeneficiaryFailureOrSuccessOption]);

@override
String toString() {
  return 'BeneficiaryState(isEditing: $isEditing, isAddingFromHome: $isAddingFromHome, isLoading: $isLoading, isInitialLoading: $isInitialLoading, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isOtpSubmitting: $isOtpSubmitting, isResendingOtp: $isResendingOtp, showOtpErrorMessages: $showOtpErrorMessages, beneficiaryOtp: $beneficiaryOtp, otpResendCooldownUntil: $otpResendCooldownUntil, isRouteCodeLoading: $isRouteCodeLoading, isRouteLookupLoading: $isRouteLookupLoading, isRouteCodeAutoFilled: $isRouteCodeAutoFilled, selectedBankComboCode: $selectedBankComboCode, beneficiaryRouteCodeDto: $beneficiaryRouteCodeDto, beneficiaryBankBranchRouteDto: $beneficiaryBankBranchRouteDto, beneficiaryListDto: $beneficiaryListDto, selectedBeneficiary: $selectedBeneficiary, beneficiaryByIdDto: $beneficiaryByIdDto, beneficiaryCountryListDto: $beneficiaryCountryListDto, selectedBeneficiaryCountry: $selectedBeneficiaryCountry, beneficiaryCurrencyListDto: $beneficiaryCurrencyListDto, selectedBeneficiaryCurrency: $selectedBeneficiaryCurrency, beneficiaryTransferModeListDto: $beneficiaryTransferModeListDto, selectedBeneficiaryTransferType: $selectedBeneficiaryTransferType, beneficiaryBankOrAgentListDto: $beneficiaryBankOrAgentListDto, selectedBeneficiaryBankOrAgent: $selectedBeneficiaryBankOrAgent, beneficiaryProductFieldSettingsDto: $beneficiaryProductFieldSettingsDto, dynamicFieldValues: $dynamicFieldValues, initialDynamicFieldValues: $initialDynamicFieldValues, beneficiaryPurposeOfTransferDto: $beneficiaryPurposeOfTransferDto, selectedBeneficiaryPurposeOfTransaction: $selectedBeneficiaryPurposeOfTransaction, beneficiarySourceOfFundDto: $beneficiarySourceOfFundDto, selectedBeneficiarySourceOfFund: $selectedBeneficiarySourceOfFund, commonComboDto: $commonComboDto, beneficiaryFailureOrSuccessOption: $beneficiaryFailureOrSuccessOption, beneficiaryByIdFailureOrSuccessOption: $beneficiaryByIdFailureOrSuccessOption, beneficiaryCountryListFailureOrSuccessOption: $beneficiaryCountryListFailureOrSuccessOption, beneficiaryCurrenciesFailureOrSuccessOption: $beneficiaryCurrenciesFailureOrSuccessOption, beneficiaryTransferTypesFailureOrSuccessOption: $beneficiaryTransferTypesFailureOrSuccessOption, beneficiaryBankOrAgentListFailureOrSuccessOption: $beneficiaryBankOrAgentListFailureOrSuccessOption, beneficiaryProductSettingsFailureOrSuccessOption: $beneficiaryProductSettingsFailureOrSuccessOption, beneficiaryComboListFailureOrSuccessOption: $beneficiaryComboListFailureOrSuccessOption, beneficiaryBankComboListFailureOrSuccessOption: $beneficiaryBankComboListFailureOrSuccessOption, beneficiaryBankBranchComboListFailureOrSuccessOption: $beneficiaryBankBranchComboListFailureOrSuccessOption, beneficiaryPurposeOfTransactionFailureOrSuccessOption: $beneficiaryPurposeOfTransactionFailureOrSuccessOption, beneficiarySourceOfFundFailureOrSuccessOption: $beneficiarySourceOfFundFailureOrSuccessOption, saveBeneficiaryFailureOrSuccessOption: $saveBeneficiaryFailureOrSuccessOption, beneficiaryOtpFailureOrSuccessOption: $beneficiaryOtpFailureOrSuccessOption, beneficiaryRouteCodeFailureOrSuccessOption: $beneficiaryRouteCodeFailureOrSuccessOption, beneficiaryBankBranchRouteFailureOrSuccessOption: $beneficiaryBankBranchRouteFailureOrSuccessOption, resendBeneficiaryOtpFailureOrSuccessOption: $resendBeneficiaryOtpFailureOrSuccessOption, isDeleting: $isDeleting, deleteBeneficiaryFailureOrSuccessOption: $deleteBeneficiaryFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryStateCopyWith<$Res> implements $BeneficiaryStateCopyWith<$Res> {
  factory _$BeneficiaryStateCopyWith(_BeneficiaryState value, $Res Function(_BeneficiaryState) _then) = __$BeneficiaryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isEditing, bool isAddingFromHome, bool isLoading, bool isInitialLoading, bool showErrorMessages, bool isSubmitting, bool isOtpSubmitting, bool isResendingOtp, bool showOtpErrorMessages, BeneficiaryOtp beneficiaryOtp, DateTime? otpResendCooldownUntil, bool isRouteCodeLoading, bool isRouteLookupLoading, bool isRouteCodeAutoFilled, String selectedBankComboCode, BeneficiaryRouteCodeDto? beneficiaryRouteCodeDto, BeneficiaryBankBranchRouteDto? beneficiaryBankBranchRouteDto, BeneficiaryListDto? beneficiaryListDto, BeneficiaryList? selectedBeneficiary, BeneficiaryByIdDto? beneficiaryByIdDto, BeneficiaryCountryListDto? beneficiaryCountryListDto, CommonSelectableItem? selectedBeneficiaryCountry, BeneficiaryCurrencyListDto? beneficiaryCurrencyListDto, CommonSelectableItem? selectedBeneficiaryCurrency, BeneficiaryTransferModeListDto? beneficiaryTransferModeListDto, CommonSelectableItem? selectedBeneficiaryTransferType, BeneficiaryBankOrAgentListDto? beneficiaryBankOrAgentListDto, CommonSelectableItem? selectedBeneficiaryBankOrAgent, BeneficiaryProductFieldSettingsDto? beneficiaryProductFieldSettingsDto, Map<String, BeneficiaryDynamicInput> dynamicFieldValues, Map<String, BeneficiaryDynamicInput> initialDynamicFieldValues, BeneficiaryPurposeOfTransferDto? beneficiaryPurposeOfTransferDto, CommonSelectableItem? selectedBeneficiaryPurposeOfTransaction, BeneficiarySourceOfFundDto? beneficiarySourceOfFundDto, CommonSelectableItem? selectedBeneficiarySourceOfFund, CommonComboDto? commonComboDto, Option<Either<BeneficiaryFailure, BeneficiaryListDto>> beneficiaryFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>> beneficiaryByIdFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>> beneficiaryCountryListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>> beneficiaryCurrenciesFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>> beneficiaryTransferTypesFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>> beneficiaryBankOrAgentListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>> beneficiaryProductSettingsFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>> beneficiaryComboListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>> beneficiaryBankComboListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>> beneficiaryBankBranchComboListFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>> beneficiaryPurposeOfTransactionFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>> beneficiarySourceOfFundFailureOrSuccessOption, Option<Either<BeneficiaryFailure, int>> saveBeneficiaryFailureOrSuccessOption, Option<Either<BeneficiaryFailure, String>> beneficiaryOtpFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>> beneficiaryRouteCodeFailureOrSuccessOption, Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>> beneficiaryBankBranchRouteFailureOrSuccessOption, Option<Either<BeneficiaryFailure, int>> resendBeneficiaryOtpFailureOrSuccessOption, bool isDeleting, Option<Either<BeneficiaryFailure, Unit>> deleteBeneficiaryFailureOrSuccessOption
});


@override $BeneficiaryRouteCodeDtoCopyWith<$Res>? get beneficiaryRouteCodeDto;@override $BeneficiaryBankBranchRouteDtoCopyWith<$Res>? get beneficiaryBankBranchRouteDto;@override $BeneficiaryListDtoCopyWith<$Res>? get beneficiaryListDto;@override $BeneficiaryListCopyWith<$Res>? get selectedBeneficiary;@override $BeneficiaryByIdDtoCopyWith<$Res>? get beneficiaryByIdDto;@override $BeneficiaryCountryListDtoCopyWith<$Res>? get beneficiaryCountryListDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCountry;@override $BeneficiaryCurrencyListDtoCopyWith<$Res>? get beneficiaryCurrencyListDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCurrency;@override $BeneficiaryTransferModeListDtoCopyWith<$Res>? get beneficiaryTransferModeListDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryTransferType;@override $BeneficiaryBankOrAgentListDtoCopyWith<$Res>? get beneficiaryBankOrAgentListDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryBankOrAgent;@override $BeneficiaryProductFieldSettingsDtoCopyWith<$Res>? get beneficiaryProductFieldSettingsDto;@override $BeneficiaryPurposeOfTransferDtoCopyWith<$Res>? get beneficiaryPurposeOfTransferDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryPurposeOfTransaction;@override $BeneficiarySourceOfFundDtoCopyWith<$Res>? get beneficiarySourceOfFundDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedBeneficiarySourceOfFund;@override $CommonComboDtoCopyWith<$Res>? get commonComboDto;

}
/// @nodoc
class __$BeneficiaryStateCopyWithImpl<$Res>
    implements _$BeneficiaryStateCopyWith<$Res> {
  __$BeneficiaryStateCopyWithImpl(this._self, this._then);

  final _BeneficiaryState _self;
  final $Res Function(_BeneficiaryState) _then;

/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isEditing = null,Object? isAddingFromHome = null,Object? isLoading = null,Object? isInitialLoading = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? isOtpSubmitting = null,Object? isResendingOtp = null,Object? showOtpErrorMessages = null,Object? beneficiaryOtp = null,Object? otpResendCooldownUntil = freezed,Object? isRouteCodeLoading = null,Object? isRouteLookupLoading = null,Object? isRouteCodeAutoFilled = null,Object? selectedBankComboCode = null,Object? beneficiaryRouteCodeDto = freezed,Object? beneficiaryBankBranchRouteDto = freezed,Object? beneficiaryListDto = freezed,Object? selectedBeneficiary = freezed,Object? beneficiaryByIdDto = freezed,Object? beneficiaryCountryListDto = freezed,Object? selectedBeneficiaryCountry = freezed,Object? beneficiaryCurrencyListDto = freezed,Object? selectedBeneficiaryCurrency = freezed,Object? beneficiaryTransferModeListDto = freezed,Object? selectedBeneficiaryTransferType = freezed,Object? beneficiaryBankOrAgentListDto = freezed,Object? selectedBeneficiaryBankOrAgent = freezed,Object? beneficiaryProductFieldSettingsDto = freezed,Object? dynamicFieldValues = null,Object? initialDynamicFieldValues = null,Object? beneficiaryPurposeOfTransferDto = freezed,Object? selectedBeneficiaryPurposeOfTransaction = freezed,Object? beneficiarySourceOfFundDto = freezed,Object? selectedBeneficiarySourceOfFund = freezed,Object? commonComboDto = freezed,Object? beneficiaryFailureOrSuccessOption = null,Object? beneficiaryByIdFailureOrSuccessOption = null,Object? beneficiaryCountryListFailureOrSuccessOption = null,Object? beneficiaryCurrenciesFailureOrSuccessOption = null,Object? beneficiaryTransferTypesFailureOrSuccessOption = null,Object? beneficiaryBankOrAgentListFailureOrSuccessOption = null,Object? beneficiaryProductSettingsFailureOrSuccessOption = null,Object? beneficiaryComboListFailureOrSuccessOption = null,Object? beneficiaryBankComboListFailureOrSuccessOption = null,Object? beneficiaryBankBranchComboListFailureOrSuccessOption = null,Object? beneficiaryPurposeOfTransactionFailureOrSuccessOption = null,Object? beneficiarySourceOfFundFailureOrSuccessOption = null,Object? saveBeneficiaryFailureOrSuccessOption = null,Object? beneficiaryOtpFailureOrSuccessOption = null,Object? beneficiaryRouteCodeFailureOrSuccessOption = null,Object? beneficiaryBankBranchRouteFailureOrSuccessOption = null,Object? resendBeneficiaryOtpFailureOrSuccessOption = null,Object? isDeleting = null,Object? deleteBeneficiaryFailureOrSuccessOption = null,}) {
  return _then(_BeneficiaryState(
isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isAddingFromHome: null == isAddingFromHome ? _self.isAddingFromHome : isAddingFromHome // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isOtpSubmitting: null == isOtpSubmitting ? _self.isOtpSubmitting : isOtpSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isResendingOtp: null == isResendingOtp ? _self.isResendingOtp : isResendingOtp // ignore: cast_nullable_to_non_nullable
as bool,showOtpErrorMessages: null == showOtpErrorMessages ? _self.showOtpErrorMessages : showOtpErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,beneficiaryOtp: null == beneficiaryOtp ? _self.beneficiaryOtp : beneficiaryOtp // ignore: cast_nullable_to_non_nullable
as BeneficiaryOtp,otpResendCooldownUntil: freezed == otpResendCooldownUntil ? _self.otpResendCooldownUntil : otpResendCooldownUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,isRouteCodeLoading: null == isRouteCodeLoading ? _self.isRouteCodeLoading : isRouteCodeLoading // ignore: cast_nullable_to_non_nullable
as bool,isRouteLookupLoading: null == isRouteLookupLoading ? _self.isRouteLookupLoading : isRouteLookupLoading // ignore: cast_nullable_to_non_nullable
as bool,isRouteCodeAutoFilled: null == isRouteCodeAutoFilled ? _self.isRouteCodeAutoFilled : isRouteCodeAutoFilled // ignore: cast_nullable_to_non_nullable
as bool,selectedBankComboCode: null == selectedBankComboCode ? _self.selectedBankComboCode : selectedBankComboCode // ignore: cast_nullable_to_non_nullable
as String,beneficiaryRouteCodeDto: freezed == beneficiaryRouteCodeDto ? _self.beneficiaryRouteCodeDto : beneficiaryRouteCodeDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryRouteCodeDto?,beneficiaryBankBranchRouteDto: freezed == beneficiaryBankBranchRouteDto ? _self.beneficiaryBankBranchRouteDto : beneficiaryBankBranchRouteDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryBankBranchRouteDto?,beneficiaryListDto: freezed == beneficiaryListDto ? _self.beneficiaryListDto : beneficiaryListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryListDto?,selectedBeneficiary: freezed == selectedBeneficiary ? _self.selectedBeneficiary : selectedBeneficiary // ignore: cast_nullable_to_non_nullable
as BeneficiaryList?,beneficiaryByIdDto: freezed == beneficiaryByIdDto ? _self.beneficiaryByIdDto : beneficiaryByIdDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryByIdDto?,beneficiaryCountryListDto: freezed == beneficiaryCountryListDto ? _self.beneficiaryCountryListDto : beneficiaryCountryListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryCountryListDto?,selectedBeneficiaryCountry: freezed == selectedBeneficiaryCountry ? _self.selectedBeneficiaryCountry : selectedBeneficiaryCountry // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryCurrencyListDto: freezed == beneficiaryCurrencyListDto ? _self.beneficiaryCurrencyListDto : beneficiaryCurrencyListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryCurrencyListDto?,selectedBeneficiaryCurrency: freezed == selectedBeneficiaryCurrency ? _self.selectedBeneficiaryCurrency : selectedBeneficiaryCurrency // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryTransferModeListDto: freezed == beneficiaryTransferModeListDto ? _self.beneficiaryTransferModeListDto : beneficiaryTransferModeListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryTransferModeListDto?,selectedBeneficiaryTransferType: freezed == selectedBeneficiaryTransferType ? _self.selectedBeneficiaryTransferType : selectedBeneficiaryTransferType // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryBankOrAgentListDto: freezed == beneficiaryBankOrAgentListDto ? _self.beneficiaryBankOrAgentListDto : beneficiaryBankOrAgentListDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryBankOrAgentListDto?,selectedBeneficiaryBankOrAgent: freezed == selectedBeneficiaryBankOrAgent ? _self.selectedBeneficiaryBankOrAgent : selectedBeneficiaryBankOrAgent // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiaryProductFieldSettingsDto: freezed == beneficiaryProductFieldSettingsDto ? _self.beneficiaryProductFieldSettingsDto : beneficiaryProductFieldSettingsDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryProductFieldSettingsDto?,dynamicFieldValues: null == dynamicFieldValues ? _self._dynamicFieldValues : dynamicFieldValues // ignore: cast_nullable_to_non_nullable
as Map<String, BeneficiaryDynamicInput>,initialDynamicFieldValues: null == initialDynamicFieldValues ? _self._initialDynamicFieldValues : initialDynamicFieldValues // ignore: cast_nullable_to_non_nullable
as Map<String, BeneficiaryDynamicInput>,beneficiaryPurposeOfTransferDto: freezed == beneficiaryPurposeOfTransferDto ? _self.beneficiaryPurposeOfTransferDto : beneficiaryPurposeOfTransferDto // ignore: cast_nullable_to_non_nullable
as BeneficiaryPurposeOfTransferDto?,selectedBeneficiaryPurposeOfTransaction: freezed == selectedBeneficiaryPurposeOfTransaction ? _self.selectedBeneficiaryPurposeOfTransaction : selectedBeneficiaryPurposeOfTransaction // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,beneficiarySourceOfFundDto: freezed == beneficiarySourceOfFundDto ? _self.beneficiarySourceOfFundDto : beneficiarySourceOfFundDto // ignore: cast_nullable_to_non_nullable
as BeneficiarySourceOfFundDto?,selectedBeneficiarySourceOfFund: freezed == selectedBeneficiarySourceOfFund ? _self.selectedBeneficiarySourceOfFund : selectedBeneficiarySourceOfFund // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonComboDto: freezed == commonComboDto ? _self.commonComboDto : commonComboDto // ignore: cast_nullable_to_non_nullable
as CommonComboDto?,beneficiaryFailureOrSuccessOption: null == beneficiaryFailureOrSuccessOption ? _self.beneficiaryFailureOrSuccessOption : beneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryListDto>>,beneficiaryByIdFailureOrSuccessOption: null == beneficiaryByIdFailureOrSuccessOption ? _self.beneficiaryByIdFailureOrSuccessOption : beneficiaryByIdFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>>,beneficiaryCountryListFailureOrSuccessOption: null == beneficiaryCountryListFailureOrSuccessOption ? _self.beneficiaryCountryListFailureOrSuccessOption : beneficiaryCountryListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>>,beneficiaryCurrenciesFailureOrSuccessOption: null == beneficiaryCurrenciesFailureOrSuccessOption ? _self.beneficiaryCurrenciesFailureOrSuccessOption : beneficiaryCurrenciesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>>,beneficiaryTransferTypesFailureOrSuccessOption: null == beneficiaryTransferTypesFailureOrSuccessOption ? _self.beneficiaryTransferTypesFailureOrSuccessOption : beneficiaryTransferTypesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>>,beneficiaryBankOrAgentListFailureOrSuccessOption: null == beneficiaryBankOrAgentListFailureOrSuccessOption ? _self.beneficiaryBankOrAgentListFailureOrSuccessOption : beneficiaryBankOrAgentListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>>,beneficiaryProductSettingsFailureOrSuccessOption: null == beneficiaryProductSettingsFailureOrSuccessOption ? _self.beneficiaryProductSettingsFailureOrSuccessOption : beneficiaryProductSettingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>>,beneficiaryComboListFailureOrSuccessOption: null == beneficiaryComboListFailureOrSuccessOption ? _self.beneficiaryComboListFailureOrSuccessOption : beneficiaryComboListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>>,beneficiaryBankComboListFailureOrSuccessOption: null == beneficiaryBankComboListFailureOrSuccessOption ? _self.beneficiaryBankComboListFailureOrSuccessOption : beneficiaryBankComboListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>>,beneficiaryBankBranchComboListFailureOrSuccessOption: null == beneficiaryBankBranchComboListFailureOrSuccessOption ? _self.beneficiaryBankBranchComboListFailureOrSuccessOption : beneficiaryBankBranchComboListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>>,beneficiaryPurposeOfTransactionFailureOrSuccessOption: null == beneficiaryPurposeOfTransactionFailureOrSuccessOption ? _self.beneficiaryPurposeOfTransactionFailureOrSuccessOption : beneficiaryPurposeOfTransactionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>>,beneficiarySourceOfFundFailureOrSuccessOption: null == beneficiarySourceOfFundFailureOrSuccessOption ? _self.beneficiarySourceOfFundFailureOrSuccessOption : beneficiarySourceOfFundFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>>,saveBeneficiaryFailureOrSuccessOption: null == saveBeneficiaryFailureOrSuccessOption ? _self.saveBeneficiaryFailureOrSuccessOption : saveBeneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, int>>,beneficiaryOtpFailureOrSuccessOption: null == beneficiaryOtpFailureOrSuccessOption ? _self.beneficiaryOtpFailureOrSuccessOption : beneficiaryOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, String>>,beneficiaryRouteCodeFailureOrSuccessOption: null == beneficiaryRouteCodeFailureOrSuccessOption ? _self.beneficiaryRouteCodeFailureOrSuccessOption : beneficiaryRouteCodeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>>,beneficiaryBankBranchRouteFailureOrSuccessOption: null == beneficiaryBankBranchRouteFailureOrSuccessOption ? _self.beneficiaryBankBranchRouteFailureOrSuccessOption : beneficiaryBankBranchRouteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>>,resendBeneficiaryOtpFailureOrSuccessOption: null == resendBeneficiaryOtpFailureOrSuccessOption ? _self.resendBeneficiaryOtpFailureOrSuccessOption : resendBeneficiaryOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, int>>,isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,deleteBeneficiaryFailureOrSuccessOption: null == deleteBeneficiaryFailureOrSuccessOption ? _self.deleteBeneficiaryFailureOrSuccessOption : deleteBeneficiaryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<BeneficiaryFailure, Unit>>,
  ));
}

/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryRouteCodeDtoCopyWith<$Res>? get beneficiaryRouteCodeDto {
    if (_self.beneficiaryRouteCodeDto == null) {
    return null;
  }

  return $BeneficiaryRouteCodeDtoCopyWith<$Res>(_self.beneficiaryRouteCodeDto!, (value) {
    return _then(_self.copyWith(beneficiaryRouteCodeDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBankBranchRouteDtoCopyWith<$Res>? get beneficiaryBankBranchRouteDto {
    if (_self.beneficiaryBankBranchRouteDto == null) {
    return null;
  }

  return $BeneficiaryBankBranchRouteDtoCopyWith<$Res>(_self.beneficiaryBankBranchRouteDto!, (value) {
    return _then(_self.copyWith(beneficiaryBankBranchRouteDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryListDtoCopyWith<$Res>? get beneficiaryListDto {
    if (_self.beneficiaryListDto == null) {
    return null;
  }

  return $BeneficiaryListDtoCopyWith<$Res>(_self.beneficiaryListDto!, (value) {
    return _then(_self.copyWith(beneficiaryListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryListCopyWith<$Res>? get selectedBeneficiary {
    if (_self.selectedBeneficiary == null) {
    return null;
  }

  return $BeneficiaryListCopyWith<$Res>(_self.selectedBeneficiary!, (value) {
    return _then(_self.copyWith(selectedBeneficiary: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryByIdDtoCopyWith<$Res>? get beneficiaryByIdDto {
    if (_self.beneficiaryByIdDto == null) {
    return null;
  }

  return $BeneficiaryByIdDtoCopyWith<$Res>(_self.beneficiaryByIdDto!, (value) {
    return _then(_self.copyWith(beneficiaryByIdDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryCountryListDtoCopyWith<$Res>? get beneficiaryCountryListDto {
    if (_self.beneficiaryCountryListDto == null) {
    return null;
  }

  return $BeneficiaryCountryListDtoCopyWith<$Res>(_self.beneficiaryCountryListDto!, (value) {
    return _then(_self.copyWith(beneficiaryCountryListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCountry {
    if (_self.selectedBeneficiaryCountry == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryCountry!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryCountry: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryCurrencyListDtoCopyWith<$Res>? get beneficiaryCurrencyListDto {
    if (_self.beneficiaryCurrencyListDto == null) {
    return null;
  }

  return $BeneficiaryCurrencyListDtoCopyWith<$Res>(_self.beneficiaryCurrencyListDto!, (value) {
    return _then(_self.copyWith(beneficiaryCurrencyListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryCurrency {
    if (_self.selectedBeneficiaryCurrency == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryCurrency!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryCurrency: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryTransferModeListDtoCopyWith<$Res>? get beneficiaryTransferModeListDto {
    if (_self.beneficiaryTransferModeListDto == null) {
    return null;
  }

  return $BeneficiaryTransferModeListDtoCopyWith<$Res>(_self.beneficiaryTransferModeListDto!, (value) {
    return _then(_self.copyWith(beneficiaryTransferModeListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryTransferType {
    if (_self.selectedBeneficiaryTransferType == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryTransferType!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryTransferType: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryBankOrAgentListDtoCopyWith<$Res>? get beneficiaryBankOrAgentListDto {
    if (_self.beneficiaryBankOrAgentListDto == null) {
    return null;
  }

  return $BeneficiaryBankOrAgentListDtoCopyWith<$Res>(_self.beneficiaryBankOrAgentListDto!, (value) {
    return _then(_self.copyWith(beneficiaryBankOrAgentListDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryBankOrAgent {
    if (_self.selectedBeneficiaryBankOrAgent == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryBankOrAgent!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryBankOrAgent: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryProductFieldSettingsDtoCopyWith<$Res>? get beneficiaryProductFieldSettingsDto {
    if (_self.beneficiaryProductFieldSettingsDto == null) {
    return null;
  }

  return $BeneficiaryProductFieldSettingsDtoCopyWith<$Res>(_self.beneficiaryProductFieldSettingsDto!, (value) {
    return _then(_self.copyWith(beneficiaryProductFieldSettingsDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryPurposeOfTransferDtoCopyWith<$Res>? get beneficiaryPurposeOfTransferDto {
    if (_self.beneficiaryPurposeOfTransferDto == null) {
    return null;
  }

  return $BeneficiaryPurposeOfTransferDtoCopyWith<$Res>(_self.beneficiaryPurposeOfTransferDto!, (value) {
    return _then(_self.copyWith(beneficiaryPurposeOfTransferDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiaryPurposeOfTransaction {
    if (_self.selectedBeneficiaryPurposeOfTransaction == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiaryPurposeOfTransaction!, (value) {
    return _then(_self.copyWith(selectedBeneficiaryPurposeOfTransaction: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiarySourceOfFundDtoCopyWith<$Res>? get beneficiarySourceOfFundDto {
    if (_self.beneficiarySourceOfFundDto == null) {
    return null;
  }

  return $BeneficiarySourceOfFundDtoCopyWith<$Res>(_self.beneficiarySourceOfFundDto!, (value) {
    return _then(_self.copyWith(beneficiarySourceOfFundDto: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get selectedBeneficiarySourceOfFund {
    if (_self.selectedBeneficiarySourceOfFund == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.selectedBeneficiarySourceOfFund!, (value) {
    return _then(_self.copyWith(selectedBeneficiarySourceOfFund: value));
  });
}/// Create a copy of BeneficiaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonComboDtoCopyWith<$Res>? get commonComboDto {
    if (_self.commonComboDto == null) {
    return null;
  }

  return $CommonComboDtoCopyWith<$Res>(_self.commonComboDto!, (value) {
    return _then(_self.copyWith(commonComboDto: value));
  });
}
}

// dart format on
