// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_calculate_amount_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeCalculateAmountDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of HomeCalculateAmountDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCalculateAmountDtoCopyWith<HomeCalculateAmountDto> get copyWith => _$HomeCalculateAmountDtoCopyWithImpl<HomeCalculateAmountDto>(this as HomeCalculateAmountDto, _$identity);

  /// Serializes this HomeCalculateAmountDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeCalculateAmountDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'HomeCalculateAmountDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $HomeCalculateAmountDtoCopyWith<$Res>  {
  factory $HomeCalculateAmountDtoCopyWith(HomeCalculateAmountDto value, $Res Function(HomeCalculateAmountDto) _then) = _$HomeCalculateAmountDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$HomeCalculateAmountDtoCopyWithImpl<$Res>
    implements $HomeCalculateAmountDtoCopyWith<$Res> {
  _$HomeCalculateAmountDtoCopyWithImpl(this._self, this._then);

  final HomeCalculateAmountDto _self;
  final $Res Function(HomeCalculateAmountDto) _then;

/// Create a copy of HomeCalculateAmountDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeCalculateAmountDto
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


/// Adds pattern-matching-related methods to [HomeCalculateAmountDto].
extension HomeCalculateAmountDtoPatterns on HomeCalculateAmountDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeCalculateAmountDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeCalculateAmountDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeCalculateAmountDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeCalculateAmountDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeCalculateAmountDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeCalculateAmountDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeCalculateAmountDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)  $default,) {final _that = this;
switch (_that) {
case _HomeCalculateAmountDto():
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,) {final _that = this;
switch (_that) {
case _HomeCalculateAmountDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeCalculateAmountDto implements HomeCalculateAmountDto {
  const _HomeCalculateAmountDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _HomeCalculateAmountDto.fromJson(Map<String, dynamic> json) => _$HomeCalculateAmountDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of HomeCalculateAmountDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeCalculateAmountDtoCopyWith<_HomeCalculateAmountDto> get copyWith => __$HomeCalculateAmountDtoCopyWithImpl<_HomeCalculateAmountDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeCalculateAmountDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeCalculateAmountDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'HomeCalculateAmountDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$HomeCalculateAmountDtoCopyWith<$Res> implements $HomeCalculateAmountDtoCopyWith<$Res> {
  factory _$HomeCalculateAmountDtoCopyWith(_HomeCalculateAmountDto value, $Res Function(_HomeCalculateAmountDto) _then) = __$HomeCalculateAmountDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$HomeCalculateAmountDtoCopyWithImpl<$Res>
    implements _$HomeCalculateAmountDtoCopyWith<$Res> {
  __$HomeCalculateAmountDtoCopyWithImpl(this._self, this._then);

  final _HomeCalculateAmountDto _self;
  final $Res Function(_HomeCalculateAmountDto) _then;

/// Create a copy of HomeCalculateAmountDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_HomeCalculateAmountDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeCalculateAmountDto
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

@JsonKey(name: "amount") Amount? get amount;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'Data(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "amount") Amount? amount
});


$AmountCopyWith<$Res>? get amount;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $AmountCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "amount")  Amount? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "amount")  Amount? amount)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.amount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "amount")  Amount? amount)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "amount") this.amount});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "amount") final  Amount? amount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'Data(amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "amount") Amount? amount
});


@override $AmountCopyWith<$Res>? get amount;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,}) {
  return _then(_Data(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AmountCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $AmountCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// @nodoc
mixin _$Amount {

@JsonKey(name: "pay_amount") double? get payAmount;@JsonKey(name: "commission") double? get commission;@JsonKey(name: "tax_percentage") double? get taxPercentage;@JsonKey(name: "tax") double? get tax;@JsonKey(name: "fee") double? get fee;@JsonKey(name: "ho_rate") double? get hoRate;@JsonKey(name: "net_pay_amount") double? get netPayAmount;@JsonKey(name: "f_c_commission") double? get fcCommission;@JsonKey(name: "rate") double? get rate;@JsonKey(name: "display_rate") double? get displayRate;@JsonKey(name: "net_receive_amount") double? get netReceiveAmount;@JsonKey(name: "rate_operator") String? get rateOperator;@JsonKey(name: "mobile_rate_operator") String? get mobileRateOperator;@JsonKey(name: "agent_name") String? get agentName;@JsonKey(name: "agent_code") String? get agentCode;@JsonKey(name: "branch_name") String? get branchName;@JsonKey(name: "branch_code") String? get branchCode;
/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmountCopyWith<Amount> get copyWith => _$AmountCopyWithImpl<Amount>(this as Amount, _$identity);

  /// Serializes this Amount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Amount&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.hoRate, hoRate) || other.hoRate == hoRate)&&(identical(other.netPayAmount, netPayAmount) || other.netPayAmount == netPayAmount)&&(identical(other.fcCommission, fcCommission) || other.fcCommission == fcCommission)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.displayRate, displayRate) || other.displayRate == displayRate)&&(identical(other.netReceiveAmount, netReceiveAmount) || other.netReceiveAmount == netReceiveAmount)&&(identical(other.rateOperator, rateOperator) || other.rateOperator == rateOperator)&&(identical(other.mobileRateOperator, mobileRateOperator) || other.mobileRateOperator == mobileRateOperator)&&(identical(other.agentName, agentName) || other.agentName == agentName)&&(identical(other.agentCode, agentCode) || other.agentCode == agentCode)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.branchCode, branchCode) || other.branchCode == branchCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payAmount,commission,taxPercentage,tax,fee,hoRate,netPayAmount,fcCommission,rate,displayRate,netReceiveAmount,rateOperator,mobileRateOperator,agentName,agentCode,branchName,branchCode);

@override
String toString() {
  return 'Amount(payAmount: $payAmount, commission: $commission, taxPercentage: $taxPercentage, tax: $tax, fee: $fee, hoRate: $hoRate, netPayAmount: $netPayAmount, fcCommission: $fcCommission, rate: $rate, displayRate: $displayRate, netReceiveAmount: $netReceiveAmount, rateOperator: $rateOperator, mobileRateOperator: $mobileRateOperator, agentName: $agentName, agentCode: $agentCode, branchName: $branchName, branchCode: $branchCode)';
}


}

/// @nodoc
abstract mixin class $AmountCopyWith<$Res>  {
  factory $AmountCopyWith(Amount value, $Res Function(Amount) _then) = _$AmountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "pay_amount") double? payAmount,@JsonKey(name: "commission") double? commission,@JsonKey(name: "tax_percentage") double? taxPercentage,@JsonKey(name: "tax") double? tax,@JsonKey(name: "fee") double? fee,@JsonKey(name: "ho_rate") double? hoRate,@JsonKey(name: "net_pay_amount") double? netPayAmount,@JsonKey(name: "f_c_commission") double? fcCommission,@JsonKey(name: "rate") double? rate,@JsonKey(name: "display_rate") double? displayRate,@JsonKey(name: "net_receive_amount") double? netReceiveAmount,@JsonKey(name: "rate_operator") String? rateOperator,@JsonKey(name: "mobile_rate_operator") String? mobileRateOperator,@JsonKey(name: "agent_name") String? agentName,@JsonKey(name: "agent_code") String? agentCode,@JsonKey(name: "branch_name") String? branchName,@JsonKey(name: "branch_code") String? branchCode
});




}
/// @nodoc
class _$AmountCopyWithImpl<$Res>
    implements $AmountCopyWith<$Res> {
  _$AmountCopyWithImpl(this._self, this._then);

  final Amount _self;
  final $Res Function(Amount) _then;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payAmount = freezed,Object? commission = freezed,Object? taxPercentage = freezed,Object? tax = freezed,Object? fee = freezed,Object? hoRate = freezed,Object? netPayAmount = freezed,Object? fcCommission = freezed,Object? rate = freezed,Object? displayRate = freezed,Object? netReceiveAmount = freezed,Object? rateOperator = freezed,Object? mobileRateOperator = freezed,Object? agentName = freezed,Object? agentCode = freezed,Object? branchName = freezed,Object? branchCode = freezed,}) {
  return _then(_self.copyWith(
payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,hoRate: freezed == hoRate ? _self.hoRate : hoRate // ignore: cast_nullable_to_non_nullable
as double?,netPayAmount: freezed == netPayAmount ? _self.netPayAmount : netPayAmount // ignore: cast_nullable_to_non_nullable
as double?,fcCommission: freezed == fcCommission ? _self.fcCommission : fcCommission // ignore: cast_nullable_to_non_nullable
as double?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,displayRate: freezed == displayRate ? _self.displayRate : displayRate // ignore: cast_nullable_to_non_nullable
as double?,netReceiveAmount: freezed == netReceiveAmount ? _self.netReceiveAmount : netReceiveAmount // ignore: cast_nullable_to_non_nullable
as double?,rateOperator: freezed == rateOperator ? _self.rateOperator : rateOperator // ignore: cast_nullable_to_non_nullable
as String?,mobileRateOperator: freezed == mobileRateOperator ? _self.mobileRateOperator : mobileRateOperator // ignore: cast_nullable_to_non_nullable
as String?,agentName: freezed == agentName ? _self.agentName : agentName // ignore: cast_nullable_to_non_nullable
as String?,agentCode: freezed == agentCode ? _self.agentCode : agentCode // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,branchCode: freezed == branchCode ? _self.branchCode : branchCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Amount].
extension AmountPatterns on Amount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Amount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Amount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Amount value)  $default,){
final _that = this;
switch (_that) {
case _Amount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Amount value)?  $default,){
final _that = this;
switch (_that) {
case _Amount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "pay_amount")  double? payAmount, @JsonKey(name: "commission")  double? commission, @JsonKey(name: "tax_percentage")  double? taxPercentage, @JsonKey(name: "tax")  double? tax, @JsonKey(name: "fee")  double? fee, @JsonKey(name: "ho_rate")  double? hoRate, @JsonKey(name: "net_pay_amount")  double? netPayAmount, @JsonKey(name: "f_c_commission")  double? fcCommission, @JsonKey(name: "rate")  double? rate, @JsonKey(name: "display_rate")  double? displayRate, @JsonKey(name: "net_receive_amount")  double? netReceiveAmount, @JsonKey(name: "rate_operator")  String? rateOperator, @JsonKey(name: "mobile_rate_operator")  String? mobileRateOperator, @JsonKey(name: "agent_name")  String? agentName, @JsonKey(name: "agent_code")  String? agentCode, @JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "branch_code")  String? branchCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Amount() when $default != null:
return $default(_that.payAmount,_that.commission,_that.taxPercentage,_that.tax,_that.fee,_that.hoRate,_that.netPayAmount,_that.fcCommission,_that.rate,_that.displayRate,_that.netReceiveAmount,_that.rateOperator,_that.mobileRateOperator,_that.agentName,_that.agentCode,_that.branchName,_that.branchCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "pay_amount")  double? payAmount, @JsonKey(name: "commission")  double? commission, @JsonKey(name: "tax_percentage")  double? taxPercentage, @JsonKey(name: "tax")  double? tax, @JsonKey(name: "fee")  double? fee, @JsonKey(name: "ho_rate")  double? hoRate, @JsonKey(name: "net_pay_amount")  double? netPayAmount, @JsonKey(name: "f_c_commission")  double? fcCommission, @JsonKey(name: "rate")  double? rate, @JsonKey(name: "display_rate")  double? displayRate, @JsonKey(name: "net_receive_amount")  double? netReceiveAmount, @JsonKey(name: "rate_operator")  String? rateOperator, @JsonKey(name: "mobile_rate_operator")  String? mobileRateOperator, @JsonKey(name: "agent_name")  String? agentName, @JsonKey(name: "agent_code")  String? agentCode, @JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "branch_code")  String? branchCode)  $default,) {final _that = this;
switch (_that) {
case _Amount():
return $default(_that.payAmount,_that.commission,_that.taxPercentage,_that.tax,_that.fee,_that.hoRate,_that.netPayAmount,_that.fcCommission,_that.rate,_that.displayRate,_that.netReceiveAmount,_that.rateOperator,_that.mobileRateOperator,_that.agentName,_that.agentCode,_that.branchName,_that.branchCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "pay_amount")  double? payAmount, @JsonKey(name: "commission")  double? commission, @JsonKey(name: "tax_percentage")  double? taxPercentage, @JsonKey(name: "tax")  double? tax, @JsonKey(name: "fee")  double? fee, @JsonKey(name: "ho_rate")  double? hoRate, @JsonKey(name: "net_pay_amount")  double? netPayAmount, @JsonKey(name: "f_c_commission")  double? fcCommission, @JsonKey(name: "rate")  double? rate, @JsonKey(name: "display_rate")  double? displayRate, @JsonKey(name: "net_receive_amount")  double? netReceiveAmount, @JsonKey(name: "rate_operator")  String? rateOperator, @JsonKey(name: "mobile_rate_operator")  String? mobileRateOperator, @JsonKey(name: "agent_name")  String? agentName, @JsonKey(name: "agent_code")  String? agentCode, @JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "branch_code")  String? branchCode)?  $default,) {final _that = this;
switch (_that) {
case _Amount() when $default != null:
return $default(_that.payAmount,_that.commission,_that.taxPercentage,_that.tax,_that.fee,_that.hoRate,_that.netPayAmount,_that.fcCommission,_that.rate,_that.displayRate,_that.netReceiveAmount,_that.rateOperator,_that.mobileRateOperator,_that.agentName,_that.agentCode,_that.branchName,_that.branchCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Amount implements Amount {
  const _Amount({@JsonKey(name: "pay_amount") this.payAmount, @JsonKey(name: "commission") this.commission, @JsonKey(name: "tax_percentage") this.taxPercentage, @JsonKey(name: "tax") this.tax, @JsonKey(name: "fee") this.fee, @JsonKey(name: "ho_rate") this.hoRate, @JsonKey(name: "net_pay_amount") this.netPayAmount, @JsonKey(name: "f_c_commission") this.fcCommission, @JsonKey(name: "rate") this.rate, @JsonKey(name: "display_rate") this.displayRate, @JsonKey(name: "net_receive_amount") this.netReceiveAmount, @JsonKey(name: "rate_operator") this.rateOperator, @JsonKey(name: "mobile_rate_operator") this.mobileRateOperator, @JsonKey(name: "agent_name") this.agentName, @JsonKey(name: "agent_code") this.agentCode, @JsonKey(name: "branch_name") this.branchName, @JsonKey(name: "branch_code") this.branchCode});
  factory _Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

@override@JsonKey(name: "pay_amount") final  double? payAmount;
@override@JsonKey(name: "commission") final  double? commission;
@override@JsonKey(name: "tax_percentage") final  double? taxPercentage;
@override@JsonKey(name: "tax") final  double? tax;
@override@JsonKey(name: "fee") final  double? fee;
@override@JsonKey(name: "ho_rate") final  double? hoRate;
@override@JsonKey(name: "net_pay_amount") final  double? netPayAmount;
@override@JsonKey(name: "f_c_commission") final  double? fcCommission;
@override@JsonKey(name: "rate") final  double? rate;
@override@JsonKey(name: "display_rate") final  double? displayRate;
@override@JsonKey(name: "net_receive_amount") final  double? netReceiveAmount;
@override@JsonKey(name: "rate_operator") final  String? rateOperator;
@override@JsonKey(name: "mobile_rate_operator") final  String? mobileRateOperator;
@override@JsonKey(name: "agent_name") final  String? agentName;
@override@JsonKey(name: "agent_code") final  String? agentCode;
@override@JsonKey(name: "branch_name") final  String? branchName;
@override@JsonKey(name: "branch_code") final  String? branchCode;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmountCopyWith<_Amount> get copyWith => __$AmountCopyWithImpl<_Amount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Amount&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.hoRate, hoRate) || other.hoRate == hoRate)&&(identical(other.netPayAmount, netPayAmount) || other.netPayAmount == netPayAmount)&&(identical(other.fcCommission, fcCommission) || other.fcCommission == fcCommission)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.displayRate, displayRate) || other.displayRate == displayRate)&&(identical(other.netReceiveAmount, netReceiveAmount) || other.netReceiveAmount == netReceiveAmount)&&(identical(other.rateOperator, rateOperator) || other.rateOperator == rateOperator)&&(identical(other.mobileRateOperator, mobileRateOperator) || other.mobileRateOperator == mobileRateOperator)&&(identical(other.agentName, agentName) || other.agentName == agentName)&&(identical(other.agentCode, agentCode) || other.agentCode == agentCode)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.branchCode, branchCode) || other.branchCode == branchCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payAmount,commission,taxPercentage,tax,fee,hoRate,netPayAmount,fcCommission,rate,displayRate,netReceiveAmount,rateOperator,mobileRateOperator,agentName,agentCode,branchName,branchCode);

@override
String toString() {
  return 'Amount(payAmount: $payAmount, commission: $commission, taxPercentage: $taxPercentage, tax: $tax, fee: $fee, hoRate: $hoRate, netPayAmount: $netPayAmount, fcCommission: $fcCommission, rate: $rate, displayRate: $displayRate, netReceiveAmount: $netReceiveAmount, rateOperator: $rateOperator, mobileRateOperator: $mobileRateOperator, agentName: $agentName, agentCode: $agentCode, branchName: $branchName, branchCode: $branchCode)';
}


}

/// @nodoc
abstract mixin class _$AmountCopyWith<$Res> implements $AmountCopyWith<$Res> {
  factory _$AmountCopyWith(_Amount value, $Res Function(_Amount) _then) = __$AmountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "pay_amount") double? payAmount,@JsonKey(name: "commission") double? commission,@JsonKey(name: "tax_percentage") double? taxPercentage,@JsonKey(name: "tax") double? tax,@JsonKey(name: "fee") double? fee,@JsonKey(name: "ho_rate") double? hoRate,@JsonKey(name: "net_pay_amount") double? netPayAmount,@JsonKey(name: "f_c_commission") double? fcCommission,@JsonKey(name: "rate") double? rate,@JsonKey(name: "display_rate") double? displayRate,@JsonKey(name: "net_receive_amount") double? netReceiveAmount,@JsonKey(name: "rate_operator") String? rateOperator,@JsonKey(name: "mobile_rate_operator") String? mobileRateOperator,@JsonKey(name: "agent_name") String? agentName,@JsonKey(name: "agent_code") String? agentCode,@JsonKey(name: "branch_name") String? branchName,@JsonKey(name: "branch_code") String? branchCode
});




}
/// @nodoc
class __$AmountCopyWithImpl<$Res>
    implements _$AmountCopyWith<$Res> {
  __$AmountCopyWithImpl(this._self, this._then);

  final _Amount _self;
  final $Res Function(_Amount) _then;

/// Create a copy of Amount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payAmount = freezed,Object? commission = freezed,Object? taxPercentage = freezed,Object? tax = freezed,Object? fee = freezed,Object? hoRate = freezed,Object? netPayAmount = freezed,Object? fcCommission = freezed,Object? rate = freezed,Object? displayRate = freezed,Object? netReceiveAmount = freezed,Object? rateOperator = freezed,Object? mobileRateOperator = freezed,Object? agentName = freezed,Object? agentCode = freezed,Object? branchName = freezed,Object? branchCode = freezed,}) {
  return _then(_Amount(
payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,hoRate: freezed == hoRate ? _self.hoRate : hoRate // ignore: cast_nullable_to_non_nullable
as double?,netPayAmount: freezed == netPayAmount ? _self.netPayAmount : netPayAmount // ignore: cast_nullable_to_non_nullable
as double?,fcCommission: freezed == fcCommission ? _self.fcCommission : fcCommission // ignore: cast_nullable_to_non_nullable
as double?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,displayRate: freezed == displayRate ? _self.displayRate : displayRate // ignore: cast_nullable_to_non_nullable
as double?,netReceiveAmount: freezed == netReceiveAmount ? _self.netReceiveAmount : netReceiveAmount // ignore: cast_nullable_to_non_nullable
as double?,rateOperator: freezed == rateOperator ? _self.rateOperator : rateOperator // ignore: cast_nullable_to_non_nullable
as String?,mobileRateOperator: freezed == mobileRateOperator ? _self.mobileRateOperator : mobileRateOperator // ignore: cast_nullable_to_non_nullable
as String?,agentName: freezed == agentName ? _self.agentName : agentName // ignore: cast_nullable_to_non_nullable
as String?,agentCode: freezed == agentCode ? _self.agentCode : agentCode // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,branchCode: freezed == branchCode ? _self.branchCode : branchCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
