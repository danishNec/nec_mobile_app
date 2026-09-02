// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpFailure {

 String? get message;
/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpFailureCopyWith<OtpFailure> get copyWith => _$OtpFailureCopyWithImpl<OtpFailure>(this as OtpFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OtpFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $OtpFailureCopyWith<$Res>  {
  factory $OtpFailureCopyWith(OtpFailure value, $Res Function(OtpFailure) _then) = _$OtpFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$OtpFailureCopyWithImpl<$Res>
    implements $OtpFailureCopyWith<$Res> {
  _$OtpFailureCopyWithImpl(this._self, this._then);

  final OtpFailure _self;
  final $Res Function(OtpFailure) _then;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpFailure].
extension OtpFailurePatterns on OtpFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MpinNotCreated value)?  mpinNotCreated,TResult Function( InvalidOtp value)?  invalidOtp,TResult Function( UnableToSendOtp value)?  unableToSendOtp,TResult Function( ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MpinNotCreated() when mpinNotCreated != null:
return mpinNotCreated(_that);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that);case UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that);case ServerError() when serverError != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MpinNotCreated value)  mpinNotCreated,required TResult Function( InvalidOtp value)  invalidOtp,required TResult Function( UnableToSendOtp value)  unableToSendOtp,required TResult Function( ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case MpinNotCreated():
return mpinNotCreated(_that);case InvalidOtp():
return invalidOtp(_that);case UnableToSendOtp():
return unableToSendOtp(_that);case ServerError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MpinNotCreated value)?  mpinNotCreated,TResult? Function( InvalidOtp value)?  invalidOtp,TResult? Function( UnableToSendOtp value)?  unableToSendOtp,TResult? Function( ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case MpinNotCreated() when mpinNotCreated != null:
return mpinNotCreated(_that);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that);case UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that);case ServerError() when serverError != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  mpinNotCreated,TResult Function( String? message)?  invalidOtp,TResult Function( String? message)?  unableToSendOtp,TResult Function( String? message)?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MpinNotCreated() when mpinNotCreated != null:
return mpinNotCreated(_that.message);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that.message);case UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that.message);case ServerError() when serverError != null:
return serverError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  mpinNotCreated,required TResult Function( String? message)  invalidOtp,required TResult Function( String? message)  unableToSendOtp,required TResult Function( String? message)  serverError,}) {final _that = this;
switch (_that) {
case MpinNotCreated():
return mpinNotCreated(_that.message);case InvalidOtp():
return invalidOtp(_that.message);case UnableToSendOtp():
return unableToSendOtp(_that.message);case ServerError():
return serverError(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  mpinNotCreated,TResult? Function( String? message)?  invalidOtp,TResult? Function( String? message)?  unableToSendOtp,TResult? Function( String? message)?  serverError,}) {final _that = this;
switch (_that) {
case MpinNotCreated() when mpinNotCreated != null:
return mpinNotCreated(_that.message);case InvalidOtp() when invalidOtp != null:
return invalidOtp(_that.message);case UnableToSendOtp() when unableToSendOtp != null:
return unableToSendOtp(_that.message);case ServerError() when serverError != null:
return serverError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MpinNotCreated implements OtpFailure {
  const MpinNotCreated({this.message});
  

@override final  String? message;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MpinNotCreatedCopyWith<MpinNotCreated> get copyWith => _$MpinNotCreatedCopyWithImpl<MpinNotCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MpinNotCreated&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OtpFailure.mpinNotCreated(message: $message)';
}


}

/// @nodoc
abstract mixin class $MpinNotCreatedCopyWith<$Res> implements $OtpFailureCopyWith<$Res> {
  factory $MpinNotCreatedCopyWith(MpinNotCreated value, $Res Function(MpinNotCreated) _then) = _$MpinNotCreatedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$MpinNotCreatedCopyWithImpl<$Res>
    implements $MpinNotCreatedCopyWith<$Res> {
  _$MpinNotCreatedCopyWithImpl(this._self, this._then);

  final MpinNotCreated _self;
  final $Res Function(MpinNotCreated) _then;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(MpinNotCreated(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class InvalidOtp implements OtpFailure {
  const InvalidOtp({this.message});
  

@override final  String? message;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidOtpCopyWith<InvalidOtp> get copyWith => _$InvalidOtpCopyWithImpl<InvalidOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidOtp&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OtpFailure.invalidOtp(message: $message)';
}


}

/// @nodoc
abstract mixin class $InvalidOtpCopyWith<$Res> implements $OtpFailureCopyWith<$Res> {
  factory $InvalidOtpCopyWith(InvalidOtp value, $Res Function(InvalidOtp) _then) = _$InvalidOtpCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$InvalidOtpCopyWithImpl<$Res>
    implements $InvalidOtpCopyWith<$Res> {
  _$InvalidOtpCopyWithImpl(this._self, this._then);

  final InvalidOtp _self;
  final $Res Function(InvalidOtp) _then;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(InvalidOtp(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnableToSendOtp implements OtpFailure {
  const UnableToSendOtp(this.message);
  

@override final  String? message;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnableToSendOtpCopyWith<UnableToSendOtp> get copyWith => _$UnableToSendOtpCopyWithImpl<UnableToSendOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnableToSendOtp&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OtpFailure.unableToSendOtp(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnableToSendOtpCopyWith<$Res> implements $OtpFailureCopyWith<$Res> {
  factory $UnableToSendOtpCopyWith(UnableToSendOtp value, $Res Function(UnableToSendOtp) _then) = _$UnableToSendOtpCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnableToSendOtpCopyWithImpl<$Res>
    implements $UnableToSendOtpCopyWith<$Res> {
  _$UnableToSendOtpCopyWithImpl(this._self, this._then);

  final UnableToSendOtp _self;
  final $Res Function(UnableToSendOtp) _then;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnableToSendOtp(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ServerError implements OtpFailure {
  const ServerError(this.message);
  

@override final  String? message;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerErrorCopyWith<ServerError> get copyWith => _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OtpFailure.serverError(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerErrorCopyWith<$Res> implements $OtpFailureCopyWith<$Res> {
  factory $ServerErrorCopyWith(ServerError value, $Res Function(ServerError) _then) = _$ServerErrorCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(this._self, this._then);

  final ServerError _self;
  final $Res Function(ServerError) _then;

/// Create a copy of OtpFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ServerError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
