// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_payment_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonPaymentResultDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") PaymentResultData? get data;
/// Create a copy of CommonPaymentResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonPaymentResultDtoCopyWith<CommonPaymentResultDto> get copyWith => _$CommonPaymentResultDtoCopyWithImpl<CommonPaymentResultDto>(this as CommonPaymentResultDto, _$identity);

  /// Serializes this CommonPaymentResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonPaymentResultDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'CommonPaymentResultDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $CommonPaymentResultDtoCopyWith<$Res>  {
  factory $CommonPaymentResultDtoCopyWith(CommonPaymentResultDto value, $Res Function(CommonPaymentResultDto) _then) = _$CommonPaymentResultDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") PaymentResultData? data
});


$PaymentResultDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CommonPaymentResultDtoCopyWithImpl<$Res>
    implements $CommonPaymentResultDtoCopyWith<$Res> {
  _$CommonPaymentResultDtoCopyWithImpl(this._self, this._then);

  final CommonPaymentResultDto _self;
  final $Res Function(CommonPaymentResultDto) _then;

/// Create a copy of CommonPaymentResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentResultData?,
  ));
}
/// Create a copy of CommonPaymentResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentResultDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PaymentResultDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommonPaymentResultDto].
extension CommonPaymentResultDtoPatterns on CommonPaymentResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonPaymentResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonPaymentResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonPaymentResultDto value)  $default,){
final _that = this;
switch (_that) {
case _CommonPaymentResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonPaymentResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommonPaymentResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  PaymentResultData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonPaymentResultDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  PaymentResultData? data)  $default,) {final _that = this;
switch (_that) {
case _CommonPaymentResultDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  PaymentResultData? data)?  $default,) {final _that = this;
switch (_that) {
case _CommonPaymentResultDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonPaymentResultDto implements CommonPaymentResultDto {
  const _CommonPaymentResultDto({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data});
  factory _CommonPaymentResultDto.fromJson(Map<String, dynamic> json) => _$CommonPaymentResultDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  PaymentResultData? data;

/// Create a copy of CommonPaymentResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonPaymentResultDtoCopyWith<_CommonPaymentResultDto> get copyWith => __$CommonPaymentResultDtoCopyWithImpl<_CommonPaymentResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonPaymentResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonPaymentResultDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'CommonPaymentResultDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CommonPaymentResultDtoCopyWith<$Res> implements $CommonPaymentResultDtoCopyWith<$Res> {
  factory _$CommonPaymentResultDtoCopyWith(_CommonPaymentResultDto value, $Res Function(_CommonPaymentResultDto) _then) = __$CommonPaymentResultDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") PaymentResultData? data
});


@override $PaymentResultDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CommonPaymentResultDtoCopyWithImpl<$Res>
    implements _$CommonPaymentResultDtoCopyWith<$Res> {
  __$CommonPaymentResultDtoCopyWithImpl(this._self, this._then);

  final _CommonPaymentResultDto _self;
  final $Res Function(_CommonPaymentResultDto) _then;

/// Create a copy of CommonPaymentResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_CommonPaymentResultDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaymentResultData?,
  ));
}

/// Create a copy of CommonPaymentResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentResultDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PaymentResultDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PaymentResultData {

@JsonKey(name: "track_id") String? get trackId;@JsonKey(name: "transaction_reference") String? get transactionReference;@JsonKey(name: "amount") double? get amount;@JsonKey(name: "beneficiary_name") String? get beneficiaryName;@JsonKey(name: "payment_intent_id") String? get paymentIntentId;@JsonKey(name: "payment_method") String? get paymentMethod;@JsonKey(name: "transaction_date") DateTime? get transactionDate;@JsonKey(name: "payment_status") String? get paymentStatus;@JsonKey(name: "auth_response_code") String? get authResponseCode;@JsonKey(name: "status_description") String? get statusDescription;@JsonKey(name: "reference_no") String? get referenceNo;@JsonKey(name: "p_g_transaction_id") String? get pGTransactionId;
/// Create a copy of PaymentResultData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResultDataCopyWith<PaymentResultData> get copyWith => _$PaymentResultDataCopyWithImpl<PaymentResultData>(this as PaymentResultData, _$identity);

  /// Serializes this PaymentResultData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResultData&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.paymentIntentId, paymentIntentId) || other.paymentIntentId == paymentIntentId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.authResponseCode, authResponseCode) || other.authResponseCode == authResponseCode)&&(identical(other.statusDescription, statusDescription) || other.statusDescription == statusDescription)&&(identical(other.referenceNo, referenceNo) || other.referenceNo == referenceNo)&&(identical(other.pGTransactionId, pGTransactionId) || other.pGTransactionId == pGTransactionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackId,transactionReference,amount,beneficiaryName,paymentIntentId,paymentMethod,transactionDate,paymentStatus,authResponseCode,statusDescription,referenceNo,pGTransactionId);

@override
String toString() {
  return 'PaymentResultData(trackId: $trackId, transactionReference: $transactionReference, amount: $amount, beneficiaryName: $beneficiaryName, paymentIntentId: $paymentIntentId, paymentMethod: $paymentMethod, transactionDate: $transactionDate, paymentStatus: $paymentStatus, authResponseCode: $authResponseCode, statusDescription: $statusDescription, referenceNo: $referenceNo, pGTransactionId: $pGTransactionId)';
}


}

/// @nodoc
abstract mixin class $PaymentResultDataCopyWith<$Res>  {
  factory $PaymentResultDataCopyWith(PaymentResultData value, $Res Function(PaymentResultData) _then) = _$PaymentResultDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "track_id") String? trackId,@JsonKey(name: "transaction_reference") String? transactionReference,@JsonKey(name: "amount") double? amount,@JsonKey(name: "beneficiary_name") String? beneficiaryName,@JsonKey(name: "payment_intent_id") String? paymentIntentId,@JsonKey(name: "payment_method") String? paymentMethod,@JsonKey(name: "transaction_date") DateTime? transactionDate,@JsonKey(name: "payment_status") String? paymentStatus,@JsonKey(name: "auth_response_code") String? authResponseCode,@JsonKey(name: "status_description") String? statusDescription,@JsonKey(name: "reference_no") String? referenceNo,@JsonKey(name: "p_g_transaction_id") String? pGTransactionId
});




}
/// @nodoc
class _$PaymentResultDataCopyWithImpl<$Res>
    implements $PaymentResultDataCopyWith<$Res> {
  _$PaymentResultDataCopyWithImpl(this._self, this._then);

  final PaymentResultData _self;
  final $Res Function(PaymentResultData) _then;

/// Create a copy of PaymentResultData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trackId = freezed,Object? transactionReference = freezed,Object? amount = freezed,Object? beneficiaryName = freezed,Object? paymentIntentId = freezed,Object? paymentMethod = freezed,Object? transactionDate = freezed,Object? paymentStatus = freezed,Object? authResponseCode = freezed,Object? statusDescription = freezed,Object? referenceNo = freezed,Object? pGTransactionId = freezed,}) {
  return _then(_self.copyWith(
trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,paymentIntentId: freezed == paymentIntentId ? _self.paymentIntentId : paymentIntentId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,authResponseCode: freezed == authResponseCode ? _self.authResponseCode : authResponseCode // ignore: cast_nullable_to_non_nullable
as String?,statusDescription: freezed == statusDescription ? _self.statusDescription : statusDescription // ignore: cast_nullable_to_non_nullable
as String?,referenceNo: freezed == referenceNo ? _self.referenceNo : referenceNo // ignore: cast_nullable_to_non_nullable
as String?,pGTransactionId: freezed == pGTransactionId ? _self.pGTransactionId : pGTransactionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentResultData].
extension PaymentResultDataPatterns on PaymentResultData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResultData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResultData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResultData value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResultData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResultData value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResultData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "track_id")  String? trackId, @JsonKey(name: "transaction_reference")  String? transactionReference, @JsonKey(name: "amount")  double? amount, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "payment_intent_id")  String? paymentIntentId, @JsonKey(name: "payment_method")  String? paymentMethod, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "payment_status")  String? paymentStatus, @JsonKey(name: "auth_response_code")  String? authResponseCode, @JsonKey(name: "status_description")  String? statusDescription, @JsonKey(name: "reference_no")  String? referenceNo, @JsonKey(name: "p_g_transaction_id")  String? pGTransactionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResultData() when $default != null:
return $default(_that.trackId,_that.transactionReference,_that.amount,_that.beneficiaryName,_that.paymentIntentId,_that.paymentMethod,_that.transactionDate,_that.paymentStatus,_that.authResponseCode,_that.statusDescription,_that.referenceNo,_that.pGTransactionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "track_id")  String? trackId, @JsonKey(name: "transaction_reference")  String? transactionReference, @JsonKey(name: "amount")  double? amount, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "payment_intent_id")  String? paymentIntentId, @JsonKey(name: "payment_method")  String? paymentMethod, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "payment_status")  String? paymentStatus, @JsonKey(name: "auth_response_code")  String? authResponseCode, @JsonKey(name: "status_description")  String? statusDescription, @JsonKey(name: "reference_no")  String? referenceNo, @JsonKey(name: "p_g_transaction_id")  String? pGTransactionId)  $default,) {final _that = this;
switch (_that) {
case _PaymentResultData():
return $default(_that.trackId,_that.transactionReference,_that.amount,_that.beneficiaryName,_that.paymentIntentId,_that.paymentMethod,_that.transactionDate,_that.paymentStatus,_that.authResponseCode,_that.statusDescription,_that.referenceNo,_that.pGTransactionId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "track_id")  String? trackId, @JsonKey(name: "transaction_reference")  String? transactionReference, @JsonKey(name: "amount")  double? amount, @JsonKey(name: "beneficiary_name")  String? beneficiaryName, @JsonKey(name: "payment_intent_id")  String? paymentIntentId, @JsonKey(name: "payment_method")  String? paymentMethod, @JsonKey(name: "transaction_date")  DateTime? transactionDate, @JsonKey(name: "payment_status")  String? paymentStatus, @JsonKey(name: "auth_response_code")  String? authResponseCode, @JsonKey(name: "status_description")  String? statusDescription, @JsonKey(name: "reference_no")  String? referenceNo, @JsonKey(name: "p_g_transaction_id")  String? pGTransactionId)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResultData() when $default != null:
return $default(_that.trackId,_that.transactionReference,_that.amount,_that.beneficiaryName,_that.paymentIntentId,_that.paymentMethod,_that.transactionDate,_that.paymentStatus,_that.authResponseCode,_that.statusDescription,_that.referenceNo,_that.pGTransactionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentResultData implements PaymentResultData {
  const _PaymentResultData({@JsonKey(name: "track_id") this.trackId, @JsonKey(name: "transaction_reference") this.transactionReference, @JsonKey(name: "amount") this.amount, @JsonKey(name: "beneficiary_name") this.beneficiaryName, @JsonKey(name: "payment_intent_id") this.paymentIntentId, @JsonKey(name: "payment_method") this.paymentMethod, @JsonKey(name: "transaction_date") this.transactionDate, @JsonKey(name: "payment_status") this.paymentStatus, @JsonKey(name: "auth_response_code") this.authResponseCode, @JsonKey(name: "status_description") this.statusDescription, @JsonKey(name: "reference_no") this.referenceNo, @JsonKey(name: "p_g_transaction_id") this.pGTransactionId});
  factory _PaymentResultData.fromJson(Map<String, dynamic> json) => _$PaymentResultDataFromJson(json);

@override@JsonKey(name: "track_id") final  String? trackId;
@override@JsonKey(name: "transaction_reference") final  String? transactionReference;
@override@JsonKey(name: "amount") final  double? amount;
@override@JsonKey(name: "beneficiary_name") final  String? beneficiaryName;
@override@JsonKey(name: "payment_intent_id") final  String? paymentIntentId;
@override@JsonKey(name: "payment_method") final  String? paymentMethod;
@override@JsonKey(name: "transaction_date") final  DateTime? transactionDate;
@override@JsonKey(name: "payment_status") final  String? paymentStatus;
@override@JsonKey(name: "auth_response_code") final  String? authResponseCode;
@override@JsonKey(name: "status_description") final  String? statusDescription;
@override@JsonKey(name: "reference_no") final  String? referenceNo;
@override@JsonKey(name: "p_g_transaction_id") final  String? pGTransactionId;

/// Create a copy of PaymentResultData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResultDataCopyWith<_PaymentResultData> get copyWith => __$PaymentResultDataCopyWithImpl<_PaymentResultData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResultDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResultData&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.transactionReference, transactionReference) || other.transactionReference == transactionReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.beneficiaryName, beneficiaryName) || other.beneficiaryName == beneficiaryName)&&(identical(other.paymentIntentId, paymentIntentId) || other.paymentIntentId == paymentIntentId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.authResponseCode, authResponseCode) || other.authResponseCode == authResponseCode)&&(identical(other.statusDescription, statusDescription) || other.statusDescription == statusDescription)&&(identical(other.referenceNo, referenceNo) || other.referenceNo == referenceNo)&&(identical(other.pGTransactionId, pGTransactionId) || other.pGTransactionId == pGTransactionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trackId,transactionReference,amount,beneficiaryName,paymentIntentId,paymentMethod,transactionDate,paymentStatus,authResponseCode,statusDescription,referenceNo,pGTransactionId);

@override
String toString() {
  return 'PaymentResultData(trackId: $trackId, transactionReference: $transactionReference, amount: $amount, beneficiaryName: $beneficiaryName, paymentIntentId: $paymentIntentId, paymentMethod: $paymentMethod, transactionDate: $transactionDate, paymentStatus: $paymentStatus, authResponseCode: $authResponseCode, statusDescription: $statusDescription, referenceNo: $referenceNo, pGTransactionId: $pGTransactionId)';
}


}

/// @nodoc
abstract mixin class _$PaymentResultDataCopyWith<$Res> implements $PaymentResultDataCopyWith<$Res> {
  factory _$PaymentResultDataCopyWith(_PaymentResultData value, $Res Function(_PaymentResultData) _then) = __$PaymentResultDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "track_id") String? trackId,@JsonKey(name: "transaction_reference") String? transactionReference,@JsonKey(name: "amount") double? amount,@JsonKey(name: "beneficiary_name") String? beneficiaryName,@JsonKey(name: "payment_intent_id") String? paymentIntentId,@JsonKey(name: "payment_method") String? paymentMethod,@JsonKey(name: "transaction_date") DateTime? transactionDate,@JsonKey(name: "payment_status") String? paymentStatus,@JsonKey(name: "auth_response_code") String? authResponseCode,@JsonKey(name: "status_description") String? statusDescription,@JsonKey(name: "reference_no") String? referenceNo,@JsonKey(name: "p_g_transaction_id") String? pGTransactionId
});




}
/// @nodoc
class __$PaymentResultDataCopyWithImpl<$Res>
    implements _$PaymentResultDataCopyWith<$Res> {
  __$PaymentResultDataCopyWithImpl(this._self, this._then);

  final _PaymentResultData _self;
  final $Res Function(_PaymentResultData) _then;

/// Create a copy of PaymentResultData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trackId = freezed,Object? transactionReference = freezed,Object? amount = freezed,Object? beneficiaryName = freezed,Object? paymentIntentId = freezed,Object? paymentMethod = freezed,Object? transactionDate = freezed,Object? paymentStatus = freezed,Object? authResponseCode = freezed,Object? statusDescription = freezed,Object? referenceNo = freezed,Object? pGTransactionId = freezed,}) {
  return _then(_PaymentResultData(
trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,transactionReference: freezed == transactionReference ? _self.transactionReference : transactionReference // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,beneficiaryName: freezed == beneficiaryName ? _self.beneficiaryName : beneficiaryName // ignore: cast_nullable_to_non_nullable
as String?,paymentIntentId: freezed == paymentIntentId ? _self.paymentIntentId : paymentIntentId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,authResponseCode: freezed == authResponseCode ? _self.authResponseCode : authResponseCode // ignore: cast_nullable_to_non_nullable
as String?,statusDescription: freezed == statusDescription ? _self.statusDescription : statusDescription // ignore: cast_nullable_to_non_nullable
as String?,referenceNo: freezed == referenceNo ? _self.referenceNo : referenceNo // ignore: cast_nullable_to_non_nullable
as String?,pGTransactionId: freezed == pGTransactionId ? _self.pGTransactionId : pGTransactionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
