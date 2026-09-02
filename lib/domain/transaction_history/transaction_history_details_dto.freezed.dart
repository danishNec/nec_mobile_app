// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionHistoryDetailsDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;
/// Create a copy of TransactionHistoryDetailsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryDetailsDtoCopyWith<TransactionHistoryDetailsDto> get copyWith => _$TransactionHistoryDetailsDtoCopyWithImpl<TransactionHistoryDetailsDto>(this as TransactionHistoryDetailsDto, _$identity);

  /// Serializes this TransactionHistoryDetailsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryDetailsDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'TransactionHistoryDetailsDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryDetailsDtoCopyWith<$Res>  {
  factory $TransactionHistoryDetailsDtoCopyWith(TransactionHistoryDetailsDto value, $Res Function(TransactionHistoryDetailsDto) _then) = _$TransactionHistoryDetailsDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$TransactionHistoryDetailsDtoCopyWithImpl<$Res>
    implements $TransactionHistoryDetailsDtoCopyWith<$Res> {
  _$TransactionHistoryDetailsDtoCopyWithImpl(this._self, this._then);

  final TransactionHistoryDetailsDto _self;
  final $Res Function(TransactionHistoryDetailsDto) _then;

/// Create a copy of TransactionHistoryDetailsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of TransactionHistoryDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionHistoryDetailsDto].
extension TransactionHistoryDetailsDtoPatterns on TransactionHistoryDetailsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryDetailsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryDetailsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryDetailsDto value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryDetailsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryDetailsDto value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryDetailsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryDetailsDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryDetailsDto():
return $default(_that.success,_that.message,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryDetailsDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionHistoryDetailsDto implements TransactionHistoryDetailsDto {
  const _TransactionHistoryDetailsDto({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data});
  factory _TransactionHistoryDetailsDto.fromJson(Map<String, dynamic> json) => _$TransactionHistoryDetailsDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of TransactionHistoryDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryDetailsDtoCopyWith<_TransactionHistoryDetailsDto> get copyWith => __$TransactionHistoryDetailsDtoCopyWithImpl<_TransactionHistoryDetailsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionHistoryDetailsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryDetailsDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'TransactionHistoryDetailsDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryDetailsDtoCopyWith<$Res> implements $TransactionHistoryDetailsDtoCopyWith<$Res> {
  factory _$TransactionHistoryDetailsDtoCopyWith(_TransactionHistoryDetailsDto value, $Res Function(_TransactionHistoryDetailsDto) _then) = __$TransactionHistoryDetailsDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$TransactionHistoryDetailsDtoCopyWithImpl<$Res>
    implements _$TransactionHistoryDetailsDtoCopyWith<$Res> {
  __$TransactionHistoryDetailsDtoCopyWithImpl(this._self, this._then);

  final _TransactionHistoryDetailsDto _self;
  final $Res Function(_TransactionHistoryDetailsDto) _then;

/// Create a copy of TransactionHistoryDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_TransactionHistoryDetailsDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of TransactionHistoryDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: "transaction") Transaction? get transaction;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'Data(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "transaction") Transaction? transaction
});


$TransactionCopyWith<$Res>? get transaction;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = freezed,}) {
  return _then(_self.copyWith(
transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction")  Transaction? transaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.transaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction")  Transaction? transaction)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.transaction);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "transaction")  Transaction? transaction)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.transaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "transaction") this.transaction});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "transaction") final  Transaction? transaction;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.transaction, transaction) || other.transaction == transaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'Data(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "transaction") Transaction? transaction
});


@override $TransactionCopyWith<$Res>? get transaction;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = freezed,}) {
  return _then(_Data(
transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as Transaction?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $TransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}


/// @nodoc
mixin _$Transaction {

@JsonKey(name: "transaction_reference") int? get transactionReference;@JsonKey(name: "beneficiary_name") String? get beneficiaryName;@JsonKey(name: "module_code") int? get moduleCode;@JsonKey(name: "location_code") int? get locationCode;@JsonKey(name: "branch_name") String? get branchName;@JsonKey(name: "routing_bank_code") int? get routingBankCode;@JsonKey(name: "disbursal_mode_id") int? get disbursalModeId;@JsonKey(name: "beneficiary_state_id") int? get beneficiaryStateId;@JsonKey(name: "beneficiary_city_id") int? get beneficiaryCityId;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "member_code") int? get memberCode;@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "transaction_date") DateTime? get transactionDate;@JsonKey(name: "source_currency_code") String? get sourceCurrencyCode;@JsonKey(name: "source_currency_name") String? get sourceCurrencyName;@JsonKey(name: "destination_currency_code") String? get destinationCurrencyCode;@JsonKey(name: "destination_currency_name") String? get destinationCurrencyName;@JsonKey(name: "source_country_code") String? get sourceCountryCode;@JsonKey(name: "source_country_name") String? get sourceCountryName;@JsonKey(name: "destination_country_code") String? get destinationCountryCode;@JsonKey(name: "destination_country_name") String? get destinationCountryName;@JsonKey(name: "source_amount") int? get sourceAmount;@JsonKey(name: "local_amount") int? get localAmount;@JsonKey(name: "rate") double? get rate;@JsonKey(name: "destination_amount") int? get destinationAmount;@JsonKey(name: "bene_pay") double? get benePay;@JsonKey(name: "f_c_commission") int? get fCCommission;@JsonKey(name: "commission") int? get commission;@JsonKey(name: "tax_percentage") int? get taxPercentage;@JsonKey(name: "tax_collected") int? get taxCollected;@JsonKey(name: "pay_amount") int? get payAmount;@JsonKey(name: "receive_amount") double? get receiveAmount;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "product") String? get product;@JsonKey(name: "transfer_mode_code") String? get transferModeCode;@JsonKey(name: "transfer_mode") String? get transferMode;@JsonKey(name: "payment_mode") String? get paymentMode;@JsonKey(name: "route_type") String? get routeType;@JsonKey(name: "route_code") String? get routeCode;@JsonKey(name: "purpose") String? get purpose;@JsonKey(name: "purpose_code") String? get purposeCode;@JsonKey(name: "income_source") String? get incomeSource;@JsonKey(name: "income_source_code") String? get incomeSourceCode;@JsonKey(name: "status") String? get status;@JsonKey(name: "app_status") String? get appStatus;@JsonKey(name: "i_s_download") bool? get iSDownload;@JsonKey(name: "created_on") DateTime? get createdOn;@JsonKey(name: "beneficiary_by_id") BeneficiaryById? get beneficiaryById;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.locationCode, locationCode) || other.locationCode == locationCode)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.routingBankCode, routingBankCode) || other.routingBankCode == routingBankCode)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.beneficiaryStateId, beneficiaryStateId) || other.beneficiaryStateId == beneficiaryStateId)&&(identical(other.beneficiaryCityId, beneficiaryCityId) || other.beneficiaryCityId == beneficiaryCityId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.sourceCurrencyCode, sourceCurrencyCode) || other.sourceCurrencyCode == sourceCurrencyCode)&&(identical(other.sourceCurrencyName, sourceCurrencyName) || other.sourceCurrencyName == sourceCurrencyName)&&(identical(other.destinationCurrencyCode, destinationCurrencyCode) || other.destinationCurrencyCode == destinationCurrencyCode)&&(identical(other.destinationCurrencyName, destinationCurrencyName) || other.destinationCurrencyName == destinationCurrencyName)&&(identical(other.sourceCountryCode, sourceCountryCode) || other.sourceCountryCode == sourceCountryCode)&&(identical(other.sourceCountryName, sourceCountryName) || other.sourceCountryName == sourceCountryName)&&(identical(other.destinationCountryCode, destinationCountryCode) || other.destinationCountryCode == destinationCountryCode)&&(identical(other.destinationCountryName, destinationCountryName) || other.destinationCountryName == destinationCountryName)&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount)&&(identical(other.localAmount, localAmount) || other.localAmount == localAmount)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount)&&(identical(other.benePay, benePay) || other.benePay == benePay)&&(identical(other.fCCommission, fCCommission) || other.fCCommission == fCCommission)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.product, product) || other.product == product)&&(identical(other.transferModeCode, transferModeCode) || other.transferModeCode == transferModeCode)&&(identical(other.transferMode, transferMode) || other.transferMode == transferMode)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.purposeCode, purposeCode) || other.purposeCode == purposeCode)&&(identical(other.incomeSource, incomeSource) || other.incomeSource == incomeSource)&&(identical(other.incomeSourceCode, incomeSourceCode) || other.incomeSourceCode == incomeSourceCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.iSDownload, iSDownload) || other.iSDownload == iSDownload)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.beneficiaryById, beneficiaryById) || other.beneficiaryById == beneficiaryById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,transactionReference,beneficiaryName,moduleCode,locationCode,branchName,routingBankCode,disbursalModeId,beneficiaryStateId,beneficiaryCityId,beneficiaryCode,memberCode,eId,transactionDate,sourceCurrencyCode,sourceCurrencyName,destinationCurrencyCode,destinationCurrencyName,sourceCountryCode,sourceCountryName,destinationCountryCode,destinationCountryName,sourceAmount,localAmount,rate,destinationAmount,benePay,fCCommission,commission,taxPercentage,taxCollected,payAmount,receiveAmount,productCode,product,transferModeCode,transferMode,paymentMode,routeType,routeCode,purpose,purposeCode,incomeSource,incomeSourceCode,status,appStatus,iSDownload,createdOn,beneficiaryById]);

@override
String toString() {
  return 'Transaction(transactionReference: $transactionReference, beneficiaryName: $beneficiaryName, moduleCode: $moduleCode, locationCode: $locationCode, branchName: $branchName, routingBankCode: $routingBankCode, disbursalModeId: $disbursalModeId, beneficiaryStateId: $beneficiaryStateId, beneficiaryCityId: $beneficiaryCityId, beneficiaryCode: $beneficiaryCode, memberCode: $memberCode, eId: $eId, transactionDate: $transactionDate, sourceCurrencyCode: $sourceCurrencyCode, sourceCurrencyName: $sourceCurrencyName, destinationCurrencyCode: $destinationCurrencyCode, destinationCurrencyName: $destinationCurrencyName, sourceCountryCode: $sourceCountryCode, sourceCountryName: $sourceCountryName, destinationCountryCode: $destinationCountryCode, destinationCountryName: $destinationCountryName, sourceAmount: $sourceAmount, localAmount: $localAmount, rate: $rate, destinationAmount: $destinationAmount, benePay: $benePay, fCCommission: $fCCommission, commission: $commission, taxPercentage: $taxPercentage, taxCollected: $taxCollected, payAmount: $payAmount, receiveAmount: $receiveAmount, productCode: $productCode, product: $product, transferModeCode: $transferModeCode, transferMode: $transferMode, paymentMode: $paymentMode, routeType: $routeType, routeCode: $routeCode, purpose: $purpose, purposeCode: $purposeCode, incomeSource: $incomeSource, incomeSourceCode: $incomeSourceCode, status: $status, appStatus: $appStatus, iSDownload: $iSDownload, createdOn: $createdOn, beneficiaryById: $beneficiaryById)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "beneficiary_name") String? beneficiaryName,@JsonKey(name: "module_code") int? moduleCode,@JsonKey(name: "location_code") int? locationCode,@JsonKey(name: "branch_name") String? branchName,@JsonKey(name: "routing_bank_code") int? routingBankCode,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "beneficiary_state_id") int? beneficiaryStateId,@JsonKey(name: "beneficiary_city_id") int? beneficiaryCityId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "e_id") String? eId,@JsonKey(name: "transaction_date") DateTime? transactionDate,@JsonKey(name: "source_currency_code") String? sourceCurrencyCode,@JsonKey(name: "source_currency_name") String? sourceCurrencyName,@JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,@JsonKey(name: "destination_currency_name") String? destinationCurrencyName,@JsonKey(name: "source_country_code") String? sourceCountryCode,@JsonKey(name: "source_country_name") String? sourceCountryName,@JsonKey(name: "destination_country_code") String? destinationCountryCode,@JsonKey(name: "destination_country_name") String? destinationCountryName,@JsonKey(name: "source_amount") int? sourceAmount,@JsonKey(name: "local_amount") int? localAmount,@JsonKey(name: "rate") double? rate,@JsonKey(name: "destination_amount") int? destinationAmount,@JsonKey(name: "bene_pay") double? benePay,@JsonKey(name: "f_c_commission") int? fCCommission,@JsonKey(name: "commission") int? commission,@JsonKey(name: "tax_percentage") int? taxPercentage,@JsonKey(name: "tax_collected") int? taxCollected,@JsonKey(name: "pay_amount") int? payAmount,@JsonKey(name: "receive_amount") double? receiveAmount,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product") String? product,@JsonKey(name: "transfer_mode_code") String? transferModeCode,@JsonKey(name: "transfer_mode") String? transferMode,@JsonKey(name: "payment_mode") String? paymentMode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "purpose") String? purpose,@JsonKey(name: "purpose_code") String? purposeCode,@JsonKey(name: "income_source") String? incomeSource,@JsonKey(name: "income_source_code") String? incomeSourceCode,@JsonKey(name: "status") String? status,@JsonKey(name: "app_status") String? appStatus,@JsonKey(name: "i_s_download") bool? iSDownload,@JsonKey(name: "created_on") DateTime? createdOn,@JsonKey(name: "beneficiary_by_id") BeneficiaryById? beneficiaryById
});


$BeneficiaryByIdCopyWith<$Res>? get beneficiaryById;

}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionReference = freezed,Object? beneficiaryName = freezed,Object? moduleCode = freezed,Object? locationCode = freezed,Object? branchName = freezed,Object? routingBankCode = freezed,Object? disbursalModeId = freezed,Object? beneficiaryStateId = freezed,Object? beneficiaryCityId = freezed,Object? beneficiaryCode = freezed,Object? memberCode = freezed,Object? eId = freezed,Object? transactionDate = freezed,Object? sourceCurrencyCode = freezed,Object? sourceCurrencyName = freezed,Object? destinationCurrencyCode = freezed,Object? destinationCurrencyName = freezed,Object? sourceCountryCode = freezed,Object? sourceCountryName = freezed,Object? destinationCountryCode = freezed,Object? destinationCountryName = freezed,Object? sourceAmount = freezed,Object? localAmount = freezed,Object? rate = freezed,Object? destinationAmount = freezed,Object? benePay = freezed,Object? fCCommission = freezed,Object? commission = freezed,Object? taxPercentage = freezed,Object? taxCollected = freezed,Object? payAmount = freezed,Object? receiveAmount = freezed,Object? productCode = freezed,Object? product = freezed,Object? transferModeCode = freezed,Object? transferMode = freezed,Object? paymentMode = freezed,Object? routeType = freezed,Object? routeCode = freezed,Object? purpose = freezed,Object? purposeCode = freezed,Object? incomeSource = freezed,Object? incomeSourceCode = freezed,Object? status = freezed,Object? appStatus = freezed,Object? iSDownload = freezed,Object? createdOn = freezed,Object? beneficiaryById = freezed,}) {
  return _then(_self.copyWith(
transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,moduleCode: freezed == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as int?,locationCode: freezed == locationCode ? _self.locationCode : locationCode // ignore: cast_nullable_to_non_nullable
as int?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,routingBankCode: freezed == routingBankCode ? _self.routingBankCode : routingBankCode // ignore: cast_nullable_to_non_nullable
as int?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryStateId: freezed == beneficiaryStateId ? _self.beneficiaryStateId : beneficiaryStateId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryCityId: freezed == beneficiaryCityId ? _self.beneficiaryCityId : beneficiaryCityId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,sourceCurrencyCode: freezed == sourceCurrencyCode ? _self.sourceCurrencyCode : sourceCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCurrencyName: freezed == sourceCurrencyName ? _self.sourceCurrencyName : sourceCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyCode: freezed == destinationCurrencyCode ? _self.destinationCurrencyCode : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyName: freezed == destinationCurrencyName ? _self.destinationCurrencyName : destinationCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryCode: freezed == sourceCountryCode ? _self.sourceCountryCode : sourceCountryCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryName: freezed == sourceCountryName ? _self.sourceCountryName : sourceCountryName // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryCode: freezed == destinationCountryCode ? _self.destinationCountryCode : destinationCountryCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryName: freezed == destinationCountryName ? _self.destinationCountryName : destinationCountryName // ignore: cast_nullable_to_non_nullable
as String?,sourceAmount: freezed == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as int?,localAmount: freezed == localAmount ? _self.localAmount : localAmount // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,destinationAmount: freezed == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as int?,benePay: freezed == benePay ? _self.benePay : benePay // ignore: cast_nullable_to_non_nullable
as double?,fCCommission: freezed == fCCommission ? _self.fCCommission : fCCommission // ignore: cast_nullable_to_non_nullable
as int?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as int?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int?,taxCollected: freezed == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as int?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as int?,receiveAmount: freezed == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as double?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String?,transferModeCode: freezed == transferModeCode ? _self.transferModeCode : transferModeCode // ignore: cast_nullable_to_non_nullable
as String?,transferMode: freezed == transferMode ? _self.transferMode : transferMode // ignore: cast_nullable_to_non_nullable
as String?,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,purposeCode: freezed == purposeCode ? _self.purposeCode : purposeCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSource: freezed == incomeSource ? _self.incomeSource : incomeSource // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceCode: freezed == incomeSourceCode ? _self.incomeSourceCode : incomeSourceCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as String?,iSDownload: freezed == iSDownload ? _self.iSDownload : iSDownload // ignore: cast_nullable_to_non_nullable
as bool?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as DateTime?,beneficiaryById: freezed == beneficiaryById ? _self.beneficiaryById : beneficiaryById // ignore: cast_nullable_to_non_nullable
as BeneficiaryById?,
  ));
}
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryByIdCopyWith<$Res>? get beneficiaryById {
    if (_self.beneficiaryById == null) {
    return null;
  }

  return $BeneficiaryByIdCopyWith<$Res>(_self.beneficiaryById!, (value) {
    return _then(_self.copyWith(beneficiaryById: value));
  });
}
}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "location_code")  int? locationCode, @JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "beneficiary_state_id")  int? beneficiaryStateId, @JsonKey(name: "beneficiary_city_id")  int? beneficiaryCityId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "e_id")  String? eId, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "source_currency_name")  String? sourceCurrencyName, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "destination_currency_name")  String? destinationCurrencyName, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "source_country_name")  String? sourceCountryName, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "destination_country_name")  String? destinationCountryName, @JsonKey(name: "source_amount")  int? sourceAmount, @JsonKey(name: "local_amount")  int? localAmount, @JsonKey(name: "rate")  double? rate, @JsonKey(name: "destination_amount")  int? destinationAmount, @JsonKey(name: "bene_pay")  double? benePay, @JsonKey(name: "f_c_commission")  int? fCCommission, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "tax_percentage")  int? taxPercentage, @JsonKey(name: "tax_collected")  int? taxCollected, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  double? receiveAmount, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product")  String? product, @JsonKey(name: "transfer_mode_code")  String? transferModeCode, @JsonKey(name: "transfer_mode")  String? transferMode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "purpose")  String? purpose, @JsonKey(name: "purpose_code")  String? purposeCode, @JsonKey(name: "income_source")  String? incomeSource, @JsonKey(name: "income_source_code")  String? incomeSourceCode, @JsonKey(name: "status")  String? status, @JsonKey(name: "app_status")  String? appStatus, @JsonKey(name: "i_s_download")  bool? iSDownload, @JsonKey(name: "created_on")  DateTime? createdOn, @JsonKey(name: "beneficiary_by_id")  BeneficiaryById? beneficiaryById)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.transactionReference,_that.beneficiaryName,_that.moduleCode,_that.locationCode,_that.branchName,_that.routingBankCode,_that.disbursalModeId,_that.beneficiaryStateId,_that.beneficiaryCityId,_that.beneficiaryCode,_that.memberCode,_that.eId,_that.transactionDate,_that.sourceCurrencyCode,_that.sourceCurrencyName,_that.destinationCurrencyCode,_that.destinationCurrencyName,_that.sourceCountryCode,_that.sourceCountryName,_that.destinationCountryCode,_that.destinationCountryName,_that.sourceAmount,_that.localAmount,_that.rate,_that.destinationAmount,_that.benePay,_that.fCCommission,_that.commission,_that.taxPercentage,_that.taxCollected,_that.payAmount,_that.receiveAmount,_that.productCode,_that.product,_that.transferModeCode,_that.transferMode,_that.paymentMode,_that.routeType,_that.routeCode,_that.purpose,_that.purposeCode,_that.incomeSource,_that.incomeSourceCode,_that.status,_that.appStatus,_that.iSDownload,_that.createdOn,_that.beneficiaryById);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "location_code")  int? locationCode, @JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "beneficiary_state_id")  int? beneficiaryStateId, @JsonKey(name: "beneficiary_city_id")  int? beneficiaryCityId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "e_id")  String? eId, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "source_currency_name")  String? sourceCurrencyName, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "destination_currency_name")  String? destinationCurrencyName, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "source_country_name")  String? sourceCountryName, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "destination_country_name")  String? destinationCountryName, @JsonKey(name: "source_amount")  int? sourceAmount, @JsonKey(name: "local_amount")  int? localAmount, @JsonKey(name: "rate")  double? rate, @JsonKey(name: "destination_amount")  int? destinationAmount, @JsonKey(name: "bene_pay")  double? benePay, @JsonKey(name: "f_c_commission")  int? fCCommission, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "tax_percentage")  int? taxPercentage, @JsonKey(name: "tax_collected")  int? taxCollected, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  double? receiveAmount, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product")  String? product, @JsonKey(name: "transfer_mode_code")  String? transferModeCode, @JsonKey(name: "transfer_mode")  String? transferMode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "purpose")  String? purpose, @JsonKey(name: "purpose_code")  String? purposeCode, @JsonKey(name: "income_source")  String? incomeSource, @JsonKey(name: "income_source_code")  String? incomeSourceCode, @JsonKey(name: "status")  String? status, @JsonKey(name: "app_status")  String? appStatus, @JsonKey(name: "i_s_download")  bool? iSDownload, @JsonKey(name: "created_on")  DateTime? createdOn, @JsonKey(name: "beneficiary_by_id")  BeneficiaryById? beneficiaryById)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.transactionReference,_that.beneficiaryName,_that.moduleCode,_that.locationCode,_that.branchName,_that.routingBankCode,_that.disbursalModeId,_that.beneficiaryStateId,_that.beneficiaryCityId,_that.beneficiaryCode,_that.memberCode,_that.eId,_that.transactionDate,_that.sourceCurrencyCode,_that.sourceCurrencyName,_that.destinationCurrencyCode,_that.destinationCurrencyName,_that.sourceCountryCode,_that.sourceCountryName,_that.destinationCountryCode,_that.destinationCountryName,_that.sourceAmount,_that.localAmount,_that.rate,_that.destinationAmount,_that.benePay,_that.fCCommission,_that.commission,_that.taxPercentage,_that.taxCollected,_that.payAmount,_that.receiveAmount,_that.productCode,_that.product,_that.transferModeCode,_that.transferMode,_that.paymentMode,_that.routeType,_that.routeCode,_that.purpose,_that.purposeCode,_that.incomeSource,_that.incomeSourceCode,_that.status,_that.appStatus,_that.iSDownload,_that.createdOn,_that.beneficiaryById);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "module_code")  int? moduleCode, @JsonKey(name: "location_code")  int? locationCode, @JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "routing_bank_code")  int? routingBankCode, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "beneficiary_state_id")  int? beneficiaryStateId, @JsonKey(name: "beneficiary_city_id")  int? beneficiaryCityId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "e_id")  String? eId, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "source_currency_name")  String? sourceCurrencyName, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "destination_currency_name")  String? destinationCurrencyName, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "source_country_name")  String? sourceCountryName, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "destination_country_name")  String? destinationCountryName, @JsonKey(name: "source_amount")  int? sourceAmount, @JsonKey(name: "local_amount")  int? localAmount, @JsonKey(name: "rate")  double? rate, @JsonKey(name: "destination_amount")  int? destinationAmount, @JsonKey(name: "bene_pay")  double? benePay, @JsonKey(name: "f_c_commission")  int? fCCommission, @JsonKey(name: "commission")  int? commission, @JsonKey(name: "tax_percentage")  int? taxPercentage, @JsonKey(name: "tax_collected")  int? taxCollected, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  double? receiveAmount, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product")  String? product, @JsonKey(name: "transfer_mode_code")  String? transferModeCode, @JsonKey(name: "transfer_mode")  String? transferMode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "purpose")  String? purpose, @JsonKey(name: "purpose_code")  String? purposeCode, @JsonKey(name: "income_source")  String? incomeSource, @JsonKey(name: "income_source_code")  String? incomeSourceCode, @JsonKey(name: "status")  String? status, @JsonKey(name: "app_status")  String? appStatus, @JsonKey(name: "i_s_download")  bool? iSDownload, @JsonKey(name: "created_on")  DateTime? createdOn, @JsonKey(name: "beneficiary_by_id")  BeneficiaryById? beneficiaryById)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.transactionReference,_that.beneficiaryName,_that.moduleCode,_that.locationCode,_that.branchName,_that.routingBankCode,_that.disbursalModeId,_that.beneficiaryStateId,_that.beneficiaryCityId,_that.beneficiaryCode,_that.memberCode,_that.eId,_that.transactionDate,_that.sourceCurrencyCode,_that.sourceCurrencyName,_that.destinationCurrencyCode,_that.destinationCurrencyName,_that.sourceCountryCode,_that.sourceCountryName,_that.destinationCountryCode,_that.destinationCountryName,_that.sourceAmount,_that.localAmount,_that.rate,_that.destinationAmount,_that.benePay,_that.fCCommission,_that.commission,_that.taxPercentage,_that.taxCollected,_that.payAmount,_that.receiveAmount,_that.productCode,_that.product,_that.transferModeCode,_that.transferMode,_that.paymentMode,_that.routeType,_that.routeCode,_that.purpose,_that.purposeCode,_that.incomeSource,_that.incomeSourceCode,_that.status,_that.appStatus,_that.iSDownload,_that.createdOn,_that.beneficiaryById);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Transaction implements Transaction {
  const _Transaction({@JsonKey(name: "transaction_reference") this.transactionReference, @JsonKey(name: "beneficiary_name") this.beneficiaryName, @JsonKey(name: "module_code") this.moduleCode, @JsonKey(name: "location_code") this.locationCode, @JsonKey(name: "branch_name") this.branchName, @JsonKey(name: "routing_bank_code") this.routingBankCode, @JsonKey(name: "disbursal_mode_id") this.disbursalModeId, @JsonKey(name: "beneficiary_state_id") this.beneficiaryStateId, @JsonKey(name: "beneficiary_city_id") this.beneficiaryCityId, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "member_code") this.memberCode, @JsonKey(name: "e_id") this.eId, @JsonKey(name: "transaction_date") this.transactionDate, @JsonKey(name: "source_currency_code") this.sourceCurrencyCode, @JsonKey(name: "source_currency_name") this.sourceCurrencyName, @JsonKey(name: "destination_currency_code") this.destinationCurrencyCode, @JsonKey(name: "destination_currency_name") this.destinationCurrencyName, @JsonKey(name: "source_country_code") this.sourceCountryCode, @JsonKey(name: "source_country_name") this.sourceCountryName, @JsonKey(name: "destination_country_code") this.destinationCountryCode, @JsonKey(name: "destination_country_name") this.destinationCountryName, @JsonKey(name: "source_amount") this.sourceAmount, @JsonKey(name: "local_amount") this.localAmount, @JsonKey(name: "rate") this.rate, @JsonKey(name: "destination_amount") this.destinationAmount, @JsonKey(name: "bene_pay") this.benePay, @JsonKey(name: "f_c_commission") this.fCCommission, @JsonKey(name: "commission") this.commission, @JsonKey(name: "tax_percentage") this.taxPercentage, @JsonKey(name: "tax_collected") this.taxCollected, @JsonKey(name: "pay_amount") this.payAmount, @JsonKey(name: "receive_amount") this.receiveAmount, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "product") this.product, @JsonKey(name: "transfer_mode_code") this.transferModeCode, @JsonKey(name: "transfer_mode") this.transferMode, @JsonKey(name: "payment_mode") this.paymentMode, @JsonKey(name: "route_type") this.routeType, @JsonKey(name: "route_code") this.routeCode, @JsonKey(name: "purpose") this.purpose, @JsonKey(name: "purpose_code") this.purposeCode, @JsonKey(name: "income_source") this.incomeSource, @JsonKey(name: "income_source_code") this.incomeSourceCode, @JsonKey(name: "status") this.status, @JsonKey(name: "app_status") this.appStatus, @JsonKey(name: "i_s_download") this.iSDownload, @JsonKey(name: "created_on") this.createdOn, @JsonKey(name: "beneficiary_by_id") this.beneficiaryById});
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override@JsonKey(name: "transaction_reference") final  int? transactionReference;
@override@JsonKey(name: "beneficiary_name") final  String? beneficiaryName;
@override@JsonKey(name: "module_code") final  int? moduleCode;
@override@JsonKey(name: "location_code") final  int? locationCode;
@override@JsonKey(name: "branch_name") final  String? branchName;
@override@JsonKey(name: "routing_bank_code") final  int? routingBankCode;
@override@JsonKey(name: "disbursal_mode_id") final  int? disbursalModeId;
@override@JsonKey(name: "beneficiary_state_id") final  int? beneficiaryStateId;
@override@JsonKey(name: "beneficiary_city_id") final  int? beneficiaryCityId;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "member_code") final  int? memberCode;
@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "transaction_date") final  DateTime? transactionDate;
@override@JsonKey(name: "source_currency_code") final  String? sourceCurrencyCode;
@override@JsonKey(name: "source_currency_name") final  String? sourceCurrencyName;
@override@JsonKey(name: "destination_currency_code") final  String? destinationCurrencyCode;
@override@JsonKey(name: "destination_currency_name") final  String? destinationCurrencyName;
@override@JsonKey(name: "source_country_code") final  String? sourceCountryCode;
@override@JsonKey(name: "source_country_name") final  String? sourceCountryName;
@override@JsonKey(name: "destination_country_code") final  String? destinationCountryCode;
@override@JsonKey(name: "destination_country_name") final  String? destinationCountryName;
@override@JsonKey(name: "source_amount") final  int? sourceAmount;
@override@JsonKey(name: "local_amount") final  int? localAmount;
@override@JsonKey(name: "rate") final  double? rate;
@override@JsonKey(name: "destination_amount") final  int? destinationAmount;
@override@JsonKey(name: "bene_pay") final  double? benePay;
@override@JsonKey(name: "f_c_commission") final  int? fCCommission;
@override@JsonKey(name: "commission") final  int? commission;
@override@JsonKey(name: "tax_percentage") final  int? taxPercentage;
@override@JsonKey(name: "tax_collected") final  int? taxCollected;
@override@JsonKey(name: "pay_amount") final  int? payAmount;
@override@JsonKey(name: "receive_amount") final  double? receiveAmount;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "product") final  String? product;
@override@JsonKey(name: "transfer_mode_code") final  String? transferModeCode;
@override@JsonKey(name: "transfer_mode") final  String? transferMode;
@override@JsonKey(name: "payment_mode") final  String? paymentMode;
@override@JsonKey(name: "route_type") final  String? routeType;
@override@JsonKey(name: "route_code") final  String? routeCode;
@override@JsonKey(name: "purpose") final  String? purpose;
@override@JsonKey(name: "purpose_code") final  String? purposeCode;
@override@JsonKey(name: "income_source") final  String? incomeSource;
@override@JsonKey(name: "income_source_code") final  String? incomeSourceCode;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "app_status") final  String? appStatus;
@override@JsonKey(name: "i_s_download") final  bool? iSDownload;
@override@JsonKey(name: "created_on") final  DateTime? createdOn;
@override@JsonKey(name: "beneficiary_by_id") final  BeneficiaryById? beneficiaryById;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.moduleCode, moduleCode) || other.moduleCode == moduleCode)&&(identical(other.locationCode, locationCode) || other.locationCode == locationCode)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.routingBankCode, routingBankCode) || other.routingBankCode == routingBankCode)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.beneficiaryStateId, beneficiaryStateId) || other.beneficiaryStateId == beneficiaryStateId)&&(identical(other.beneficiaryCityId, beneficiaryCityId) || other.beneficiaryCityId == beneficiaryCityId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.sourceCurrencyCode, sourceCurrencyCode) || other.sourceCurrencyCode == sourceCurrencyCode)&&(identical(other.sourceCurrencyName, sourceCurrencyName) || other.sourceCurrencyName == sourceCurrencyName)&&(identical(other.destinationCurrencyCode, destinationCurrencyCode) || other.destinationCurrencyCode == destinationCurrencyCode)&&(identical(other.destinationCurrencyName, destinationCurrencyName) || other.destinationCurrencyName == destinationCurrencyName)&&(identical(other.sourceCountryCode, sourceCountryCode) || other.sourceCountryCode == sourceCountryCode)&&(identical(other.sourceCountryName, sourceCountryName) || other.sourceCountryName == sourceCountryName)&&(identical(other.destinationCountryCode, destinationCountryCode) || other.destinationCountryCode == destinationCountryCode)&&(identical(other.destinationCountryName, destinationCountryName) || other.destinationCountryName == destinationCountryName)&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount)&&(identical(other.localAmount, localAmount) || other.localAmount == localAmount)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount)&&(identical(other.benePay, benePay) || other.benePay == benePay)&&(identical(other.fCCommission, fCCommission) || other.fCCommission == fCCommission)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.product, product) || other.product == product)&&(identical(other.transferModeCode, transferModeCode) || other.transferModeCode == transferModeCode)&&(identical(other.transferMode, transferMode) || other.transferMode == transferMode)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.purposeCode, purposeCode) || other.purposeCode == purposeCode)&&(identical(other.incomeSource, incomeSource) || other.incomeSource == incomeSource)&&(identical(other.incomeSourceCode, incomeSourceCode) || other.incomeSourceCode == incomeSourceCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.iSDownload, iSDownload) || other.iSDownload == iSDownload)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn)&&(identical(other.beneficiaryById, beneficiaryById) || other.beneficiaryById == beneficiaryById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,transactionReference,beneficiaryName,moduleCode,locationCode,branchName,routingBankCode,disbursalModeId,beneficiaryStateId,beneficiaryCityId,beneficiaryCode,memberCode,eId,transactionDate,sourceCurrencyCode,sourceCurrencyName,destinationCurrencyCode,destinationCurrencyName,sourceCountryCode,sourceCountryName,destinationCountryCode,destinationCountryName,sourceAmount,localAmount,rate,destinationAmount,benePay,fCCommission,commission,taxPercentage,taxCollected,payAmount,receiveAmount,productCode,product,transferModeCode,transferMode,paymentMode,routeType,routeCode,purpose,purposeCode,incomeSource,incomeSourceCode,status,appStatus,iSDownload,createdOn,beneficiaryById]);

@override
String toString() {
  return 'Transaction(transactionReference: $transactionReference, beneficiaryName: $beneficiaryName, moduleCode: $moduleCode, locationCode: $locationCode, branchName: $branchName, routingBankCode: $routingBankCode, disbursalModeId: $disbursalModeId, beneficiaryStateId: $beneficiaryStateId, beneficiaryCityId: $beneficiaryCityId, beneficiaryCode: $beneficiaryCode, memberCode: $memberCode, eId: $eId, transactionDate: $transactionDate, sourceCurrencyCode: $sourceCurrencyCode, sourceCurrencyName: $sourceCurrencyName, destinationCurrencyCode: $destinationCurrencyCode, destinationCurrencyName: $destinationCurrencyName, sourceCountryCode: $sourceCountryCode, sourceCountryName: $sourceCountryName, destinationCountryCode: $destinationCountryCode, destinationCountryName: $destinationCountryName, sourceAmount: $sourceAmount, localAmount: $localAmount, rate: $rate, destinationAmount: $destinationAmount, benePay: $benePay, fCCommission: $fCCommission, commission: $commission, taxPercentage: $taxPercentage, taxCollected: $taxCollected, payAmount: $payAmount, receiveAmount: $receiveAmount, productCode: $productCode, product: $product, transferModeCode: $transferModeCode, transferMode: $transferMode, paymentMode: $paymentMode, routeType: $routeType, routeCode: $routeCode, purpose: $purpose, purposeCode: $purposeCode, incomeSource: $incomeSource, incomeSourceCode: $incomeSourceCode, status: $status, appStatus: $appStatus, iSDownload: $iSDownload, createdOn: $createdOn, beneficiaryById: $beneficiaryById)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "beneficiary_name") String? beneficiaryName,@JsonKey(name: "module_code") int? moduleCode,@JsonKey(name: "location_code") int? locationCode,@JsonKey(name: "branch_name") String? branchName,@JsonKey(name: "routing_bank_code") int? routingBankCode,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "beneficiary_state_id") int? beneficiaryStateId,@JsonKey(name: "beneficiary_city_id") int? beneficiaryCityId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "e_id") String? eId,@JsonKey(name: "transaction_date") DateTime? transactionDate,@JsonKey(name: "source_currency_code") String? sourceCurrencyCode,@JsonKey(name: "source_currency_name") String? sourceCurrencyName,@JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,@JsonKey(name: "destination_currency_name") String? destinationCurrencyName,@JsonKey(name: "source_country_code") String? sourceCountryCode,@JsonKey(name: "source_country_name") String? sourceCountryName,@JsonKey(name: "destination_country_code") String? destinationCountryCode,@JsonKey(name: "destination_country_name") String? destinationCountryName,@JsonKey(name: "source_amount") int? sourceAmount,@JsonKey(name: "local_amount") int? localAmount,@JsonKey(name: "rate") double? rate,@JsonKey(name: "destination_amount") int? destinationAmount,@JsonKey(name: "bene_pay") double? benePay,@JsonKey(name: "f_c_commission") int? fCCommission,@JsonKey(name: "commission") int? commission,@JsonKey(name: "tax_percentage") int? taxPercentage,@JsonKey(name: "tax_collected") int? taxCollected,@JsonKey(name: "pay_amount") int? payAmount,@JsonKey(name: "receive_amount") double? receiveAmount,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product") String? product,@JsonKey(name: "transfer_mode_code") String? transferModeCode,@JsonKey(name: "transfer_mode") String? transferMode,@JsonKey(name: "payment_mode") String? paymentMode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "purpose") String? purpose,@JsonKey(name: "purpose_code") String? purposeCode,@JsonKey(name: "income_source") String? incomeSource,@JsonKey(name: "income_source_code") String? incomeSourceCode,@JsonKey(name: "status") String? status,@JsonKey(name: "app_status") String? appStatus,@JsonKey(name: "i_s_download") bool? iSDownload,@JsonKey(name: "created_on") DateTime? createdOn,@JsonKey(name: "beneficiary_by_id") BeneficiaryById? beneficiaryById
});


@override $BeneficiaryByIdCopyWith<$Res>? get beneficiaryById;

}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionReference = freezed,Object? beneficiaryName = freezed,Object? moduleCode = freezed,Object? locationCode = freezed,Object? branchName = freezed,Object? routingBankCode = freezed,Object? disbursalModeId = freezed,Object? beneficiaryStateId = freezed,Object? beneficiaryCityId = freezed,Object? beneficiaryCode = freezed,Object? memberCode = freezed,Object? eId = freezed,Object? transactionDate = freezed,Object? sourceCurrencyCode = freezed,Object? sourceCurrencyName = freezed,Object? destinationCurrencyCode = freezed,Object? destinationCurrencyName = freezed,Object? sourceCountryCode = freezed,Object? sourceCountryName = freezed,Object? destinationCountryCode = freezed,Object? destinationCountryName = freezed,Object? sourceAmount = freezed,Object? localAmount = freezed,Object? rate = freezed,Object? destinationAmount = freezed,Object? benePay = freezed,Object? fCCommission = freezed,Object? commission = freezed,Object? taxPercentage = freezed,Object? taxCollected = freezed,Object? payAmount = freezed,Object? receiveAmount = freezed,Object? productCode = freezed,Object? product = freezed,Object? transferModeCode = freezed,Object? transferMode = freezed,Object? paymentMode = freezed,Object? routeType = freezed,Object? routeCode = freezed,Object? purpose = freezed,Object? purposeCode = freezed,Object? incomeSource = freezed,Object? incomeSourceCode = freezed,Object? status = freezed,Object? appStatus = freezed,Object? iSDownload = freezed,Object? createdOn = freezed,Object? beneficiaryById = freezed,}) {
  return _then(_Transaction(
transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,moduleCode: freezed == moduleCode ? _self.moduleCode : moduleCode // ignore: cast_nullable_to_non_nullable
as int?,locationCode: freezed == locationCode ? _self.locationCode : locationCode // ignore: cast_nullable_to_non_nullable
as int?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,routingBankCode: freezed == routingBankCode ? _self.routingBankCode : routingBankCode // ignore: cast_nullable_to_non_nullable
as int?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryStateId: freezed == beneficiaryStateId ? _self.beneficiaryStateId : beneficiaryStateId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryCityId: freezed == beneficiaryCityId ? _self.beneficiaryCityId : beneficiaryCityId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,sourceCurrencyCode: freezed == sourceCurrencyCode ? _self.sourceCurrencyCode : sourceCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCurrencyName: freezed == sourceCurrencyName ? _self.sourceCurrencyName : sourceCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyCode: freezed == destinationCurrencyCode ? _self.destinationCurrencyCode : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyName: freezed == destinationCurrencyName ? _self.destinationCurrencyName : destinationCurrencyName // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryCode: freezed == sourceCountryCode ? _self.sourceCountryCode : sourceCountryCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryName: freezed == sourceCountryName ? _self.sourceCountryName : sourceCountryName // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryCode: freezed == destinationCountryCode ? _self.destinationCountryCode : destinationCountryCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryName: freezed == destinationCountryName ? _self.destinationCountryName : destinationCountryName // ignore: cast_nullable_to_non_nullable
as String?,sourceAmount: freezed == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as int?,localAmount: freezed == localAmount ? _self.localAmount : localAmount // ignore: cast_nullable_to_non_nullable
as int?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,destinationAmount: freezed == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as int?,benePay: freezed == benePay ? _self.benePay : benePay // ignore: cast_nullable_to_non_nullable
as double?,fCCommission: freezed == fCCommission ? _self.fCCommission : fCCommission // ignore: cast_nullable_to_non_nullable
as int?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as int?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as int?,taxCollected: freezed == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as int?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as int?,receiveAmount: freezed == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as double?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String?,transferModeCode: freezed == transferModeCode ? _self.transferModeCode : transferModeCode // ignore: cast_nullable_to_non_nullable
as String?,transferMode: freezed == transferMode ? _self.transferMode : transferMode // ignore: cast_nullable_to_non_nullable
as String?,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,purposeCode: freezed == purposeCode ? _self.purposeCode : purposeCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSource: freezed == incomeSource ? _self.incomeSource : incomeSource // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceCode: freezed == incomeSourceCode ? _self.incomeSourceCode : incomeSourceCode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as String?,iSDownload: freezed == iSDownload ? _self.iSDownload : iSDownload // ignore: cast_nullable_to_non_nullable
as bool?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as DateTime?,beneficiaryById: freezed == beneficiaryById ? _self.beneficiaryById : beneficiaryById // ignore: cast_nullable_to_non_nullable
as BeneficiaryById?,
  ));
}

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryByIdCopyWith<$Res>? get beneficiaryById {
    if (_self.beneficiaryById == null) {
    return null;
  }

  return $BeneficiaryByIdCopyWith<$Res>(_self.beneficiaryById!, (value) {
    return _then(_self.copyWith(beneficiaryById: value));
  });
}
}


/// @nodoc
mixin _$BeneficiaryById {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "beneficiary_gender") String? get beneficiaryGender;@JsonKey(name: "beneficiary_address1") String? get beneficiaryAddress1;@JsonKey(name: "beneficiary_address2") String? get beneficiaryAddress2;@JsonKey(name: "beneficiary_address3") String? get beneficiaryAddress3;@JsonKey(name: "beneficiary_address4") String? get beneficiaryAddress4;@JsonKey(name: "beneficiary_address5") String? get beneficiaryAddress5;@JsonKey(name: "beneficiary_state") String? get beneficiaryState;@JsonKey(name: "beneficiary_city") String? get beneficiaryCity;@JsonKey(name: "beneficiary_city_id") int? get beneficiaryCityId;@JsonKey(name: "beneficiary_zip_code") String? get beneficiaryZipCode;@JsonKey(name: "beneficiary_idtype_name") String? get beneficiaryIdtypeName;@JsonKey(name: "beneficiary_idtype_id") int? get beneficiaryIdtypeId;@JsonKey(name: "beneficiary_idtype_code") String? get beneficiaryIdtypeCode;@JsonKey(name: "beneficiary_idtype_c_b_code") String? get beneficiaryIdtypeCBCode;@JsonKey(name: "beneficiary_phone") String? get beneficiaryPhone;@JsonKey(name: "beneficiary_mobile_code") int? get beneficiaryMobileCode;@JsonKey(name: "beneficiary_mobile") String? get beneficiaryMobile;@JsonKey(name: "beneficiary_email") String? get beneficiaryEmail;@JsonKey(name: "beneficiary_fax") String? get beneficiaryFax;@JsonKey(name: "beneficiary_country_code") String? get beneficiaryCountryCode;@JsonKey(name: "beneficiary_country_name") String? get beneficiaryCountryName;@JsonKey(name: "beneficiary_nationality_code") String? get beneficiaryNationalityCode;@JsonKey(name: "beneficiary_nationality_name") String? get beneficiaryNationalityName;@JsonKey(name: "beneficiary_nearest_airport_code") String? get beneficiaryNearestAirportCode;@JsonKey(name: "beneficiary_nearest_airport_name") String? get beneficiaryNearestAirportName;@JsonKey(name: "beneficiary_bank_code") String? get beneficiaryBankCode;@JsonKey(name: "beneficiary_bank_name") String? get beneficiaryBankName;@JsonKey(name: "beneficiary_branch_code") String? get beneficiaryBranchCode;@JsonKey(name: "beneficiary_branch_name") String? get beneficiaryBranchName;@JsonKey(name: "beneficiary_branch_address") String? get beneficiaryBranchAddress;@JsonKey(name: "beneficiary_branch_address2") String? get beneficiaryBranchAddress2;@JsonKey(name: "beneficiary_branch_state") String? get beneficiaryBranchState;@JsonKey(name: "beneficiary_branch_state_code") String? get beneficiaryBranchStateCode;@JsonKey(name: "beneficiary_branch_city") String? get beneficiaryBranchCity;@JsonKey(name: "beneficiary_branch_city_code") String? get beneficiaryBranchCityCode;@JsonKey(name: "beneficiary_branch_land_mark") String? get beneficiaryBranchLandMark;@JsonKey(name: "beneficiary_branch_zip_code") String? get beneficiaryBranchZipCode;@JsonKey(name: "beneficary_relation") String? get beneficaryRelation;@JsonKey(name: "beneficary_relation_name") String? get beneficaryRelationName;@JsonKey(name: "beneficiary_bank_account_number") String? get beneficiaryBankAccountNumber;@JsonKey(name: "beneficiary_category_code") String? get beneficiaryCategoryCode;@JsonKey(name: "route_type") String? get routeType;@JsonKey(name: "route_code") String? get routeCode;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "status") String? get status;@JsonKey(name: "disbursal_mode_id") int? get disbursalModeId;@JsonKey(name: "disbursal_mode") String? get disbursalMode;@JsonKey(name: "currency_code") String? get currencyCode;@JsonKey(name: "beneficiary_category") String? get beneficiaryCategory;
/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryByIdCopyWith<BeneficiaryById> get copyWith => _$BeneficiaryByIdCopyWithImpl<BeneficiaryById>(this as BeneficiaryById, _$identity);

  /// Serializes this BeneficiaryById to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryById&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryAddress1, beneficiaryAddress1) || other.beneficiaryAddress1 == beneficiaryAddress1)&&(identical(other.beneficiaryAddress2, beneficiaryAddress2) || other.beneficiaryAddress2 == beneficiaryAddress2)&&(identical(other.beneficiaryAddress3, beneficiaryAddress3) || other.beneficiaryAddress3 == beneficiaryAddress3)&&(identical(other.beneficiaryAddress4, beneficiaryAddress4) || other.beneficiaryAddress4 == beneficiaryAddress4)&&(identical(other.beneficiaryAddress5, beneficiaryAddress5) || other.beneficiaryAddress5 == beneficiaryAddress5)&&(identical(other.beneficiaryState, beneficiaryState) || other.beneficiaryState == beneficiaryState)&&(identical(other.beneficiaryCity, beneficiaryCity) || other.beneficiaryCity == beneficiaryCity)&&(identical(other.beneficiaryCityId, beneficiaryCityId) || other.beneficiaryCityId == beneficiaryCityId)&&(identical(other.beneficiaryZipCode, beneficiaryZipCode) || other.beneficiaryZipCode == beneficiaryZipCode)&&(identical(other.beneficiaryIdtypeName, beneficiaryIdtypeName) || other.beneficiaryIdtypeName == beneficiaryIdtypeName)&&(identical(other.beneficiaryIdtypeId, beneficiaryIdtypeId) || other.beneficiaryIdtypeId == beneficiaryIdtypeId)&&(identical(other.beneficiaryIdtypeCode, beneficiaryIdtypeCode) || other.beneficiaryIdtypeCode == beneficiaryIdtypeCode)&&(identical(other.beneficiaryIdtypeCBCode, beneficiaryIdtypeCBCode) || other.beneficiaryIdtypeCBCode == beneficiaryIdtypeCBCode)&&(identical(other.beneficiaryPhone, beneficiaryPhone) || other.beneficiaryPhone == beneficiaryPhone)&&(identical(other.beneficiaryMobileCode, beneficiaryMobileCode) || other.beneficiaryMobileCode == beneficiaryMobileCode)&&(identical(other.beneficiaryMobile, beneficiaryMobile) || other.beneficiaryMobile == beneficiaryMobile)&&(identical(other.beneficiaryEmail, beneficiaryEmail) || other.beneficiaryEmail == beneficiaryEmail)&&(identical(other.beneficiaryFax, beneficiaryFax) || other.beneficiaryFax == beneficiaryFax)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryNearestAirportCode, beneficiaryNearestAirportCode) || other.beneficiaryNearestAirportCode == beneficiaryNearestAirportCode)&&(identical(other.beneficiaryNearestAirportName, beneficiaryNearestAirportName) || other.beneficiaryNearestAirportName == beneficiaryNearestAirportName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficiaryBranchAddress, beneficiaryBranchAddress) || other.beneficiaryBranchAddress == beneficiaryBranchAddress)&&(identical(other.beneficiaryBranchAddress2, beneficiaryBranchAddress2) || other.beneficiaryBranchAddress2 == beneficiaryBranchAddress2)&&(identical(other.beneficiaryBranchState, beneficiaryBranchState) || other.beneficiaryBranchState == beneficiaryBranchState)&&(identical(other.beneficiaryBranchStateCode, beneficiaryBranchStateCode) || other.beneficiaryBranchStateCode == beneficiaryBranchStateCode)&&(identical(other.beneficiaryBranchCity, beneficiaryBranchCity) || other.beneficiaryBranchCity == beneficiaryBranchCity)&&(identical(other.beneficiaryBranchCityCode, beneficiaryBranchCityCode) || other.beneficiaryBranchCityCode == beneficiaryBranchCityCode)&&(identical(other.beneficiaryBranchLandMark, beneficiaryBranchLandMark) || other.beneficiaryBranchLandMark == beneficiaryBranchLandMark)&&(identical(other.beneficiaryBranchZipCode, beneficiaryBranchZipCode) || other.beneficiaryBranchZipCode == beneficiaryBranchZipCode)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.beneficiaryCategoryCode, beneficiaryCategoryCode) || other.beneficiaryCategoryCode == beneficiaryCategoryCode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.beneficiaryCategory, beneficiaryCategory) || other.beneficiaryCategory == beneficiaryCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryGender,beneficiaryAddress1,beneficiaryAddress2,beneficiaryAddress3,beneficiaryAddress4,beneficiaryAddress5,beneficiaryState,beneficiaryCity,beneficiaryCityId,beneficiaryZipCode,beneficiaryIdtypeName,beneficiaryIdtypeId,beneficiaryIdtypeCode,beneficiaryIdtypeCBCode,beneficiaryPhone,beneficiaryMobileCode,beneficiaryMobile,beneficiaryEmail,beneficiaryFax,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryNearestAirportCode,beneficiaryNearestAirportName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficiaryBranchAddress,beneficiaryBranchAddress2,beneficiaryBranchState,beneficiaryBranchStateCode,beneficiaryBranchCity,beneficiaryBranchCityCode,beneficiaryBranchLandMark,beneficiaryBranchZipCode,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,beneficiaryCategoryCode,routeType,routeCode,productCode,productName,status,disbursalModeId,disbursalMode,currencyCode,beneficiaryCategory]);

@override
String toString() {
  return 'BeneficiaryById(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryGender: $beneficiaryGender, beneficiaryAddress1: $beneficiaryAddress1, beneficiaryAddress2: $beneficiaryAddress2, beneficiaryAddress3: $beneficiaryAddress3, beneficiaryAddress4: $beneficiaryAddress4, beneficiaryAddress5: $beneficiaryAddress5, beneficiaryState: $beneficiaryState, beneficiaryCity: $beneficiaryCity, beneficiaryCityId: $beneficiaryCityId, beneficiaryZipCode: $beneficiaryZipCode, beneficiaryIdtypeName: $beneficiaryIdtypeName, beneficiaryIdtypeId: $beneficiaryIdtypeId, beneficiaryIdtypeCode: $beneficiaryIdtypeCode, beneficiaryIdtypeCBCode: $beneficiaryIdtypeCBCode, beneficiaryPhone: $beneficiaryPhone, beneficiaryMobileCode: $beneficiaryMobileCode, beneficiaryMobile: $beneficiaryMobile, beneficiaryEmail: $beneficiaryEmail, beneficiaryFax: $beneficiaryFax, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryNearestAirportCode: $beneficiaryNearestAirportCode, beneficiaryNearestAirportName: $beneficiaryNearestAirportName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficiaryBranchAddress: $beneficiaryBranchAddress, beneficiaryBranchAddress2: $beneficiaryBranchAddress2, beneficiaryBranchState: $beneficiaryBranchState, beneficiaryBranchStateCode: $beneficiaryBranchStateCode, beneficiaryBranchCity: $beneficiaryBranchCity, beneficiaryBranchCityCode: $beneficiaryBranchCityCode, beneficiaryBranchLandMark: $beneficiaryBranchLandMark, beneficiaryBranchZipCode: $beneficiaryBranchZipCode, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, beneficiaryCategoryCode: $beneficiaryCategoryCode, routeType: $routeType, routeCode: $routeCode, productCode: $productCode, productName: $productName, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, beneficiaryCategory: $beneficiaryCategory)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryByIdCopyWith<$Res>  {
  factory $BeneficiaryByIdCopyWith(BeneficiaryById value, $Res Function(BeneficiaryById) _then) = _$BeneficiaryByIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_address1") String? beneficiaryAddress1,@JsonKey(name: "beneficiary_address2") String? beneficiaryAddress2,@JsonKey(name: "beneficiary_address3") String? beneficiaryAddress3,@JsonKey(name: "beneficiary_address4") String? beneficiaryAddress4,@JsonKey(name: "beneficiary_address5") String? beneficiaryAddress5,@JsonKey(name: "beneficiary_state") String? beneficiaryState,@JsonKey(name: "beneficiary_city") String? beneficiaryCity,@JsonKey(name: "beneficiary_city_id") int? beneficiaryCityId,@JsonKey(name: "beneficiary_zip_code") String? beneficiaryZipCode,@JsonKey(name: "beneficiary_idtype_name") String? beneficiaryIdtypeName,@JsonKey(name: "beneficiary_idtype_id") int? beneficiaryIdtypeId,@JsonKey(name: "beneficiary_idtype_code") String? beneficiaryIdtypeCode,@JsonKey(name: "beneficiary_idtype_c_b_code") String? beneficiaryIdtypeCBCode,@JsonKey(name: "beneficiary_phone") String? beneficiaryPhone,@JsonKey(name: "beneficiary_mobile_code") int? beneficiaryMobileCode,@JsonKey(name: "beneficiary_mobile") String? beneficiaryMobile,@JsonKey(name: "beneficiary_email") String? beneficiaryEmail,@JsonKey(name: "beneficiary_fax") String? beneficiaryFax,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_nearest_airport_code") String? beneficiaryNearestAirportCode,@JsonKey(name: "beneficiary_nearest_airport_name") String? beneficiaryNearestAirportName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficiary_branch_address") String? beneficiaryBranchAddress,@JsonKey(name: "beneficiary_branch_address2") String? beneficiaryBranchAddress2,@JsonKey(name: "beneficiary_branch_state") String? beneficiaryBranchState,@JsonKey(name: "beneficiary_branch_state_code") String? beneficiaryBranchStateCode,@JsonKey(name: "beneficiary_branch_city") String? beneficiaryBranchCity,@JsonKey(name: "beneficiary_branch_city_code") String? beneficiaryBranchCityCode,@JsonKey(name: "beneficiary_branch_land_mark") String? beneficiaryBranchLandMark,@JsonKey(name: "beneficiary_branch_zip_code") String? beneficiaryBranchZipCode,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "beneficiary_category_code") String? beneficiaryCategoryCode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "beneficiary_category") String? beneficiaryCategory
});




}
/// @nodoc
class _$BeneficiaryByIdCopyWithImpl<$Res>
    implements $BeneficiaryByIdCopyWith<$Res> {
  _$BeneficiaryByIdCopyWithImpl(this._self, this._then);

  final BeneficiaryById _self;
  final $Res Function(BeneficiaryById) _then;

/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryAddress1 = freezed,Object? beneficiaryAddress2 = freezed,Object? beneficiaryAddress3 = freezed,Object? beneficiaryAddress4 = freezed,Object? beneficiaryAddress5 = freezed,Object? beneficiaryState = freezed,Object? beneficiaryCity = freezed,Object? beneficiaryCityId = freezed,Object? beneficiaryZipCode = freezed,Object? beneficiaryIdtypeName = freezed,Object? beneficiaryIdtypeId = freezed,Object? beneficiaryIdtypeCode = freezed,Object? beneficiaryIdtypeCBCode = freezed,Object? beneficiaryPhone = freezed,Object? beneficiaryMobileCode = freezed,Object? beneficiaryMobile = freezed,Object? beneficiaryEmail = freezed,Object? beneficiaryFax = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryNearestAirportCode = freezed,Object? beneficiaryNearestAirportName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficiaryBranchAddress = freezed,Object? beneficiaryBranchAddress2 = freezed,Object? beneficiaryBranchState = freezed,Object? beneficiaryBranchStateCode = freezed,Object? beneficiaryBranchCity = freezed,Object? beneficiaryBranchCityCode = freezed,Object? beneficiaryBranchLandMark = freezed,Object? beneficiaryBranchZipCode = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? beneficiaryCategoryCode = freezed,Object? routeType = freezed,Object? routeCode = freezed,Object? productCode = freezed,Object? productName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? beneficiaryCategory = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress1: freezed == beneficiaryAddress1 ? _self.beneficiaryAddress1 : beneficiaryAddress1 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress2: freezed == beneficiaryAddress2 ? _self.beneficiaryAddress2 : beneficiaryAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress3: freezed == beneficiaryAddress3 ? _self.beneficiaryAddress3 : beneficiaryAddress3 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress4: freezed == beneficiaryAddress4 ? _self.beneficiaryAddress4 : beneficiaryAddress4 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress5: freezed == beneficiaryAddress5 ? _self.beneficiaryAddress5 : beneficiaryAddress5 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryState: freezed == beneficiaryState ? _self.beneficiaryState : beneficiaryState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCity: freezed == beneficiaryCity ? _self.beneficiaryCity : beneficiaryCity // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCityId: freezed == beneficiaryCityId ? _self.beneficiaryCityId : beneficiaryCityId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryZipCode: freezed == beneficiaryZipCode ? _self.beneficiaryZipCode : beneficiaryZipCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeName: freezed == beneficiaryIdtypeName ? _self.beneficiaryIdtypeName : beneficiaryIdtypeName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeId: freezed == beneficiaryIdtypeId ? _self.beneficiaryIdtypeId : beneficiaryIdtypeId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryIdtypeCode: freezed == beneficiaryIdtypeCode ? _self.beneficiaryIdtypeCode : beneficiaryIdtypeCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeCBCode: freezed == beneficiaryIdtypeCBCode ? _self.beneficiaryIdtypeCBCode : beneficiaryIdtypeCBCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryPhone: freezed == beneficiaryPhone ? _self.beneficiaryPhone : beneficiaryPhone // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMobileCode: freezed == beneficiaryMobileCode ? _self.beneficiaryMobileCode : beneficiaryMobileCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryMobile: freezed == beneficiaryMobile ? _self.beneficiaryMobile : beneficiaryMobile // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryEmail: freezed == beneficiaryEmail ? _self.beneficiaryEmail : beneficiaryEmail // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFax: freezed == beneficiaryFax ? _self.beneficiaryFax : beneficiaryFax // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNearestAirportCode: freezed == beneficiaryNearestAirportCode ? _self.beneficiaryNearestAirportCode : beneficiaryNearestAirportCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNearestAirportName: freezed == beneficiaryNearestAirportName ? _self.beneficiaryNearestAirportName : beneficiaryNearestAirportName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchName: freezed == beneficiaryBranchName ? _self.beneficiaryBranchName : beneficiaryBranchName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchAddress: freezed == beneficiaryBranchAddress ? _self.beneficiaryBranchAddress : beneficiaryBranchAddress // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchAddress2: freezed == beneficiaryBranchAddress2 ? _self.beneficiaryBranchAddress2 : beneficiaryBranchAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchState: freezed == beneficiaryBranchState ? _self.beneficiaryBranchState : beneficiaryBranchState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchStateCode: freezed == beneficiaryBranchStateCode ? _self.beneficiaryBranchStateCode : beneficiaryBranchStateCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCity: freezed == beneficiaryBranchCity ? _self.beneficiaryBranchCity : beneficiaryBranchCity // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCityCode: freezed == beneficiaryBranchCityCode ? _self.beneficiaryBranchCityCode : beneficiaryBranchCityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchLandMark: freezed == beneficiaryBranchLandMark ? _self.beneficiaryBranchLandMark : beneficiaryBranchLandMark // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchZipCode: freezed == beneficiaryBranchZipCode ? _self.beneficiaryBranchZipCode : beneficiaryBranchZipCode // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategoryCode: freezed == beneficiaryCategoryCode ? _self.beneficiaryCategoryCode : beneficiaryCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategory: freezed == beneficiaryCategory ? _self.beneficiaryCategory : beneficiaryCategory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryById].
extension BeneficiaryByIdPatterns on BeneficiaryById {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryById value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryById value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryById():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryById value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_address3")  String? beneficiaryAddress3, @JsonKey(name: "beneficiary_address4")  String? beneficiaryAddress4, @JsonKey(name: "beneficiary_address5")  String? beneficiaryAddress5, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity, @JsonKey(name: "beneficiary_city_id")  int? beneficiaryCityId, @JsonKey(name: "beneficiary_zip_code")  String? beneficiaryZipCode, @JsonKey(name: "beneficiary_idtype_name")  String? beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_id")  int? beneficiaryIdtypeId, @JsonKey(name: "beneficiary_idtype_code")  String? beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_c_b_code")  String? beneficiaryIdtypeCBCode, @JsonKey(name: "beneficiary_phone")  String? beneficiaryPhone, @JsonKey(name: "beneficiary_mobile_code")  int? beneficiaryMobileCode, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_email")  String? beneficiaryEmail, @JsonKey(name: "beneficiary_fax")  String? beneficiaryFax, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_nearest_airport_code")  String? beneficiaryNearestAirportCode, @JsonKey(name: "beneficiary_nearest_airport_name")  String? beneficiaryNearestAirportName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address")  String? beneficiaryBranchAddress, @JsonKey(name: "beneficiary_branch_address2")  String? beneficiaryBranchAddress2, @JsonKey(name: "beneficiary_branch_state")  String? beneficiaryBranchState, @JsonKey(name: "beneficiary_branch_state_code")  String? beneficiaryBranchStateCode, @JsonKey(name: "beneficiary_branch_city")  String? beneficiaryBranchCity, @JsonKey(name: "beneficiary_branch_city_code")  String? beneficiaryBranchCityCode, @JsonKey(name: "beneficiary_branch_land_mark")  String? beneficiaryBranchLandMark, @JsonKey(name: "beneficiary_branch_zip_code")  String? beneficiaryBranchZipCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryAddress3,_that.beneficiaryAddress4,_that.beneficiaryAddress5,_that.beneficiaryState,_that.beneficiaryCity,_that.beneficiaryCityId,_that.beneficiaryZipCode,_that.beneficiaryIdtypeName,_that.beneficiaryIdtypeId,_that.beneficiaryIdtypeCode,_that.beneficiaryIdtypeCBCode,_that.beneficiaryPhone,_that.beneficiaryMobileCode,_that.beneficiaryMobile,_that.beneficiaryEmail,_that.beneficiaryFax,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryNearestAirportCode,_that.beneficiaryNearestAirportName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficiaryBranchAddress,_that.beneficiaryBranchAddress2,_that.beneficiaryBranchState,_that.beneficiaryBranchStateCode,_that.beneficiaryBranchCity,_that.beneficiaryBranchCityCode,_that.beneficiaryBranchLandMark,_that.beneficiaryBranchZipCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.routeType,_that.routeCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.beneficiaryCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_address3")  String? beneficiaryAddress3, @JsonKey(name: "beneficiary_address4")  String? beneficiaryAddress4, @JsonKey(name: "beneficiary_address5")  String? beneficiaryAddress5, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity, @JsonKey(name: "beneficiary_city_id")  int? beneficiaryCityId, @JsonKey(name: "beneficiary_zip_code")  String? beneficiaryZipCode, @JsonKey(name: "beneficiary_idtype_name")  String? beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_id")  int? beneficiaryIdtypeId, @JsonKey(name: "beneficiary_idtype_code")  String? beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_c_b_code")  String? beneficiaryIdtypeCBCode, @JsonKey(name: "beneficiary_phone")  String? beneficiaryPhone, @JsonKey(name: "beneficiary_mobile_code")  int? beneficiaryMobileCode, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_email")  String? beneficiaryEmail, @JsonKey(name: "beneficiary_fax")  String? beneficiaryFax, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_nearest_airport_code")  String? beneficiaryNearestAirportCode, @JsonKey(name: "beneficiary_nearest_airport_name")  String? beneficiaryNearestAirportName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address")  String? beneficiaryBranchAddress, @JsonKey(name: "beneficiary_branch_address2")  String? beneficiaryBranchAddress2, @JsonKey(name: "beneficiary_branch_state")  String? beneficiaryBranchState, @JsonKey(name: "beneficiary_branch_state_code")  String? beneficiaryBranchStateCode, @JsonKey(name: "beneficiary_branch_city")  String? beneficiaryBranchCity, @JsonKey(name: "beneficiary_branch_city_code")  String? beneficiaryBranchCityCode, @JsonKey(name: "beneficiary_branch_land_mark")  String? beneficiaryBranchLandMark, @JsonKey(name: "beneficiary_branch_zip_code")  String? beneficiaryBranchZipCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryById():
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryAddress3,_that.beneficiaryAddress4,_that.beneficiaryAddress5,_that.beneficiaryState,_that.beneficiaryCity,_that.beneficiaryCityId,_that.beneficiaryZipCode,_that.beneficiaryIdtypeName,_that.beneficiaryIdtypeId,_that.beneficiaryIdtypeCode,_that.beneficiaryIdtypeCBCode,_that.beneficiaryPhone,_that.beneficiaryMobileCode,_that.beneficiaryMobile,_that.beneficiaryEmail,_that.beneficiaryFax,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryNearestAirportCode,_that.beneficiaryNearestAirportName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficiaryBranchAddress,_that.beneficiaryBranchAddress2,_that.beneficiaryBranchState,_that.beneficiaryBranchStateCode,_that.beneficiaryBranchCity,_that.beneficiaryBranchCityCode,_that.beneficiaryBranchLandMark,_that.beneficiaryBranchZipCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.routeType,_that.routeCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.beneficiaryCategory);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_address3")  String? beneficiaryAddress3, @JsonKey(name: "beneficiary_address4")  String? beneficiaryAddress4, @JsonKey(name: "beneficiary_address5")  String? beneficiaryAddress5, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity, @JsonKey(name: "beneficiary_city_id")  int? beneficiaryCityId, @JsonKey(name: "beneficiary_zip_code")  String? beneficiaryZipCode, @JsonKey(name: "beneficiary_idtype_name")  String? beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_id")  int? beneficiaryIdtypeId, @JsonKey(name: "beneficiary_idtype_code")  String? beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_c_b_code")  String? beneficiaryIdtypeCBCode, @JsonKey(name: "beneficiary_phone")  String? beneficiaryPhone, @JsonKey(name: "beneficiary_mobile_code")  int? beneficiaryMobileCode, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_email")  String? beneficiaryEmail, @JsonKey(name: "beneficiary_fax")  String? beneficiaryFax, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_nearest_airport_code")  String? beneficiaryNearestAirportCode, @JsonKey(name: "beneficiary_nearest_airport_name")  String? beneficiaryNearestAirportName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address")  String? beneficiaryBranchAddress, @JsonKey(name: "beneficiary_branch_address2")  String? beneficiaryBranchAddress2, @JsonKey(name: "beneficiary_branch_state")  String? beneficiaryBranchState, @JsonKey(name: "beneficiary_branch_state_code")  String? beneficiaryBranchStateCode, @JsonKey(name: "beneficiary_branch_city")  String? beneficiaryBranchCity, @JsonKey(name: "beneficiary_branch_city_code")  String? beneficiaryBranchCityCode, @JsonKey(name: "beneficiary_branch_land_mark")  String? beneficiaryBranchLandMark, @JsonKey(name: "beneficiary_branch_zip_code")  String? beneficiaryBranchZipCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryAddress3,_that.beneficiaryAddress4,_that.beneficiaryAddress5,_that.beneficiaryState,_that.beneficiaryCity,_that.beneficiaryCityId,_that.beneficiaryZipCode,_that.beneficiaryIdtypeName,_that.beneficiaryIdtypeId,_that.beneficiaryIdtypeCode,_that.beneficiaryIdtypeCBCode,_that.beneficiaryPhone,_that.beneficiaryMobileCode,_that.beneficiaryMobile,_that.beneficiaryEmail,_that.beneficiaryFax,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryNearestAirportCode,_that.beneficiaryNearestAirportName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficiaryBranchAddress,_that.beneficiaryBranchAddress2,_that.beneficiaryBranchState,_that.beneficiaryBranchStateCode,_that.beneficiaryBranchCity,_that.beneficiaryBranchCityCode,_that.beneficiaryBranchLandMark,_that.beneficiaryBranchZipCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.routeType,_that.routeCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.beneficiaryCategory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryById implements BeneficiaryById {
  const _BeneficiaryById({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "beneficiary_gender") this.beneficiaryGender, @JsonKey(name: "beneficiary_address1") this.beneficiaryAddress1, @JsonKey(name: "beneficiary_address2") this.beneficiaryAddress2, @JsonKey(name: "beneficiary_address3") this.beneficiaryAddress3, @JsonKey(name: "beneficiary_address4") this.beneficiaryAddress4, @JsonKey(name: "beneficiary_address5") this.beneficiaryAddress5, @JsonKey(name: "beneficiary_state") this.beneficiaryState, @JsonKey(name: "beneficiary_city") this.beneficiaryCity, @JsonKey(name: "beneficiary_city_id") this.beneficiaryCityId, @JsonKey(name: "beneficiary_zip_code") this.beneficiaryZipCode, @JsonKey(name: "beneficiary_idtype_name") this.beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_id") this.beneficiaryIdtypeId, @JsonKey(name: "beneficiary_idtype_code") this.beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_c_b_code") this.beneficiaryIdtypeCBCode, @JsonKey(name: "beneficiary_phone") this.beneficiaryPhone, @JsonKey(name: "beneficiary_mobile_code") this.beneficiaryMobileCode, @JsonKey(name: "beneficiary_mobile") this.beneficiaryMobile, @JsonKey(name: "beneficiary_email") this.beneficiaryEmail, @JsonKey(name: "beneficiary_fax") this.beneficiaryFax, @JsonKey(name: "beneficiary_country_code") this.beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name") this.beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code") this.beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name") this.beneficiaryNationalityName, @JsonKey(name: "beneficiary_nearest_airport_code") this.beneficiaryNearestAirportCode, @JsonKey(name: "beneficiary_nearest_airport_name") this.beneficiaryNearestAirportName, @JsonKey(name: "beneficiary_bank_code") this.beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name") this.beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code") this.beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name") this.beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address") this.beneficiaryBranchAddress, @JsonKey(name: "beneficiary_branch_address2") this.beneficiaryBranchAddress2, @JsonKey(name: "beneficiary_branch_state") this.beneficiaryBranchState, @JsonKey(name: "beneficiary_branch_state_code") this.beneficiaryBranchStateCode, @JsonKey(name: "beneficiary_branch_city") this.beneficiaryBranchCity, @JsonKey(name: "beneficiary_branch_city_code") this.beneficiaryBranchCityCode, @JsonKey(name: "beneficiary_branch_land_mark") this.beneficiaryBranchLandMark, @JsonKey(name: "beneficiary_branch_zip_code") this.beneficiaryBranchZipCode, @JsonKey(name: "beneficary_relation") this.beneficaryRelation, @JsonKey(name: "beneficary_relation_name") this.beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number") this.beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code") this.beneficiaryCategoryCode, @JsonKey(name: "route_type") this.routeType, @JsonKey(name: "route_code") this.routeCode, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "status") this.status, @JsonKey(name: "disbursal_mode_id") this.disbursalModeId, @JsonKey(name: "disbursal_mode") this.disbursalMode, @JsonKey(name: "currency_code") this.currencyCode, @JsonKey(name: "beneficiary_category") this.beneficiaryCategory});
  factory _BeneficiaryById.fromJson(Map<String, dynamic> json) => _$BeneficiaryByIdFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "beneficiary_gender") final  String? beneficiaryGender;
@override@JsonKey(name: "beneficiary_address1") final  String? beneficiaryAddress1;
@override@JsonKey(name: "beneficiary_address2") final  String? beneficiaryAddress2;
@override@JsonKey(name: "beneficiary_address3") final  String? beneficiaryAddress3;
@override@JsonKey(name: "beneficiary_address4") final  String? beneficiaryAddress4;
@override@JsonKey(name: "beneficiary_address5") final  String? beneficiaryAddress5;
@override@JsonKey(name: "beneficiary_state") final  String? beneficiaryState;
@override@JsonKey(name: "beneficiary_city") final  String? beneficiaryCity;
@override@JsonKey(name: "beneficiary_city_id") final  int? beneficiaryCityId;
@override@JsonKey(name: "beneficiary_zip_code") final  String? beneficiaryZipCode;
@override@JsonKey(name: "beneficiary_idtype_name") final  String? beneficiaryIdtypeName;
@override@JsonKey(name: "beneficiary_idtype_id") final  int? beneficiaryIdtypeId;
@override@JsonKey(name: "beneficiary_idtype_code") final  String? beneficiaryIdtypeCode;
@override@JsonKey(name: "beneficiary_idtype_c_b_code") final  String? beneficiaryIdtypeCBCode;
@override@JsonKey(name: "beneficiary_phone") final  String? beneficiaryPhone;
@override@JsonKey(name: "beneficiary_mobile_code") final  int? beneficiaryMobileCode;
@override@JsonKey(name: "beneficiary_mobile") final  String? beneficiaryMobile;
@override@JsonKey(name: "beneficiary_email") final  String? beneficiaryEmail;
@override@JsonKey(name: "beneficiary_fax") final  String? beneficiaryFax;
@override@JsonKey(name: "beneficiary_country_code") final  String? beneficiaryCountryCode;
@override@JsonKey(name: "beneficiary_country_name") final  String? beneficiaryCountryName;
@override@JsonKey(name: "beneficiary_nationality_code") final  String? beneficiaryNationalityCode;
@override@JsonKey(name: "beneficiary_nationality_name") final  String? beneficiaryNationalityName;
@override@JsonKey(name: "beneficiary_nearest_airport_code") final  String? beneficiaryNearestAirportCode;
@override@JsonKey(name: "beneficiary_nearest_airport_name") final  String? beneficiaryNearestAirportName;
@override@JsonKey(name: "beneficiary_bank_code") final  String? beneficiaryBankCode;
@override@JsonKey(name: "beneficiary_bank_name") final  String? beneficiaryBankName;
@override@JsonKey(name: "beneficiary_branch_code") final  String? beneficiaryBranchCode;
@override@JsonKey(name: "beneficiary_branch_name") final  String? beneficiaryBranchName;
@override@JsonKey(name: "beneficiary_branch_address") final  String? beneficiaryBranchAddress;
@override@JsonKey(name: "beneficiary_branch_address2") final  String? beneficiaryBranchAddress2;
@override@JsonKey(name: "beneficiary_branch_state") final  String? beneficiaryBranchState;
@override@JsonKey(name: "beneficiary_branch_state_code") final  String? beneficiaryBranchStateCode;
@override@JsonKey(name: "beneficiary_branch_city") final  String? beneficiaryBranchCity;
@override@JsonKey(name: "beneficiary_branch_city_code") final  String? beneficiaryBranchCityCode;
@override@JsonKey(name: "beneficiary_branch_land_mark") final  String? beneficiaryBranchLandMark;
@override@JsonKey(name: "beneficiary_branch_zip_code") final  String? beneficiaryBranchZipCode;
@override@JsonKey(name: "beneficary_relation") final  String? beneficaryRelation;
@override@JsonKey(name: "beneficary_relation_name") final  String? beneficaryRelationName;
@override@JsonKey(name: "beneficiary_bank_account_number") final  String? beneficiaryBankAccountNumber;
@override@JsonKey(name: "beneficiary_category_code") final  String? beneficiaryCategoryCode;
@override@JsonKey(name: "route_type") final  String? routeType;
@override@JsonKey(name: "route_code") final  String? routeCode;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "disbursal_mode_id") final  int? disbursalModeId;
@override@JsonKey(name: "disbursal_mode") final  String? disbursalMode;
@override@JsonKey(name: "currency_code") final  String? currencyCode;
@override@JsonKey(name: "beneficiary_category") final  String? beneficiaryCategory;

/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryByIdCopyWith<_BeneficiaryById> get copyWith => __$BeneficiaryByIdCopyWithImpl<_BeneficiaryById>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryByIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryById&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryAddress1, beneficiaryAddress1) || other.beneficiaryAddress1 == beneficiaryAddress1)&&(identical(other.beneficiaryAddress2, beneficiaryAddress2) || other.beneficiaryAddress2 == beneficiaryAddress2)&&(identical(other.beneficiaryAddress3, beneficiaryAddress3) || other.beneficiaryAddress3 == beneficiaryAddress3)&&(identical(other.beneficiaryAddress4, beneficiaryAddress4) || other.beneficiaryAddress4 == beneficiaryAddress4)&&(identical(other.beneficiaryAddress5, beneficiaryAddress5) || other.beneficiaryAddress5 == beneficiaryAddress5)&&(identical(other.beneficiaryState, beneficiaryState) || other.beneficiaryState == beneficiaryState)&&(identical(other.beneficiaryCity, beneficiaryCity) || other.beneficiaryCity == beneficiaryCity)&&(identical(other.beneficiaryCityId, beneficiaryCityId) || other.beneficiaryCityId == beneficiaryCityId)&&(identical(other.beneficiaryZipCode, beneficiaryZipCode) || other.beneficiaryZipCode == beneficiaryZipCode)&&(identical(other.beneficiaryIdtypeName, beneficiaryIdtypeName) || other.beneficiaryIdtypeName == beneficiaryIdtypeName)&&(identical(other.beneficiaryIdtypeId, beneficiaryIdtypeId) || other.beneficiaryIdtypeId == beneficiaryIdtypeId)&&(identical(other.beneficiaryIdtypeCode, beneficiaryIdtypeCode) || other.beneficiaryIdtypeCode == beneficiaryIdtypeCode)&&(identical(other.beneficiaryIdtypeCBCode, beneficiaryIdtypeCBCode) || other.beneficiaryIdtypeCBCode == beneficiaryIdtypeCBCode)&&(identical(other.beneficiaryPhone, beneficiaryPhone) || other.beneficiaryPhone == beneficiaryPhone)&&(identical(other.beneficiaryMobileCode, beneficiaryMobileCode) || other.beneficiaryMobileCode == beneficiaryMobileCode)&&(identical(other.beneficiaryMobile, beneficiaryMobile) || other.beneficiaryMobile == beneficiaryMobile)&&(identical(other.beneficiaryEmail, beneficiaryEmail) || other.beneficiaryEmail == beneficiaryEmail)&&(identical(other.beneficiaryFax, beneficiaryFax) || other.beneficiaryFax == beneficiaryFax)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryNearestAirportCode, beneficiaryNearestAirportCode) || other.beneficiaryNearestAirportCode == beneficiaryNearestAirportCode)&&(identical(other.beneficiaryNearestAirportName, beneficiaryNearestAirportName) || other.beneficiaryNearestAirportName == beneficiaryNearestAirportName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficiaryBranchAddress, beneficiaryBranchAddress) || other.beneficiaryBranchAddress == beneficiaryBranchAddress)&&(identical(other.beneficiaryBranchAddress2, beneficiaryBranchAddress2) || other.beneficiaryBranchAddress2 == beneficiaryBranchAddress2)&&(identical(other.beneficiaryBranchState, beneficiaryBranchState) || other.beneficiaryBranchState == beneficiaryBranchState)&&(identical(other.beneficiaryBranchStateCode, beneficiaryBranchStateCode) || other.beneficiaryBranchStateCode == beneficiaryBranchStateCode)&&(identical(other.beneficiaryBranchCity, beneficiaryBranchCity) || other.beneficiaryBranchCity == beneficiaryBranchCity)&&(identical(other.beneficiaryBranchCityCode, beneficiaryBranchCityCode) || other.beneficiaryBranchCityCode == beneficiaryBranchCityCode)&&(identical(other.beneficiaryBranchLandMark, beneficiaryBranchLandMark) || other.beneficiaryBranchLandMark == beneficiaryBranchLandMark)&&(identical(other.beneficiaryBranchZipCode, beneficiaryBranchZipCode) || other.beneficiaryBranchZipCode == beneficiaryBranchZipCode)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.beneficiaryCategoryCode, beneficiaryCategoryCode) || other.beneficiaryCategoryCode == beneficiaryCategoryCode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.beneficiaryCategory, beneficiaryCategory) || other.beneficiaryCategory == beneficiaryCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryGender,beneficiaryAddress1,beneficiaryAddress2,beneficiaryAddress3,beneficiaryAddress4,beneficiaryAddress5,beneficiaryState,beneficiaryCity,beneficiaryCityId,beneficiaryZipCode,beneficiaryIdtypeName,beneficiaryIdtypeId,beneficiaryIdtypeCode,beneficiaryIdtypeCBCode,beneficiaryPhone,beneficiaryMobileCode,beneficiaryMobile,beneficiaryEmail,beneficiaryFax,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryNearestAirportCode,beneficiaryNearestAirportName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficiaryBranchAddress,beneficiaryBranchAddress2,beneficiaryBranchState,beneficiaryBranchStateCode,beneficiaryBranchCity,beneficiaryBranchCityCode,beneficiaryBranchLandMark,beneficiaryBranchZipCode,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,beneficiaryCategoryCode,routeType,routeCode,productCode,productName,status,disbursalModeId,disbursalMode,currencyCode,beneficiaryCategory]);

@override
String toString() {
  return 'BeneficiaryById(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryGender: $beneficiaryGender, beneficiaryAddress1: $beneficiaryAddress1, beneficiaryAddress2: $beneficiaryAddress2, beneficiaryAddress3: $beneficiaryAddress3, beneficiaryAddress4: $beneficiaryAddress4, beneficiaryAddress5: $beneficiaryAddress5, beneficiaryState: $beneficiaryState, beneficiaryCity: $beneficiaryCity, beneficiaryCityId: $beneficiaryCityId, beneficiaryZipCode: $beneficiaryZipCode, beneficiaryIdtypeName: $beneficiaryIdtypeName, beneficiaryIdtypeId: $beneficiaryIdtypeId, beneficiaryIdtypeCode: $beneficiaryIdtypeCode, beneficiaryIdtypeCBCode: $beneficiaryIdtypeCBCode, beneficiaryPhone: $beneficiaryPhone, beneficiaryMobileCode: $beneficiaryMobileCode, beneficiaryMobile: $beneficiaryMobile, beneficiaryEmail: $beneficiaryEmail, beneficiaryFax: $beneficiaryFax, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryNearestAirportCode: $beneficiaryNearestAirportCode, beneficiaryNearestAirportName: $beneficiaryNearestAirportName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficiaryBranchAddress: $beneficiaryBranchAddress, beneficiaryBranchAddress2: $beneficiaryBranchAddress2, beneficiaryBranchState: $beneficiaryBranchState, beneficiaryBranchStateCode: $beneficiaryBranchStateCode, beneficiaryBranchCity: $beneficiaryBranchCity, beneficiaryBranchCityCode: $beneficiaryBranchCityCode, beneficiaryBranchLandMark: $beneficiaryBranchLandMark, beneficiaryBranchZipCode: $beneficiaryBranchZipCode, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, beneficiaryCategoryCode: $beneficiaryCategoryCode, routeType: $routeType, routeCode: $routeCode, productCode: $productCode, productName: $productName, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, beneficiaryCategory: $beneficiaryCategory)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryByIdCopyWith<$Res> implements $BeneficiaryByIdCopyWith<$Res> {
  factory _$BeneficiaryByIdCopyWith(_BeneficiaryById value, $Res Function(_BeneficiaryById) _then) = __$BeneficiaryByIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_address1") String? beneficiaryAddress1,@JsonKey(name: "beneficiary_address2") String? beneficiaryAddress2,@JsonKey(name: "beneficiary_address3") String? beneficiaryAddress3,@JsonKey(name: "beneficiary_address4") String? beneficiaryAddress4,@JsonKey(name: "beneficiary_address5") String? beneficiaryAddress5,@JsonKey(name: "beneficiary_state") String? beneficiaryState,@JsonKey(name: "beneficiary_city") String? beneficiaryCity,@JsonKey(name: "beneficiary_city_id") int? beneficiaryCityId,@JsonKey(name: "beneficiary_zip_code") String? beneficiaryZipCode,@JsonKey(name: "beneficiary_idtype_name") String? beneficiaryIdtypeName,@JsonKey(name: "beneficiary_idtype_id") int? beneficiaryIdtypeId,@JsonKey(name: "beneficiary_idtype_code") String? beneficiaryIdtypeCode,@JsonKey(name: "beneficiary_idtype_c_b_code") String? beneficiaryIdtypeCBCode,@JsonKey(name: "beneficiary_phone") String? beneficiaryPhone,@JsonKey(name: "beneficiary_mobile_code") int? beneficiaryMobileCode,@JsonKey(name: "beneficiary_mobile") String? beneficiaryMobile,@JsonKey(name: "beneficiary_email") String? beneficiaryEmail,@JsonKey(name: "beneficiary_fax") String? beneficiaryFax,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_nearest_airport_code") String? beneficiaryNearestAirportCode,@JsonKey(name: "beneficiary_nearest_airport_name") String? beneficiaryNearestAirportName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficiary_branch_address") String? beneficiaryBranchAddress,@JsonKey(name: "beneficiary_branch_address2") String? beneficiaryBranchAddress2,@JsonKey(name: "beneficiary_branch_state") String? beneficiaryBranchState,@JsonKey(name: "beneficiary_branch_state_code") String? beneficiaryBranchStateCode,@JsonKey(name: "beneficiary_branch_city") String? beneficiaryBranchCity,@JsonKey(name: "beneficiary_branch_city_code") String? beneficiaryBranchCityCode,@JsonKey(name: "beneficiary_branch_land_mark") String? beneficiaryBranchLandMark,@JsonKey(name: "beneficiary_branch_zip_code") String? beneficiaryBranchZipCode,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "beneficiary_category_code") String? beneficiaryCategoryCode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "beneficiary_category") String? beneficiaryCategory
});




}
/// @nodoc
class __$BeneficiaryByIdCopyWithImpl<$Res>
    implements _$BeneficiaryByIdCopyWith<$Res> {
  __$BeneficiaryByIdCopyWithImpl(this._self, this._then);

  final _BeneficiaryById _self;
  final $Res Function(_BeneficiaryById) _then;

/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryAddress1 = freezed,Object? beneficiaryAddress2 = freezed,Object? beneficiaryAddress3 = freezed,Object? beneficiaryAddress4 = freezed,Object? beneficiaryAddress5 = freezed,Object? beneficiaryState = freezed,Object? beneficiaryCity = freezed,Object? beneficiaryCityId = freezed,Object? beneficiaryZipCode = freezed,Object? beneficiaryIdtypeName = freezed,Object? beneficiaryIdtypeId = freezed,Object? beneficiaryIdtypeCode = freezed,Object? beneficiaryIdtypeCBCode = freezed,Object? beneficiaryPhone = freezed,Object? beneficiaryMobileCode = freezed,Object? beneficiaryMobile = freezed,Object? beneficiaryEmail = freezed,Object? beneficiaryFax = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryNearestAirportCode = freezed,Object? beneficiaryNearestAirportName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficiaryBranchAddress = freezed,Object? beneficiaryBranchAddress2 = freezed,Object? beneficiaryBranchState = freezed,Object? beneficiaryBranchStateCode = freezed,Object? beneficiaryBranchCity = freezed,Object? beneficiaryBranchCityCode = freezed,Object? beneficiaryBranchLandMark = freezed,Object? beneficiaryBranchZipCode = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? beneficiaryCategoryCode = freezed,Object? routeType = freezed,Object? routeCode = freezed,Object? productCode = freezed,Object? productName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? beneficiaryCategory = freezed,}) {
  return _then(_BeneficiaryById(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress1: freezed == beneficiaryAddress1 ? _self.beneficiaryAddress1 : beneficiaryAddress1 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress2: freezed == beneficiaryAddress2 ? _self.beneficiaryAddress2 : beneficiaryAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress3: freezed == beneficiaryAddress3 ? _self.beneficiaryAddress3 : beneficiaryAddress3 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress4: freezed == beneficiaryAddress4 ? _self.beneficiaryAddress4 : beneficiaryAddress4 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress5: freezed == beneficiaryAddress5 ? _self.beneficiaryAddress5 : beneficiaryAddress5 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryState: freezed == beneficiaryState ? _self.beneficiaryState : beneficiaryState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCity: freezed == beneficiaryCity ? _self.beneficiaryCity : beneficiaryCity // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCityId: freezed == beneficiaryCityId ? _self.beneficiaryCityId : beneficiaryCityId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryZipCode: freezed == beneficiaryZipCode ? _self.beneficiaryZipCode : beneficiaryZipCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeName: freezed == beneficiaryIdtypeName ? _self.beneficiaryIdtypeName : beneficiaryIdtypeName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeId: freezed == beneficiaryIdtypeId ? _self.beneficiaryIdtypeId : beneficiaryIdtypeId // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryIdtypeCode: freezed == beneficiaryIdtypeCode ? _self.beneficiaryIdtypeCode : beneficiaryIdtypeCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeCBCode: freezed == beneficiaryIdtypeCBCode ? _self.beneficiaryIdtypeCBCode : beneficiaryIdtypeCBCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryPhone: freezed == beneficiaryPhone ? _self.beneficiaryPhone : beneficiaryPhone // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMobileCode: freezed == beneficiaryMobileCode ? _self.beneficiaryMobileCode : beneficiaryMobileCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryMobile: freezed == beneficiaryMobile ? _self.beneficiaryMobile : beneficiaryMobile // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryEmail: freezed == beneficiaryEmail ? _self.beneficiaryEmail : beneficiaryEmail // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFax: freezed == beneficiaryFax ? _self.beneficiaryFax : beneficiaryFax // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNearestAirportCode: freezed == beneficiaryNearestAirportCode ? _self.beneficiaryNearestAirportCode : beneficiaryNearestAirportCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNearestAirportName: freezed == beneficiaryNearestAirportName ? _self.beneficiaryNearestAirportName : beneficiaryNearestAirportName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchName: freezed == beneficiaryBranchName ? _self.beneficiaryBranchName : beneficiaryBranchName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchAddress: freezed == beneficiaryBranchAddress ? _self.beneficiaryBranchAddress : beneficiaryBranchAddress // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchAddress2: freezed == beneficiaryBranchAddress2 ? _self.beneficiaryBranchAddress2 : beneficiaryBranchAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchState: freezed == beneficiaryBranchState ? _self.beneficiaryBranchState : beneficiaryBranchState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchStateCode: freezed == beneficiaryBranchStateCode ? _self.beneficiaryBranchStateCode : beneficiaryBranchStateCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCity: freezed == beneficiaryBranchCity ? _self.beneficiaryBranchCity : beneficiaryBranchCity // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCityCode: freezed == beneficiaryBranchCityCode ? _self.beneficiaryBranchCityCode : beneficiaryBranchCityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchLandMark: freezed == beneficiaryBranchLandMark ? _self.beneficiaryBranchLandMark : beneficiaryBranchLandMark // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchZipCode: freezed == beneficiaryBranchZipCode ? _self.beneficiaryBranchZipCode : beneficiaryBranchZipCode // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategoryCode: freezed == beneficiaryCategoryCode ? _self.beneficiaryCategoryCode : beneficiaryCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategory: freezed == beneficiaryCategory ? _self.beneficiaryCategory : beneficiaryCategory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
