// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure()';
}


}

/// @nodoc
class $ProfileFailureCopyWith<$Res>  {
$ProfileFailureCopyWith(ProfileFailure _, $Res Function(ProfileFailure) __);
}


/// Adds pattern-matching-related methods to [ProfileFailure].
extension ProfileFailurePatterns on ProfileFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UnableToGetUserInfo value)?  unableToGetUserInfo,TResult Function( _EmailNotChanged value)?  emailNotChanged,TResult Function( _UnableToUpdateEmailAddress value)?  unableToUpdateEmailAddress,TResult Function( _UnableToVerifyEmailOtp value)?  unableToVerifyEmailOtp,TResult Function( _ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo(_that);case _EmailNotChanged() when emailNotChanged != null:
return emailNotChanged(_that);case _UnableToUpdateEmailAddress() when unableToUpdateEmailAddress != null:
return unableToUpdateEmailAddress(_that);case _UnableToVerifyEmailOtp() when unableToVerifyEmailOtp != null:
return unableToVerifyEmailOtp(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UnableToGetUserInfo value)  unableToGetUserInfo,required TResult Function( _EmailNotChanged value)  emailNotChanged,required TResult Function( _UnableToUpdateEmailAddress value)  unableToUpdateEmailAddress,required TResult Function( _UnableToVerifyEmailOtp value)  unableToVerifyEmailOtp,required TResult Function( _ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case _UnableToGetUserInfo():
return unableToGetUserInfo(_that);case _EmailNotChanged():
return emailNotChanged(_that);case _UnableToUpdateEmailAddress():
return unableToUpdateEmailAddress(_that);case _UnableToVerifyEmailOtp():
return unableToVerifyEmailOtp(_that);case _ServerError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UnableToGetUserInfo value)?  unableToGetUserInfo,TResult? Function( _EmailNotChanged value)?  emailNotChanged,TResult? Function( _UnableToUpdateEmailAddress value)?  unableToUpdateEmailAddress,TResult? Function( _UnableToVerifyEmailOtp value)?  unableToVerifyEmailOtp,TResult? Function( _ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo(_that);case _EmailNotChanged() when emailNotChanged != null:
return emailNotChanged(_that);case _UnableToUpdateEmailAddress() when unableToUpdateEmailAddress != null:
return unableToUpdateEmailAddress(_that);case _UnableToVerifyEmailOtp() when unableToVerifyEmailOtp != null:
return unableToVerifyEmailOtp(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unableToGetUserInfo,TResult Function()?  emailNotChanged,TResult Function()?  unableToUpdateEmailAddress,TResult Function()?  unableToVerifyEmailOtp,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo();case _EmailNotChanged() when emailNotChanged != null:
return emailNotChanged();case _UnableToUpdateEmailAddress() when unableToUpdateEmailAddress != null:
return unableToUpdateEmailAddress();case _UnableToVerifyEmailOtp() when unableToVerifyEmailOtp != null:
return unableToVerifyEmailOtp();case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unableToGetUserInfo,required TResult Function()  emailNotChanged,required TResult Function()  unableToUpdateEmailAddress,required TResult Function()  unableToVerifyEmailOtp,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case _UnableToGetUserInfo():
return unableToGetUserInfo();case _EmailNotChanged():
return emailNotChanged();case _UnableToUpdateEmailAddress():
return unableToUpdateEmailAddress();case _UnableToVerifyEmailOtp():
return unableToVerifyEmailOtp();case _ServerError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unableToGetUserInfo,TResult? Function()?  emailNotChanged,TResult? Function()?  unableToUpdateEmailAddress,TResult? Function()?  unableToVerifyEmailOtp,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case _UnableToGetUserInfo() when unableToGetUserInfo != null:
return unableToGetUserInfo();case _EmailNotChanged() when emailNotChanged != null:
return emailNotChanged();case _UnableToUpdateEmailAddress() when unableToUpdateEmailAddress != null:
return unableToUpdateEmailAddress();case _UnableToVerifyEmailOtp() when unableToVerifyEmailOtp != null:
return unableToVerifyEmailOtp();case _ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class _UnableToGetUserInfo implements ProfileFailure {
  const _UnableToGetUserInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnableToGetUserInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.unableToGetUserInfo()';
}


}




/// @nodoc


class _EmailNotChanged implements ProfileFailure {
  const _EmailNotChanged();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailNotChanged);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.emailNotChanged()';
}


}




/// @nodoc


class _UnableToUpdateEmailAddress implements ProfileFailure {
  const _UnableToUpdateEmailAddress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnableToUpdateEmailAddress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.unableToUpdateEmailAddress()';
}


}




/// @nodoc


class _UnableToVerifyEmailOtp implements ProfileFailure {
  const _UnableToVerifyEmailOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnableToVerifyEmailOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.unableToVerifyEmailOtp()';
}


}




/// @nodoc


class _ServerError implements ProfileFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileFailure.serverError()';
}


}




// dart format on
