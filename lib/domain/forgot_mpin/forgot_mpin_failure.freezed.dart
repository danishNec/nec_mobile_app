// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_mpin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotMpinFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotMpinFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotMpinFailure()';
}


}

/// @nodoc
class $ForgotMpinFailureCopyWith<$Res>  {
$ForgotMpinFailureCopyWith(ForgotMpinFailure _, $Res Function(ForgotMpinFailure) __);
}


/// Adds pattern-matching-related methods to [ForgotMpinFailure].
extension ForgotMpinFailurePatterns on ForgotMpinFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UnableToFetchIdentityTypes value)?  unableToFetchIdentityTypes,TResult Function( _InvalidCredentials value)?  invalidCredentials,TResult Function( _UnableToSendOtp value)?  unableToSendOtp,TResult Function( _InvalidOtp value)?  invalidOtp,TResult Function( _ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that);case _UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that);case _InvalidOtp() when invalidOtp != null:
return invalidOtp(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UnableToFetchIdentityTypes value)  unableToFetchIdentityTypes,required TResult Function( _InvalidCredentials value)  invalidCredentials,required TResult Function( _UnableToSendOtp value)  unableToSendOtp,required TResult Function( _InvalidOtp value)  invalidOtp,required TResult Function( _ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes():
return unableToFetchIdentityTypes(_that);case _InvalidCredentials():
return invalidCredentials(_that);case _UnableToSendOtp():
return unableToSendOtp(_that);case _InvalidOtp():
return invalidOtp(_that);case _ServerError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UnableToFetchIdentityTypes value)?  unableToFetchIdentityTypes,TResult? Function( _InvalidCredentials value)?  invalidCredentials,TResult? Function( _UnableToSendOtp value)?  unableToSendOtp,TResult? Function( _InvalidOtp value)?  invalidOtp,TResult? Function( _ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that);case _UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that);case _InvalidOtp() when invalidOtp != null:
return invalidOtp(_that);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  unableToFetchIdentityTypes,TResult Function( String? message)?  invalidCredentials,TResult Function( String? message)?  unableToSendOtp,TResult Function( String? message)?  invalidOtp,TResult Function()?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that.message);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that.message);case _UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that.message);case _InvalidOtp() when invalidOtp != null:
return invalidOtp(_that.message);case _ServerError() when serverError != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  unableToFetchIdentityTypes,required TResult Function( String? message)  invalidCredentials,required TResult Function( String? message)  unableToSendOtp,required TResult Function( String? message)  invalidOtp,required TResult Function()  serverError,}) {final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes():
return unableToFetchIdentityTypes(_that.message);case _InvalidCredentials():
return invalidCredentials(_that.message);case _UnableToSendOtp():
return unableToSendOtp(_that.message);case _InvalidOtp():
return invalidOtp(_that.message);case _ServerError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  unableToFetchIdentityTypes,TResult? Function( String? message)?  invalidCredentials,TResult? Function( String? message)?  unableToSendOtp,TResult? Function( String? message)?  invalidOtp,TResult? Function()?  serverError,}) {final _that = this;
switch (_that) {
case _UnableToFetchIdentityTypes() when unableToFetchIdentityTypes != null:
return unableToFetchIdentityTypes(_that.message);case _InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that.message);case _UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that.message);case _InvalidOtp() when invalidOtp != null:
return invalidOtp(_that.message);case _ServerError() when serverError != null:
return serverError();case _:
  return null;

}
}

}

/// @nodoc


class _UnableToFetchIdentityTypes implements ForgotMpinFailure {
  const _UnableToFetchIdentityTypes(this.message);
  

 final  String? message;

/// Create a copy of ForgotMpinFailure
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
  return 'ForgotMpinFailure.unableToFetchIdentityTypes(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnableToFetchIdentityTypesCopyWith<$Res> implements $ForgotMpinFailureCopyWith<$Res> {
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

/// Create a copy of ForgotMpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_UnableToFetchIdentityTypes(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _InvalidCredentials implements ForgotMpinFailure {
  const _InvalidCredentials(this.message);
  

 final  String? message;

/// Create a copy of ForgotMpinFailure
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
  return 'ForgotMpinFailure.invalidCredentials(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InvalidCredentialsCopyWith<$Res> implements $ForgotMpinFailureCopyWith<$Res> {
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

/// Create a copy of ForgotMpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_InvalidCredentials(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UnableToSendOtp implements ForgotMpinFailure {
  const _UnableToSendOtp(this.message);
  

 final  String? message;

/// Create a copy of ForgotMpinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnableToSendOtpCopyWith<_UnableToSendOtp> get copyWith => __$UnableToSendOtpCopyWithImpl<_UnableToSendOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnableToSendOtp&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgotMpinFailure.unableToSendOtp(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnableToSendOtpCopyWith<$Res> implements $ForgotMpinFailureCopyWith<$Res> {
  factory _$UnableToSendOtpCopyWith(_UnableToSendOtp value, $Res Function(_UnableToSendOtp) _then) = __$UnableToSendOtpCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$UnableToSendOtpCopyWithImpl<$Res>
    implements _$UnableToSendOtpCopyWith<$Res> {
  __$UnableToSendOtpCopyWithImpl(this._self, this._then);

  final _UnableToSendOtp _self;
  final $Res Function(_UnableToSendOtp) _then;

/// Create a copy of ForgotMpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_UnableToSendOtp(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _InvalidOtp implements ForgotMpinFailure {
  const _InvalidOtp(this.message);
  

 final  String? message;

/// Create a copy of ForgotMpinFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvalidOtpCopyWith<_InvalidOtp> get copyWith => __$InvalidOtpCopyWithImpl<_InvalidOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvalidOtp&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForgotMpinFailure.invalidOtp(message: $message)';
}


}

/// @nodoc
abstract mixin class _$InvalidOtpCopyWith<$Res> implements $ForgotMpinFailureCopyWith<$Res> {
  factory _$InvalidOtpCopyWith(_InvalidOtp value, $Res Function(_InvalidOtp) _then) = __$InvalidOtpCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$InvalidOtpCopyWithImpl<$Res>
    implements _$InvalidOtpCopyWith<$Res> {
  __$InvalidOtpCopyWithImpl(this._self, this._then);

  final _InvalidOtp _self;
  final $Res Function(_InvalidOtp) _then;

/// Create a copy of ForgotMpinFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_InvalidOtp(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ServerError implements ForgotMpinFailure {
  const _ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotMpinFailure.serverError()';
}


}




// dart format on
