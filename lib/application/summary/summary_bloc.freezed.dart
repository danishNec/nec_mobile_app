// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SummaryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SummaryEvent()';
}


}

/// @nodoc
class $SummaryEventCopyWith<$Res>  {
$SummaryEventCopyWith(SummaryEvent _, $Res Function(SummaryEvent) __);
}


/// Adds pattern-matching-related methods to [SummaryEvent].
extension SummaryEventPatterns on SummaryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PrepareSummary value)?  prepareSummary,TResult Function( _RetryBeneficiary value)?  retryBeneficiary,TResult Function( _RetryPaymentMethod value)?  retryPaymentMethod,TResult Function( _BeneficiaryUpdatedChanged value)?  beneficiaryUpdatedChanged,TResult Function( _SourceAmountChanged value)?  sourceAmountChanged,TResult Function( _DestinationAmountChanged value)?  destinationAmountChanged,TResult Function( _PaymentMethodChanged value)?  paymentMethodChanged,TResult Function( _PostCreateTemporarySession value)?  postCreateTemporarySession,TResult Function( _GetSummaryStatusEnquiry value)?  getSummaryStatusEnquiry,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrepareSummary() when prepareSummary != null:
return prepareSummary(_that);case _RetryBeneficiary() when retryBeneficiary != null:
return retryBeneficiary(_that);case _RetryPaymentMethod() when retryPaymentMethod != null:
return retryPaymentMethod(_that);case _BeneficiaryUpdatedChanged() when beneficiaryUpdatedChanged != null:
return beneficiaryUpdatedChanged(_that);case _SourceAmountChanged() when sourceAmountChanged != null:
return sourceAmountChanged(_that);case _DestinationAmountChanged() when destinationAmountChanged != null:
return destinationAmountChanged(_that);case _PaymentMethodChanged() when paymentMethodChanged != null:
return paymentMethodChanged(_that);case _PostCreateTemporarySession() when postCreateTemporarySession != null:
return postCreateTemporarySession(_that);case _GetSummaryStatusEnquiry() when getSummaryStatusEnquiry != null:
return getSummaryStatusEnquiry(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PrepareSummary value)  prepareSummary,required TResult Function( _RetryBeneficiary value)  retryBeneficiary,required TResult Function( _RetryPaymentMethod value)  retryPaymentMethod,required TResult Function( _BeneficiaryUpdatedChanged value)  beneficiaryUpdatedChanged,required TResult Function( _SourceAmountChanged value)  sourceAmountChanged,required TResult Function( _DestinationAmountChanged value)  destinationAmountChanged,required TResult Function( _PaymentMethodChanged value)  paymentMethodChanged,required TResult Function( _PostCreateTemporarySession value)  postCreateTemporarySession,required TResult Function( _GetSummaryStatusEnquiry value)  getSummaryStatusEnquiry,}){
final _that = this;
switch (_that) {
case _PrepareSummary():
return prepareSummary(_that);case _RetryBeneficiary():
return retryBeneficiary(_that);case _RetryPaymentMethod():
return retryPaymentMethod(_that);case _BeneficiaryUpdatedChanged():
return beneficiaryUpdatedChanged(_that);case _SourceAmountChanged():
return sourceAmountChanged(_that);case _DestinationAmountChanged():
return destinationAmountChanged(_that);case _PaymentMethodChanged():
return paymentMethodChanged(_that);case _PostCreateTemporarySession():
return postCreateTemporarySession(_that);case _GetSummaryStatusEnquiry():
return getSummaryStatusEnquiry(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PrepareSummary value)?  prepareSummary,TResult? Function( _RetryBeneficiary value)?  retryBeneficiary,TResult? Function( _RetryPaymentMethod value)?  retryPaymentMethod,TResult? Function( _BeneficiaryUpdatedChanged value)?  beneficiaryUpdatedChanged,TResult? Function( _SourceAmountChanged value)?  sourceAmountChanged,TResult? Function( _DestinationAmountChanged value)?  destinationAmountChanged,TResult? Function( _PaymentMethodChanged value)?  paymentMethodChanged,TResult? Function( _PostCreateTemporarySession value)?  postCreateTemporarySession,TResult? Function( _GetSummaryStatusEnquiry value)?  getSummaryStatusEnquiry,}){
final _that = this;
switch (_that) {
case _PrepareSummary() when prepareSummary != null:
return prepareSummary(_that);case _RetryBeneficiary() when retryBeneficiary != null:
return retryBeneficiary(_that);case _RetryPaymentMethod() when retryPaymentMethod != null:
return retryPaymentMethod(_that);case _BeneficiaryUpdatedChanged() when beneficiaryUpdatedChanged != null:
return beneficiaryUpdatedChanged(_that);case _SourceAmountChanged() when sourceAmountChanged != null:
return sourceAmountChanged(_that);case _DestinationAmountChanged() when destinationAmountChanged != null:
return destinationAmountChanged(_that);case _PaymentMethodChanged() when paymentMethodChanged != null:
return paymentMethodChanged(_that);case _PostCreateTemporarySession() when postCreateTemporarySession != null:
return postCreateTemporarySession(_that);case _GetSummaryStatusEnquiry() when getSummaryStatusEnquiry != null:
return getSummaryStatusEnquiry(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String beneficiaryId,  CommonSelectableItem? paymentMethodItem,  String? lastRawSourceAmount,  String? lastRawDestinationAmount,  bool? isLastInputSource)?  prepareSummary,TResult Function()?  retryBeneficiary,TResult Function()?  retryPaymentMethod,TResult Function( String? eId,  String? beneficiaryFirstName,  String? beneficiaryLastName,  String? beneficiaryCountryCode,  String? beneficiaryBankName,  String? disbursalMode,  String? currencyCode,  String? purposeName,  String? incomeSourceName,  String? purposeOfTransaction,  String? sourceOfFund)?  beneficiaryUpdatedChanged,TResult Function( String sourceAmount)?  sourceAmountChanged,TResult Function( String destinationAmount)?  destinationAmountChanged,TResult Function( CommonSelectableItem selectedPaymentMethodItem)?  paymentMethodChanged,TResult Function()?  postCreateTemporarySession,TResult Function( String temporarySessionId)?  getSummaryStatusEnquiry,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrepareSummary() when prepareSummary != null:
return prepareSummary(_that.beneficiaryId,_that.paymentMethodItem,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource);case _RetryBeneficiary() when retryBeneficiary != null:
return retryBeneficiary();case _RetryPaymentMethod() when retryPaymentMethod != null:
return retryPaymentMethod();case _BeneficiaryUpdatedChanged() when beneficiaryUpdatedChanged != null:
return beneficiaryUpdatedChanged(_that.eId,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryCountryCode,_that.beneficiaryBankName,_that.disbursalMode,_that.currencyCode,_that.purposeName,_that.incomeSourceName,_that.purposeOfTransaction,_that.sourceOfFund);case _SourceAmountChanged() when sourceAmountChanged != null:
return sourceAmountChanged(_that.sourceAmount);case _DestinationAmountChanged() when destinationAmountChanged != null:
return destinationAmountChanged(_that.destinationAmount);case _PaymentMethodChanged() when paymentMethodChanged != null:
return paymentMethodChanged(_that.selectedPaymentMethodItem);case _PostCreateTemporarySession() when postCreateTemporarySession != null:
return postCreateTemporarySession();case _GetSummaryStatusEnquiry() when getSummaryStatusEnquiry != null:
return getSummaryStatusEnquiry(_that.temporarySessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String beneficiaryId,  CommonSelectableItem? paymentMethodItem,  String? lastRawSourceAmount,  String? lastRawDestinationAmount,  bool? isLastInputSource)  prepareSummary,required TResult Function()  retryBeneficiary,required TResult Function()  retryPaymentMethod,required TResult Function( String? eId,  String? beneficiaryFirstName,  String? beneficiaryLastName,  String? beneficiaryCountryCode,  String? beneficiaryBankName,  String? disbursalMode,  String? currencyCode,  String? purposeName,  String? incomeSourceName,  String? purposeOfTransaction,  String? sourceOfFund)  beneficiaryUpdatedChanged,required TResult Function( String sourceAmount)  sourceAmountChanged,required TResult Function( String destinationAmount)  destinationAmountChanged,required TResult Function( CommonSelectableItem selectedPaymentMethodItem)  paymentMethodChanged,required TResult Function()  postCreateTemporarySession,required TResult Function( String temporarySessionId)  getSummaryStatusEnquiry,}) {final _that = this;
switch (_that) {
case _PrepareSummary():
return prepareSummary(_that.beneficiaryId,_that.paymentMethodItem,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource);case _RetryBeneficiary():
return retryBeneficiary();case _RetryPaymentMethod():
return retryPaymentMethod();case _BeneficiaryUpdatedChanged():
return beneficiaryUpdatedChanged(_that.eId,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryCountryCode,_that.beneficiaryBankName,_that.disbursalMode,_that.currencyCode,_that.purposeName,_that.incomeSourceName,_that.purposeOfTransaction,_that.sourceOfFund);case _SourceAmountChanged():
return sourceAmountChanged(_that.sourceAmount);case _DestinationAmountChanged():
return destinationAmountChanged(_that.destinationAmount);case _PaymentMethodChanged():
return paymentMethodChanged(_that.selectedPaymentMethodItem);case _PostCreateTemporarySession():
return postCreateTemporarySession();case _GetSummaryStatusEnquiry():
return getSummaryStatusEnquiry(_that.temporarySessionId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String beneficiaryId,  CommonSelectableItem? paymentMethodItem,  String? lastRawSourceAmount,  String? lastRawDestinationAmount,  bool? isLastInputSource)?  prepareSummary,TResult? Function()?  retryBeneficiary,TResult? Function()?  retryPaymentMethod,TResult? Function( String? eId,  String? beneficiaryFirstName,  String? beneficiaryLastName,  String? beneficiaryCountryCode,  String? beneficiaryBankName,  String? disbursalMode,  String? currencyCode,  String? purposeName,  String? incomeSourceName,  String? purposeOfTransaction,  String? sourceOfFund)?  beneficiaryUpdatedChanged,TResult? Function( String sourceAmount)?  sourceAmountChanged,TResult? Function( String destinationAmount)?  destinationAmountChanged,TResult? Function( CommonSelectableItem selectedPaymentMethodItem)?  paymentMethodChanged,TResult? Function()?  postCreateTemporarySession,TResult? Function( String temporarySessionId)?  getSummaryStatusEnquiry,}) {final _that = this;
switch (_that) {
case _PrepareSummary() when prepareSummary != null:
return prepareSummary(_that.beneficiaryId,_that.paymentMethodItem,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource);case _RetryBeneficiary() when retryBeneficiary != null:
return retryBeneficiary();case _RetryPaymentMethod() when retryPaymentMethod != null:
return retryPaymentMethod();case _BeneficiaryUpdatedChanged() when beneficiaryUpdatedChanged != null:
return beneficiaryUpdatedChanged(_that.eId,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryCountryCode,_that.beneficiaryBankName,_that.disbursalMode,_that.currencyCode,_that.purposeName,_that.incomeSourceName,_that.purposeOfTransaction,_that.sourceOfFund);case _SourceAmountChanged() when sourceAmountChanged != null:
return sourceAmountChanged(_that.sourceAmount);case _DestinationAmountChanged() when destinationAmountChanged != null:
return destinationAmountChanged(_that.destinationAmount);case _PaymentMethodChanged() when paymentMethodChanged != null:
return paymentMethodChanged(_that.selectedPaymentMethodItem);case _PostCreateTemporarySession() when postCreateTemporarySession != null:
return postCreateTemporarySession();case _GetSummaryStatusEnquiry() when getSummaryStatusEnquiry != null:
return getSummaryStatusEnquiry(_that.temporarySessionId);case _:
  return null;

}
}

}

/// @nodoc


class _PrepareSummary implements SummaryEvent {
  const _PrepareSummary({required this.beneficiaryId, this.paymentMethodItem, this.lastRawSourceAmount, this.lastRawDestinationAmount, this.isLastInputSource});
  

 final  String beneficiaryId;
 final  CommonSelectableItem? paymentMethodItem;
 final  String? lastRawSourceAmount;
 final  String? lastRawDestinationAmount;
 final  bool? isLastInputSource;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrepareSummaryCopyWith<_PrepareSummary> get copyWith => __$PrepareSummaryCopyWithImpl<_PrepareSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrepareSummary&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.paymentMethodItem, paymentMethodItem) || other.paymentMethodItem == paymentMethodItem)&&(identical(other.lastRawSourceAmount, lastRawSourceAmount) || other.lastRawSourceAmount == lastRawSourceAmount)&&(identical(other.lastRawDestinationAmount, lastRawDestinationAmount) || other.lastRawDestinationAmount == lastRawDestinationAmount)&&(identical(other.isLastInputSource, isLastInputSource) || other.isLastInputSource == isLastInputSource));
}


@override
int get hashCode => Object.hash(runtimeType,beneficiaryId,paymentMethodItem,lastRawSourceAmount,lastRawDestinationAmount,isLastInputSource);

@override
String toString() {
  return 'SummaryEvent.prepareSummary(beneficiaryId: $beneficiaryId, paymentMethodItem: $paymentMethodItem, lastRawSourceAmount: $lastRawSourceAmount, lastRawDestinationAmount: $lastRawDestinationAmount, isLastInputSource: $isLastInputSource)';
}


}

/// @nodoc
abstract mixin class _$PrepareSummaryCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory _$PrepareSummaryCopyWith(_PrepareSummary value, $Res Function(_PrepareSummary) _then) = __$PrepareSummaryCopyWithImpl;
@useResult
$Res call({
 String beneficiaryId, CommonSelectableItem? paymentMethodItem, String? lastRawSourceAmount, String? lastRawDestinationAmount, bool? isLastInputSource
});


$CommonSelectableItemCopyWith<$Res>? get paymentMethodItem;

}
/// @nodoc
class __$PrepareSummaryCopyWithImpl<$Res>
    implements _$PrepareSummaryCopyWith<$Res> {
  __$PrepareSummaryCopyWithImpl(this._self, this._then);

  final _PrepareSummary _self;
  final $Res Function(_PrepareSummary) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? beneficiaryId = null,Object? paymentMethodItem = freezed,Object? lastRawSourceAmount = freezed,Object? lastRawDestinationAmount = freezed,Object? isLastInputSource = freezed,}) {
  return _then(_PrepareSummary(
beneficiaryId: null == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as String,paymentMethodItem: freezed == paymentMethodItem ? _self.paymentMethodItem : paymentMethodItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,lastRawSourceAmount: freezed == lastRawSourceAmount ? _self.lastRawSourceAmount : lastRawSourceAmount // ignore: cast_nullable_to_non_nullable
as String?,lastRawDestinationAmount: freezed == lastRawDestinationAmount ? _self.lastRawDestinationAmount : lastRawDestinationAmount // ignore: cast_nullable_to_non_nullable
as String?,isLastInputSource: freezed == isLastInputSource ? _self.isLastInputSource : isLastInputSource // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableItemCopyWith<$Res>? get paymentMethodItem {
    if (_self.paymentMethodItem == null) {
    return null;
  }

  return $CommonSelectableItemCopyWith<$Res>(_self.paymentMethodItem!, (value) {
    return _then(_self.copyWith(paymentMethodItem: value));
  });
}
}

/// @nodoc


class _RetryBeneficiary implements SummaryEvent {
  const _RetryBeneficiary();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryBeneficiary);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SummaryEvent.retryBeneficiary()';
}


}




/// @nodoc


class _RetryPaymentMethod implements SummaryEvent {
  const _RetryPaymentMethod();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryPaymentMethod);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SummaryEvent.retryPaymentMethod()';
}


}




/// @nodoc


class _BeneficiaryUpdatedChanged implements SummaryEvent {
  const _BeneficiaryUpdatedChanged({this.eId, this.beneficiaryFirstName, this.beneficiaryLastName, this.beneficiaryCountryCode, this.beneficiaryBankName, this.disbursalMode, this.currencyCode, this.purposeName, this.incomeSourceName, this.purposeOfTransaction, this.sourceOfFund});
  

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

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryUpdatedChangedCopyWith<_BeneficiaryUpdatedChanged> get copyWith => __$BeneficiaryUpdatedChangedCopyWithImpl<_BeneficiaryUpdatedChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryUpdatedChanged&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund));
}


@override
int get hashCode => Object.hash(runtimeType,eId,beneficiaryFirstName,beneficiaryLastName,beneficiaryCountryCode,beneficiaryBankName,disbursalMode,currencyCode,purposeName,incomeSourceName,purposeOfTransaction,sourceOfFund);

@override
String toString() {
  return 'SummaryEvent.beneficiaryUpdatedChanged(eId: $eId, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryLastName: $beneficiaryLastName, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryBankName: $beneficiaryBankName, disbursalMode: $disbursalMode, currencyCode: $currencyCode, purposeName: $purposeName, incomeSourceName: $incomeSourceName, purposeOfTransaction: $purposeOfTransaction, sourceOfFund: $sourceOfFund)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryUpdatedChangedCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory _$BeneficiaryUpdatedChangedCopyWith(_BeneficiaryUpdatedChanged value, $Res Function(_BeneficiaryUpdatedChanged) _then) = __$BeneficiaryUpdatedChangedCopyWithImpl;
@useResult
$Res call({
 String? eId, String? beneficiaryFirstName, String? beneficiaryLastName, String? beneficiaryCountryCode, String? beneficiaryBankName, String? disbursalMode, String? currencyCode, String? purposeName, String? incomeSourceName, String? purposeOfTransaction, String? sourceOfFund
});




}
/// @nodoc
class __$BeneficiaryUpdatedChangedCopyWithImpl<$Res>
    implements _$BeneficiaryUpdatedChangedCopyWith<$Res> {
  __$BeneficiaryUpdatedChangedCopyWithImpl(this._self, this._then);

  final _BeneficiaryUpdatedChanged _self;
  final $Res Function(_BeneficiaryUpdatedChanged) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryBankName = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? purposeName = freezed,Object? incomeSourceName = freezed,Object? purposeOfTransaction = freezed,Object? sourceOfFund = freezed,}) {
  return _then(_BeneficiaryUpdatedChanged(
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


class _SourceAmountChanged implements SummaryEvent {
  const _SourceAmountChanged({required this.sourceAmount});
  

 final  String sourceAmount;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourceAmountChangedCopyWith<_SourceAmountChanged> get copyWith => __$SourceAmountChangedCopyWithImpl<_SourceAmountChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SourceAmountChanged&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount));
}


@override
int get hashCode => Object.hash(runtimeType,sourceAmount);

@override
String toString() {
  return 'SummaryEvent.sourceAmountChanged(sourceAmount: $sourceAmount)';
}


}

/// @nodoc
abstract mixin class _$SourceAmountChangedCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory _$SourceAmountChangedCopyWith(_SourceAmountChanged value, $Res Function(_SourceAmountChanged) _then) = __$SourceAmountChangedCopyWithImpl;
@useResult
$Res call({
 String sourceAmount
});




}
/// @nodoc
class __$SourceAmountChangedCopyWithImpl<$Res>
    implements _$SourceAmountChangedCopyWith<$Res> {
  __$SourceAmountChangedCopyWithImpl(this._self, this._then);

  final _SourceAmountChanged _self;
  final $Res Function(_SourceAmountChanged) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sourceAmount = null,}) {
  return _then(_SourceAmountChanged(
sourceAmount: null == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DestinationAmountChanged implements SummaryEvent {
  const _DestinationAmountChanged({required this.destinationAmount});
  

 final  String destinationAmount;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationAmountChangedCopyWith<_DestinationAmountChanged> get copyWith => __$DestinationAmountChangedCopyWithImpl<_DestinationAmountChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DestinationAmountChanged&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount));
}


@override
int get hashCode => Object.hash(runtimeType,destinationAmount);

@override
String toString() {
  return 'SummaryEvent.destinationAmountChanged(destinationAmount: $destinationAmount)';
}


}

/// @nodoc
abstract mixin class _$DestinationAmountChangedCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory _$DestinationAmountChangedCopyWith(_DestinationAmountChanged value, $Res Function(_DestinationAmountChanged) _then) = __$DestinationAmountChangedCopyWithImpl;
@useResult
$Res call({
 String destinationAmount
});




}
/// @nodoc
class __$DestinationAmountChangedCopyWithImpl<$Res>
    implements _$DestinationAmountChangedCopyWith<$Res> {
  __$DestinationAmountChangedCopyWithImpl(this._self, this._then);

  final _DestinationAmountChanged _self;
  final $Res Function(_DestinationAmountChanged) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? destinationAmount = null,}) {
  return _then(_DestinationAmountChanged(
destinationAmount: null == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PaymentMethodChanged implements SummaryEvent {
  const _PaymentMethodChanged(this.selectedPaymentMethodItem);
  

 final  CommonSelectableItem selectedPaymentMethodItem;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodChangedCopyWith<_PaymentMethodChanged> get copyWith => __$PaymentMethodChangedCopyWithImpl<_PaymentMethodChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodChanged&&(identical(other.selectedPaymentMethodItem, selectedPaymentMethodItem) || other.selectedPaymentMethodItem == selectedPaymentMethodItem));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPaymentMethodItem);

@override
String toString() {
  return 'SummaryEvent.paymentMethodChanged(selectedPaymentMethodItem: $selectedPaymentMethodItem)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodChangedCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory _$PaymentMethodChangedCopyWith(_PaymentMethodChanged value, $Res Function(_PaymentMethodChanged) _then) = __$PaymentMethodChangedCopyWithImpl;
@useResult
$Res call({
 CommonSelectableItem selectedPaymentMethodItem
});


$CommonSelectableItemCopyWith<$Res> get selectedPaymentMethodItem;

}
/// @nodoc
class __$PaymentMethodChangedCopyWithImpl<$Res>
    implements _$PaymentMethodChangedCopyWith<$Res> {
  __$PaymentMethodChangedCopyWithImpl(this._self, this._then);

  final _PaymentMethodChanged _self;
  final $Res Function(_PaymentMethodChanged) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedPaymentMethodItem = null,}) {
  return _then(_PaymentMethodChanged(
null == selectedPaymentMethodItem ? _self.selectedPaymentMethodItem : selectedPaymentMethodItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem,
  ));
}

/// Create a copy of SummaryEvent
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


class _PostCreateTemporarySession implements SummaryEvent {
  const _PostCreateTemporarySession();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostCreateTemporarySession);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SummaryEvent.postCreateTemporarySession()';
}


}




/// @nodoc


class _GetSummaryStatusEnquiry implements SummaryEvent {
  const _GetSummaryStatusEnquiry(this.temporarySessionId);
  

 final  String temporarySessionId;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSummaryStatusEnquiryCopyWith<_GetSummaryStatusEnquiry> get copyWith => __$GetSummaryStatusEnquiryCopyWithImpl<_GetSummaryStatusEnquiry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSummaryStatusEnquiry&&(identical(other.temporarySessionId, temporarySessionId) || other.temporarySessionId == temporarySessionId));
}


@override
int get hashCode => Object.hash(runtimeType,temporarySessionId);

@override
String toString() {
  return 'SummaryEvent.getSummaryStatusEnquiry(temporarySessionId: $temporarySessionId)';
}


}

/// @nodoc
abstract mixin class _$GetSummaryStatusEnquiryCopyWith<$Res> implements $SummaryEventCopyWith<$Res> {
  factory _$GetSummaryStatusEnquiryCopyWith(_GetSummaryStatusEnquiry value, $Res Function(_GetSummaryStatusEnquiry) _then) = __$GetSummaryStatusEnquiryCopyWithImpl;
@useResult
$Res call({
 String temporarySessionId
});




}
/// @nodoc
class __$GetSummaryStatusEnquiryCopyWithImpl<$Res>
    implements _$GetSummaryStatusEnquiryCopyWith<$Res> {
  __$GetSummaryStatusEnquiryCopyWithImpl(this._self, this._then);

  final _GetSummaryStatusEnquiry _self;
  final $Res Function(_GetSummaryStatusEnquiry) _then;

/// Create a copy of SummaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? temporarySessionId = null,}) {
  return _then(_GetSummaryStatusEnquiry(
null == temporarySessionId ? _self.temporarySessionId : temporarySessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SummaryState {

// ── Page-level flags ─────────────────────────────────────────────────────
// True only during the initial parallel API burst; resolved in
// _onPrepareSummaryToState once all 4 APIs complete (pass or fail).
 bool get isInitialLoading;// Per-section loading flags (used for retry operations after initial load).
 bool get isBeneficiaryLoading; bool get isPaymentMethodLoading; bool get isSubmitting; bool get isRateLoading; bool get isSourceAmountCalculating; bool get isDestinationAmountCalculating;// ── Input preservation ───────────────────────────────────────────────────
 String get lastRawSourceAmount; String get lastRawDestinationAmount; bool get isLastInputSource;// ── Retry support ────────────────────────────────────────────────────────
// Stored so retry handlers can re-fetch without needing external input.
 String? get beneficiaryId;// Non-null when the corresponding section failed on initial load or retry.
 SummaryFailure? get beneficiaryFailure; SummaryFailure? get paymentMethodFailure;// ── Domain data ──────────────────────────────────────────────────────────
 SummaryBeneficiaryByIdDto? get summaryBeneficiaryByIdDto; CommonSendMoneyDto get commonSendMoneyDto; CommonSelectableDto? get commonSourceSelectableDto; CommonSelectableItem? get selectedCommonSourceItem; CommonSelectableDto? get commonDestinationSelectableDto; CommonSelectableItem? get selectedCommonDestinationItem; CommonSelectableDto? get commonPaymentMethodSelectableDto; CommonSelectableItem? get selectedPaymentMethodItem; SummaryPaymentMethodDto? get summaryPaymentMethodDto; SummaryTemporarySessionDto? get summaryTemporarySessionDto; CommonPaymentResultDto? get commonPaymentResultDto;// ── Option streams (drive listeners / section rendering) ─────────────────
 Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> get summaryBeneficiaryByIdFailureOrSuccessOption; Option<Either<SummaryFailure, SummaryCurrencyListDto>> get summarySourceCurrencyListFailureOrSuccessOption; Option<Either<SummaryFailure, SummaryCurrencyListDto>> get summaryDestinationCurrencyListFailureOrSuccessOption; Option<Either<SummaryFailure, SummaryCalculateAmountDto>> get summaryCalculatedSourceAmountFailureOrSuccessOption; Option<Either<SummaryFailure, SummaryCalculateAmountDto>> get summaryCalculatedDestinationAmountFailureOrSuccessOption; Option<Either<SummaryFailure, SummaryPaymentMethodDto>> get summaryPaymentMethodFailureOrSuccessOption; Option<Either<SummaryFailure, SummaryTemporarySessionDto>> get summaryTemporarySessionFailureOrSuccessOption; Option<Either<SummaryFailure, SummaryStatusEnquiryDto>> get summaryStatusEnquiryFailureOrSuccessOption;
/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryStateCopyWith<SummaryState> get copyWith => _$SummaryStateCopyWithImpl<SummaryState>(this as SummaryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryState&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.isBeneficiaryLoading, isBeneficiaryLoading) || other.isBeneficiaryLoading == isBeneficiaryLoading)&&(identical(other.isPaymentMethodLoading, isPaymentMethodLoading) || other.isPaymentMethodLoading == isPaymentMethodLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isRateLoading, isRateLoading) || other.isRateLoading == isRateLoading)&&(identical(other.isSourceAmountCalculating, isSourceAmountCalculating) || other.isSourceAmountCalculating == isSourceAmountCalculating)&&(identical(other.isDestinationAmountCalculating, isDestinationAmountCalculating) || other.isDestinationAmountCalculating == isDestinationAmountCalculating)&&(identical(other.lastRawSourceAmount, lastRawSourceAmount) || other.lastRawSourceAmount == lastRawSourceAmount)&&(identical(other.lastRawDestinationAmount, lastRawDestinationAmount) || other.lastRawDestinationAmount == lastRawDestinationAmount)&&(identical(other.isLastInputSource, isLastInputSource) || other.isLastInputSource == isLastInputSource)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.beneficiaryFailure, beneficiaryFailure) || other.beneficiaryFailure == beneficiaryFailure)&&(identical(other.paymentMethodFailure, paymentMethodFailure) || other.paymentMethodFailure == paymentMethodFailure)&&(identical(other.summaryBeneficiaryByIdDto, summaryBeneficiaryByIdDto) || other.summaryBeneficiaryByIdDto == summaryBeneficiaryByIdDto)&&(identical(other.commonSendMoneyDto, commonSendMoneyDto) || other.commonSendMoneyDto == commonSendMoneyDto)&&(identical(other.commonSourceSelectableDto, commonSourceSelectableDto) || other.commonSourceSelectableDto == commonSourceSelectableDto)&&(identical(other.selectedCommonSourceItem, selectedCommonSourceItem) || other.selectedCommonSourceItem == selectedCommonSourceItem)&&(identical(other.commonDestinationSelectableDto, commonDestinationSelectableDto) || other.commonDestinationSelectableDto == commonDestinationSelectableDto)&&(identical(other.selectedCommonDestinationItem, selectedCommonDestinationItem) || other.selectedCommonDestinationItem == selectedCommonDestinationItem)&&(identical(other.commonPaymentMethodSelectableDto, commonPaymentMethodSelectableDto) || other.commonPaymentMethodSelectableDto == commonPaymentMethodSelectableDto)&&(identical(other.selectedPaymentMethodItem, selectedPaymentMethodItem) || other.selectedPaymentMethodItem == selectedPaymentMethodItem)&&(identical(other.summaryPaymentMethodDto, summaryPaymentMethodDto) || other.summaryPaymentMethodDto == summaryPaymentMethodDto)&&(identical(other.summaryTemporarySessionDto, summaryTemporarySessionDto) || other.summaryTemporarySessionDto == summaryTemporarySessionDto)&&(identical(other.commonPaymentResultDto, commonPaymentResultDto) || other.commonPaymentResultDto == commonPaymentResultDto)&&(identical(other.summaryBeneficiaryByIdFailureOrSuccessOption, summaryBeneficiaryByIdFailureOrSuccessOption) || other.summaryBeneficiaryByIdFailureOrSuccessOption == summaryBeneficiaryByIdFailureOrSuccessOption)&&(identical(other.summarySourceCurrencyListFailureOrSuccessOption, summarySourceCurrencyListFailureOrSuccessOption) || other.summarySourceCurrencyListFailureOrSuccessOption == summarySourceCurrencyListFailureOrSuccessOption)&&(identical(other.summaryDestinationCurrencyListFailureOrSuccessOption, summaryDestinationCurrencyListFailureOrSuccessOption) || other.summaryDestinationCurrencyListFailureOrSuccessOption == summaryDestinationCurrencyListFailureOrSuccessOption)&&(identical(other.summaryCalculatedSourceAmountFailureOrSuccessOption, summaryCalculatedSourceAmountFailureOrSuccessOption) || other.summaryCalculatedSourceAmountFailureOrSuccessOption == summaryCalculatedSourceAmountFailureOrSuccessOption)&&(identical(other.summaryCalculatedDestinationAmountFailureOrSuccessOption, summaryCalculatedDestinationAmountFailureOrSuccessOption) || other.summaryCalculatedDestinationAmountFailureOrSuccessOption == summaryCalculatedDestinationAmountFailureOrSuccessOption)&&(identical(other.summaryPaymentMethodFailureOrSuccessOption, summaryPaymentMethodFailureOrSuccessOption) || other.summaryPaymentMethodFailureOrSuccessOption == summaryPaymentMethodFailureOrSuccessOption)&&(identical(other.summaryTemporarySessionFailureOrSuccessOption, summaryTemporarySessionFailureOrSuccessOption) || other.summaryTemporarySessionFailureOrSuccessOption == summaryTemporarySessionFailureOrSuccessOption)&&(identical(other.summaryStatusEnquiryFailureOrSuccessOption, summaryStatusEnquiryFailureOrSuccessOption) || other.summaryStatusEnquiryFailureOrSuccessOption == summaryStatusEnquiryFailureOrSuccessOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isInitialLoading,isBeneficiaryLoading,isPaymentMethodLoading,isSubmitting,isRateLoading,isSourceAmountCalculating,isDestinationAmountCalculating,lastRawSourceAmount,lastRawDestinationAmount,isLastInputSource,beneficiaryId,beneficiaryFailure,paymentMethodFailure,summaryBeneficiaryByIdDto,commonSendMoneyDto,commonSourceSelectableDto,selectedCommonSourceItem,commonDestinationSelectableDto,selectedCommonDestinationItem,commonPaymentMethodSelectableDto,selectedPaymentMethodItem,summaryPaymentMethodDto,summaryTemporarySessionDto,commonPaymentResultDto,summaryBeneficiaryByIdFailureOrSuccessOption,summarySourceCurrencyListFailureOrSuccessOption,summaryDestinationCurrencyListFailureOrSuccessOption,summaryCalculatedSourceAmountFailureOrSuccessOption,summaryCalculatedDestinationAmountFailureOrSuccessOption,summaryPaymentMethodFailureOrSuccessOption,summaryTemporarySessionFailureOrSuccessOption,summaryStatusEnquiryFailureOrSuccessOption]);

@override
String toString() {
  return 'SummaryState(isInitialLoading: $isInitialLoading, isBeneficiaryLoading: $isBeneficiaryLoading, isPaymentMethodLoading: $isPaymentMethodLoading, isSubmitting: $isSubmitting, isRateLoading: $isRateLoading, isSourceAmountCalculating: $isSourceAmountCalculating, isDestinationAmountCalculating: $isDestinationAmountCalculating, lastRawSourceAmount: $lastRawSourceAmount, lastRawDestinationAmount: $lastRawDestinationAmount, isLastInputSource: $isLastInputSource, beneficiaryId: $beneficiaryId, beneficiaryFailure: $beneficiaryFailure, paymentMethodFailure: $paymentMethodFailure, summaryBeneficiaryByIdDto: $summaryBeneficiaryByIdDto, commonSendMoneyDto: $commonSendMoneyDto, commonSourceSelectableDto: $commonSourceSelectableDto, selectedCommonSourceItem: $selectedCommonSourceItem, commonDestinationSelectableDto: $commonDestinationSelectableDto, selectedCommonDestinationItem: $selectedCommonDestinationItem, commonPaymentMethodSelectableDto: $commonPaymentMethodSelectableDto, selectedPaymentMethodItem: $selectedPaymentMethodItem, summaryPaymentMethodDto: $summaryPaymentMethodDto, summaryTemporarySessionDto: $summaryTemporarySessionDto, commonPaymentResultDto: $commonPaymentResultDto, summaryBeneficiaryByIdFailureOrSuccessOption: $summaryBeneficiaryByIdFailureOrSuccessOption, summarySourceCurrencyListFailureOrSuccessOption: $summarySourceCurrencyListFailureOrSuccessOption, summaryDestinationCurrencyListFailureOrSuccessOption: $summaryDestinationCurrencyListFailureOrSuccessOption, summaryCalculatedSourceAmountFailureOrSuccessOption: $summaryCalculatedSourceAmountFailureOrSuccessOption, summaryCalculatedDestinationAmountFailureOrSuccessOption: $summaryCalculatedDestinationAmountFailureOrSuccessOption, summaryPaymentMethodFailureOrSuccessOption: $summaryPaymentMethodFailureOrSuccessOption, summaryTemporarySessionFailureOrSuccessOption: $summaryTemporarySessionFailureOrSuccessOption, summaryStatusEnquiryFailureOrSuccessOption: $summaryStatusEnquiryFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $SummaryStateCopyWith<$Res>  {
  factory $SummaryStateCopyWith(SummaryState value, $Res Function(SummaryState) _then) = _$SummaryStateCopyWithImpl;
@useResult
$Res call({
 bool isInitialLoading, bool isBeneficiaryLoading, bool isPaymentMethodLoading, bool isSubmitting, bool isRateLoading, bool isSourceAmountCalculating, bool isDestinationAmountCalculating, String lastRawSourceAmount, String lastRawDestinationAmount, bool isLastInputSource, String? beneficiaryId, SummaryFailure? beneficiaryFailure, SummaryFailure? paymentMethodFailure, SummaryBeneficiaryByIdDto? summaryBeneficiaryByIdDto, CommonSendMoneyDto commonSendMoneyDto, CommonSelectableDto? commonSourceSelectableDto, CommonSelectableItem? selectedCommonSourceItem, CommonSelectableDto? commonDestinationSelectableDto, CommonSelectableItem? selectedCommonDestinationItem, CommonSelectableDto? commonPaymentMethodSelectableDto, CommonSelectableItem? selectedPaymentMethodItem, SummaryPaymentMethodDto? summaryPaymentMethodDto, SummaryTemporarySessionDto? summaryTemporarySessionDto, CommonPaymentResultDto? commonPaymentResultDto, Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> summaryBeneficiaryByIdFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCurrencyListDto>> summarySourceCurrencyListFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCurrencyListDto>> summaryDestinationCurrencyListFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedSourceAmountFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedDestinationAmountFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryPaymentMethodDto>> summaryPaymentMethodFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryTemporarySessionDto>> summaryTemporarySessionFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryStatusEnquiryDto>> summaryStatusEnquiryFailureOrSuccessOption
});


$SummaryFailureCopyWith<$Res>? get beneficiaryFailure;$SummaryFailureCopyWith<$Res>? get paymentMethodFailure;$SummaryBeneficiaryByIdDtoCopyWith<$Res>? get summaryBeneficiaryByIdDto;$CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto;$CommonSelectableDtoCopyWith<$Res>? get commonSourceSelectableDto;$CommonSelectableItemCopyWith<$Res>? get selectedCommonSourceItem;$CommonSelectableDtoCopyWith<$Res>? get commonDestinationSelectableDto;$CommonSelectableItemCopyWith<$Res>? get selectedCommonDestinationItem;$CommonSelectableDtoCopyWith<$Res>? get commonPaymentMethodSelectableDto;$CommonSelectableItemCopyWith<$Res>? get selectedPaymentMethodItem;$SummaryPaymentMethodDtoCopyWith<$Res>? get summaryPaymentMethodDto;$SummaryTemporarySessionDtoCopyWith<$Res>? get summaryTemporarySessionDto;$CommonPaymentResultDtoCopyWith<$Res>? get commonPaymentResultDto;

}
/// @nodoc
class _$SummaryStateCopyWithImpl<$Res>
    implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._self, this._then);

  final SummaryState _self;
  final $Res Function(SummaryState) _then;

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isInitialLoading = null,Object? isBeneficiaryLoading = null,Object? isPaymentMethodLoading = null,Object? isSubmitting = null,Object? isRateLoading = null,Object? isSourceAmountCalculating = null,Object? isDestinationAmountCalculating = null,Object? lastRawSourceAmount = null,Object? lastRawDestinationAmount = null,Object? isLastInputSource = null,Object? beneficiaryId = freezed,Object? beneficiaryFailure = freezed,Object? paymentMethodFailure = freezed,Object? summaryBeneficiaryByIdDto = freezed,Object? commonSendMoneyDto = null,Object? commonSourceSelectableDto = freezed,Object? selectedCommonSourceItem = freezed,Object? commonDestinationSelectableDto = freezed,Object? selectedCommonDestinationItem = freezed,Object? commonPaymentMethodSelectableDto = freezed,Object? selectedPaymentMethodItem = freezed,Object? summaryPaymentMethodDto = freezed,Object? summaryTemporarySessionDto = freezed,Object? commonPaymentResultDto = freezed,Object? summaryBeneficiaryByIdFailureOrSuccessOption = null,Object? summarySourceCurrencyListFailureOrSuccessOption = null,Object? summaryDestinationCurrencyListFailureOrSuccessOption = null,Object? summaryCalculatedSourceAmountFailureOrSuccessOption = null,Object? summaryCalculatedDestinationAmountFailureOrSuccessOption = null,Object? summaryPaymentMethodFailureOrSuccessOption = null,Object? summaryTemporarySessionFailureOrSuccessOption = null,Object? summaryStatusEnquiryFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isBeneficiaryLoading: null == isBeneficiaryLoading ? _self.isBeneficiaryLoading : isBeneficiaryLoading // ignore: cast_nullable_to_non_nullable
as bool,isPaymentMethodLoading: null == isPaymentMethodLoading ? _self.isPaymentMethodLoading : isPaymentMethodLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isRateLoading: null == isRateLoading ? _self.isRateLoading : isRateLoading // ignore: cast_nullable_to_non_nullable
as bool,isSourceAmountCalculating: null == isSourceAmountCalculating ? _self.isSourceAmountCalculating : isSourceAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,isDestinationAmountCalculating: null == isDestinationAmountCalculating ? _self.isDestinationAmountCalculating : isDestinationAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,lastRawSourceAmount: null == lastRawSourceAmount ? _self.lastRawSourceAmount : lastRawSourceAmount // ignore: cast_nullable_to_non_nullable
as String,lastRawDestinationAmount: null == lastRawDestinationAmount ? _self.lastRawDestinationAmount : lastRawDestinationAmount // ignore: cast_nullable_to_non_nullable
as String,isLastInputSource: null == isLastInputSource ? _self.isLastInputSource : isLastInputSource // ignore: cast_nullable_to_non_nullable
as bool,beneficiaryId: freezed == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFailure: freezed == beneficiaryFailure ? _self.beneficiaryFailure : beneficiaryFailure // ignore: cast_nullable_to_non_nullable
as SummaryFailure?,paymentMethodFailure: freezed == paymentMethodFailure ? _self.paymentMethodFailure : paymentMethodFailure // ignore: cast_nullable_to_non_nullable
as SummaryFailure?,summaryBeneficiaryByIdDto: freezed == summaryBeneficiaryByIdDto ? _self.summaryBeneficiaryByIdDto : summaryBeneficiaryByIdDto // ignore: cast_nullable_to_non_nullable
as SummaryBeneficiaryByIdDto?,commonSendMoneyDto: null == commonSendMoneyDto ? _self.commonSendMoneyDto : commonSendMoneyDto // ignore: cast_nullable_to_non_nullable
as CommonSendMoneyDto,commonSourceSelectableDto: freezed == commonSourceSelectableDto ? _self.commonSourceSelectableDto : commonSourceSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonSourceItem: freezed == selectedCommonSourceItem ? _self.selectedCommonSourceItem : selectedCommonSourceItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonDestinationSelectableDto: freezed == commonDestinationSelectableDto ? _self.commonDestinationSelectableDto : commonDestinationSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonDestinationItem: freezed == selectedCommonDestinationItem ? _self.selectedCommonDestinationItem : selectedCommonDestinationItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonPaymentMethodSelectableDto: freezed == commonPaymentMethodSelectableDto ? _self.commonPaymentMethodSelectableDto : commonPaymentMethodSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedPaymentMethodItem: freezed == selectedPaymentMethodItem ? _self.selectedPaymentMethodItem : selectedPaymentMethodItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,summaryPaymentMethodDto: freezed == summaryPaymentMethodDto ? _self.summaryPaymentMethodDto : summaryPaymentMethodDto // ignore: cast_nullable_to_non_nullable
as SummaryPaymentMethodDto?,summaryTemporarySessionDto: freezed == summaryTemporarySessionDto ? _self.summaryTemporarySessionDto : summaryTemporarySessionDto // ignore: cast_nullable_to_non_nullable
as SummaryTemporarySessionDto?,commonPaymentResultDto: freezed == commonPaymentResultDto ? _self.commonPaymentResultDto : commonPaymentResultDto // ignore: cast_nullable_to_non_nullable
as CommonPaymentResultDto?,summaryBeneficiaryByIdFailureOrSuccessOption: null == summaryBeneficiaryByIdFailureOrSuccessOption ? _self.summaryBeneficiaryByIdFailureOrSuccessOption : summaryBeneficiaryByIdFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>>,summarySourceCurrencyListFailureOrSuccessOption: null == summarySourceCurrencyListFailureOrSuccessOption ? _self.summarySourceCurrencyListFailureOrSuccessOption : summarySourceCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCurrencyListDto>>,summaryDestinationCurrencyListFailureOrSuccessOption: null == summaryDestinationCurrencyListFailureOrSuccessOption ? _self.summaryDestinationCurrencyListFailureOrSuccessOption : summaryDestinationCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCurrencyListDto>>,summaryCalculatedSourceAmountFailureOrSuccessOption: null == summaryCalculatedSourceAmountFailureOrSuccessOption ? _self.summaryCalculatedSourceAmountFailureOrSuccessOption : summaryCalculatedSourceAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCalculateAmountDto>>,summaryCalculatedDestinationAmountFailureOrSuccessOption: null == summaryCalculatedDestinationAmountFailureOrSuccessOption ? _self.summaryCalculatedDestinationAmountFailureOrSuccessOption : summaryCalculatedDestinationAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCalculateAmountDto>>,summaryPaymentMethodFailureOrSuccessOption: null == summaryPaymentMethodFailureOrSuccessOption ? _self.summaryPaymentMethodFailureOrSuccessOption : summaryPaymentMethodFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryPaymentMethodDto>>,summaryTemporarySessionFailureOrSuccessOption: null == summaryTemporarySessionFailureOrSuccessOption ? _self.summaryTemporarySessionFailureOrSuccessOption : summaryTemporarySessionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryTemporarySessionDto>>,summaryStatusEnquiryFailureOrSuccessOption: null == summaryStatusEnquiryFailureOrSuccessOption ? _self.summaryStatusEnquiryFailureOrSuccessOption : summaryStatusEnquiryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryStatusEnquiryDto>>,
  ));
}
/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryFailureCopyWith<$Res>? get beneficiaryFailure {
    if (_self.beneficiaryFailure == null) {
    return null;
  }

  return $SummaryFailureCopyWith<$Res>(_self.beneficiaryFailure!, (value) {
    return _then(_self.copyWith(beneficiaryFailure: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryFailureCopyWith<$Res>? get paymentMethodFailure {
    if (_self.paymentMethodFailure == null) {
    return null;
  }

  return $SummaryFailureCopyWith<$Res>(_self.paymentMethodFailure!, (value) {
    return _then(_self.copyWith(paymentMethodFailure: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryBeneficiaryByIdDtoCopyWith<$Res>? get summaryBeneficiaryByIdDto {
    if (_self.summaryBeneficiaryByIdDto == null) {
    return null;
  }

  return $SummaryBeneficiaryByIdDtoCopyWith<$Res>(_self.summaryBeneficiaryByIdDto!, (value) {
    return _then(_self.copyWith(summaryBeneficiaryByIdDto: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto {
  
  return $CommonSendMoneyDtoCopyWith<$Res>(_self.commonSendMoneyDto, (value) {
    return _then(_self.copyWith(commonSendMoneyDto: value));
  });
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDtoCopyWith<$Res>? get commonPaymentMethodSelectableDto {
    if (_self.commonPaymentMethodSelectableDto == null) {
    return null;
  }

  return $CommonSelectableDtoCopyWith<$Res>(_self.commonPaymentMethodSelectableDto!, (value) {
    return _then(_self.copyWith(commonPaymentMethodSelectableDto: value));
  });
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryPaymentMethodDtoCopyWith<$Res>? get summaryPaymentMethodDto {
    if (_self.summaryPaymentMethodDto == null) {
    return null;
  }

  return $SummaryPaymentMethodDtoCopyWith<$Res>(_self.summaryPaymentMethodDto!, (value) {
    return _then(_self.copyWith(summaryPaymentMethodDto: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryTemporarySessionDtoCopyWith<$Res>? get summaryTemporarySessionDto {
    if (_self.summaryTemporarySessionDto == null) {
    return null;
  }

  return $SummaryTemporarySessionDtoCopyWith<$Res>(_self.summaryTemporarySessionDto!, (value) {
    return _then(_self.copyWith(summaryTemporarySessionDto: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonPaymentResultDtoCopyWith<$Res>? get commonPaymentResultDto {
    if (_self.commonPaymentResultDto == null) {
    return null;
  }

  return $CommonPaymentResultDtoCopyWith<$Res>(_self.commonPaymentResultDto!, (value) {
    return _then(_self.copyWith(commonPaymentResultDto: value));
  });
}
}


/// Adds pattern-matching-related methods to [SummaryState].
extension SummaryStatePatterns on SummaryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryState value)  $default,){
final _that = this;
switch (_that) {
case _SummaryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryState value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isInitialLoading,  bool isBeneficiaryLoading,  bool isPaymentMethodLoading,  bool isSubmitting,  bool isRateLoading,  bool isSourceAmountCalculating,  bool isDestinationAmountCalculating,  String lastRawSourceAmount,  String lastRawDestinationAmount,  bool isLastInputSource,  String? beneficiaryId,  SummaryFailure? beneficiaryFailure,  SummaryFailure? paymentMethodFailure,  SummaryBeneficiaryByIdDto? summaryBeneficiaryByIdDto,  CommonSendMoneyDto commonSendMoneyDto,  CommonSelectableDto? commonSourceSelectableDto,  CommonSelectableItem? selectedCommonSourceItem,  CommonSelectableDto? commonDestinationSelectableDto,  CommonSelectableItem? selectedCommonDestinationItem,  CommonSelectableDto? commonPaymentMethodSelectableDto,  CommonSelectableItem? selectedPaymentMethodItem,  SummaryPaymentMethodDto? summaryPaymentMethodDto,  SummaryTemporarySessionDto? summaryTemporarySessionDto,  CommonPaymentResultDto? commonPaymentResultDto,  Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> summaryBeneficiaryByIdFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summarySourceCurrencyListFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summaryDestinationCurrencyListFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedSourceAmountFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedDestinationAmountFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryPaymentMethodDto>> summaryPaymentMethodFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryTemporarySessionDto>> summaryTemporarySessionFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryStatusEnquiryDto>> summaryStatusEnquiryFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SummaryState() when $default != null:
return $default(_that.isInitialLoading,_that.isBeneficiaryLoading,_that.isPaymentMethodLoading,_that.isSubmitting,_that.isRateLoading,_that.isSourceAmountCalculating,_that.isDestinationAmountCalculating,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource,_that.beneficiaryId,_that.beneficiaryFailure,_that.paymentMethodFailure,_that.summaryBeneficiaryByIdDto,_that.commonSendMoneyDto,_that.commonSourceSelectableDto,_that.selectedCommonSourceItem,_that.commonDestinationSelectableDto,_that.selectedCommonDestinationItem,_that.commonPaymentMethodSelectableDto,_that.selectedPaymentMethodItem,_that.summaryPaymentMethodDto,_that.summaryTemporarySessionDto,_that.commonPaymentResultDto,_that.summaryBeneficiaryByIdFailureOrSuccessOption,_that.summarySourceCurrencyListFailureOrSuccessOption,_that.summaryDestinationCurrencyListFailureOrSuccessOption,_that.summaryCalculatedSourceAmountFailureOrSuccessOption,_that.summaryCalculatedDestinationAmountFailureOrSuccessOption,_that.summaryPaymentMethodFailureOrSuccessOption,_that.summaryTemporarySessionFailureOrSuccessOption,_that.summaryStatusEnquiryFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isInitialLoading,  bool isBeneficiaryLoading,  bool isPaymentMethodLoading,  bool isSubmitting,  bool isRateLoading,  bool isSourceAmountCalculating,  bool isDestinationAmountCalculating,  String lastRawSourceAmount,  String lastRawDestinationAmount,  bool isLastInputSource,  String? beneficiaryId,  SummaryFailure? beneficiaryFailure,  SummaryFailure? paymentMethodFailure,  SummaryBeneficiaryByIdDto? summaryBeneficiaryByIdDto,  CommonSendMoneyDto commonSendMoneyDto,  CommonSelectableDto? commonSourceSelectableDto,  CommonSelectableItem? selectedCommonSourceItem,  CommonSelectableDto? commonDestinationSelectableDto,  CommonSelectableItem? selectedCommonDestinationItem,  CommonSelectableDto? commonPaymentMethodSelectableDto,  CommonSelectableItem? selectedPaymentMethodItem,  SummaryPaymentMethodDto? summaryPaymentMethodDto,  SummaryTemporarySessionDto? summaryTemporarySessionDto,  CommonPaymentResultDto? commonPaymentResultDto,  Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> summaryBeneficiaryByIdFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summarySourceCurrencyListFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summaryDestinationCurrencyListFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedSourceAmountFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedDestinationAmountFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryPaymentMethodDto>> summaryPaymentMethodFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryTemporarySessionDto>> summaryTemporarySessionFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryStatusEnquiryDto>> summaryStatusEnquiryFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _SummaryState():
return $default(_that.isInitialLoading,_that.isBeneficiaryLoading,_that.isPaymentMethodLoading,_that.isSubmitting,_that.isRateLoading,_that.isSourceAmountCalculating,_that.isDestinationAmountCalculating,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource,_that.beneficiaryId,_that.beneficiaryFailure,_that.paymentMethodFailure,_that.summaryBeneficiaryByIdDto,_that.commonSendMoneyDto,_that.commonSourceSelectableDto,_that.selectedCommonSourceItem,_that.commonDestinationSelectableDto,_that.selectedCommonDestinationItem,_that.commonPaymentMethodSelectableDto,_that.selectedPaymentMethodItem,_that.summaryPaymentMethodDto,_that.summaryTemporarySessionDto,_that.commonPaymentResultDto,_that.summaryBeneficiaryByIdFailureOrSuccessOption,_that.summarySourceCurrencyListFailureOrSuccessOption,_that.summaryDestinationCurrencyListFailureOrSuccessOption,_that.summaryCalculatedSourceAmountFailureOrSuccessOption,_that.summaryCalculatedDestinationAmountFailureOrSuccessOption,_that.summaryPaymentMethodFailureOrSuccessOption,_that.summaryTemporarySessionFailureOrSuccessOption,_that.summaryStatusEnquiryFailureOrSuccessOption);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isInitialLoading,  bool isBeneficiaryLoading,  bool isPaymentMethodLoading,  bool isSubmitting,  bool isRateLoading,  bool isSourceAmountCalculating,  bool isDestinationAmountCalculating,  String lastRawSourceAmount,  String lastRawDestinationAmount,  bool isLastInputSource,  String? beneficiaryId,  SummaryFailure? beneficiaryFailure,  SummaryFailure? paymentMethodFailure,  SummaryBeneficiaryByIdDto? summaryBeneficiaryByIdDto,  CommonSendMoneyDto commonSendMoneyDto,  CommonSelectableDto? commonSourceSelectableDto,  CommonSelectableItem? selectedCommonSourceItem,  CommonSelectableDto? commonDestinationSelectableDto,  CommonSelectableItem? selectedCommonDestinationItem,  CommonSelectableDto? commonPaymentMethodSelectableDto,  CommonSelectableItem? selectedPaymentMethodItem,  SummaryPaymentMethodDto? summaryPaymentMethodDto,  SummaryTemporarySessionDto? summaryTemporarySessionDto,  CommonPaymentResultDto? commonPaymentResultDto,  Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> summaryBeneficiaryByIdFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summarySourceCurrencyListFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summaryDestinationCurrencyListFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedSourceAmountFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedDestinationAmountFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryPaymentMethodDto>> summaryPaymentMethodFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryTemporarySessionDto>> summaryTemporarySessionFailureOrSuccessOption,  Option<Either<SummaryFailure, SummaryStatusEnquiryDto>> summaryStatusEnquiryFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _SummaryState() when $default != null:
return $default(_that.isInitialLoading,_that.isBeneficiaryLoading,_that.isPaymentMethodLoading,_that.isSubmitting,_that.isRateLoading,_that.isSourceAmountCalculating,_that.isDestinationAmountCalculating,_that.lastRawSourceAmount,_that.lastRawDestinationAmount,_that.isLastInputSource,_that.beneficiaryId,_that.beneficiaryFailure,_that.paymentMethodFailure,_that.summaryBeneficiaryByIdDto,_that.commonSendMoneyDto,_that.commonSourceSelectableDto,_that.selectedCommonSourceItem,_that.commonDestinationSelectableDto,_that.selectedCommonDestinationItem,_that.commonPaymentMethodSelectableDto,_that.selectedPaymentMethodItem,_that.summaryPaymentMethodDto,_that.summaryTemporarySessionDto,_that.commonPaymentResultDto,_that.summaryBeneficiaryByIdFailureOrSuccessOption,_that.summarySourceCurrencyListFailureOrSuccessOption,_that.summaryDestinationCurrencyListFailureOrSuccessOption,_that.summaryCalculatedSourceAmountFailureOrSuccessOption,_that.summaryCalculatedDestinationAmountFailureOrSuccessOption,_that.summaryPaymentMethodFailureOrSuccessOption,_that.summaryTemporarySessionFailureOrSuccessOption,_that.summaryStatusEnquiryFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _SummaryState implements SummaryState {
  const _SummaryState({this.isInitialLoading = true, this.isBeneficiaryLoading = false, this.isPaymentMethodLoading = false, this.isSubmitting = false, this.isRateLoading = false, this.isSourceAmountCalculating = false, this.isDestinationAmountCalculating = false, this.lastRawSourceAmount = '', this.lastRawDestinationAmount = '', this.isLastInputSource = true, this.beneficiaryId, this.beneficiaryFailure, this.paymentMethodFailure, this.summaryBeneficiaryByIdDto, required this.commonSendMoneyDto, this.commonSourceSelectableDto, this.selectedCommonSourceItem, this.commonDestinationSelectableDto, this.selectedCommonDestinationItem, this.commonPaymentMethodSelectableDto, this.selectedPaymentMethodItem, this.summaryPaymentMethodDto, this.summaryTemporarySessionDto, this.commonPaymentResultDto, required this.summaryBeneficiaryByIdFailureOrSuccessOption, required this.summarySourceCurrencyListFailureOrSuccessOption, required this.summaryDestinationCurrencyListFailureOrSuccessOption, required this.summaryCalculatedSourceAmountFailureOrSuccessOption, required this.summaryCalculatedDestinationAmountFailureOrSuccessOption, required this.summaryPaymentMethodFailureOrSuccessOption, required this.summaryTemporarySessionFailureOrSuccessOption, required this.summaryStatusEnquiryFailureOrSuccessOption});
  

// ── Page-level flags ─────────────────────────────────────────────────────
// True only during the initial parallel API burst; resolved in
// _onPrepareSummaryToState once all 4 APIs complete (pass or fail).
@override@JsonKey() final  bool isInitialLoading;
// Per-section loading flags (used for retry operations after initial load).
@override@JsonKey() final  bool isBeneficiaryLoading;
@override@JsonKey() final  bool isPaymentMethodLoading;
@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  bool isRateLoading;
@override@JsonKey() final  bool isSourceAmountCalculating;
@override@JsonKey() final  bool isDestinationAmountCalculating;
// ── Input preservation ───────────────────────────────────────────────────
@override@JsonKey() final  String lastRawSourceAmount;
@override@JsonKey() final  String lastRawDestinationAmount;
@override@JsonKey() final  bool isLastInputSource;
// ── Retry support ────────────────────────────────────────────────────────
// Stored so retry handlers can re-fetch without needing external input.
@override final  String? beneficiaryId;
// Non-null when the corresponding section failed on initial load or retry.
@override final  SummaryFailure? beneficiaryFailure;
@override final  SummaryFailure? paymentMethodFailure;
// ── Domain data ──────────────────────────────────────────────────────────
@override final  SummaryBeneficiaryByIdDto? summaryBeneficiaryByIdDto;
@override final  CommonSendMoneyDto commonSendMoneyDto;
@override final  CommonSelectableDto? commonSourceSelectableDto;
@override final  CommonSelectableItem? selectedCommonSourceItem;
@override final  CommonSelectableDto? commonDestinationSelectableDto;
@override final  CommonSelectableItem? selectedCommonDestinationItem;
@override final  CommonSelectableDto? commonPaymentMethodSelectableDto;
@override final  CommonSelectableItem? selectedPaymentMethodItem;
@override final  SummaryPaymentMethodDto? summaryPaymentMethodDto;
@override final  SummaryTemporarySessionDto? summaryTemporarySessionDto;
@override final  CommonPaymentResultDto? commonPaymentResultDto;
// ── Option streams (drive listeners / section rendering) ─────────────────
@override final  Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> summaryBeneficiaryByIdFailureOrSuccessOption;
@override final  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summarySourceCurrencyListFailureOrSuccessOption;
@override final  Option<Either<SummaryFailure, SummaryCurrencyListDto>> summaryDestinationCurrencyListFailureOrSuccessOption;
@override final  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedSourceAmountFailureOrSuccessOption;
@override final  Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedDestinationAmountFailureOrSuccessOption;
@override final  Option<Either<SummaryFailure, SummaryPaymentMethodDto>> summaryPaymentMethodFailureOrSuccessOption;
@override final  Option<Either<SummaryFailure, SummaryTemporarySessionDto>> summaryTemporarySessionFailureOrSuccessOption;
@override final  Option<Either<SummaryFailure, SummaryStatusEnquiryDto>> summaryStatusEnquiryFailureOrSuccessOption;

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryStateCopyWith<_SummaryState> get copyWith => __$SummaryStateCopyWithImpl<_SummaryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryState&&(identical(other.isInitialLoading, isInitialLoading) || other.isInitialLoading == isInitialLoading)&&(identical(other.isBeneficiaryLoading, isBeneficiaryLoading) || other.isBeneficiaryLoading == isBeneficiaryLoading)&&(identical(other.isPaymentMethodLoading, isPaymentMethodLoading) || other.isPaymentMethodLoading == isPaymentMethodLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isRateLoading, isRateLoading) || other.isRateLoading == isRateLoading)&&(identical(other.isSourceAmountCalculating, isSourceAmountCalculating) || other.isSourceAmountCalculating == isSourceAmountCalculating)&&(identical(other.isDestinationAmountCalculating, isDestinationAmountCalculating) || other.isDestinationAmountCalculating == isDestinationAmountCalculating)&&(identical(other.lastRawSourceAmount, lastRawSourceAmount) || other.lastRawSourceAmount == lastRawSourceAmount)&&(identical(other.lastRawDestinationAmount, lastRawDestinationAmount) || other.lastRawDestinationAmount == lastRawDestinationAmount)&&(identical(other.isLastInputSource, isLastInputSource) || other.isLastInputSource == isLastInputSource)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.beneficiaryFailure, beneficiaryFailure) || other.beneficiaryFailure == beneficiaryFailure)&&(identical(other.paymentMethodFailure, paymentMethodFailure) || other.paymentMethodFailure == paymentMethodFailure)&&(identical(other.summaryBeneficiaryByIdDto, summaryBeneficiaryByIdDto) || other.summaryBeneficiaryByIdDto == summaryBeneficiaryByIdDto)&&(identical(other.commonSendMoneyDto, commonSendMoneyDto) || other.commonSendMoneyDto == commonSendMoneyDto)&&(identical(other.commonSourceSelectableDto, commonSourceSelectableDto) || other.commonSourceSelectableDto == commonSourceSelectableDto)&&(identical(other.selectedCommonSourceItem, selectedCommonSourceItem) || other.selectedCommonSourceItem == selectedCommonSourceItem)&&(identical(other.commonDestinationSelectableDto, commonDestinationSelectableDto) || other.commonDestinationSelectableDto == commonDestinationSelectableDto)&&(identical(other.selectedCommonDestinationItem, selectedCommonDestinationItem) || other.selectedCommonDestinationItem == selectedCommonDestinationItem)&&(identical(other.commonPaymentMethodSelectableDto, commonPaymentMethodSelectableDto) || other.commonPaymentMethodSelectableDto == commonPaymentMethodSelectableDto)&&(identical(other.selectedPaymentMethodItem, selectedPaymentMethodItem) || other.selectedPaymentMethodItem == selectedPaymentMethodItem)&&(identical(other.summaryPaymentMethodDto, summaryPaymentMethodDto) || other.summaryPaymentMethodDto == summaryPaymentMethodDto)&&(identical(other.summaryTemporarySessionDto, summaryTemporarySessionDto) || other.summaryTemporarySessionDto == summaryTemporarySessionDto)&&(identical(other.commonPaymentResultDto, commonPaymentResultDto) || other.commonPaymentResultDto == commonPaymentResultDto)&&(identical(other.summaryBeneficiaryByIdFailureOrSuccessOption, summaryBeneficiaryByIdFailureOrSuccessOption) || other.summaryBeneficiaryByIdFailureOrSuccessOption == summaryBeneficiaryByIdFailureOrSuccessOption)&&(identical(other.summarySourceCurrencyListFailureOrSuccessOption, summarySourceCurrencyListFailureOrSuccessOption) || other.summarySourceCurrencyListFailureOrSuccessOption == summarySourceCurrencyListFailureOrSuccessOption)&&(identical(other.summaryDestinationCurrencyListFailureOrSuccessOption, summaryDestinationCurrencyListFailureOrSuccessOption) || other.summaryDestinationCurrencyListFailureOrSuccessOption == summaryDestinationCurrencyListFailureOrSuccessOption)&&(identical(other.summaryCalculatedSourceAmountFailureOrSuccessOption, summaryCalculatedSourceAmountFailureOrSuccessOption) || other.summaryCalculatedSourceAmountFailureOrSuccessOption == summaryCalculatedSourceAmountFailureOrSuccessOption)&&(identical(other.summaryCalculatedDestinationAmountFailureOrSuccessOption, summaryCalculatedDestinationAmountFailureOrSuccessOption) || other.summaryCalculatedDestinationAmountFailureOrSuccessOption == summaryCalculatedDestinationAmountFailureOrSuccessOption)&&(identical(other.summaryPaymentMethodFailureOrSuccessOption, summaryPaymentMethodFailureOrSuccessOption) || other.summaryPaymentMethodFailureOrSuccessOption == summaryPaymentMethodFailureOrSuccessOption)&&(identical(other.summaryTemporarySessionFailureOrSuccessOption, summaryTemporarySessionFailureOrSuccessOption) || other.summaryTemporarySessionFailureOrSuccessOption == summaryTemporarySessionFailureOrSuccessOption)&&(identical(other.summaryStatusEnquiryFailureOrSuccessOption, summaryStatusEnquiryFailureOrSuccessOption) || other.summaryStatusEnquiryFailureOrSuccessOption == summaryStatusEnquiryFailureOrSuccessOption));
}


@override
int get hashCode => Object.hashAll([runtimeType,isInitialLoading,isBeneficiaryLoading,isPaymentMethodLoading,isSubmitting,isRateLoading,isSourceAmountCalculating,isDestinationAmountCalculating,lastRawSourceAmount,lastRawDestinationAmount,isLastInputSource,beneficiaryId,beneficiaryFailure,paymentMethodFailure,summaryBeneficiaryByIdDto,commonSendMoneyDto,commonSourceSelectableDto,selectedCommonSourceItem,commonDestinationSelectableDto,selectedCommonDestinationItem,commonPaymentMethodSelectableDto,selectedPaymentMethodItem,summaryPaymentMethodDto,summaryTemporarySessionDto,commonPaymentResultDto,summaryBeneficiaryByIdFailureOrSuccessOption,summarySourceCurrencyListFailureOrSuccessOption,summaryDestinationCurrencyListFailureOrSuccessOption,summaryCalculatedSourceAmountFailureOrSuccessOption,summaryCalculatedDestinationAmountFailureOrSuccessOption,summaryPaymentMethodFailureOrSuccessOption,summaryTemporarySessionFailureOrSuccessOption,summaryStatusEnquiryFailureOrSuccessOption]);

@override
String toString() {
  return 'SummaryState(isInitialLoading: $isInitialLoading, isBeneficiaryLoading: $isBeneficiaryLoading, isPaymentMethodLoading: $isPaymentMethodLoading, isSubmitting: $isSubmitting, isRateLoading: $isRateLoading, isSourceAmountCalculating: $isSourceAmountCalculating, isDestinationAmountCalculating: $isDestinationAmountCalculating, lastRawSourceAmount: $lastRawSourceAmount, lastRawDestinationAmount: $lastRawDestinationAmount, isLastInputSource: $isLastInputSource, beneficiaryId: $beneficiaryId, beneficiaryFailure: $beneficiaryFailure, paymentMethodFailure: $paymentMethodFailure, summaryBeneficiaryByIdDto: $summaryBeneficiaryByIdDto, commonSendMoneyDto: $commonSendMoneyDto, commonSourceSelectableDto: $commonSourceSelectableDto, selectedCommonSourceItem: $selectedCommonSourceItem, commonDestinationSelectableDto: $commonDestinationSelectableDto, selectedCommonDestinationItem: $selectedCommonDestinationItem, commonPaymentMethodSelectableDto: $commonPaymentMethodSelectableDto, selectedPaymentMethodItem: $selectedPaymentMethodItem, summaryPaymentMethodDto: $summaryPaymentMethodDto, summaryTemporarySessionDto: $summaryTemporarySessionDto, commonPaymentResultDto: $commonPaymentResultDto, summaryBeneficiaryByIdFailureOrSuccessOption: $summaryBeneficiaryByIdFailureOrSuccessOption, summarySourceCurrencyListFailureOrSuccessOption: $summarySourceCurrencyListFailureOrSuccessOption, summaryDestinationCurrencyListFailureOrSuccessOption: $summaryDestinationCurrencyListFailureOrSuccessOption, summaryCalculatedSourceAmountFailureOrSuccessOption: $summaryCalculatedSourceAmountFailureOrSuccessOption, summaryCalculatedDestinationAmountFailureOrSuccessOption: $summaryCalculatedDestinationAmountFailureOrSuccessOption, summaryPaymentMethodFailureOrSuccessOption: $summaryPaymentMethodFailureOrSuccessOption, summaryTemporarySessionFailureOrSuccessOption: $summaryTemporarySessionFailureOrSuccessOption, summaryStatusEnquiryFailureOrSuccessOption: $summaryStatusEnquiryFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$SummaryStateCopyWith<$Res> implements $SummaryStateCopyWith<$Res> {
  factory _$SummaryStateCopyWith(_SummaryState value, $Res Function(_SummaryState) _then) = __$SummaryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isInitialLoading, bool isBeneficiaryLoading, bool isPaymentMethodLoading, bool isSubmitting, bool isRateLoading, bool isSourceAmountCalculating, bool isDestinationAmountCalculating, String lastRawSourceAmount, String lastRawDestinationAmount, bool isLastInputSource, String? beneficiaryId, SummaryFailure? beneficiaryFailure, SummaryFailure? paymentMethodFailure, SummaryBeneficiaryByIdDto? summaryBeneficiaryByIdDto, CommonSendMoneyDto commonSendMoneyDto, CommonSelectableDto? commonSourceSelectableDto, CommonSelectableItem? selectedCommonSourceItem, CommonSelectableDto? commonDestinationSelectableDto, CommonSelectableItem? selectedCommonDestinationItem, CommonSelectableDto? commonPaymentMethodSelectableDto, CommonSelectableItem? selectedPaymentMethodItem, SummaryPaymentMethodDto? summaryPaymentMethodDto, SummaryTemporarySessionDto? summaryTemporarySessionDto, CommonPaymentResultDto? commonPaymentResultDto, Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> summaryBeneficiaryByIdFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCurrencyListDto>> summarySourceCurrencyListFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCurrencyListDto>> summaryDestinationCurrencyListFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedSourceAmountFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryCalculateAmountDto>> summaryCalculatedDestinationAmountFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryPaymentMethodDto>> summaryPaymentMethodFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryTemporarySessionDto>> summaryTemporarySessionFailureOrSuccessOption, Option<Either<SummaryFailure, SummaryStatusEnquiryDto>> summaryStatusEnquiryFailureOrSuccessOption
});


@override $SummaryFailureCopyWith<$Res>? get beneficiaryFailure;@override $SummaryFailureCopyWith<$Res>? get paymentMethodFailure;@override $SummaryBeneficiaryByIdDtoCopyWith<$Res>? get summaryBeneficiaryByIdDto;@override $CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto;@override $CommonSelectableDtoCopyWith<$Res>? get commonSourceSelectableDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedCommonSourceItem;@override $CommonSelectableDtoCopyWith<$Res>? get commonDestinationSelectableDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedCommonDestinationItem;@override $CommonSelectableDtoCopyWith<$Res>? get commonPaymentMethodSelectableDto;@override $CommonSelectableItemCopyWith<$Res>? get selectedPaymentMethodItem;@override $SummaryPaymentMethodDtoCopyWith<$Res>? get summaryPaymentMethodDto;@override $SummaryTemporarySessionDtoCopyWith<$Res>? get summaryTemporarySessionDto;@override $CommonPaymentResultDtoCopyWith<$Res>? get commonPaymentResultDto;

}
/// @nodoc
class __$SummaryStateCopyWithImpl<$Res>
    implements _$SummaryStateCopyWith<$Res> {
  __$SummaryStateCopyWithImpl(this._self, this._then);

  final _SummaryState _self;
  final $Res Function(_SummaryState) _then;

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isInitialLoading = null,Object? isBeneficiaryLoading = null,Object? isPaymentMethodLoading = null,Object? isSubmitting = null,Object? isRateLoading = null,Object? isSourceAmountCalculating = null,Object? isDestinationAmountCalculating = null,Object? lastRawSourceAmount = null,Object? lastRawDestinationAmount = null,Object? isLastInputSource = null,Object? beneficiaryId = freezed,Object? beneficiaryFailure = freezed,Object? paymentMethodFailure = freezed,Object? summaryBeneficiaryByIdDto = freezed,Object? commonSendMoneyDto = null,Object? commonSourceSelectableDto = freezed,Object? selectedCommonSourceItem = freezed,Object? commonDestinationSelectableDto = freezed,Object? selectedCommonDestinationItem = freezed,Object? commonPaymentMethodSelectableDto = freezed,Object? selectedPaymentMethodItem = freezed,Object? summaryPaymentMethodDto = freezed,Object? summaryTemporarySessionDto = freezed,Object? commonPaymentResultDto = freezed,Object? summaryBeneficiaryByIdFailureOrSuccessOption = null,Object? summarySourceCurrencyListFailureOrSuccessOption = null,Object? summaryDestinationCurrencyListFailureOrSuccessOption = null,Object? summaryCalculatedSourceAmountFailureOrSuccessOption = null,Object? summaryCalculatedDestinationAmountFailureOrSuccessOption = null,Object? summaryPaymentMethodFailureOrSuccessOption = null,Object? summaryTemporarySessionFailureOrSuccessOption = null,Object? summaryStatusEnquiryFailureOrSuccessOption = null,}) {
  return _then(_SummaryState(
isInitialLoading: null == isInitialLoading ? _self.isInitialLoading : isInitialLoading // ignore: cast_nullable_to_non_nullable
as bool,isBeneficiaryLoading: null == isBeneficiaryLoading ? _self.isBeneficiaryLoading : isBeneficiaryLoading // ignore: cast_nullable_to_non_nullable
as bool,isPaymentMethodLoading: null == isPaymentMethodLoading ? _self.isPaymentMethodLoading : isPaymentMethodLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isRateLoading: null == isRateLoading ? _self.isRateLoading : isRateLoading // ignore: cast_nullable_to_non_nullable
as bool,isSourceAmountCalculating: null == isSourceAmountCalculating ? _self.isSourceAmountCalculating : isSourceAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,isDestinationAmountCalculating: null == isDestinationAmountCalculating ? _self.isDestinationAmountCalculating : isDestinationAmountCalculating // ignore: cast_nullable_to_non_nullable
as bool,lastRawSourceAmount: null == lastRawSourceAmount ? _self.lastRawSourceAmount : lastRawSourceAmount // ignore: cast_nullable_to_non_nullable
as String,lastRawDestinationAmount: null == lastRawDestinationAmount ? _self.lastRawDestinationAmount : lastRawDestinationAmount // ignore: cast_nullable_to_non_nullable
as String,isLastInputSource: null == isLastInputSource ? _self.isLastInputSource : isLastInputSource // ignore: cast_nullable_to_non_nullable
as bool,beneficiaryId: freezed == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFailure: freezed == beneficiaryFailure ? _self.beneficiaryFailure : beneficiaryFailure // ignore: cast_nullable_to_non_nullable
as SummaryFailure?,paymentMethodFailure: freezed == paymentMethodFailure ? _self.paymentMethodFailure : paymentMethodFailure // ignore: cast_nullable_to_non_nullable
as SummaryFailure?,summaryBeneficiaryByIdDto: freezed == summaryBeneficiaryByIdDto ? _self.summaryBeneficiaryByIdDto : summaryBeneficiaryByIdDto // ignore: cast_nullable_to_non_nullable
as SummaryBeneficiaryByIdDto?,commonSendMoneyDto: null == commonSendMoneyDto ? _self.commonSendMoneyDto : commonSendMoneyDto // ignore: cast_nullable_to_non_nullable
as CommonSendMoneyDto,commonSourceSelectableDto: freezed == commonSourceSelectableDto ? _self.commonSourceSelectableDto : commonSourceSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonSourceItem: freezed == selectedCommonSourceItem ? _self.selectedCommonSourceItem : selectedCommonSourceItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonDestinationSelectableDto: freezed == commonDestinationSelectableDto ? _self.commonDestinationSelectableDto : commonDestinationSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedCommonDestinationItem: freezed == selectedCommonDestinationItem ? _self.selectedCommonDestinationItem : selectedCommonDestinationItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,commonPaymentMethodSelectableDto: freezed == commonPaymentMethodSelectableDto ? _self.commonPaymentMethodSelectableDto : commonPaymentMethodSelectableDto // ignore: cast_nullable_to_non_nullable
as CommonSelectableDto?,selectedPaymentMethodItem: freezed == selectedPaymentMethodItem ? _self.selectedPaymentMethodItem : selectedPaymentMethodItem // ignore: cast_nullable_to_non_nullable
as CommonSelectableItem?,summaryPaymentMethodDto: freezed == summaryPaymentMethodDto ? _self.summaryPaymentMethodDto : summaryPaymentMethodDto // ignore: cast_nullable_to_non_nullable
as SummaryPaymentMethodDto?,summaryTemporarySessionDto: freezed == summaryTemporarySessionDto ? _self.summaryTemporarySessionDto : summaryTemporarySessionDto // ignore: cast_nullable_to_non_nullable
as SummaryTemporarySessionDto?,commonPaymentResultDto: freezed == commonPaymentResultDto ? _self.commonPaymentResultDto : commonPaymentResultDto // ignore: cast_nullable_to_non_nullable
as CommonPaymentResultDto?,summaryBeneficiaryByIdFailureOrSuccessOption: null == summaryBeneficiaryByIdFailureOrSuccessOption ? _self.summaryBeneficiaryByIdFailureOrSuccessOption : summaryBeneficiaryByIdFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryBeneficiaryByIdDto>>,summarySourceCurrencyListFailureOrSuccessOption: null == summarySourceCurrencyListFailureOrSuccessOption ? _self.summarySourceCurrencyListFailureOrSuccessOption : summarySourceCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCurrencyListDto>>,summaryDestinationCurrencyListFailureOrSuccessOption: null == summaryDestinationCurrencyListFailureOrSuccessOption ? _self.summaryDestinationCurrencyListFailureOrSuccessOption : summaryDestinationCurrencyListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCurrencyListDto>>,summaryCalculatedSourceAmountFailureOrSuccessOption: null == summaryCalculatedSourceAmountFailureOrSuccessOption ? _self.summaryCalculatedSourceAmountFailureOrSuccessOption : summaryCalculatedSourceAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCalculateAmountDto>>,summaryCalculatedDestinationAmountFailureOrSuccessOption: null == summaryCalculatedDestinationAmountFailureOrSuccessOption ? _self.summaryCalculatedDestinationAmountFailureOrSuccessOption : summaryCalculatedDestinationAmountFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryCalculateAmountDto>>,summaryPaymentMethodFailureOrSuccessOption: null == summaryPaymentMethodFailureOrSuccessOption ? _self.summaryPaymentMethodFailureOrSuccessOption : summaryPaymentMethodFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryPaymentMethodDto>>,summaryTemporarySessionFailureOrSuccessOption: null == summaryTemporarySessionFailureOrSuccessOption ? _self.summaryTemporarySessionFailureOrSuccessOption : summaryTemporarySessionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryTemporarySessionDto>>,summaryStatusEnquiryFailureOrSuccessOption: null == summaryStatusEnquiryFailureOrSuccessOption ? _self.summaryStatusEnquiryFailureOrSuccessOption : summaryStatusEnquiryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<SummaryFailure, SummaryStatusEnquiryDto>>,
  ));
}

/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryFailureCopyWith<$Res>? get beneficiaryFailure {
    if (_self.beneficiaryFailure == null) {
    return null;
  }

  return $SummaryFailureCopyWith<$Res>(_self.beneficiaryFailure!, (value) {
    return _then(_self.copyWith(beneficiaryFailure: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryFailureCopyWith<$Res>? get paymentMethodFailure {
    if (_self.paymentMethodFailure == null) {
    return null;
  }

  return $SummaryFailureCopyWith<$Res>(_self.paymentMethodFailure!, (value) {
    return _then(_self.copyWith(paymentMethodFailure: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryBeneficiaryByIdDtoCopyWith<$Res>? get summaryBeneficiaryByIdDto {
    if (_self.summaryBeneficiaryByIdDto == null) {
    return null;
  }

  return $SummaryBeneficiaryByIdDtoCopyWith<$Res>(_self.summaryBeneficiaryByIdDto!, (value) {
    return _then(_self.copyWith(summaryBeneficiaryByIdDto: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSendMoneyDtoCopyWith<$Res> get commonSendMoneyDto {
  
  return $CommonSendMoneyDtoCopyWith<$Res>(_self.commonSendMoneyDto, (value) {
    return _then(_self.copyWith(commonSendMoneyDto: value));
  });
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonSelectableDtoCopyWith<$Res>? get commonPaymentMethodSelectableDto {
    if (_self.commonPaymentMethodSelectableDto == null) {
    return null;
  }

  return $CommonSelectableDtoCopyWith<$Res>(_self.commonPaymentMethodSelectableDto!, (value) {
    return _then(_self.copyWith(commonPaymentMethodSelectableDto: value));
  });
}/// Create a copy of SummaryState
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
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryPaymentMethodDtoCopyWith<$Res>? get summaryPaymentMethodDto {
    if (_self.summaryPaymentMethodDto == null) {
    return null;
  }

  return $SummaryPaymentMethodDtoCopyWith<$Res>(_self.summaryPaymentMethodDto!, (value) {
    return _then(_self.copyWith(summaryPaymentMethodDto: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryTemporarySessionDtoCopyWith<$Res>? get summaryTemporarySessionDto {
    if (_self.summaryTemporarySessionDto == null) {
    return null;
  }

  return $SummaryTemporarySessionDtoCopyWith<$Res>(_self.summaryTemporarySessionDto!, (value) {
    return _then(_self.copyWith(summaryTemporarySessionDto: value));
  });
}/// Create a copy of SummaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonPaymentResultDtoCopyWith<$Res>? get commonPaymentResultDto {
    if (_self.commonPaymentResultDto == null) {
    return null;
  }

  return $CommonPaymentResultDtoCopyWith<$Res>(_self.commonPaymentResultDto!, (value) {
    return _then(_self.copyWith(commonPaymentResultDto: value));
  });
}
}

// dart format on
