// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mpin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MpinFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MpinFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MpinFailure()';
}


}

/// @nodoc
class $MpinFailureCopyWith<$Res>  {
$MpinFailureCopyWith(MpinFailure _, $Res Function(MpinFailure) __);
}


/// Adds pattern-matching-related methods to [MpinFailure].
extension MpinFailurePatterns on MpinFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InvalidMpin value)?  invalidMpin,TResult Function( InvalidBiometric value)?  invalidBiometric,TResult Function( BiometricNotEnrolled value)?  biometricNotEnrolled,TResult Function( ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that);case InvalidBiometric() when invalidBiometric != null:
return invalidBiometric(_that);case BiometricNotEnrolled() when biometricNotEnrolled != null:
return biometricNotEnrolled(_that);case ServerError() when serverError != null:
return serverError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InvalidMpin value)  invalidMpin,required TResult Function( InvalidBiometric value)  invalidBiometric,required TResult Function( BiometricNotEnrolled value)  biometricNotEnrolled,required TResult Function( ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case InvalidMpin():
return invalidMpin(_that);case InvalidBiometric():
return invalidBiometric(_that);case BiometricNotEnrolled():
return biometricNotEnrolled(_that);case ServerError():
return serverError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InvalidMpin value)?  invalidMpin,TResult? Function( InvalidBiometric value)?  invalidBiometric,TResult? Function( BiometricNotEnrolled value)?  biometricNotEnrolled,TResult? Function( ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that);case InvalidBiometric() when invalidBiometric != null:
return invalidBiometric(_that);case BiometricNotEnrolled() when biometricNotEnrolled != null:
return biometricNotEnrolled(_that);case ServerError() when serverError != null:
return serverError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String errorMessage)?  invalidMpin,TResult Function( String errorMessage)?  invalidBiometric,TResult Function()?  biometricNotEnrolled,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that.errorMessage);case InvalidBiometric() when invalidBiometric != null:
return invalidBiometric(_that.errorMessage);case BiometricNotEnrolled() when biometricNotEnrolled != null:
return biometricNotEnrolled();case ServerError() when serverError != null:
return serverError();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String errorMessage)  invalidMpin,required TResult Function( String errorMessage)  invalidBiometric,required TResult Function()  biometricNotEnrolled,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case InvalidMpin():
return invalidMpin(_that.errorMessage);case InvalidBiometric():
return invalidBiometric(_that.errorMessage);case BiometricNotEnrolled():
return biometricNotEnrolled();case ServerError():
return serverError();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String errorMessage)?  invalidMpin,TResult? Function( String errorMessage)?  invalidBiometric,TResult? Function()?  biometricNotEnrolled,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case InvalidMpin() when invalidMpin != null:
return invalidMpin(_that.errorMessage);case InvalidBiometric() when invalidBiometric != null:
return invalidBiometric(_that.errorMessage);case BiometricNotEnrolled() when biometricNotEnrolled != null:
return biometricNotEnrolled();case ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class InvalidMpin implements MpinFailure {
  const InvalidMpin(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of MpinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidMpinCopyWith<InvalidMpin> get copyWith => _$InvalidMpinCopyWithImpl<InvalidMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidMpin&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MpinFailure.invalidMpin(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $InvalidMpinCopyWith<$Res> implements $MpinFailureCopyWith<$Res> {
  factory $InvalidMpinCopyWith(InvalidMpin value, $Res Function(InvalidMpin) _then) = _$InvalidMpinCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$InvalidMpinCopyWithImpl<$Res>
    implements $InvalidMpinCopyWith<$Res> {
  _$InvalidMpinCopyWithImpl(this._self, this._then);

  final InvalidMpin _self;
  final $Res Function(InvalidMpin) _then;

/// Create a copy of MpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(InvalidMpin(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InvalidBiometric implements MpinFailure {
  const InvalidBiometric(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of MpinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidBiometricCopyWith<InvalidBiometric> get copyWith => _$InvalidBiometricCopyWithImpl<InvalidBiometric>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidBiometric&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MpinFailure.invalidBiometric(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $InvalidBiometricCopyWith<$Res> implements $MpinFailureCopyWith<$Res> {
  factory $InvalidBiometricCopyWith(InvalidBiometric value, $Res Function(InvalidBiometric) _then) = _$InvalidBiometricCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$InvalidBiometricCopyWithImpl<$Res>
    implements $InvalidBiometricCopyWith<$Res> {
  _$InvalidBiometricCopyWithImpl(this._self, this._then);

  final InvalidBiometric _self;
  final $Res Function(InvalidBiometric) _then;

/// Create a copy of MpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(InvalidBiometric(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BiometricNotEnrolled implements MpinFailure {
  const BiometricNotEnrolled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricNotEnrolled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MpinFailure.biometricNotEnrolled()';
}


}




/// @nodoc


class ServerError implements MpinFailure {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MpinFailure.serverError()';
}


}




// dart format on
