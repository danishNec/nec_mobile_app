// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonTransactionDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") CommonTransactionData get data;
/// Create a copy of CommonTransactionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonTransactionDtoCopyWith<CommonTransactionDto> get copyWith => _$CommonTransactionDtoCopyWithImpl<CommonTransactionDto>(this as CommonTransactionDto, _$identity);

  /// Serializes this CommonTransactionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonTransactionDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'CommonTransactionDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $CommonTransactionDtoCopyWith<$Res>  {
  factory $CommonTransactionDtoCopyWith(CommonTransactionDto value, $Res Function(CommonTransactionDto) _then) = _$CommonTransactionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") CommonTransactionData data
});


$CommonTransactionDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CommonTransactionDtoCopyWithImpl<$Res>
    implements $CommonTransactionDtoCopyWith<$Res> {
  _$CommonTransactionDtoCopyWithImpl(this._self, this._then);

  final CommonTransactionDto _self;
  final $Res Function(CommonTransactionDto) _then;

/// Create a copy of CommonTransactionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommonTransactionData,
  ));
}
/// Create a copy of CommonTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonTransactionDataCopyWith<$Res> get data {
  
  return $CommonTransactionDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommonTransactionDto].
extension CommonTransactionDtoPatterns on CommonTransactionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonTransactionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonTransactionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonTransactionDto value)  $default,){
final _that = this;
switch (_that) {
case _CommonTransactionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonTransactionDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommonTransactionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  CommonTransactionData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonTransactionDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  CommonTransactionData data)  $default,) {final _that = this;
switch (_that) {
case _CommonTransactionDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  CommonTransactionData data)?  $default,) {final _that = this;
switch (_that) {
case _CommonTransactionDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonTransactionDto implements CommonTransactionDto {
  const _CommonTransactionDto({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data = const CommonTransactionData()});
  factory _CommonTransactionDto.fromJson(Map<String, dynamic> json) => _$CommonTransactionDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  CommonTransactionData data;

/// Create a copy of CommonTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonTransactionDtoCopyWith<_CommonTransactionDto> get copyWith => __$CommonTransactionDtoCopyWithImpl<_CommonTransactionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonTransactionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonTransactionDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'CommonTransactionDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CommonTransactionDtoCopyWith<$Res> implements $CommonTransactionDtoCopyWith<$Res> {
  factory _$CommonTransactionDtoCopyWith(_CommonTransactionDto value, $Res Function(_CommonTransactionDto) _then) = __$CommonTransactionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") CommonTransactionData data
});


@override $CommonTransactionDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CommonTransactionDtoCopyWithImpl<$Res>
    implements _$CommonTransactionDtoCopyWith<$Res> {
  __$CommonTransactionDtoCopyWithImpl(this._self, this._then);

  final _CommonTransactionDto _self;
  final $Res Function(_CommonTransactionDto) _then;

/// Create a copy of CommonTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = null,}) {
  return _then(_CommonTransactionDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommonTransactionData,
  ));
}

/// Create a copy of CommonTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommonTransactionDataCopyWith<$Res> get data {
  
  return $CommonTransactionDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CommonTransactionData {

@JsonKey(name: "transactions") List<CommonTransaction> get transactions;
/// Create a copy of CommonTransactionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonTransactionDataCopyWith<CommonTransactionData> get copyWith => _$CommonTransactionDataCopyWithImpl<CommonTransactionData>(this as CommonTransactionData, _$identity);

  /// Serializes this CommonTransactionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonTransactionData&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'CommonTransactionData(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $CommonTransactionDataCopyWith<$Res>  {
  factory $CommonTransactionDataCopyWith(CommonTransactionData value, $Res Function(CommonTransactionData) _then) = _$CommonTransactionDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "transactions") List<CommonTransaction> transactions
});




}
/// @nodoc
class _$CommonTransactionDataCopyWithImpl<$Res>
    implements $CommonTransactionDataCopyWith<$Res> {
  _$CommonTransactionDataCopyWithImpl(this._self, this._then);

  final CommonTransactionData _self;
  final $Res Function(CommonTransactionData) _then;

/// Create a copy of CommonTransactionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactions = null,}) {
  return _then(_self.copyWith(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<CommonTransaction>,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonTransactionData].
extension CommonTransactionDataPatterns on CommonTransactionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonTransactionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonTransactionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonTransactionData value)  $default,){
final _that = this;
switch (_that) {
case _CommonTransactionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonTransactionData value)?  $default,){
final _that = this;
switch (_that) {
case _CommonTransactionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "transactions")  List<CommonTransaction> transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonTransactionData() when $default != null:
return $default(_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "transactions")  List<CommonTransaction> transactions)  $default,) {final _that = this;
switch (_that) {
case _CommonTransactionData():
return $default(_that.transactions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "transactions")  List<CommonTransaction> transactions)?  $default,) {final _that = this;
switch (_that) {
case _CommonTransactionData() when $default != null:
return $default(_that.transactions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonTransactionData implements CommonTransactionData {
  const _CommonTransactionData({@JsonKey(name: "transactions") final  List<CommonTransaction> transactions = const []}): _transactions = transactions;
  factory _CommonTransactionData.fromJson(Map<String, dynamic> json) => _$CommonTransactionDataFromJson(json);

 final  List<CommonTransaction> _transactions;
@override@JsonKey(name: "transactions") List<CommonTransaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of CommonTransactionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonTransactionDataCopyWith<_CommonTransactionData> get copyWith => __$CommonTransactionDataCopyWithImpl<_CommonTransactionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonTransactionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonTransactionData&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'CommonTransactionData(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$CommonTransactionDataCopyWith<$Res> implements $CommonTransactionDataCopyWith<$Res> {
  factory _$CommonTransactionDataCopyWith(_CommonTransactionData value, $Res Function(_CommonTransactionData) _then) = __$CommonTransactionDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "transactions") List<CommonTransaction> transactions
});




}
/// @nodoc
class __$CommonTransactionDataCopyWithImpl<$Res>
    implements _$CommonTransactionDataCopyWith<$Res> {
  __$CommonTransactionDataCopyWithImpl(this._self, this._then);

  final _CommonTransactionData _self;
  final $Res Function(_CommonTransactionData) _then;

/// Create a copy of CommonTransactionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(_CommonTransactionData(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<CommonTransaction>,
  ));
}


}


/// @nodoc
mixin _$CommonTransaction {

@JsonKey(name: "transaction_reference") int? get transactionReference;@JsonKey(name: "beneficiary_name") String? get beneficiaryName;@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "source_currency_code") String? get sourceCurrencyCode;@JsonKey(name: "destination_currency_code") String? get destinationCurrencyCode;@JsonKey(name: "source_country_code") String? get sourceCountryCode;@JsonKey(name: "destination_country_code") String? get destinationCountryCode;@JsonKey(name: "pay_amount") int? get payAmount;@JsonKey(name: "receive_amount") double? get receiveAmount;@JsonKey(name: "transfer_mode_code") String? get transferModeCode;@JsonKey(name: "transfer_mode") String? get transferMode;@JsonKey(name: "payment_mode") String? get paymentMode;@JsonKey(name: "status") String? get status;@JsonKey(name: "app_status") String? get appStatus;@JsonKey(name: "created_on") DateTime? get createdOn;
/// Create a copy of CommonTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonTransactionCopyWith<CommonTransaction> get copyWith => _$CommonTransactionCopyWithImpl<CommonTransaction>(this as CommonTransaction, _$identity);

  /// Serializes this CommonTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonTransaction&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.sourceCurrencyCode, sourceCurrencyCode) || other.sourceCurrencyCode == sourceCurrencyCode)&&(identical(other.destinationCurrencyCode, destinationCurrencyCode) || other.destinationCurrencyCode == destinationCurrencyCode)&&(identical(other.sourceCountryCode, sourceCountryCode) || other.sourceCountryCode == sourceCountryCode)&&(identical(other.destinationCountryCode, destinationCountryCode) || other.destinationCountryCode == destinationCountryCode)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.transferModeCode, transferModeCode) || other.transferModeCode == transferModeCode)&&(identical(other.transferMode, transferMode) || other.transferMode == transferMode)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.status, status) || other.status == status)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionReference,beneficiaryName,eId,sourceCurrencyCode,destinationCurrencyCode,sourceCountryCode,destinationCountryCode,payAmount,receiveAmount,transferModeCode,transferMode,paymentMode,status,appStatus,createdOn);

@override
String toString() {
  return 'CommonTransaction(transactionReference: $transactionReference, beneficiaryName: $beneficiaryName, eId: $eId, sourceCurrencyCode: $sourceCurrencyCode, destinationCurrencyCode: $destinationCurrencyCode, sourceCountryCode: $sourceCountryCode, destinationCountryCode: $destinationCountryCode, payAmount: $payAmount, receiveAmount: $receiveAmount, transferModeCode: $transferModeCode, transferMode: $transferMode, paymentMode: $paymentMode, status: $status, appStatus: $appStatus, createdOn: $createdOn)';
}


}

/// @nodoc
abstract mixin class $CommonTransactionCopyWith<$Res>  {
  factory $CommonTransactionCopyWith(CommonTransaction value, $Res Function(CommonTransaction) _then) = _$CommonTransactionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "beneficiary_name") String? beneficiaryName,@JsonKey(name: "e_id") String? eId,@JsonKey(name: "source_currency_code") String? sourceCurrencyCode,@JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,@JsonKey(name: "source_country_code") String? sourceCountryCode,@JsonKey(name: "destination_country_code") String? destinationCountryCode,@JsonKey(name: "pay_amount") int? payAmount,@JsonKey(name: "receive_amount") double? receiveAmount,@JsonKey(name: "transfer_mode_code") String? transferModeCode,@JsonKey(name: "transfer_mode") String? transferMode,@JsonKey(name: "payment_mode") String? paymentMode,@JsonKey(name: "status") String? status,@JsonKey(name: "app_status") String? appStatus,@JsonKey(name: "created_on") DateTime? createdOn
});




}
/// @nodoc
class _$CommonTransactionCopyWithImpl<$Res>
    implements $CommonTransactionCopyWith<$Res> {
  _$CommonTransactionCopyWithImpl(this._self, this._then);

  final CommonTransaction _self;
  final $Res Function(CommonTransaction) _then;

/// Create a copy of CommonTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionReference = freezed,Object? beneficiaryName = freezed,Object? eId = freezed,Object? sourceCurrencyCode = freezed,Object? destinationCurrencyCode = freezed,Object? sourceCountryCode = freezed,Object? destinationCountryCode = freezed,Object? payAmount = freezed,Object? receiveAmount = freezed,Object? transferModeCode = freezed,Object? transferMode = freezed,Object? paymentMode = freezed,Object? status = freezed,Object? appStatus = freezed,Object? createdOn = freezed,}) {
  return _then(_self.copyWith(
transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,sourceCurrencyCode: freezed == sourceCurrencyCode ? _self.sourceCurrencyCode : sourceCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyCode: freezed == destinationCurrencyCode ? _self.destinationCurrencyCode : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryCode: freezed == sourceCountryCode ? _self.sourceCountryCode : sourceCountryCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryCode: freezed == destinationCountryCode ? _self.destinationCountryCode : destinationCountryCode // ignore: cast_nullable_to_non_nullable
as String?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as int?,receiveAmount: freezed == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as double?,transferModeCode: freezed == transferModeCode ? _self.transferModeCode : transferModeCode // ignore: cast_nullable_to_non_nullable
as String?,transferMode: freezed == transferMode ? _self.transferMode : transferMode // ignore: cast_nullable_to_non_nullable
as String?,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as String?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonTransaction].
extension CommonTransactionPatterns on CommonTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonTransaction value)  $default,){
final _that = this;
switch (_that) {
case _CommonTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _CommonTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "e_id")  String? eId, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  double? receiveAmount, @JsonKey(name: "transfer_mode_code")  String? transferModeCode, @JsonKey(name: "transfer_mode")  String? transferMode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "status")  String? status, @JsonKey(name: "app_status")  String? appStatus, @JsonKey(name: "created_on")  DateTime? createdOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonTransaction() when $default != null:
return $default(_that.transactionReference,_that.beneficiaryName,_that.eId,_that.sourceCurrencyCode,_that.destinationCurrencyCode,_that.sourceCountryCode,_that.destinationCountryCode,_that.payAmount,_that.receiveAmount,_that.transferModeCode,_that.transferMode,_that.paymentMode,_that.status,_that.appStatus,_that.createdOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "e_id")  String? eId, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  double? receiveAmount, @JsonKey(name: "transfer_mode_code")  String? transferModeCode, @JsonKey(name: "transfer_mode")  String? transferMode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "status")  String? status, @JsonKey(name: "app_status")  String? appStatus, @JsonKey(name: "created_on")  DateTime? createdOn)  $default,) {final _that = this;
switch (_that) {
case _CommonTransaction():
return $default(_that.transactionReference,_that.beneficiaryName,_that.eId,_that.sourceCurrencyCode,_that.destinationCurrencyCode,_that.sourceCountryCode,_that.destinationCountryCode,_that.payAmount,_that.receiveAmount,_that.transferModeCode,_that.transferMode,_that.paymentMode,_that.status,_that.appStatus,_that.createdOn);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "transaction_reference")  int? transactionReference, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "e_id")  String? eId, @JsonKey(name: "source_currency_code")  String? sourceCurrencyCode, @JsonKey(name: "destination_currency_code")  String? destinationCurrencyCode, @JsonKey(name: "source_country_code")  String? sourceCountryCode, @JsonKey(name: "destination_country_code")  String? destinationCountryCode, @JsonKey(name: "pay_amount")  int? payAmount, @JsonKey(name: "receive_amount")  double? receiveAmount, @JsonKey(name: "transfer_mode_code")  String? transferModeCode, @JsonKey(name: "transfer_mode")  String? transferMode, @JsonKey(name: "payment_mode")  String? paymentMode, @JsonKey(name: "status")  String? status, @JsonKey(name: "app_status")  String? appStatus, @JsonKey(name: "created_on")  DateTime? createdOn)?  $default,) {final _that = this;
switch (_that) {
case _CommonTransaction() when $default != null:
return $default(_that.transactionReference,_that.beneficiaryName,_that.eId,_that.sourceCurrencyCode,_that.destinationCurrencyCode,_that.sourceCountryCode,_that.destinationCountryCode,_that.payAmount,_that.receiveAmount,_that.transferModeCode,_that.transferMode,_that.paymentMode,_that.status,_that.appStatus,_that.createdOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonTransaction implements CommonTransaction {
  const _CommonTransaction({@JsonKey(name: "transaction_reference") this.transactionReference, @JsonKey(name: "beneficiary_name") this.beneficiaryName, @JsonKey(name: "e_id") this.eId, @JsonKey(name: "source_currency_code") this.sourceCurrencyCode, @JsonKey(name: "destination_currency_code") this.destinationCurrencyCode, @JsonKey(name: "source_country_code") this.sourceCountryCode, @JsonKey(name: "destination_country_code") this.destinationCountryCode, @JsonKey(name: "pay_amount") this.payAmount, @JsonKey(name: "receive_amount") this.receiveAmount, @JsonKey(name: "transfer_mode_code") this.transferModeCode, @JsonKey(name: "transfer_mode") this.transferMode, @JsonKey(name: "payment_mode") this.paymentMode, @JsonKey(name: "status") this.status, @JsonKey(name: "app_status") this.appStatus, @JsonKey(name: "created_on") this.createdOn});
  factory _CommonTransaction.fromJson(Map<String, dynamic> json) => _$CommonTransactionFromJson(json);

@override@JsonKey(name: "transaction_reference") final  int? transactionReference;
@override@JsonKey(name: "beneficiary_name") final  String? beneficiaryName;
@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "source_currency_code") final  String? sourceCurrencyCode;
@override@JsonKey(name: "destination_currency_code") final  String? destinationCurrencyCode;
@override@JsonKey(name: "source_country_code") final  String? sourceCountryCode;
@override@JsonKey(name: "destination_country_code") final  String? destinationCountryCode;
@override@JsonKey(name: "pay_amount") final  int? payAmount;
@override@JsonKey(name: "receive_amount") final  double? receiveAmount;
@override@JsonKey(name: "transfer_mode_code") final  String? transferModeCode;
@override@JsonKey(name: "transfer_mode") final  String? transferMode;
@override@JsonKey(name: "payment_mode") final  String? paymentMode;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "app_status") final  String? appStatus;
@override@JsonKey(name: "created_on") final  DateTime? createdOn;

/// Create a copy of CommonTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonTransactionCopyWith<_CommonTransaction> get copyWith => __$CommonTransactionCopyWithImpl<_CommonTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonTransaction&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.sourceCurrencyCode, sourceCurrencyCode) || other.sourceCurrencyCode == sourceCurrencyCode)&&(identical(other.destinationCurrencyCode, destinationCurrencyCode) || other.destinationCurrencyCode == destinationCurrencyCode)&&(identical(other.sourceCountryCode, sourceCountryCode) || other.sourceCountryCode == sourceCountryCode)&&(identical(other.destinationCountryCode, destinationCountryCode) || other.destinationCountryCode == destinationCountryCode)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.receiveAmount, receiveAmount) || other.receiveAmount == receiveAmount)&&(identical(other.transferModeCode, transferModeCode) || other.transferModeCode == transferModeCode)&&(identical(other.transferMode, transferMode) || other.transferMode == transferMode)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.status, status) || other.status == status)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.createdOn, createdOn) || other.createdOn == createdOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionReference,beneficiaryName,eId,sourceCurrencyCode,destinationCurrencyCode,sourceCountryCode,destinationCountryCode,payAmount,receiveAmount,transferModeCode,transferMode,paymentMode,status,appStatus,createdOn);

@override
String toString() {
  return 'CommonTransaction(transactionReference: $transactionReference, beneficiaryName: $beneficiaryName, eId: $eId, sourceCurrencyCode: $sourceCurrencyCode, destinationCurrencyCode: $destinationCurrencyCode, sourceCountryCode: $sourceCountryCode, destinationCountryCode: $destinationCountryCode, payAmount: $payAmount, receiveAmount: $receiveAmount, transferModeCode: $transferModeCode, transferMode: $transferMode, paymentMode: $paymentMode, status: $status, appStatus: $appStatus, createdOn: $createdOn)';
}


}

/// @nodoc
abstract mixin class _$CommonTransactionCopyWith<$Res> implements $CommonTransactionCopyWith<$Res> {
  factory _$CommonTransactionCopyWith(_CommonTransaction value, $Res Function(_CommonTransaction) _then) = __$CommonTransactionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "transaction_reference") int? transactionReference,@JsonKey(name: "beneficiary_name") String? beneficiaryName,@JsonKey(name: "e_id") String? eId,@JsonKey(name: "source_currency_code") String? sourceCurrencyCode,@JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,@JsonKey(name: "source_country_code") String? sourceCountryCode,@JsonKey(name: "destination_country_code") String? destinationCountryCode,@JsonKey(name: "pay_amount") int? payAmount,@JsonKey(name: "receive_amount") double? receiveAmount,@JsonKey(name: "transfer_mode_code") String? transferModeCode,@JsonKey(name: "transfer_mode") String? transferMode,@JsonKey(name: "payment_mode") String? paymentMode,@JsonKey(name: "status") String? status,@JsonKey(name: "app_status") String? appStatus,@JsonKey(name: "created_on") DateTime? createdOn
});




}
/// @nodoc
class __$CommonTransactionCopyWithImpl<$Res>
    implements _$CommonTransactionCopyWith<$Res> {
  __$CommonTransactionCopyWithImpl(this._self, this._then);

  final _CommonTransaction _self;
  final $Res Function(_CommonTransaction) _then;

/// Create a copy of CommonTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionReference = freezed,Object? beneficiaryName = freezed,Object? eId = freezed,Object? sourceCurrencyCode = freezed,Object? destinationCurrencyCode = freezed,Object? sourceCountryCode = freezed,Object? destinationCountryCode = freezed,Object? payAmount = freezed,Object? receiveAmount = freezed,Object? transferModeCode = freezed,Object? transferMode = freezed,Object? paymentMode = freezed,Object? status = freezed,Object? appStatus = freezed,Object? createdOn = freezed,}) {
  return _then(_CommonTransaction(
transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,sourceCurrencyCode: freezed == sourceCurrencyCode ? _self.sourceCurrencyCode : sourceCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCurrencyCode: freezed == destinationCurrencyCode ? _self.destinationCurrencyCode : destinationCurrencyCode // ignore: cast_nullable_to_non_nullable
as String?,sourceCountryCode: freezed == sourceCountryCode ? _self.sourceCountryCode : sourceCountryCode // ignore: cast_nullable_to_non_nullable
as String?,destinationCountryCode: freezed == destinationCountryCode ? _self.destinationCountryCode : destinationCountryCode // ignore: cast_nullable_to_non_nullable
as String?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as int?,receiveAmount: freezed == receiveAmount ? _self.receiveAmount : receiveAmount // ignore: cast_nullable_to_non_nullable
as double?,transferModeCode: freezed == transferModeCode ? _self.transferModeCode : transferModeCode // ignore: cast_nullable_to_non_nullable
as String?,transferMode: freezed == transferMode ? _self.transferMode : transferMode // ignore: cast_nullable_to_non_nullable
as String?,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as String?,createdOn: freezed == createdOn ? _self.createdOn : createdOn // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
