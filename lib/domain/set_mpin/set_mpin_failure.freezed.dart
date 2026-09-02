// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_mpin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetMpinFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetMpinFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetMpinFailure()';
}


}

/// @nodoc
class $SetMpinFailureCopyWith<$Res>  {
$SetMpinFailureCopyWith(SetMpinFailure _, $Res Function(SetMpinFailure) __);
}


/// Adds pattern-matching-related methods to [SetMpinFailure].
extension SetMpinFailurePatterns on SetMpinFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InvalidNewMpin value)?  invalidNewMpin,TResult Function( _MismatchVerifyNewMpin value)?  mismatchVerifyNewMpin,TResult Function( _InvalidVerifyNewMpin value)?  invalidVerifyNewMpin,TResult Function( _ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin(_that);case _MismatchVerifyNewMpin() when mismatchVerifyNewMpin != null:
return mismatchVerifyNewMpin(_that);case _InvalidVerifyNewMpin() when invalidVerifyNewMpin != null:
return invalidVerifyNewMpin(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InvalidNewMpin value)  invalidNewMpin,required TResult Function( _MismatchVerifyNewMpin value)  mismatchVerifyNewMpin,required TResult Function( _InvalidVerifyNewMpin value)  invalidVerifyNewMpin,required TResult Function( _ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case _InvalidNewMpin():
return invalidNewMpin(_that);case _MismatchVerifyNewMpin():
return mismatchVerifyNewMpin(_that);case _InvalidVerifyNewMpin():
return invalidVerifyNewMpin(_that);case _ServerError():
return serverError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InvalidNewMpin value)?  invalidNewMpin,TResult? Function( _MismatchVerifyNewMpin value)?  mismatchVerifyNewMpin,TResult? Function( _InvalidVerifyNewMpin value)?  invalidVerifyNewMpin,TResult? Function( _ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin(_that);case _MismatchVerifyNewMpin() when mismatchVerifyNewMpin != null:
return mismatchVerifyNewMpin(_that);case _InvalidVerifyNewMpin() when invalidVerifyNewMpin != null:
return invalidVerifyNewMpin(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  invalidNewMpin,TResult Function()?  mismatchVerifyNewMpin,TResult Function( String message)?  invalidVerifyNewMpin,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin();case _MismatchVerifyNewMpin() when mismatchVerifyNewMpin != null:
return mismatchVerifyNewMpin();case _InvalidVerifyNewMpin() when invalidVerifyNewMpin != null:
return invalidVerifyNewMpin(_that.message);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  invalidNewMpin,required TResult Function()  mismatchVerifyNewMpin,required TResult Function( String message)  invalidVerifyNewMpin,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case _InvalidNewMpin():
return invalidNewMpin();case _MismatchVerifyNewMpin():
return mismatchVerifyNewMpin();case _InvalidVerifyNewMpin():
return invalidVerifyNewMpin(_that.message);case _ServerError():
return serverError();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  invalidNewMpin,TResult? Function()?  mismatchVerifyNewMpin,TResult? Function( String message)?  invalidVerifyNewMpin,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin();case _MismatchVerifyNewMpin() when mismatchVerifyNewMpin != null:
return mismatchVerifyNewMpin();case _InvalidVerifyNewMpin() when invalidVerifyNewMpin != null:
return invalidVerifyNewMpin(_that.message);case _ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class _InvalidNewMpin implements SetMpinFailure {
  const _InvalidNewMpin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidNewMpin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetMpinFailure.invalidNewMpin()';
}


}




/// @nodoc


class _MismatchVerifyNewMpin implements SetMpinFailure {
  const _MismatchVerifyNewMpin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MismatchVerifyNewMpin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetMpinFailure.mismatchVerifyNewMpin()';
}


}




/// @nodoc


class _InvalidVerifyNewMpin implements SetMpinFailure {
  const _InvalidVerifyNewMpin(this.message);
  

 final  String message;

/// Create a copy of SetMpinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidVerifyNewMpinCopyWith<_InvalidVerifyNewMpin> get copyWith => __$InvalidVerifyNewMpinCopyWithImpl<_InvalidVerifyNewMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidVerifyNewMpin&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SetMpinFailure.invalidVerifyNewMpin(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InvalidVerifyNewMpinCopyWith<$Res> implements $SetMpinFailureCopyWith<$Res> {
  factory _$InvalidVerifyNewMpinCopyWith(_InvalidVerifyNewMpin value, $Res Function(_InvalidVerifyNewMpin) _then) = __$InvalidVerifyNewMpinCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$InvalidVerifyNewMpinCopyWithImpl<$Res>
    implements _$InvalidVerifyNewMpinCopyWith<$Res> {
  __$InvalidVerifyNewMpinCopyWithImpl(this._self, this._then);

  final _InvalidVerifyNewMpin _self;
  final $Res Function(_InvalidVerifyNewMpin) _then;

/// Create a copy of SetMpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_InvalidVerifyNewMpin(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerError implements SetMpinFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SetMpinFailure.serverError()';
}


}




// dart format on
