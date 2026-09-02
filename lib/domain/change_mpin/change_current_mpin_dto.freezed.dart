// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_current_mpin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeCurrentMpinDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;
/// Create a copy of ChangeCurrentMpinDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCurrentMpinDtoCopyWith<ChangeCurrentMpinDto> get copyWith => _$ChangeCurrentMpinDtoCopyWithImpl<ChangeCurrentMpinDto>(this as ChangeCurrentMpinDto, _$identity);

  /// Serializes this ChangeCurrentMpinDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentMpinDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'ChangeCurrentMpinDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ChangeCurrentMpinDtoCopyWith<$Res>  {
  factory $ChangeCurrentMpinDtoCopyWith(ChangeCurrentMpinDto value, $Res Function(ChangeCurrentMpinDto) _then) = _$ChangeCurrentMpinDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ChangeCurrentMpinDtoCopyWithImpl<$Res>
    implements $ChangeCurrentMpinDtoCopyWith<$Res> {
  _$ChangeCurrentMpinDtoCopyWithImpl(this._self, this._then);

  final ChangeCurrentMpinDto _self;
  final $Res Function(ChangeCurrentMpinDto) _then;

/// Create a copy of ChangeCurrentMpinDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of ChangeCurrentMpinDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChangeCurrentMpinDto].
extension ChangeCurrentMpinDtoPatterns on ChangeCurrentMpinDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeCurrentMpinDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeCurrentMpinDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeCurrentMpinDto value)  $default,){
final _that = this;
switch (_that) {
case _ChangeCurrentMpinDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeCurrentMpinDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeCurrentMpinDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeCurrentMpinDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)  $default,) {final _that = this;
switch (_that) {
case _ChangeCurrentMpinDto():
return $default(_that.success,_that.message,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _ChangeCurrentMpinDto() when $default != null:
return $default(_that.success,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeCurrentMpinDto implements ChangeCurrentMpinDto {
  const _ChangeCurrentMpinDto({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data});
  factory _ChangeCurrentMpinDto.fromJson(Map<String, dynamic> json) => _$ChangeCurrentMpinDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of ChangeCurrentMpinDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeCurrentMpinDtoCopyWith<_ChangeCurrentMpinDto> get copyWith => __$ChangeCurrentMpinDtoCopyWithImpl<_ChangeCurrentMpinDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeCurrentMpinDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeCurrentMpinDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data);

@override
String toString() {
  return 'ChangeCurrentMpinDto(success: $success, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChangeCurrentMpinDtoCopyWith<$Res> implements $ChangeCurrentMpinDtoCopyWith<$Res> {
  factory _$ChangeCurrentMpinDtoCopyWith(_ChangeCurrentMpinDto value, $Res Function(_ChangeCurrentMpinDto) _then) = __$ChangeCurrentMpinDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ChangeCurrentMpinDtoCopyWithImpl<$Res>
    implements _$ChangeCurrentMpinDtoCopyWith<$Res> {
  __$ChangeCurrentMpinDtoCopyWithImpl(this._self, this._then);

  final _ChangeCurrentMpinDto _self;
  final $Res Function(_ChangeCurrentMpinDto) _then;

/// Create a copy of ChangeCurrentMpinDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_ChangeCurrentMpinDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of ChangeCurrentMpinDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: "jwt_token") String? get jwtToken;@JsonKey(name: "refresh_token") String? get refreshToken;@JsonKey(name: "user") User? get user;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.jwtToken, jwtToken) || other.jwtToken == jwtToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jwtToken,refreshToken,user);

@override
String toString() {
  return 'Data(jwtToken: $jwtToken, refreshToken: $refreshToken, user: $user)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "jwt_token") String? jwtToken,@JsonKey(name: "refresh_token") String? refreshToken,@JsonKey(name: "user") User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jwtToken = freezed,Object? refreshToken = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
jwtToken: freezed == jwtToken ? _self.jwtToken : jwtToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "jwt_token")  String? jwtToken, @JsonKey(name: "refresh_token")  String? refreshToken, @JsonKey(name: "user")  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.jwtToken,_that.refreshToken,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "jwt_token")  String? jwtToken, @JsonKey(name: "refresh_token")  String? refreshToken, @JsonKey(name: "user")  User? user)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.jwtToken,_that.refreshToken,_that.user);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "jwt_token")  String? jwtToken, @JsonKey(name: "refresh_token")  String? refreshToken, @JsonKey(name: "user")  User? user)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.jwtToken,_that.refreshToken,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "jwt_token") this.jwtToken, @JsonKey(name: "refresh_token") this.refreshToken, @JsonKey(name: "user") this.user});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "jwt_token") final  String? jwtToken;
@override@JsonKey(name: "refresh_token") final  String? refreshToken;
@override@JsonKey(name: "user") final  User? user;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.jwtToken, jwtToken) || other.jwtToken == jwtToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jwtToken,refreshToken,user);

@override
String toString() {
  return 'Data(jwtToken: $jwtToken, refreshToken: $refreshToken, user: $user)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "jwt_token") String? jwtToken,@JsonKey(name: "refresh_token") String? refreshToken,@JsonKey(name: "user") User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jwtToken = freezed,Object? refreshToken = freezed,Object? user = freezed,}) {
  return _then(_Data(
jwtToken: freezed == jwtToken ? _self.jwtToken : jwtToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "mobile_code") int? get mobileCode;@JsonKey(name: "mobile_number") String? get mobileNumber;@JsonKey(name: "name") String? get name;@JsonKey(name: "id_number") String? get idNumber;@JsonKey(name: "status") String? get status;@JsonKey(name: "is_user_registered") bool? get isUserRegistered;@JsonKey(name: "is_k_y_c_registered") bool? get isKYCRegistered;@JsonKey(name: "is_email_verified") bool? get isEmailVerified;@JsonKey(name: "is_approved") bool? get isApproved;@JsonKey(name: "is_blocked_user") bool? get isBlockedUser;@JsonKey(name: "is_m_p_i_n_created") bool? get isMPINCreated;@JsonKey(name: "app_member_code") int? get appMemberCode;@JsonKey(name: "member_code") int? get memberCode;@JsonKey(name: "is_bio_metric_login_enabled") bool? get isBioMetricLoginEnabled;@JsonKey(name: "k_y_c_status") String? get kYCStatus;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.mobileCode, mobileCode) || other.mobileCode == mobileCode)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.isUserRegistered, isUserRegistered) || other.isUserRegistered == isUserRegistered)&&(identical(other.isKYCRegistered, isKYCRegistered) || other.isKYCRegistered == isKYCRegistered)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isBlockedUser, isBlockedUser) || other.isBlockedUser == isBlockedUser)&&(identical(other.isMPINCreated, isMPINCreated) || other.isMPINCreated == isMPINCreated)&&(identical(other.appMemberCode, appMemberCode) || other.appMemberCode == appMemberCode)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.isBioMetricLoginEnabled, isBioMetricLoginEnabled) || other.isBioMetricLoginEnabled == isBioMetricLoginEnabled)&&(identical(other.kYCStatus, kYCStatus) || other.kYCStatus == kYCStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,mobileCode,mobileNumber,name,idNumber,status,isUserRegistered,isKYCRegistered,isEmailVerified,isApproved,isBlockedUser,isMPINCreated,appMemberCode,memberCode,isBioMetricLoginEnabled,kYCStatus);

@override
String toString() {
  return 'User(eId: $eId, mobileCode: $mobileCode, mobileNumber: $mobileNumber, name: $name, idNumber: $idNumber, status: $status, isUserRegistered: $isUserRegistered, isKYCRegistered: $isKYCRegistered, isEmailVerified: $isEmailVerified, isApproved: $isApproved, isBlockedUser: $isBlockedUser, isMPINCreated: $isMPINCreated, appMemberCode: $appMemberCode, memberCode: $memberCode, isBioMetricLoginEnabled: $isBioMetricLoginEnabled, kYCStatus: $kYCStatus)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "mobile_code") int? mobileCode,@JsonKey(name: "mobile_number") String? mobileNumber,@JsonKey(name: "name") String? name,@JsonKey(name: "id_number") String? idNumber,@JsonKey(name: "status") String? status,@JsonKey(name: "is_user_registered") bool? isUserRegistered,@JsonKey(name: "is_k_y_c_registered") bool? isKYCRegistered,@JsonKey(name: "is_email_verified") bool? isEmailVerified,@JsonKey(name: "is_approved") bool? isApproved,@JsonKey(name: "is_blocked_user") bool? isBlockedUser,@JsonKey(name: "is_m_p_i_n_created") bool? isMPINCreated,@JsonKey(name: "app_member_code") int? appMemberCode,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "is_bio_metric_login_enabled") bool? isBioMetricLoginEnabled,@JsonKey(name: "k_y_c_status") String? kYCStatus
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? mobileCode = freezed,Object? mobileNumber = freezed,Object? name = freezed,Object? idNumber = freezed,Object? status = freezed,Object? isUserRegistered = freezed,Object? isKYCRegistered = freezed,Object? isEmailVerified = freezed,Object? isApproved = freezed,Object? isBlockedUser = freezed,Object? isMPINCreated = freezed,Object? appMemberCode = freezed,Object? memberCode = freezed,Object? isBioMetricLoginEnabled = freezed,Object? kYCStatus = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,mobileCode: freezed == mobileCode ? _self.mobileCode : mobileCode // ignore: cast_nullable_to_non_nullable
as int?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isUserRegistered: freezed == isUserRegistered ? _self.isUserRegistered : isUserRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isKYCRegistered: freezed == isKYCRegistered ? _self.isKYCRegistered : isKYCRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,isBlockedUser: freezed == isBlockedUser ? _self.isBlockedUser : isBlockedUser // ignore: cast_nullable_to_non_nullable
as bool?,isMPINCreated: freezed == isMPINCreated ? _self.isMPINCreated : isMPINCreated // ignore: cast_nullable_to_non_nullable
as bool?,appMemberCode: freezed == appMemberCode ? _self.appMemberCode : appMemberCode // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,isBioMetricLoginEnabled: freezed == isBioMetricLoginEnabled ? _self.isBioMetricLoginEnabled : isBioMetricLoginEnabled // ignore: cast_nullable_to_non_nullable
as bool?,kYCStatus: freezed == kYCStatus ? _self.kYCStatus : kYCStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "mobile_code")  int? mobileCode, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "name")  String? name, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "status")  String? status, @JsonKey(name: "is_user_registered")  bool? isUserRegistered, @JsonKey(name: "is_k_y_c_registered")  bool? isKYCRegistered, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "is_approved")  bool? isApproved, @JsonKey(name: "is_blocked_user")  bool? isBlockedUser, @JsonKey(name: "is_m_p_i_n_created")  bool? isMPINCreated, @JsonKey(name: "app_member_code")  int? appMemberCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "is_bio_metric_login_enabled")  bool? isBioMetricLoginEnabled, @JsonKey(name: "k_y_c_status")  String? kYCStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.eId,_that.mobileCode,_that.mobileNumber,_that.name,_that.idNumber,_that.status,_that.isUserRegistered,_that.isKYCRegistered,_that.isEmailVerified,_that.isApproved,_that.isBlockedUser,_that.isMPINCreated,_that.appMemberCode,_that.memberCode,_that.isBioMetricLoginEnabled,_that.kYCStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "mobile_code")  int? mobileCode, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "name")  String? name, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "status")  String? status, @JsonKey(name: "is_user_registered")  bool? isUserRegistered, @JsonKey(name: "is_k_y_c_registered")  bool? isKYCRegistered, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "is_approved")  bool? isApproved, @JsonKey(name: "is_blocked_user")  bool? isBlockedUser, @JsonKey(name: "is_m_p_i_n_created")  bool? isMPINCreated, @JsonKey(name: "app_member_code")  int? appMemberCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "is_bio_metric_login_enabled")  bool? isBioMetricLoginEnabled, @JsonKey(name: "k_y_c_status")  String? kYCStatus)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.eId,_that.mobileCode,_that.mobileNumber,_that.name,_that.idNumber,_that.status,_that.isUserRegistered,_that.isKYCRegistered,_that.isEmailVerified,_that.isApproved,_that.isBlockedUser,_that.isMPINCreated,_that.appMemberCode,_that.memberCode,_that.isBioMetricLoginEnabled,_that.kYCStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "mobile_code")  int? mobileCode, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "name")  String? name, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "status")  String? status, @JsonKey(name: "is_user_registered")  bool? isUserRegistered, @JsonKey(name: "is_k_y_c_registered")  bool? isKYCRegistered, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "is_approved")  bool? isApproved, @JsonKey(name: "is_blocked_user")  bool? isBlockedUser, @JsonKey(name: "is_m_p_i_n_created")  bool? isMPINCreated, @JsonKey(name: "app_member_code")  int? appMemberCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "is_bio_metric_login_enabled")  bool? isBioMetricLoginEnabled, @JsonKey(name: "k_y_c_status")  String? kYCStatus)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.eId,_that.mobileCode,_that.mobileNumber,_that.name,_that.idNumber,_that.status,_that.isUserRegistered,_that.isKYCRegistered,_that.isEmailVerified,_that.isApproved,_that.isBlockedUser,_that.isMPINCreated,_that.appMemberCode,_that.memberCode,_that.isBioMetricLoginEnabled,_that.kYCStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "mobile_code") this.mobileCode, @JsonKey(name: "mobile_number") this.mobileNumber, @JsonKey(name: "name") this.name, @JsonKey(name: "id_number") this.idNumber, @JsonKey(name: "status") this.status, @JsonKey(name: "is_user_registered") this.isUserRegistered, @JsonKey(name: "is_k_y_c_registered") this.isKYCRegistered, @JsonKey(name: "is_email_verified") this.isEmailVerified, @JsonKey(name: "is_approved") this.isApproved, @JsonKey(name: "is_blocked_user") this.isBlockedUser, @JsonKey(name: "is_m_p_i_n_created") this.isMPINCreated, @JsonKey(name: "app_member_code") this.appMemberCode, @JsonKey(name: "member_code") this.memberCode, @JsonKey(name: "is_bio_metric_login_enabled") this.isBioMetricLoginEnabled, @JsonKey(name: "k_y_c_status") this.kYCStatus});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "mobile_code") final  int? mobileCode;
@override@JsonKey(name: "mobile_number") final  String? mobileNumber;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "id_number") final  String? idNumber;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "is_user_registered") final  bool? isUserRegistered;
@override@JsonKey(name: "is_k_y_c_registered") final  bool? isKYCRegistered;
@override@JsonKey(name: "is_email_verified") final  bool? isEmailVerified;
@override@JsonKey(name: "is_approved") final  bool? isApproved;
@override@JsonKey(name: "is_blocked_user") final  bool? isBlockedUser;
@override@JsonKey(name: "is_m_p_i_n_created") final  bool? isMPINCreated;
@override@JsonKey(name: "app_member_code") final  int? appMemberCode;
@override@JsonKey(name: "member_code") final  int? memberCode;
@override@JsonKey(name: "is_bio_metric_login_enabled") final  bool? isBioMetricLoginEnabled;
@override@JsonKey(name: "k_y_c_status") final  String? kYCStatus;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.mobileCode, mobileCode) || other.mobileCode == mobileCode)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.isUserRegistered, isUserRegistered) || other.isUserRegistered == isUserRegistered)&&(identical(other.isKYCRegistered, isKYCRegistered) || other.isKYCRegistered == isKYCRegistered)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isBlockedUser, isBlockedUser) || other.isBlockedUser == isBlockedUser)&&(identical(other.isMPINCreated, isMPINCreated) || other.isMPINCreated == isMPINCreated)&&(identical(other.appMemberCode, appMemberCode) || other.appMemberCode == appMemberCode)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.isBioMetricLoginEnabled, isBioMetricLoginEnabled) || other.isBioMetricLoginEnabled == isBioMetricLoginEnabled)&&(identical(other.kYCStatus, kYCStatus) || other.kYCStatus == kYCStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,mobileCode,mobileNumber,name,idNumber,status,isUserRegistered,isKYCRegistered,isEmailVerified,isApproved,isBlockedUser,isMPINCreated,appMemberCode,memberCode,isBioMetricLoginEnabled,kYCStatus);

@override
String toString() {
  return 'User(eId: $eId, mobileCode: $mobileCode, mobileNumber: $mobileNumber, name: $name, idNumber: $idNumber, status: $status, isUserRegistered: $isUserRegistered, isKYCRegistered: $isKYCRegistered, isEmailVerified: $isEmailVerified, isApproved: $isApproved, isBlockedUser: $isBlockedUser, isMPINCreated: $isMPINCreated, appMemberCode: $appMemberCode, memberCode: $memberCode, isBioMetricLoginEnabled: $isBioMetricLoginEnabled, kYCStatus: $kYCStatus)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "mobile_code") int? mobileCode,@JsonKey(name: "mobile_number") String? mobileNumber,@JsonKey(name: "name") String? name,@JsonKey(name: "id_number") String? idNumber,@JsonKey(name: "status") String? status,@JsonKey(name: "is_user_registered") bool? isUserRegistered,@JsonKey(name: "is_k_y_c_registered") bool? isKYCRegistered,@JsonKey(name: "is_email_verified") bool? isEmailVerified,@JsonKey(name: "is_approved") bool? isApproved,@JsonKey(name: "is_blocked_user") bool? isBlockedUser,@JsonKey(name: "is_m_p_i_n_created") bool? isMPINCreated,@JsonKey(name: "app_member_code") int? appMemberCode,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "is_bio_metric_login_enabled") bool? isBioMetricLoginEnabled,@JsonKey(name: "k_y_c_status") String? kYCStatus
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? mobileCode = freezed,Object? mobileNumber = freezed,Object? name = freezed,Object? idNumber = freezed,Object? status = freezed,Object? isUserRegistered = freezed,Object? isKYCRegistered = freezed,Object? isEmailVerified = freezed,Object? isApproved = freezed,Object? isBlockedUser = freezed,Object? isMPINCreated = freezed,Object? appMemberCode = freezed,Object? memberCode = freezed,Object? isBioMetricLoginEnabled = freezed,Object? kYCStatus = freezed,}) {
  return _then(_User(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,mobileCode: freezed == mobileCode ? _self.mobileCode : mobileCode // ignore: cast_nullable_to_non_nullable
as int?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,isUserRegistered: freezed == isUserRegistered ? _self.isUserRegistered : isUserRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isKYCRegistered: freezed == isKYCRegistered ? _self.isKYCRegistered : isKYCRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,isBlockedUser: freezed == isBlockedUser ? _self.isBlockedUser : isBlockedUser // ignore: cast_nullable_to_non_nullable
as bool?,isMPINCreated: freezed == isMPINCreated ? _self.isMPINCreated : isMPINCreated // ignore: cast_nullable_to_non_nullable
as bool?,appMemberCode: freezed == appMemberCode ? _self.appMemberCode : appMemberCode // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,isBioMetricLoginEnabled: freezed == isBioMetricLoginEnabled ? _self.isBioMetricLoginEnabled : isBioMetricLoginEnabled // ignore: cast_nullable_to_non_nullable
as bool?,kYCStatus: freezed == kYCStatus ? _self.kYCStatus : kYCStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
