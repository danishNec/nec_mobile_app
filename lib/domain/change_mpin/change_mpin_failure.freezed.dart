// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_mpin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangeMpinFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMpinFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangeMpinFailure()';
}


}

/// @nodoc
class $ChangeMpinFailureCopyWith<$Res>  {
$ChangeMpinFailureCopyWith(ChangeMpinFailure _, $Res Function(ChangeMpinFailure) __);
}


/// Adds pattern-matching-related methods to [ChangeMpinFailure].
extension ChangeMpinFailurePatterns on ChangeMpinFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InvalidCurrentMpin value)?  invalidCurrentMpin,TResult Function( _InvalidNewMpin value)?  invalidNewMpin,TResult Function( _MismatchVerifyMpin value)?  mismatchVerifyMpin,TResult Function( _InvalidVerifyMpin value)?  invalidVerifyMpin,TResult Function( _ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvalidCurrentMpin() when invalidCurrentMpin != null:
return invalidCurrentMpin(_that);case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin(_that);case _MismatchVerifyMpin() when mismatchVerifyMpin != null:
return mismatchVerifyMpin(_that);case _InvalidVerifyMpin() when invalidVerifyMpin != null:
return invalidVerifyMpin(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InvalidCurrentMpin value)  invalidCurrentMpin,required TResult Function( _InvalidNewMpin value)  invalidNewMpin,required TResult Function( _MismatchVerifyMpin value)  mismatchVerifyMpin,required TResult Function( _InvalidVerifyMpin value)  invalidVerifyMpin,required TResult Function( _ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case _InvalidCurrentMpin():
return invalidCurrentMpin(_that);case _InvalidNewMpin():
return invalidNewMpin(_that);case _MismatchVerifyMpin():
return mismatchVerifyMpin(_that);case _InvalidVerifyMpin():
return invalidVerifyMpin(_that);case _ServerError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InvalidCurrentMpin value)?  invalidCurrentMpin,TResult? Function( _InvalidNewMpin value)?  invalidNewMpin,TResult? Function( _MismatchVerifyMpin value)?  mismatchVerifyMpin,TResult? Function( _InvalidVerifyMpin value)?  invalidVerifyMpin,TResult? Function( _ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case _InvalidCurrentMpin() when invalidCurrentMpin != null:
return invalidCurrentMpin(_that);case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin(_that);case _MismatchVerifyMpin() when mismatchVerifyMpin != null:
return mismatchVerifyMpin(_that);case _InvalidVerifyMpin() when invalidVerifyMpin != null:
return invalidVerifyMpin(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  invalidCurrentMpin,TResult Function()?  invalidNewMpin,TResult Function()?  mismatchVerifyMpin,TResult Function( String message)?  invalidVerifyMpin,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvalidCurrentMpin() when invalidCurrentMpin != null:
return invalidCurrentMpin(_that.message);case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin();case _MismatchVerifyMpin() when mismatchVerifyMpin != null:
return mismatchVerifyMpin();case _InvalidVerifyMpin() when invalidVerifyMpin != null:
return invalidVerifyMpin(_that.message);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  invalidCurrentMpin,required TResult Function()  invalidNewMpin,required TResult Function()  mismatchVerifyMpin,required TResult Function( String message)  invalidVerifyMpin,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case _InvalidCurrentMpin():
return invalidCurrentMpin(_that.message);case _InvalidNewMpin():
return invalidNewMpin();case _MismatchVerifyMpin():
return mismatchVerifyMpin();case _InvalidVerifyMpin():
return invalidVerifyMpin(_that.message);case _ServerError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  invalidCurrentMpin,TResult? Function()?  invalidNewMpin,TResult? Function()?  mismatchVerifyMpin,TResult? Function( String message)?  invalidVerifyMpin,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case _InvalidCurrentMpin() when invalidCurrentMpin != null:
return invalidCurrentMpin(_that.message);case _InvalidNewMpin() when invalidNewMpin != null:
return invalidNewMpin();case _MismatchVerifyMpin() when mismatchVerifyMpin != null:
return mismatchVerifyMpin();case _InvalidVerifyMpin() when invalidVerifyMpin != null:
return invalidVerifyMpin(_that.message);case _ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class _InvalidCurrentMpin implements ChangeMpinFailure {
  const _InvalidCurrentMpin(this.message);
  

 final  String message;

/// Create a copy of ChangeMpinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidCurrentMpinCopyWith<_InvalidCurrentMpin> get copyWith => __$InvalidCurrentMpinCopyWithImpl<_InvalidCurrentMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidCurrentMpin&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChangeMpinFailure.invalidCurrentMpin(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InvalidCurrentMpinCopyWith<$Res> implements $ChangeMpinFailureCopyWith<$Res> {
  factory _$InvalidCurrentMpinCopyWith(_InvalidCurrentMpin value, $Res Function(_InvalidCurrentMpin) _then) = __$InvalidCurrentMpinCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$InvalidCurrentMpinCopyWithImpl<$Res>
    implements _$InvalidCurrentMpinCopyWith<$Res> {
  __$InvalidCurrentMpinCopyWithImpl(this._self, this._then);

  final _InvalidCurrentMpin _self;
  final $Res Function(_InvalidCurrentMpin) _then;

/// Create a copy of ChangeMpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_InvalidCurrentMpin(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _InvalidNewMpin implements ChangeMpinFailure {
  const _InvalidNewMpin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidNewMpin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangeMpinFailure.invalidNewMpin()';
}


}




/// @nodoc


class _MismatchVerifyMpin implements ChangeMpinFailure {
  const _MismatchVerifyMpin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MismatchVerifyMpin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangeMpinFailure.mismatchVerifyMpin()';
}


}




/// @nodoc


class _InvalidVerifyMpin implements ChangeMpinFailure {
  const _InvalidVerifyMpin(this.message);
  

 final  String message;

/// Create a copy of ChangeMpinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidVerifyMpinCopyWith<_InvalidVerifyMpin> get copyWith => __$InvalidVerifyMpinCopyWithImpl<_InvalidVerifyMpin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidVerifyMpin&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChangeMpinFailure.invalidVerifyMpin(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InvalidVerifyMpinCopyWith<$Res> implements $ChangeMpinFailureCopyWith<$Res> {
  factory _$InvalidVerifyMpinCopyWith(_InvalidVerifyMpin value, $Res Function(_InvalidVerifyMpin) _then) = __$InvalidVerifyMpinCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$InvalidVerifyMpinCopyWithImpl<$Res>
    implements _$InvalidVerifyMpinCopyWith<$Res> {
  __$InvalidVerifyMpinCopyWithImpl(this._self, this._then);

  final _InvalidVerifyMpin _self;
  final $Res Function(_InvalidVerifyMpin) _then;

/// Create a copy of ChangeMpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_InvalidVerifyMpin(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerError implements ChangeMpinFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangeMpinFailure.serverError()';
}


}




// dart format on
