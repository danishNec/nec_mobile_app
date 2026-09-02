// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_fee_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonFeeItem {

 String? get title; double? get amount; bool get isTotal;
/// Create a copy of CommonFeeItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonFeeItemCopyWith<CommonFeeItem> get copyWith => _$CommonFeeItemCopyWithImpl<CommonFeeItem>(this as CommonFeeItem, _$identity);

  /// Serializes this CommonFeeItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonFeeItem&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isTotal, isTotal) || other.isTotal == isTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,amount,isTotal);

@override
String toString() {
  return 'CommonFeeItem(title: $title, amount: $amount, isTotal: $isTotal)';
}


}

/// @nodoc
abstract mixin class $CommonFeeItemCopyWith<$Res>  {
  factory $CommonFeeItemCopyWith(CommonFeeItem value, $Res Function(CommonFeeItem) _then) = _$CommonFeeItemCopyWithImpl;
@useResult
$Res call({
 String? title, double? amount, bool isTotal
});




}
/// @nodoc
class _$CommonFeeItemCopyWithImpl<$Res>
    implements $CommonFeeItemCopyWith<$Res> {
  _$CommonFeeItemCopyWithImpl(this._self, this._then);

  final CommonFeeItem _self;
  final $Res Function(CommonFeeItem) _then;

/// Create a copy of CommonFeeItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? amount = freezed,Object? isTotal = null,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,isTotal: null == isTotal ? _self.isTotal : isTotal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonFeeItem].
extension CommonFeeItemPatterns on CommonFeeItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonFeeItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonFeeItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonFeeItem value)  $default,){
final _that = this;
switch (_that) {
case _CommonFeeItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonFeeItem value)?  $default,){
final _that = this;
switch (_that) {
case _CommonFeeItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  double? amount,  bool isTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonFeeItem() when $default != null:
return $default(_that.title,_that.amount,_that.isTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  double? amount,  bool isTotal)  $default,) {final _that = this;
switch (_that) {
case _CommonFeeItem():
return $default(_that.title,_that.amount,_that.isTotal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  double? amount,  bool isTotal)?  $default,) {final _that = this;
switch (_that) {
case _CommonFeeItem() when $default != null:
return $default(_that.title,_that.amount,_that.isTotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonFeeItem implements CommonFeeItem {
  const _CommonFeeItem({this.title, this.amount, this.isTotal = false});
  factory _CommonFeeItem.fromJson(Map<String, dynamic> json) => _$CommonFeeItemFromJson(json);

@override final  String? title;
@override final  double? amount;
@override@JsonKey() final  bool isTotal;

/// Create a copy of CommonFeeItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonFeeItemCopyWith<_CommonFeeItem> get copyWith => __$CommonFeeItemCopyWithImpl<_CommonFeeItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonFeeItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonFeeItem&&(identical(other.title, title) || other.title == title)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isTotal, isTotal) || other.isTotal == isTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,amount,isTotal);

@override
String toString() {
  return 'CommonFeeItem(title: $title, amount: $amount, isTotal: $isTotal)';
}


}

/// @nodoc
abstract mixin class _$CommonFeeItemCopyWith<$Res> implements $CommonFeeItemCopyWith<$Res> {
  factory _$CommonFeeItemCopyWith(_CommonFeeItem value, $Res Function(_CommonFeeItem) _then) = __$CommonFeeItemCopyWithImpl;
@override @useResult
$Res call({
 String? title, double? amount, bool isTotal
});




}
/// @nodoc
class __$CommonFeeItemCopyWithImpl<$Res>
    implements _$CommonFeeItemCopyWith<$Res> {
  __$CommonFeeItemCopyWithImpl(this._self, this._then);

  final _CommonFeeItem _self;
  final $Res Function(_CommonFeeItem) _then;

/// Create a copy of CommonFeeItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? amount = freezed,Object? isTotal = null,}) {
  return _then(_CommonFeeItem(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,isTotal: null == isTotal ? _self.isTotal : isTotal // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
