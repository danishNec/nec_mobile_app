// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginFailure()';
}


}

/// @nodoc
class $LoginFailureCopyWith<$Res>  {
$LoginFailureCopyWith(LoginFailure _, $Res Function(LoginFailure) __);
}


/// Adds pattern-matching-related methods to [LoginFailure].
extension LoginFailurePatterns on LoginFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UnableToFetchIdentityTypes value)?  unableToFetchIdentityTypes,TResult Function( _UserUnderVerification value)?  userUnderVerification,TResult Function( _IdentityTypeOrNumberMismatch value)?  identityTypeOrNumberMismatch,TResult Function( _InvalidCredentials value)?  invalidCredentials,TResult Function( _UrlLaunchFailure value)?  urlLaunchFailure,TResult Function( _ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that);case _UserUnderVerification() when userUnderVerification != null:
return userUnderVerification(_that);case _IdentityTypeOrNumberMismatch() when identityTypeOrNumberMismatch != null:
return identityTypeOrNumberMismatch(_that);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that);case _UrlLaunchFailure() when urlLaunchFailure != null:
return urlLaunchFailure(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UnableToFetchIdentityTypes value)  unableToFetchIdentityTypes,required TResult Function( _UserUnderVerification value)  userUnderVerification,required TResult Function( _IdentityTypeOrNumberMismatch value)  identityTypeOrNumberMismatch,required TResult Function( _InvalidCredentials value)  invalidCredentials,required TResult Function( _UrlLaunchFailure value)  urlLaunchFailure,required TResult Function( _ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes():
return unableToFetchIdentityTypes(_that);case _UserUnderVerification():
return userUnderVerification(_that);case _IdentityTypeOrNumberMismatch():
return identityTypeOrNumberMismatch(_that);case _InvalidCredentials():
return invalidCredentials(_that);case _UrlLaunchFailure():
return urlLaunchFailure(_that);case _ServerError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UnableToFetchIdentityTypes value)?  unableToFetchIdentityTypes,TResult? Function( _UserUnderVerification value)?  userUnderVerification,TResult? Function( _IdentityTypeOrNumberMismatch value)?  identityTypeOrNumberMismatch,TResult? Function( _InvalidCredentials value)?  invalidCredentials,TResult? Function( _UrlLaunchFailure value)?  urlLaunchFailure,TResult? Function( _ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that);case _UserUnderVerification() when userUnderVerification != null:
return userUnderVerification(_that);case _IdentityTypeOrNumberMismatch() when identityTypeOrNumberMismatch != null:
return identityTypeOrNumberMismatch(_that);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that);case _UrlLaunchFailure() when urlLaunchFailure != null:
return urlLaunchFailure(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  unableToFetchIdentityTypes,TResult Function( String? message)?  userUnderVerification,TResult Function( String? message)?  identityTypeOrNumberMismatch,TResult Function( String? message)?  invalidCredentials,TResult Function()?  urlLaunchFailure,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that.message);case _UserUnderVerification() when userUnderVerification != null:
return userUnderVerification(_that.message);case _IdentityTypeOrNumberMismatch() when identityTypeOrNumberMismatch != null:
return identityTypeOrNumberMismatch(_that.message);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that.message);case _UrlLaunchFailure() when urlLaunchFailure != null:
return urlLaunchFailure();case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  unableToFetchIdentityTypes,required TResult Function( String? message)  userUnderVerification,required TResult Function( String? message)  identityTypeOrNumberMismatch,required TResult Function( String? message)  invalidCredentials,required TResult Function()  urlLaunchFailure,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes():
return unableToFetchIdentityTypes(_that.message);case _UserUnderVerification():
return userUnderVerification(_that.message);case _IdentityTypeOrNumberMismatch():
return identityTypeOrNumberMismatch(_that.message);case _InvalidCredentials():
return invalidCredentials(_that.message);case _UrlLaunchFailure():
return urlLaunchFailure();case _ServerError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  unableToFetchIdentityTypes,TResult? Function( String? message)?  userUnderVerification,TResult? Function( String? message)?  identityTypeOrNumberMismatch,TResult? Function( String? message)?  invalidCredentials,TResult? Function()?  urlLaunchFailure,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that.message);case _UserUnderVerification() when userUnderVerification != null:
return userUnderVerification(_that.message);case _IdentityTypeOrNumberMismatch() when identityTypeOrNumberMismatch != null:
return identityTypeOrNumberMismatch(_that.message);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that.message);case _UrlLaunchFailure() when urlLaunchFailure != null:
return urlLaunchFailure();case _ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class _UnableToFetchIdentityTypes implements LoginFailure {
  const _UnableToFetchIdentityTypes(this.message);
  

 final  String? message;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnableToFetchIdentityTypesCopyWith<_UnableToFetchIdentityTypes> get copyWith => __$UnableToFetchIdentityTypesCopyWithImpl<_UnableToFetchIdentityTypes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnableToFetchIdentityTypes&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginFailure.unableToFetchIdentityTypes(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnableToFetchIdentityTypesCopyWith<$Res> implements $LoginFailureCopyWith<$Res> {
  factory _$UnableToFetchIdentityTypesCopyWith(_UnableToFetchIdentityTypes value, $Res Function(_UnableToFetchIdentityTypes) _then) = __$UnableToFetchIdentityTypesCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$UnableToFetchIdentityTypesCopyWithImpl<$Res>
    implements _$UnableToFetchIdentityTypesCopyWith<$Res> {
  __$UnableToFetchIdentityTypesCopyWithImpl(this._self, this._then);

  final _UnableToFetchIdentityTypes _self;
  final $Res Function(_UnableToFetchIdentityTypes) _then;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_UnableToFetchIdentityTypes(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UserUnderVerification implements LoginFailure {
  const _UserUnderVerification(this.message);
  

 final  String? message;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUnderVerificationCopyWith<_UserUnderVerification> get copyWith => __$UserUnderVerificationCopyWithImpl<_UserUnderVerification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUnderVerification&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginFailure.userUnderVerification(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserUnderVerificationCopyWith<$Res> implements $LoginFailureCopyWith<$Res> {
  factory _$UserUnderVerificationCopyWith(_UserUnderVerification value, $Res Function(_UserUnderVerification) _then) = __$UserUnderVerificationCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$UserUnderVerificationCopyWithImpl<$Res>
    implements _$UserUnderVerificationCopyWith<$Res> {
  __$UserUnderVerificationCopyWithImpl(this._self, this._then);

  final _UserUnderVerification _self;
  final $Res Function(_UserUnderVerification) _then;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_UserUnderVerification(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _IdentityTypeOrNumberMismatch implements LoginFailure {
  const _IdentityTypeOrNumberMismatch(this.message);
  

 final  String? message;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdentityTypeOrNumberMismatchCopyWith<_IdentityTypeOrNumberMismatch> get copyWith => __$IdentityTypeOrNumberMismatchCopyWithImpl<_IdentityTypeOrNumberMismatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdentityTypeOrNumberMismatch&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginFailure.identityTypeOrNumberMismatch(message: $message)';
}


}

/// @nodoc
abstract mixin class _$IdentityTypeOrNumberMismatchCopyWith<$Res> implements $LoginFailureCopyWith<$Res> {
  factory _$IdentityTypeOrNumberMismatchCopyWith(_IdentityTypeOrNumberMismatch value, $Res Function(_IdentityTypeOrNumberMismatch) _then) = __$IdentityTypeOrNumberMismatchCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$IdentityTypeOrNumberMismatchCopyWithImpl<$Res>
    implements _$IdentityTypeOrNumberMismatchCopyWith<$Res> {
  __$IdentityTypeOrNumberMismatchCopyWithImpl(this._self, this._then);

  final _IdentityTypeOrNumberMismatch _self;
  final $Res Function(_IdentityTypeOrNumberMismatch) _then;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_IdentityTypeOrNumberMismatch(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _InvalidCredentials implements LoginFailure {
  const _InvalidCredentials(this.message);
  

 final  String? message;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidCredentialsCopyWith<_InvalidCredentials> get copyWith => __$InvalidCredentialsCopyWithImpl<_InvalidCredentials>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidCredentials&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginFailure.invalidCredentials(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InvalidCredentialsCopyWith<$Res> implements $LoginFailureCopyWith<$Res> {
  factory _$InvalidCredentialsCopyWith(_InvalidCredentials value, $Res Function(_InvalidCredentials) _then) = __$InvalidCredentialsCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$InvalidCredentialsCopyWithImpl<$Res>
    implements _$InvalidCredentialsCopyWith<$Res> {
  __$InvalidCredentialsCopyWithImpl(this._self, this._then);

  final _InvalidCredentials _self;
  final $Res Function(_InvalidCredentials) _then;

/// Create a copy of LoginFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_InvalidCredentials(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UrlLaunchFailure implements LoginFailure {
  const _UrlLaunchFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UrlLaunchFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginFailure.urlLaunchFailure()';
}


}




/// @nodoc


class _ServerError implements LoginFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginFailure.serverError()';
}


}




// dart format on
