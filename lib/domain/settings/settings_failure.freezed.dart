// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsFailure()';
}


}

/// @nodoc
class $SettingsFailureCopyWith<$Res>  {
$SettingsFailureCopyWith(SettingsFailure _, $Res Function(SettingsFailure) __);
}


/// Adds pattern-matching-related methods to [SettingsFailure].
extension SettingsFailurePatterns on SettingsFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UnableToGetUserInfo value)?  unableToGetUserInfo,TResult Function( _BiometricAuthFailed value)?  biometricAuthFailed,TResult Function( _ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo(_that);case _BiometricAuthFailed() when biometricAuthFailed != null:
return biometricAuthFailed(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UnableToGetUserInfo value)  unableToGetUserInfo,required TResult Function( _BiometricAuthFailed value)  biometricAuthFailed,required TResult Function( _ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case _UnableToGetUserInfo():
return unableToGetUserInfo(_that);case _BiometricAuthFailed():
return biometricAuthFailed(_that);case _ServerError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UnableToGetUserInfo value)?  unableToGetUserInfo,TResult? Function( _BiometricAuthFailed value)?  biometricAuthFailed,TResult? Function( _ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo(_that);case _BiometricAuthFailed() when biometricAuthFailed != null:
return biometricAuthFailed(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unableToGetUserInfo,TResult Function()?  biometricAuthFailed,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo();case _BiometricAuthFailed() when biometricAuthFailed != null:
return biometricAuthFailed();case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unableToGetUserInfo,required TResult Function()  biometricAuthFailed,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case _UnableToGetUserInfo():
return unableToGetUserInfo();case _BiometricAuthFailed():
return biometricAuthFailed();case _ServerError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unableToGetUserInfo,TResult? Function()?  biometricAuthFailed,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo();case _BiometricAuthFailed() when biometricAuthFailed != null:
return biometricAuthFailed();case _ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class _UnableToGetUserInfo implements SettingsFailure {
  const _UnableToGetUserInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnableToGetUserInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsFailure.unableToGetUserInfo()';
}


}




/// @nodoc


class _BiometricAuthFailed implements SettingsFailure {
  const _BiometricAuthFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricAuthFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsFailure.biometricAuthFailed()';
}


}




/// @nodoc


class _ServerError implements SettingsFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsFailure.serverError()';
}


}




// dart format on
