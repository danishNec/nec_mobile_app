// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValueFailure<T> {

 T get failedValue;
/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueFailureCopyWith<T, ValueFailure<T>> get copyWith => _$ValueFailureCopyWithImpl<T, ValueFailure<T>>(this as ValueFailure<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueFailure<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ValueFailureCopyWith<T,$Res>  {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) _then) = _$ValueFailureCopyWithImpl;
@useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ValueFailureCopyWithImpl<T,$Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._self, this._then);

  final ValueFailure<T> _self;
  final $Res Function(ValueFailure<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = freezed,}) {
  return _then(_self.copyWith(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [ValueFailure].
extension ValueFailurePatterns<T> on ValueFailure<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InvalidIdentityNumber<T> value)?  invalidIdentityNumber,TResult Function( InvalidMobileNumber<T> value)?  invalidMobileNumber,TResult Function( InvalidOtp<T> value)?  invalidOtp,TResult Function( InvalidEmailAddress<T> value)?  invalidEmailAddress,TResult Function( Empty<T> value)?  empty,TResult Function( TooShort<T> value)?  tooShort,TResult Function( TooLong<T> value)?  tooLong,TResult Function( InvalidFormat<T> value)?  invalidFormat,TResult Function( SameAsCurrentMpin<T> value)?  sameAsCurrentMpin,TResult Function( InvalidMpin<T> value)?  invalidMpin,TResult Function( RepeatedDigits<T> value)?  repeatedDigits,TResult Function( SequentialDigits<T> value)?  sequentialDigits,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InvalidIdentityNumber() when invalidIdentityNumber != null:
return invalidIdentityNumber(_that);case InvalidMobileNumber() when invalidMobileNumber != null:
return invalidMobileNumber(_that);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that);case Empty() when empty != null:
return empty(_that);case TooShort() when tooShort != null:
return tooShort(_that);case TooLong() when tooLong != null:
return tooLong(_that);case InvalidFormat() when invalidFormat != null:
return invalidFormat(_that);case SameAsCurrentMpin() when sameAsCurrentMpin != null:
return sameAsCurrentMpin(_that);case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that);case RepeatedDigits() when repeatedDigits != null:
return repeatedDigits(_that);case SequentialDigits() when sequentialDigits != null:
return sequentialDigits(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InvalidIdentityNumber<T> value)  invalidIdentityNumber,required TResult Function( InvalidMobileNumber<T> value)  invalidMobileNumber,required TResult Function( InvalidOtp<T> value)  invalidOtp,required TResult Function( InvalidEmailAddress<T> value)  invalidEmailAddress,required TResult Function( Empty<T> value)  empty,required TResult Function( TooShort<T> value)  tooShort,required TResult Function( TooLong<T> value)  tooLong,required TResult Function( InvalidFormat<T> value)  invalidFormat,required TResult Function( SameAsCurrentMpin<T> value)  sameAsCurrentMpin,required TResult Function( InvalidMpin<T> value)  invalidMpin,required TResult Function( RepeatedDigits<T> value)  repeatedDigits,required TResult Function( SequentialDigits<T> value)  sequentialDigits,}){
final _that = this;
switch (_that) {
case InvalidIdentityNumber():
return invalidIdentityNumber(_that);case InvalidMobileNumber():
return invalidMobileNumber(_that);case InvalidOtp():
return invalidOtp(_that);case InvalidEmailAddress():
return invalidEmailAddress(_that);case Empty():
return empty(_that);case TooShort():
return tooShort(_that);case TooLong():
return tooLong(_that);case InvalidFormat():
return invalidFormat(_that);case SameAsCurrentMpin():
return sameAsCurrentMpin(_that);case InvalidMpin():
return invalidMpin(_that);case RepeatedDigits():
return repeatedDigits(_that);case SequentialDigits():
return sequentialDigits(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InvalidIdentityNumber<T> value)?  invalidIdentityNumber,TResult? Function( InvalidMobileNumber<T> value)?  invalidMobileNumber,TResult? Function( InvalidOtp<T> value)?  invalidOtp,TResult? Function( InvalidEmailAddress<T> value)?  invalidEmailAddress,TResult? Function( Empty<T> value)?  empty,TResult? Function( TooShort<T> value)?  tooShort,TResult? Function( TooLong<T> value)?  tooLong,TResult? Function( InvalidFormat<T> value)?  invalidFormat,TResult? Function( SameAsCurrentMpin<T> value)?  sameAsCurrentMpin,TResult? Function( InvalidMpin<T> value)?  invalidMpin,TResult? Function( RepeatedDigits<T> value)?  repeatedDigits,TResult? Function( SequentialDigits<T> value)?  sequentialDigits,}){
final _that = this;
switch (_that) {
case InvalidIdentityNumber() when invalidIdentityNumber != null:
return invalidIdentityNumber(_that);case InvalidMobileNumber() when invalidMobileNumber != null:
return invalidMobileNumber(_that);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that);case Empty() when empty != null:
return empty(_that);case TooShort() when tooShort != null:
return tooShort(_that);case TooLong() when tooLong != null:
return tooLong(_that);case InvalidFormat() when invalidFormat != null:
return invalidFormat(_that);case SameAsCurrentMpin() when sameAsCurrentMpin != null:
return sameAsCurrentMpin(_that);case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that);case RepeatedDigits() when repeatedDigits != null:
return repeatedDigits(_that);case SequentialDigits() when sequentialDigits != null:
return sequentialDigits(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T failedValue)?  invalidIdentityNumber,TResult Function( T failedValue)?  invalidMobileNumber,TResult Function( T failedValue)?  invalidOtp,TResult Function( T failedValue)?  invalidEmailAddress,TResult Function( T failedValue)?  empty,TResult Function( T failedValue,  int minLength)?  tooShort,TResult Function( T failedValue,  int maxLength)?  tooLong,TResult Function( T failedValue,  String regexPattern)?  invalidFormat,TResult Function( T failedValue)?  sameAsCurrentMpin,TResult Function( T failedValue)?  invalidMpin,TResult Function( T failedValue)?  repeatedDigits,TResult Function( T failedValue)?  sequentialDigits,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InvalidIdentityNumber() when invalidIdentityNumber != null:
return invalidIdentityNumber(_that.failedValue);case InvalidMobileNumber() when invalidMobileNumber != null:
return invalidMobileNumber(_that.failedValue);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that.failedValue);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that.failedValue);case Empty() when empty != null:
return empty(_that.failedValue);case TooShort() when tooShort != null:
return tooShort(_that.failedValue,_that.minLength);case TooLong() when tooLong != null:
return tooLong(_that.failedValue,_that.maxLength);case InvalidFormat() when invalidFormat != null:
return invalidFormat(_that.failedValue,_that.regexPattern);case SameAsCurrentMpin() when sameAsCurrentMpin != null:
return sameAsCurrentMpin(_that.failedValue);case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that.failedValue);case RepeatedDigits() when repeatedDigits != null:
return repeatedDigits(_that.failedValue);case SequentialDigits() when sequentialDigits != null:
return sequentialDigits(_that.failedValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T failedValue)  invalidIdentityNumber,required TResult Function( T failedValue)  invalidMobileNumber,required TResult Function( T failedValue)  invalidOtp,required TResult Function( T failedValue)  invalidEmailAddress,required TResult Function( T failedValue)  empty,required TResult Function( T failedValue,  int minLength)  tooShort,required TResult Function( T failedValue,  int maxLength)  tooLong,required TResult Function( T failedValue,  String regexPattern)  invalidFormat,required TResult Function( T failedValue)  sameAsCurrentMpin,required TResult Function( T failedValue)  invalidMpin,required TResult Function( T failedValue)  repeatedDigits,required TResult Function( T failedValue)  sequentialDigits,}) {final _that = this;
switch (_that) {
case InvalidIdentityNumber():
return invalidIdentityNumber(_that.failedValue);case InvalidMobileNumber():
return invalidMobileNumber(_that.failedValue);case InvalidOtp():
return invalidOtp(_that.failedValue);case InvalidEmailAddress():
return invalidEmailAddress(_that.failedValue);case Empty():
return empty(_that.failedValue);case TooShort():
return tooShort(_that.failedValue,_that.minLength);case TooLong():
return tooLong(_that.failedValue,_that.maxLength);case InvalidFormat():
return invalidFormat(_that.failedValue,_that.regexPattern);case SameAsCurrentMpin():
return sameAsCurrentMpin(_that.failedValue);case InvalidMpin():
return invalidMpin(_that.failedValue);case RepeatedDigits():
return repeatedDigits(_that.failedValue);case SequentialDigits():
return sequentialDigits(_that.failedValue);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T failedValue)?  invalidIdentityNumber,TResult? Function( T failedValue)?  invalidMobileNumber,TResult? Function( T failedValue)?  invalidOtp,TResult? Function( T failedValue)?  invalidEmailAddress,TResult? Function( T failedValue)?  empty,TResult? Function( T failedValue,  int minLength)?  tooShort,TResult? Function( T failedValue,  int maxLength)?  tooLong,TResult? Function( T failedValue,  String regexPattern)?  invalidFormat,TResult? Function( T failedValue)?  sameAsCurrentMpin,TResult? Function( T failedValue)?  invalidMpin,TResult? Function( T failedValue)?  repeatedDigits,TResult? Function( T failedValue)?  sequentialDigits,}) {final _that = this;
switch (_that) {
case InvalidIdentityNumber() when invalidIdentityNumber != null:
return invalidIdentityNumber(_that.failedValue);case InvalidMobileNumber() when invalidMobileNumber != null:
return invalidMobileNumber(_that.failedValue);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that.failedValue);case InvalidEmailAddress() when invalidEmailAddress != null:
return invalidEmailAddress(_that.failedValue);case Empty() when empty != null:
return empty(_that.failedValue);case TooShort() when tooShort != null:
return tooShort(_that.failedValue,_that.minLength);case TooLong() when tooLong != null:
return tooLong(_that.failedValue,_that.maxLength);case InvalidFormat() when invalidFormat != null:
return invalidFormat(_that.failedValue,_that.regexPattern);case SameAsCurrentMpin() when sameAsCurrentMpin != null:
return sameAsCurrentMpin(_that.failedValue);case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that.failedValue);case RepeatedDigits() when repeatedDigits != null:
return repeatedDigits(_that.failedValue);case SequentialDigits() when sequentialDigits != null:
return sequentialDigits(_that.failedValue);case _:
  return null;

}
}

}

/// @nodoc


class InvalidIdentityNumber<T> implements ValueFailure<T> {
  const InvalidIdentityNumber({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidIdentityNumberCopyWith<T, InvalidIdentityNumber<T>> get copyWith => _$InvalidIdentityNumberCopyWithImpl<T, InvalidIdentityNumber<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidIdentityNumber<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidIdentityNumber(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidIdentityNumberCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidIdentityNumberCopyWith(InvalidIdentityNumber<T> value, $Res Function(InvalidIdentityNumber<T>) _then) = _$InvalidIdentityNumberCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidIdentityNumberCopyWithImpl<T,$Res>
    implements $InvalidIdentityNumberCopyWith<T, $Res> {
  _$InvalidIdentityNumberCopyWithImpl(this._self, this._then);

  final InvalidIdentityNumber<T> _self;
  final $Res Function(InvalidIdentityNumber<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidIdentityNumber<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidMobileNumber<T> implements ValueFailure<T> {
  const InvalidMobileNumber({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidMobileNumberCopyWith<T, InvalidMobileNumber<T>> get copyWith => _$InvalidMobileNumberCopyWithImpl<T, InvalidMobileNumber<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidMobileNumber<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidMobileNumber(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidMobileNumberCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidMobileNumberCopyWith(InvalidMobileNumber<T> value, $Res Function(InvalidMobileNumber<T>) _then) = _$InvalidMobileNumberCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidMobileNumberCopyWithImpl<T,$Res>
    implements $InvalidMobileNumberCopyWith<T, $Res> {
  _$InvalidMobileNumberCopyWithImpl(this._self, this._then);

  final InvalidMobileNumber<T> _self;
  final $Res Function(InvalidMobileNumber<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidMobileNumber<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidOtp<T> implements ValueFailure<T> {
  const InvalidOtp({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidOtpCopyWith<T, InvalidOtp<T>> get copyWith => _$InvalidOtpCopyWithImpl<T, InvalidOtp<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidOtp<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidOtp(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidOtpCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidOtpCopyWith(InvalidOtp<T> value, $Res Function(InvalidOtp<T>) _then) = _$InvalidOtpCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidOtpCopyWithImpl<T,$Res>
    implements $InvalidOtpCopyWith<T, $Res> {
  _$InvalidOtpCopyWithImpl(this._self, this._then);

  final InvalidOtp<T> _self;
  final $Res Function(InvalidOtp<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidOtp<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidEmailAddress<T> implements ValueFailure<T> {
  const InvalidEmailAddress({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidEmailAddressCopyWith<T, InvalidEmailAddress<T>> get copyWith => _$InvalidEmailAddressCopyWithImpl<T, InvalidEmailAddress<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmailAddress<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidEmailAddress(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidEmailAddressCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailAddressCopyWith(InvalidEmailAddress<T> value, $Res Function(InvalidEmailAddress<T>) _then) = _$InvalidEmailAddressCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidEmailAddressCopyWithImpl<T,$Res>
    implements $InvalidEmailAddressCopyWith<T, $Res> {
  _$InvalidEmailAddressCopyWithImpl(this._self, this._then);

  final InvalidEmailAddress<T> _self;
  final $Res Function(InvalidEmailAddress<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidEmailAddress<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Empty<T> implements ValueFailure<T> {
  const Empty({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyCopyWith<T, Empty<T>> get copyWith => _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Empty<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $EmptyCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) _then) = _$EmptyCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$EmptyCopyWithImpl<T,$Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(this._self, this._then);

  final Empty<T> _self;
  final $Res Function(Empty<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(Empty<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class TooShort<T> implements ValueFailure<T> {
  const TooShort({required this.failedValue, required this.minLength});
  

@override final  T failedValue;
 final  int minLength;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TooShortCopyWith<T, TooShort<T>> get copyWith => _$TooShortCopyWithImpl<T, TooShort<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooShort<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.minLength, minLength) || other.minLength == minLength));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),minLength);

@override
String toString() {
  return 'ValueFailure<$T>.tooShort(failedValue: $failedValue, minLength: $minLength)';
}


}

/// @nodoc
abstract mixin class $TooShortCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $TooShortCopyWith(TooShort<T> value, $Res Function(TooShort<T>) _then) = _$TooShortCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int minLength
});




}
/// @nodoc
class _$TooShortCopyWithImpl<T,$Res>
    implements $TooShortCopyWith<T, $Res> {
  _$TooShortCopyWithImpl(this._self, this._then);

  final TooShort<T> _self;
  final $Res Function(TooShort<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? minLength = null,}) {
  return _then(TooShort<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,minLength: null == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class TooLong<T> implements ValueFailure<T> {
  const TooLong({required this.failedValue, required this.maxLength});
  

@override final  T failedValue;
 final  int maxLength;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TooLongCopyWith<T, TooLong<T>> get copyWith => _$TooLongCopyWithImpl<T, TooLong<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TooLong<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),maxLength);

@override
String toString() {
  return 'ValueFailure<$T>.tooLong(failedValue: $failedValue, maxLength: $maxLength)';
}


}

/// @nodoc
abstract mixin class $TooLongCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $TooLongCopyWith(TooLong<T> value, $Res Function(TooLong<T>) _then) = _$TooLongCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int maxLength
});




}
/// @nodoc
class _$TooLongCopyWithImpl<T,$Res>
    implements $TooLongCopyWith<T, $Res> {
  _$TooLongCopyWithImpl(this._self, this._then);

  final TooLong<T> _self;
  final $Res Function(TooLong<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? maxLength = null,}) {
  return _then(TooLong<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,maxLength: null == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class InvalidFormat<T> implements ValueFailure<T> {
  const InvalidFormat({required this.failedValue, required this.regexPattern});
  

@override final  T failedValue;
 final  String regexPattern;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidFormatCopyWith<T, InvalidFormat<T>> get copyWith => _$InvalidFormatCopyWithImpl<T, InvalidFormat<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidFormat<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),regexPattern);

@override
String toString() {
  return 'ValueFailure<$T>.invalidFormat(failedValue: $failedValue, regexPattern: $regexPattern)';
}


}

/// @nodoc
abstract mixin class $InvalidFormatCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidFormatCopyWith(InvalidFormat<T> value, $Res Function(InvalidFormat<T>) _then) = _$InvalidFormatCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, String regexPattern
});




}
/// @nodoc
class _$InvalidFormatCopyWithImpl<T,$Res>
    implements $InvalidFormatCopyWith<T, $Res> {
  _$InvalidFormatCopyWithImpl(this._self, this._then);

  final InvalidFormat<T> _self;
  final $Res Function(InvalidFormat<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? regexPattern = null,}) {
  return _then(InvalidFormat<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,regexPattern: null == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SameAsCurrentMpin<T> implements ValueFailure<T> {
  const SameAsCurrentMpin({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SameAsCurrentMpinCopyWith<T, SameAsCurrentMpin<T>> get copyWith => _$SameAsCurrentMpinCopyWithImpl<T, SameAsCurrentMpin<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SameAsCurrentMpin<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.sameAsCurrentMpin(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $SameAsCurrentMpinCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $SameAsCurrentMpinCopyWith(SameAsCurrentMpin<T> value, $Res Function(SameAsCurrentMpin<T>) _then) = _$SameAsCurrentMpinCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$SameAsCurrentMpinCopyWithImpl<T,$Res>
    implements $SameAsCurrentMpinCopyWith<T, $Res> {
  _$SameAsCurrentMpinCopyWithImpl(this._self, this._then);

  final SameAsCurrentMpin<T> _self;
  final $Res Function(SameAsCurrentMpin<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(SameAsCurrentMpin<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidMpin<T> implements ValueFailure<T> {
  const InvalidMpin({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidMpinCopyWith<T, InvalidMpin<T>> get copyWith => _$InvalidMpinCopyWithImpl<T, InvalidMpin<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidMpin<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidMpin(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidMpinCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidMpinCopyWith(InvalidMpin<T> value, $Res Function(InvalidMpin<T>) _then) = _$InvalidMpinCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidMpinCopyWithImpl<T,$Res>
    implements $InvalidMpinCopyWith<T, $Res> {
  _$InvalidMpinCopyWithImpl(this._self, this._then);

  final InvalidMpin<T> _self;
  final $Res Function(InvalidMpin<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidMpin<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class RepeatedDigits<T> implements ValueFailure<T> {
  const RepeatedDigits({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepeatedDigitsCopyWith<T, RepeatedDigits<T>> get copyWith => _$RepeatedDigitsCopyWithImpl<T, RepeatedDigits<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatedDigits<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.repeatedDigits(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $RepeatedDigitsCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $RepeatedDigitsCopyWith(RepeatedDigits<T> value, $Res Function(RepeatedDigits<T>) _then) = _$RepeatedDigitsCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$RepeatedDigitsCopyWithImpl<T,$Res>
    implements $RepeatedDigitsCopyWith<T, $Res> {
  _$RepeatedDigitsCopyWithImpl(this._self, this._then);

  final RepeatedDigits<T> _self;
  final $Res Function(RepeatedDigits<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(RepeatedDigits<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SequentialDigits<T> implements ValueFailure<T> {
  const SequentialDigits({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SequentialDigitsCopyWith<T, SequentialDigits<T>> get copyWith => _$SequentialDigitsCopyWithImpl<T, SequentialDigits<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SequentialDigits<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.sequentialDigits(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $SequentialDigitsCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $SequentialDigitsCopyWith(SequentialDigits<T> value, $Res Function(SequentialDigits<T>) _then) = _$SequentialDigitsCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$SequentialDigitsCopyWithImpl<T,$Res>
    implements $SequentialDigitsCopyWith<T, $Res> {
  _$SequentialDigitsCopyWithImpl(this._self, this._then);

  final SequentialDigits<T> _self;
  final $Res Function(SequentialDigits<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(SequentialDigits<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
