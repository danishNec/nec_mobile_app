// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_send_money_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonSendMoneyDto {

 double? get sourceAmount; double? get destinationAmount; double? get displayRate; double? get rate; String? get rateOperator; double? get benePay; double? get fCCommission; double? get netLcAmount; double? get commission; double? get fee; double? get tax; double? get taxPercentage; double? get payAmount; double? get totalPayableAmount;
/// Create a copy of CommonSendMoneyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonSendMoneyDtoCopyWith<CommonSendMoneyDto> get copyWith => _$CommonSendMoneyDtoCopyWithImpl<CommonSendMoneyDto>(this as CommonSendMoneyDto, _$identity);

  /// Serializes this CommonSendMoneyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonSendMoneyDto&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount)&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount)&&(identical(other.displayRate, displayRate) || other.displayRate == displayRate)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.rateOperator, rateOperator) || other.rateOperator == rateOperator)&&(identical(other.benePay, benePay) || other.benePay == benePay)&&(identical(other.fCCommission, fCCommission) || other.fCCommission == fCCommission)&&(identical(other.netLcAmount, netLcAmount) || other.netLcAmount == netLcAmount)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.totalPayableAmount, totalPayableAmount) || other.totalPayableAmount == totalPayableAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sourceAmount,destinationAmount,displayRate,rate,rateOperator,benePay,fCCommission,netLcAmount,commission,fee,tax,taxPercentage,payAmount,totalPayableAmount);

@override
String toString() {
  return 'CommonSendMoneyDto(sourceAmount: $sourceAmount, destinationAmount: $destinationAmount, displayRate: $displayRate, rate: $rate, rateOperator: $rateOperator, benePay: $benePay, fCCommission: $fCCommission, netLcAmount: $netLcAmount, commission: $commission, fee: $fee, tax: $tax, taxPercentage: $taxPercentage, payAmount: $payAmount, totalPayableAmount: $totalPayableAmount)';
}


}

/// @nodoc
abstract mixin class $CommonSendMoneyDtoCopyWith<$Res>  {
  factory $CommonSendMoneyDtoCopyWith(CommonSendMoneyDto value, $Res Function(CommonSendMoneyDto) _then) = _$CommonSendMoneyDtoCopyWithImpl;
@useResult
$Res call({
 double? sourceAmount, double? destinationAmount, double? displayRate, double? rate, String? rateOperator, double? benePay, double? fCCommission, double? netLcAmount, double? commission, double? fee, double? tax, double? taxPercentage, double? payAmount, double? totalPayableAmount
});




}
/// @nodoc
class _$CommonSendMoneyDtoCopyWithImpl<$Res>
    implements $CommonSendMoneyDtoCopyWith<$Res> {
  _$CommonSendMoneyDtoCopyWithImpl(this._self, this._then);

  final CommonSendMoneyDto _self;
  final $Res Function(CommonSendMoneyDto) _then;

/// Create a copy of CommonSendMoneyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sourceAmount = freezed,Object? destinationAmount = freezed,Object? displayRate = freezed,Object? rate = freezed,Object? rateOperator = freezed,Object? benePay = freezed,Object? fCCommission = freezed,Object? netLcAmount = freezed,Object? commission = freezed,Object? fee = freezed,Object? tax = freezed,Object? taxPercentage = freezed,Object? payAmount = freezed,Object? totalPayableAmount = freezed,}) {
  return _then(_self.copyWith(
sourceAmount: freezed == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as double?,destinationAmount: freezed == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as double?,displayRate: freezed == displayRate ? _self.displayRate : displayRate // ignore: cast_nullable_to_non_nullable
as double?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,rateOperator: freezed == rateOperator ? _self.rateOperator : rateOperator // ignore: cast_nullable_to_non_nullable
as String?,benePay: freezed == benePay ? _self.benePay : benePay // ignore: cast_nullable_to_non_nullable
as double?,fCCommission: freezed == fCCommission ? _self.fCCommission : fCCommission // ignore: cast_nullable_to_non_nullable
as double?,netLcAmount: freezed == netLcAmount ? _self.netLcAmount : netLcAmount // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as double?,totalPayableAmount: freezed == totalPayableAmount ? _self.totalPayableAmount : totalPayableAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonSendMoneyDto].
extension CommonSendMoneyDtoPatterns on CommonSendMoneyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonSendMoneyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonSendMoneyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonSendMoneyDto value)  $default,){
final _that = this;
switch (_that) {
case _CommonSendMoneyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonSendMoneyDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommonSendMoneyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? sourceAmount,  double? destinationAmount,  double? displayRate,  double? rate,  String? rateOperator,  double? benePay,  double? fCCommission,  double? netLcAmount,  double? commission,  double? fee,  double? tax,  double? taxPercentage,  double? payAmount,  double? totalPayableAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonSendMoneyDto() when $default != null:
return $default(_that.sourceAmount,_that.destinationAmount,_that.displayRate,_that.rate,_that.rateOperator,_that.benePay,_that.fCCommission,_that.netLcAmount,_that.commission,_that.fee,_that.tax,_that.taxPercentage,_that.payAmount,_that.totalPayableAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? sourceAmount,  double? destinationAmount,  double? displayRate,  double? rate,  String? rateOperator,  double? benePay,  double? fCCommission,  double? netLcAmount,  double? commission,  double? fee,  double? tax,  double? taxPercentage,  double? payAmount,  double? totalPayableAmount)  $default,) {final _that = this;
switch (_that) {
case _CommonSendMoneyDto():
return $default(_that.sourceAmount,_that.destinationAmount,_that.displayRate,_that.rate,_that.rateOperator,_that.benePay,_that.fCCommission,_that.netLcAmount,_that.commission,_that.fee,_that.tax,_that.taxPercentage,_that.payAmount,_that.totalPayableAmount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? sourceAmount,  double? destinationAmount,  double? displayRate,  double? rate,  String? rateOperator,  double? benePay,  double? fCCommission,  double? netLcAmount,  double? commission,  double? fee,  double? tax,  double? taxPercentage,  double? payAmount,  double? totalPayableAmount)?  $default,) {final _that = this;
switch (_that) {
case _CommonSendMoneyDto() when $default != null:
return $default(_that.sourceAmount,_that.destinationAmount,_that.displayRate,_that.rate,_that.rateOperator,_that.benePay,_that.fCCommission,_that.netLcAmount,_that.commission,_that.fee,_that.tax,_that.taxPercentage,_that.payAmount,_that.totalPayableAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonSendMoneyDto implements CommonSendMoneyDto {
  const _CommonSendMoneyDto({this.sourceAmount, this.destinationAmount, this.displayRate, this.rate, this.rateOperator, this.benePay, this.fCCommission, this.netLcAmount, this.commission, this.fee, this.tax, this.taxPercentage, this.payAmount, this.totalPayableAmount});
  factory _CommonSendMoneyDto.fromJson(Map<String, dynamic> json) => _$CommonSendMoneyDtoFromJson(json);

@override final  double? sourceAmount;
@override final  double? destinationAmount;
@override final  double? displayRate;
@override final  double? rate;
@override final  String? rateOperator;
@override final  double? benePay;
@override final  double? fCCommission;
@override final  double? netLcAmount;
@override final  double? commission;
@override final  double? fee;
@override final  double? tax;
@override final  double? taxPercentage;
@override final  double? payAmount;
@override final  double? totalPayableAmount;

/// Create a copy of CommonSendMoneyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonSendMoneyDtoCopyWith<_CommonSendMoneyDto> get copyWith => __$CommonSendMoneyDtoCopyWithImpl<_CommonSendMoneyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonSendMoneyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonSendMoneyDto&&(identical(other.sourceAmount, sourceAmount) || other.sourceAmount == sourceAmount)&&(identical(other.destinationAmount, destinationAmount) || other.destinationAmount == destinationAmount)&&(identical(other.displayRate, displayRate) || other.displayRate == displayRate)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.rateOperator, rateOperator) || other.rateOperator == rateOperator)&&(identical(other.benePay, benePay) || other.benePay == benePay)&&(identical(other.fCCommission, fCCommission) || other.fCCommission == fCCommission)&&(identical(other.netLcAmount, netLcAmount) || other.netLcAmount == netLcAmount)&&(identical(other.commission, commission) || other.commission == commission)&&(identical(other.fee, fee) || other.fee == fee)&&(identical(other.tax, tax) || other.tax == tax)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.payAmount, payAmount) || other.payAmount == payAmount)&&(identical(other.totalPayableAmount, totalPayableAmount) || other.totalPayableAmount == totalPayableAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sourceAmount,destinationAmount,displayRate,rate,rateOperator,benePay,fCCommission,netLcAmount,commission,fee,tax,taxPercentage,payAmount,totalPayableAmount);

@override
String toString() {
  return 'CommonSendMoneyDto(sourceAmount: $sourceAmount, destinationAmount: $destinationAmount, displayRate: $displayRate, rate: $rate, rateOperator: $rateOperator, benePay: $benePay, fCCommission: $fCCommission, netLcAmount: $netLcAmount, commission: $commission, fee: $fee, tax: $tax, taxPercentage: $taxPercentage, payAmount: $payAmount, totalPayableAmount: $totalPayableAmount)';
}


}

/// @nodoc
abstract mixin class _$CommonSendMoneyDtoCopyWith<$Res> implements $CommonSendMoneyDtoCopyWith<$Res> {
  factory _$CommonSendMoneyDtoCopyWith(_CommonSendMoneyDto value, $Res Function(_CommonSendMoneyDto) _then) = __$CommonSendMoneyDtoCopyWithImpl;
@override @useResult
$Res call({
 double? sourceAmount, double? destinationAmount, double? displayRate, double? rate, String? rateOperator, double? benePay, double? fCCommission, double? netLcAmount, double? commission, double? fee, double? tax, double? taxPercentage, double? payAmount, double? totalPayableAmount
});




}
/// @nodoc
class __$CommonSendMoneyDtoCopyWithImpl<$Res>
    implements _$CommonSendMoneyDtoCopyWith<$Res> {
  __$CommonSendMoneyDtoCopyWithImpl(this._self, this._then);

  final _CommonSendMoneyDto _self;
  final $Res Function(_CommonSendMoneyDto) _then;

/// Create a copy of CommonSendMoneyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceAmount = freezed,Object? destinationAmount = freezed,Object? displayRate = freezed,Object? rate = freezed,Object? rateOperator = freezed,Object? benePay = freezed,Object? fCCommission = freezed,Object? netLcAmount = freezed,Object? commission = freezed,Object? fee = freezed,Object? tax = freezed,Object? taxPercentage = freezed,Object? payAmount = freezed,Object? totalPayableAmount = freezed,}) {
  return _then(_CommonSendMoneyDto(
sourceAmount: freezed == sourceAmount ? _self.sourceAmount : sourceAmount // ignore: cast_nullable_to_non_nullable
as double?,destinationAmount: freezed == destinationAmount ? _self.destinationAmount : destinationAmount // ignore: cast_nullable_to_non_nullable
as double?,displayRate: freezed == displayRate ? _self.displayRate : displayRate // ignore: cast_nullable_to_non_nullable
as double?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double?,rateOperator: freezed == rateOperator ? _self.rateOperator : rateOperator // ignore: cast_nullable_to_non_nullable
as String?,benePay: freezed == benePay ? _self.benePay : benePay // ignore: cast_nullable_to_non_nullable
as double?,fCCommission: freezed == fCCommission ? _self.fCCommission : fCCommission // ignore: cast_nullable_to_non_nullable
as double?,netLcAmount: freezed == netLcAmount ? _self.netLcAmount : netLcAmount // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double?,fee: freezed == fee ? _self.fee : fee // ignore: cast_nullable_to_non_nullable
as double?,tax: freezed == tax ? _self.tax : tax // ignore: cast_nullable_to_non_nullable
as double?,taxPercentage: freezed == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double?,payAmount: freezed == payAmount ? _self.payAmount : payAmount // ignore: cast_nullable_to_non_nullable
as double?,totalPayableAmount: freezed == totalPayableAmount ? _self.totalPayableAmount : totalPayableAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
