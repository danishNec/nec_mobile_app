// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeUserDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of HomeUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeUserDtoCopyWith<HomeUserDto> get copyWith => _$HomeUserDtoCopyWithImpl<HomeUserDto>(this as HomeUserDto, _$identity);

  /// Serializes this HomeUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeUserDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'HomeUserDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $HomeUserDtoCopyWith<$Res>  {
  factory $HomeUserDtoCopyWith(HomeUserDto value, $Res Function(HomeUserDto) _then) = _$HomeUserDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$HomeUserDtoCopyWithImpl<$Res>
    implements $HomeUserDtoCopyWith<$Res> {
  _$HomeUserDtoCopyWithImpl(this._self, this._then);

  final HomeUserDto _self;
  final $Res Function(HomeUserDto) _then;

/// Create a copy of HomeUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeUserDto
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


/// Adds pattern-matching-related methods to [HomeUserDto].
extension HomeUserDtoPatterns on HomeUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeUserDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeUserDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)  $default,) {final _that = this;
switch (_that) {
case _HomeUserDto():
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,) {final _that = this;
switch (_that) {
case _HomeUserDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeUserDto implements HomeUserDto {
  const _HomeUserDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _HomeUserDto.fromJson(Map<String, dynamic> json) => _$HomeUserDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of HomeUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeUserDtoCopyWith<_HomeUserDto> get copyWith => __$HomeUserDtoCopyWithImpl<_HomeUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeUserDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'HomeUserDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$HomeUserDtoCopyWith<$Res> implements $HomeUserDtoCopyWith<$Res> {
  factory _$HomeUserDtoCopyWith(_HomeUserDto value, $Res Function(_HomeUserDto) _then) = __$HomeUserDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$HomeUserDtoCopyWithImpl<$Res>
    implements _$HomeUserDtoCopyWith<$Res> {
  __$HomeUserDtoCopyWithImpl(this._self, this._then);

  final _HomeUserDto _self;
  final $Res Function(_HomeUserDto) _then;

/// Create a copy of HomeUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_HomeUserDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeUserDto
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

@JsonKey(name: "user") User? get user;@JsonKey(name: "economic_activity_id") int? get economicActivityId;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.user, user) || other.user == user)&&(identical(other.economicActivityId, economicActivityId) || other.economicActivityId == economicActivityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,economicActivityId);

@override
String toString() {
  return 'Data(user: $user, economicActivityId: $economicActivityId)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "user") User? user,@JsonKey(name: "economic_activity_id") int? economicActivityId
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
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? economicActivityId = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,economicActivityId: freezed == economicActivityId ? _self.economicActivityId : economicActivityId // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "user")  User? user, @JsonKey(name: "economic_activity_id")  int? economicActivityId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user,_that.economicActivityId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "user")  User? user, @JsonKey(name: "economic_activity_id")  int? economicActivityId)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.user,_that.economicActivityId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "user")  User? user, @JsonKey(name: "economic_activity_id")  int? economicActivityId)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user,_that.economicActivityId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "user") this.user, @JsonKey(name: "economic_activity_id") this.economicActivityId});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "user") final  User? user;
@override@JsonKey(name: "economic_activity_id") final  int? economicActivityId;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.user, user) || other.user == user)&&(identical(other.economicActivityId, economicActivityId) || other.economicActivityId == economicActivityId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,economicActivityId);

@override
String toString() {
  return 'Data(user: $user, economicActivityId: $economicActivityId)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "user") User? user,@JsonKey(name: "economic_activity_id") int? economicActivityId
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
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? economicActivityId = freezed,}) {
  return _then(_Data(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,economicActivityId: freezed == economicActivityId ? _self.economicActivityId : economicActivityId // ignore: cast_nullable_to_non_nullable
as int?,
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

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "mobile_code") int? get mobileCode;@JsonKey(name: "mobile_number") String? get mobileNumber;@JsonKey(name: "name") String? get name;@JsonKey(name: "first_name") String? get firstName;@JsonKey(name: "middle_name") String? get middleName;@JsonKey(name: "last_name") String? get lastName;@JsonKey(name: "date_of_birth") DateTime? get dateOfBirth;@JsonKey(name: "gender") String? get gender;@JsonKey(name: "country_code") String? get countryCode;@JsonKey(name: "id_number") String? get idNumber;@JsonKey(name: "country") String? get country;@JsonKey(name: "state_code") String? get stateCode;@JsonKey(name: "state") String? get state;@JsonKey(name: "city_id") String? get cityId;@JsonKey(name: "address1") String? get address1;@JsonKey(name: "address2") String? get address2;@JsonKey(name: "nationality_code") String? get nationalityCode;@JsonKey(name: "country_of_birth_code") String? get countryOfBirthCode;@JsonKey(name: "country_of_birth") String? get countryOfBirth;@JsonKey(name: "email") String? get email;@JsonKey(name: "is_email_verified") bool? get isEmailVerified;@JsonKey(name: "residency_type") String? get residencyType;@JsonKey(name: "status") String? get status;@JsonKey(name: "identity_type_code") String? get identityTypeCode;@JsonKey(name: "status_description") String? get statusDescription;@JsonKey(name: "is_user_registered") bool? get isUserRegistered;@JsonKey(name: "is_k_y_c_registered") bool? get isKYCRegistered;@JsonKey(name: "is_approved") bool? get isApproved;@JsonKey(name: "is_m_p_i_n_created") bool? get isMPINCreated;@JsonKey(name: "app_member_code") int? get appMemberCode;@JsonKey(name: "member_code") int? get memberCode;@JsonKey(name: "is_bio_metric_login_enabled") bool? get isBioMetricLoginEnabled;@JsonKey(name: "expected_turnover") int? get expectedTurnover;@JsonKey(name: "expected_transaction_count") int? get expectedTransactionCount;@JsonKey(name: "mobile_number_with_out_code") String? get mobileNumberWithOutCode;@JsonKey(name: "salutation") String? get salutation;@JsonKey(name: "employer") String? get employer;@JsonKey(name: "place_of_birth") String? get placeOfBirth;@JsonKey(name: "economic_activity_code") String? get economicActivityCode;@JsonKey(name: "member_group_id") int? get memberGroupId;@JsonKey(name: "present_address2") String? get presentAddress2;@JsonKey(name: "risk_type_code") String? get riskTypeCode;@JsonKey(name: "member_group") String? get memberGroup;@JsonKey(name: "risk_type_name") String? get riskTypeName;@JsonKey(name: "salutation_name") String? get salutationName;@JsonKey(name: "k_y_c_status") String? get kYCStatus;@JsonKey(name: "identity_type") String? get identityType;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.mobileCode, mobileCode) || other.mobileCode == mobileCode)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.country, country) || other.country == country)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.state, state) || other.state == state)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.countryOfBirthCode, countryOfBirthCode) || other.countryOfBirthCode == countryOfBirthCode)&&(identical(other.countryOfBirth, countryOfBirth) || other.countryOfBirth == countryOfBirth)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.residencyType, residencyType) || other.residencyType == residencyType)&&(identical(other.status, status) || other.status == status)&&(identical(other.identityTypeCode, identityTypeCode) || other.identityTypeCode == identityTypeCode)&&(identical(other.statusDescription, statusDescription) || other.statusDescription == statusDescription)&&(identical(other.isUserRegistered, isUserRegistered) || other.isUserRegistered == isUserRegistered)&&(identical(other.isKYCRegistered, isKYCRegistered) || other.isKYCRegistered == isKYCRegistered)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isMPINCreated, isMPINCreated) || other.isMPINCreated == isMPINCreated)&&(identical(other.appMemberCode, appMemberCode) || other.appMemberCode == appMemberCode)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.isBioMetricLoginEnabled, isBioMetricLoginEnabled) || other.isBioMetricLoginEnabled == isBioMetricLoginEnabled)&&(identical(other.expectedTurnover, expectedTurnover) || other.expectedTurnover == expectedTurnover)&&(identical(other.expectedTransactionCount, expectedTransactionCount) || other.expectedTransactionCount == expectedTransactionCount)&&(identical(other.mobileNumberWithOutCode, mobileNumberWithOutCode) || other.mobileNumberWithOutCode == mobileNumberWithOutCode)&&(identical(other.salutation, salutation) || other.salutation == salutation)&&(identical(other.employer, employer) || other.employer == employer)&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.economicActivityCode, economicActivityCode) || other.economicActivityCode == economicActivityCode)&&(identical(other.memberGroupId, memberGroupId) || other.memberGroupId == memberGroupId)&&(identical(other.presentAddress2, presentAddress2) || other.presentAddress2 == presentAddress2)&&(identical(other.riskTypeCode, riskTypeCode) || other.riskTypeCode == riskTypeCode)&&(identical(other.memberGroup, memberGroup) || other.memberGroup == memberGroup)&&(identical(other.riskTypeName, riskTypeName) || other.riskTypeName == riskTypeName)&&(identical(other.salutationName, salutationName) || other.salutationName == salutationName)&&(identical(other.kYCStatus, kYCStatus) || other.kYCStatus == kYCStatus)&&(identical(other.identityType, identityType) || other.identityType == identityType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,mobileCode,mobileNumber,name,firstName,middleName,lastName,dateOfBirth,gender,countryCode,idNumber,country,stateCode,state,cityId,address1,address2,nationalityCode,countryOfBirthCode,countryOfBirth,email,isEmailVerified,residencyType,status,identityTypeCode,statusDescription,isUserRegistered,isKYCRegistered,isApproved,isMPINCreated,appMemberCode,memberCode,isBioMetricLoginEnabled,expectedTurnover,expectedTransactionCount,mobileNumberWithOutCode,salutation,employer,placeOfBirth,economicActivityCode,memberGroupId,presentAddress2,riskTypeCode,memberGroup,riskTypeName,salutationName,kYCStatus,identityType]);

@override
String toString() {
  return 'User(eId: $eId, mobileCode: $mobileCode, mobileNumber: $mobileNumber, name: $name, firstName: $firstName, middleName: $middleName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: $gender, countryCode: $countryCode, idNumber: $idNumber, country: $country, stateCode: $stateCode, state: $state, cityId: $cityId, address1: $address1, address2: $address2, nationalityCode: $nationalityCode, countryOfBirthCode: $countryOfBirthCode, countryOfBirth: $countryOfBirth, email: $email, isEmailVerified: $isEmailVerified, residencyType: $residencyType, status: $status, identityTypeCode: $identityTypeCode, statusDescription: $statusDescription, isUserRegistered: $isUserRegistered, isKYCRegistered: $isKYCRegistered, isApproved: $isApproved, isMPINCreated: $isMPINCreated, appMemberCode: $appMemberCode, memberCode: $memberCode, isBioMetricLoginEnabled: $isBioMetricLoginEnabled, expectedTurnover: $expectedTurnover, expectedTransactionCount: $expectedTransactionCount, mobileNumberWithOutCode: $mobileNumberWithOutCode, salutation: $salutation, employer: $employer, placeOfBirth: $placeOfBirth, economicActivityCode: $economicActivityCode, memberGroupId: $memberGroupId, presentAddress2: $presentAddress2, riskTypeCode: $riskTypeCode, memberGroup: $memberGroup, riskTypeName: $riskTypeName, salutationName: $salutationName, kYCStatus: $kYCStatus, identityType: $identityType)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "mobile_code") int? mobileCode,@JsonKey(name: "mobile_number") String? mobileNumber,@JsonKey(name: "name") String? name,@JsonKey(name: "first_name") String? firstName,@JsonKey(name: "middle_name") String? middleName,@JsonKey(name: "last_name") String? lastName,@JsonKey(name: "date_of_birth") DateTime? dateOfBirth,@JsonKey(name: "gender") String? gender,@JsonKey(name: "country_code") String? countryCode,@JsonKey(name: "id_number") String? idNumber,@JsonKey(name: "country") String? country,@JsonKey(name: "state_code") String? stateCode,@JsonKey(name: "state") String? state,@JsonKey(name: "city_id") String? cityId,@JsonKey(name: "address1") String? address1,@JsonKey(name: "address2") String? address2,@JsonKey(name: "nationality_code") String? nationalityCode,@JsonKey(name: "country_of_birth_code") String? countryOfBirthCode,@JsonKey(name: "country_of_birth") String? countryOfBirth,@JsonKey(name: "email") String? email,@JsonKey(name: "is_email_verified") bool? isEmailVerified,@JsonKey(name: "residency_type") String? residencyType,@JsonKey(name: "status") String? status,@JsonKey(name: "identity_type_code") String? identityTypeCode,@JsonKey(name: "status_description") String? statusDescription,@JsonKey(name: "is_user_registered") bool? isUserRegistered,@JsonKey(name: "is_k_y_c_registered") bool? isKYCRegistered,@JsonKey(name: "is_approved") bool? isApproved,@JsonKey(name: "is_m_p_i_n_created") bool? isMPINCreated,@JsonKey(name: "app_member_code") int? appMemberCode,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "is_bio_metric_login_enabled") bool? isBioMetricLoginEnabled,@JsonKey(name: "expected_turnover") int? expectedTurnover,@JsonKey(name: "expected_transaction_count") int? expectedTransactionCount,@JsonKey(name: "mobile_number_with_out_code") String? mobileNumberWithOutCode,@JsonKey(name: "salutation") String? salutation,@JsonKey(name: "employer") String? employer,@JsonKey(name: "place_of_birth") String? placeOfBirth,@JsonKey(name: "economic_activity_code") String? economicActivityCode,@JsonKey(name: "member_group_id") int? memberGroupId,@JsonKey(name: "present_address2") String? presentAddress2,@JsonKey(name: "risk_type_code") String? riskTypeCode,@JsonKey(name: "member_group") String? memberGroup,@JsonKey(name: "risk_type_name") String? riskTypeName,@JsonKey(name: "salutation_name") String? salutationName,@JsonKey(name: "k_y_c_status") String? kYCStatus,@JsonKey(name: "identity_type") String? identityType
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
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? mobileCode = freezed,Object? mobileNumber = freezed,Object? name = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? countryCode = freezed,Object? idNumber = freezed,Object? country = freezed,Object? stateCode = freezed,Object? state = freezed,Object? cityId = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? nationalityCode = freezed,Object? countryOfBirthCode = freezed,Object? countryOfBirth = freezed,Object? email = freezed,Object? isEmailVerified = freezed,Object? residencyType = freezed,Object? status = freezed,Object? identityTypeCode = freezed,Object? statusDescription = freezed,Object? isUserRegistered = freezed,Object? isKYCRegistered = freezed,Object? isApproved = freezed,Object? isMPINCreated = freezed,Object? appMemberCode = freezed,Object? memberCode = freezed,Object? isBioMetricLoginEnabled = freezed,Object? expectedTurnover = freezed,Object? expectedTransactionCount = freezed,Object? mobileNumberWithOutCode = freezed,Object? salutation = freezed,Object? employer = freezed,Object? placeOfBirth = freezed,Object? economicActivityCode = freezed,Object? memberGroupId = freezed,Object? presentAddress2 = freezed,Object? riskTypeCode = freezed,Object? memberGroup = freezed,Object? riskTypeName = freezed,Object? salutationName = freezed,Object? kYCStatus = freezed,Object? identityType = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,mobileCode: freezed == mobileCode ? _self.mobileCode : mobileCode // ignore: cast_nullable_to_non_nullable
as int?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,nationalityCode: freezed == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String?,countryOfBirthCode: freezed == countryOfBirthCode ? _self.countryOfBirthCode : countryOfBirthCode // ignore: cast_nullable_to_non_nullable
as String?,countryOfBirth: freezed == countryOfBirth ? _self.countryOfBirth : countryOfBirth // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,residencyType: freezed == residencyType ? _self.residencyType : residencyType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,identityTypeCode: freezed == identityTypeCode ? _self.identityTypeCode : identityTypeCode // ignore: cast_nullable_to_non_nullable
as String?,statusDescription: freezed == statusDescription ? _self.statusDescription : statusDescription // ignore: cast_nullable_to_non_nullable
as String?,isUserRegistered: freezed == isUserRegistered ? _self.isUserRegistered : isUserRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isKYCRegistered: freezed == isKYCRegistered ? _self.isKYCRegistered : isKYCRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,isMPINCreated: freezed == isMPINCreated ? _self.isMPINCreated : isMPINCreated // ignore: cast_nullable_to_non_nullable
as bool?,appMemberCode: freezed == appMemberCode ? _self.appMemberCode : appMemberCode // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,isBioMetricLoginEnabled: freezed == isBioMetricLoginEnabled ? _self.isBioMetricLoginEnabled : isBioMetricLoginEnabled // ignore: cast_nullable_to_non_nullable
as bool?,expectedTurnover: freezed == expectedTurnover ? _self.expectedTurnover : expectedTurnover // ignore: cast_nullable_to_non_nullable
as int?,expectedTransactionCount: freezed == expectedTransactionCount ? _self.expectedTransactionCount : expectedTransactionCount // ignore: cast_nullable_to_non_nullable
as int?,mobileNumberWithOutCode: freezed == mobileNumberWithOutCode ? _self.mobileNumberWithOutCode : mobileNumberWithOutCode // ignore: cast_nullable_to_non_nullable
as String?,salutation: freezed == salutation ? _self.salutation : salutation // ignore: cast_nullable_to_non_nullable
as String?,employer: freezed == employer ? _self.employer : employer // ignore: cast_nullable_to_non_nullable
as String?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,economicActivityCode: freezed == economicActivityCode ? _self.economicActivityCode : economicActivityCode // ignore: cast_nullable_to_non_nullable
as String?,memberGroupId: freezed == memberGroupId ? _self.memberGroupId : memberGroupId // ignore: cast_nullable_to_non_nullable
as int?,presentAddress2: freezed == presentAddress2 ? _self.presentAddress2 : presentAddress2 // ignore: cast_nullable_to_non_nullable
as String?,riskTypeCode: freezed == riskTypeCode ? _self.riskTypeCode : riskTypeCode // ignore: cast_nullable_to_non_nullable
as String?,memberGroup: freezed == memberGroup ? _self.memberGroup : memberGroup // ignore: cast_nullable_to_non_nullable
as String?,riskTypeName: freezed == riskTypeName ? _self.riskTypeName : riskTypeName // ignore: cast_nullable_to_non_nullable
as String?,salutationName: freezed == salutationName ? _self.salutationName : salutationName // ignore: cast_nullable_to_non_nullable
as String?,kYCStatus: freezed == kYCStatus ? _self.kYCStatus : kYCStatus // ignore: cast_nullable_to_non_nullable
as String?,identityType: freezed == identityType ? _self.identityType : identityType // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "mobile_code")  int? mobileCode, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "name")  String? name, @JsonKey(name: "first_name")  String? firstName, @JsonKey(name: "middle_name")  String? middleName, @JsonKey(name: "last_name")  String? lastName, @JsonKey(name: "date_of_birth")  DateTime? dateOfBirth, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "country_code")  String? countryCode, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "country")  String? country, @JsonKey(name: "state_code")  String? stateCode, @JsonKey(name: "state")  String? state, @JsonKey(name: "city_id")  String? cityId, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "address2")  String? address2, @JsonKey(name: "nationality_code")  String? nationalityCode, @JsonKey(name: "country_of_birth_code")  String? countryOfBirthCode, @JsonKey(name: "country_of_birth")  String? countryOfBirth, @JsonKey(name: "email")  String? email, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "residency_type")  String? residencyType, @JsonKey(name: "status")  String? status, @JsonKey(name: "identity_type_code")  String? identityTypeCode, @JsonKey(name: "status_description")  String? statusDescription, @JsonKey(name: "is_user_registered")  bool? isUserRegistered, @JsonKey(name: "is_k_y_c_registered")  bool? isKYCRegistered, @JsonKey(name: "is_approved")  bool? isApproved, @JsonKey(name: "is_m_p_i_n_created")  bool? isMPINCreated, @JsonKey(name: "app_member_code")  int? appMemberCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "is_bio_metric_login_enabled")  bool? isBioMetricLoginEnabled, @JsonKey(name: "expected_turnover")  int? expectedTurnover, @JsonKey(name: "expected_transaction_count")  int? expectedTransactionCount, @JsonKey(name: "mobile_number_with_out_code")  String? mobileNumberWithOutCode, @JsonKey(name: "salutation")  String? salutation, @JsonKey(name: "employer")  String? employer, @JsonKey(name: "place_of_birth")  String? placeOfBirth, @JsonKey(name: "economic_activity_code")  String? economicActivityCode, @JsonKey(name: "member_group_id")  int? memberGroupId, @JsonKey(name: "present_address2")  String? presentAddress2, @JsonKey(name: "risk_type_code")  String? riskTypeCode, @JsonKey(name: "member_group")  String? memberGroup, @JsonKey(name: "risk_type_name")  String? riskTypeName, @JsonKey(name: "salutation_name")  String? salutationName, @JsonKey(name: "k_y_c_status")  String? kYCStatus, @JsonKey(name: "identity_type")  String? identityType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.eId,_that.mobileCode,_that.mobileNumber,_that.name,_that.firstName,_that.middleName,_that.lastName,_that.dateOfBirth,_that.gender,_that.countryCode,_that.idNumber,_that.country,_that.stateCode,_that.state,_that.cityId,_that.address1,_that.address2,_that.nationalityCode,_that.countryOfBirthCode,_that.countryOfBirth,_that.email,_that.isEmailVerified,_that.residencyType,_that.status,_that.identityTypeCode,_that.statusDescription,_that.isUserRegistered,_that.isKYCRegistered,_that.isApproved,_that.isMPINCreated,_that.appMemberCode,_that.memberCode,_that.isBioMetricLoginEnabled,_that.expectedTurnover,_that.expectedTransactionCount,_that.mobileNumberWithOutCode,_that.salutation,_that.employer,_that.placeOfBirth,_that.economicActivityCode,_that.memberGroupId,_that.presentAddress2,_that.riskTypeCode,_that.memberGroup,_that.riskTypeName,_that.salutationName,_that.kYCStatus,_that.identityType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "mobile_code")  int? mobileCode, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "name")  String? name, @JsonKey(name: "first_name")  String? firstName, @JsonKey(name: "middle_name")  String? middleName, @JsonKey(name: "last_name")  String? lastName, @JsonKey(name: "date_of_birth")  DateTime? dateOfBirth, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "country_code")  String? countryCode, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "country")  String? country, @JsonKey(name: "state_code")  String? stateCode, @JsonKey(name: "state")  String? state, @JsonKey(name: "city_id")  String? cityId, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "address2")  String? address2, @JsonKey(name: "nationality_code")  String? nationalityCode, @JsonKey(name: "country_of_birth_code")  String? countryOfBirthCode, @JsonKey(name: "country_of_birth")  String? countryOfBirth, @JsonKey(name: "email")  String? email, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "residency_type")  String? residencyType, @JsonKey(name: "status")  String? status, @JsonKey(name: "identity_type_code")  String? identityTypeCode, @JsonKey(name: "status_description")  String? statusDescription, @JsonKey(name: "is_user_registered")  bool? isUserRegistered, @JsonKey(name: "is_k_y_c_registered")  bool? isKYCRegistered, @JsonKey(name: "is_approved")  bool? isApproved, @JsonKey(name: "is_m_p_i_n_created")  bool? isMPINCreated, @JsonKey(name: "app_member_code")  int? appMemberCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "is_bio_metric_login_enabled")  bool? isBioMetricLoginEnabled, @JsonKey(name: "expected_turnover")  int? expectedTurnover, @JsonKey(name: "expected_transaction_count")  int? expectedTransactionCount, @JsonKey(name: "mobile_number_with_out_code")  String? mobileNumberWithOutCode, @JsonKey(name: "salutation")  String? salutation, @JsonKey(name: "employer")  String? employer, @JsonKey(name: "place_of_birth")  String? placeOfBirth, @JsonKey(name: "economic_activity_code")  String? economicActivityCode, @JsonKey(name: "member_group_id")  int? memberGroupId, @JsonKey(name: "present_address2")  String? presentAddress2, @JsonKey(name: "risk_type_code")  String? riskTypeCode, @JsonKey(name: "member_group")  String? memberGroup, @JsonKey(name: "risk_type_name")  String? riskTypeName, @JsonKey(name: "salutation_name")  String? salutationName, @JsonKey(name: "k_y_c_status")  String? kYCStatus, @JsonKey(name: "identity_type")  String? identityType)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.eId,_that.mobileCode,_that.mobileNumber,_that.name,_that.firstName,_that.middleName,_that.lastName,_that.dateOfBirth,_that.gender,_that.countryCode,_that.idNumber,_that.country,_that.stateCode,_that.state,_that.cityId,_that.address1,_that.address2,_that.nationalityCode,_that.countryOfBirthCode,_that.countryOfBirth,_that.email,_that.isEmailVerified,_that.residencyType,_that.status,_that.identityTypeCode,_that.statusDescription,_that.isUserRegistered,_that.isKYCRegistered,_that.isApproved,_that.isMPINCreated,_that.appMemberCode,_that.memberCode,_that.isBioMetricLoginEnabled,_that.expectedTurnover,_that.expectedTransactionCount,_that.mobileNumberWithOutCode,_that.salutation,_that.employer,_that.placeOfBirth,_that.economicActivityCode,_that.memberGroupId,_that.presentAddress2,_that.riskTypeCode,_that.memberGroup,_that.riskTypeName,_that.salutationName,_that.kYCStatus,_that.identityType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "mobile_code")  int? mobileCode, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "name")  String? name, @JsonKey(name: "first_name")  String? firstName, @JsonKey(name: "middle_name")  String? middleName, @JsonKey(name: "last_name")  String? lastName, @JsonKey(name: "date_of_birth")  DateTime? dateOfBirth, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "country_code")  String? countryCode, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "country")  String? country, @JsonKey(name: "state_code")  String? stateCode, @JsonKey(name: "state")  String? state, @JsonKey(name: "city_id")  String? cityId, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "address2")  String? address2, @JsonKey(name: "nationality_code")  String? nationalityCode, @JsonKey(name: "country_of_birth_code")  String? countryOfBirthCode, @JsonKey(name: "country_of_birth")  String? countryOfBirth, @JsonKey(name: "email")  String? email, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "residency_type")  String? residencyType, @JsonKey(name: "status")  String? status, @JsonKey(name: "identity_type_code")  String? identityTypeCode, @JsonKey(name: "status_description")  String? statusDescription, @JsonKey(name: "is_user_registered")  bool? isUserRegistered, @JsonKey(name: "is_k_y_c_registered")  bool? isKYCRegistered, @JsonKey(name: "is_approved")  bool? isApproved, @JsonKey(name: "is_m_p_i_n_created")  bool? isMPINCreated, @JsonKey(name: "app_member_code")  int? appMemberCode, @JsonKey(name: "member_code")  int? memberCode, @JsonKey(name: "is_bio_metric_login_enabled")  bool? isBioMetricLoginEnabled, @JsonKey(name: "expected_turnover")  int? expectedTurnover, @JsonKey(name: "expected_transaction_count")  int? expectedTransactionCount, @JsonKey(name: "mobile_number_with_out_code")  String? mobileNumberWithOutCode, @JsonKey(name: "salutation")  String? salutation, @JsonKey(name: "employer")  String? employer, @JsonKey(name: "place_of_birth")  String? placeOfBirth, @JsonKey(name: "economic_activity_code")  String? economicActivityCode, @JsonKey(name: "member_group_id")  int? memberGroupId, @JsonKey(name: "present_address2")  String? presentAddress2, @JsonKey(name: "risk_type_code")  String? riskTypeCode, @JsonKey(name: "member_group")  String? memberGroup, @JsonKey(name: "risk_type_name")  String? riskTypeName, @JsonKey(name: "salutation_name")  String? salutationName, @JsonKey(name: "k_y_c_status")  String? kYCStatus, @JsonKey(name: "identity_type")  String? identityType)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.eId,_that.mobileCode,_that.mobileNumber,_that.name,_that.firstName,_that.middleName,_that.lastName,_that.dateOfBirth,_that.gender,_that.countryCode,_that.idNumber,_that.country,_that.stateCode,_that.state,_that.cityId,_that.address1,_that.address2,_that.nationalityCode,_that.countryOfBirthCode,_that.countryOfBirth,_that.email,_that.isEmailVerified,_that.residencyType,_that.status,_that.identityTypeCode,_that.statusDescription,_that.isUserRegistered,_that.isKYCRegistered,_that.isApproved,_that.isMPINCreated,_that.appMemberCode,_that.memberCode,_that.isBioMetricLoginEnabled,_that.expectedTurnover,_that.expectedTransactionCount,_that.mobileNumberWithOutCode,_that.salutation,_that.employer,_that.placeOfBirth,_that.economicActivityCode,_that.memberGroupId,_that.presentAddress2,_that.riskTypeCode,_that.memberGroup,_that.riskTypeName,_that.salutationName,_that.kYCStatus,_that.identityType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "mobile_code") this.mobileCode, @JsonKey(name: "mobile_number") this.mobileNumber, @JsonKey(name: "name") this.name, @JsonKey(name: "first_name") this.firstName, @JsonKey(name: "middle_name") this.middleName, @JsonKey(name: "last_name") this.lastName, @JsonKey(name: "date_of_birth") this.dateOfBirth, @JsonKey(name: "gender") this.gender, @JsonKey(name: "country_code") this.countryCode, @JsonKey(name: "id_number") this.idNumber, @JsonKey(name: "country") this.country, @JsonKey(name: "state_code") this.stateCode, @JsonKey(name: "state") this.state, @JsonKey(name: "city_id") this.cityId, @JsonKey(name: "address1") this.address1, @JsonKey(name: "address2") this.address2, @JsonKey(name: "nationality_code") this.nationalityCode, @JsonKey(name: "country_of_birth_code") this.countryOfBirthCode, @JsonKey(name: "country_of_birth") this.countryOfBirth, @JsonKey(name: "email") this.email, @JsonKey(name: "is_email_verified") this.isEmailVerified, @JsonKey(name: "residency_type") this.residencyType, @JsonKey(name: "status") this.status, @JsonKey(name: "identity_type_code") this.identityTypeCode, @JsonKey(name: "status_description") this.statusDescription, @JsonKey(name: "is_user_registered") this.isUserRegistered, @JsonKey(name: "is_k_y_c_registered") this.isKYCRegistered, @JsonKey(name: "is_approved") this.isApproved, @JsonKey(name: "is_m_p_i_n_created") this.isMPINCreated, @JsonKey(name: "app_member_code") this.appMemberCode, @JsonKey(name: "member_code") this.memberCode, @JsonKey(name: "is_bio_metric_login_enabled") this.isBioMetricLoginEnabled, @JsonKey(name: "expected_turnover") this.expectedTurnover, @JsonKey(name: "expected_transaction_count") this.expectedTransactionCount, @JsonKey(name: "mobile_number_with_out_code") this.mobileNumberWithOutCode, @JsonKey(name: "salutation") this.salutation, @JsonKey(name: "employer") this.employer, @JsonKey(name: "place_of_birth") this.placeOfBirth, @JsonKey(name: "economic_activity_code") this.economicActivityCode, @JsonKey(name: "member_group_id") this.memberGroupId, @JsonKey(name: "present_address2") this.presentAddress2, @JsonKey(name: "risk_type_code") this.riskTypeCode, @JsonKey(name: "member_group") this.memberGroup, @JsonKey(name: "risk_type_name") this.riskTypeName, @JsonKey(name: "salutation_name") this.salutationName, @JsonKey(name: "k_y_c_status") this.kYCStatus, @JsonKey(name: "identity_type") this.identityType});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "mobile_code") final  int? mobileCode;
@override@JsonKey(name: "mobile_number") final  String? mobileNumber;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "first_name") final  String? firstName;
@override@JsonKey(name: "middle_name") final  String? middleName;
@override@JsonKey(name: "last_name") final  String? lastName;
@override@JsonKey(name: "date_of_birth") final  DateTime? dateOfBirth;
@override@JsonKey(name: "gender") final  String? gender;
@override@JsonKey(name: "country_code") final  String? countryCode;
@override@JsonKey(name: "id_number") final  String? idNumber;
@override@JsonKey(name: "country") final  String? country;
@override@JsonKey(name: "state_code") final  String? stateCode;
@override@JsonKey(name: "state") final  String? state;
@override@JsonKey(name: "city_id") final  String? cityId;
@override@JsonKey(name: "address1") final  String? address1;
@override@JsonKey(name: "address2") final  String? address2;
@override@JsonKey(name: "nationality_code") final  String? nationalityCode;
@override@JsonKey(name: "country_of_birth_code") final  String? countryOfBirthCode;
@override@JsonKey(name: "country_of_birth") final  String? countryOfBirth;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "is_email_verified") final  bool? isEmailVerified;
@override@JsonKey(name: "residency_type") final  String? residencyType;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "identity_type_code") final  String? identityTypeCode;
@override@JsonKey(name: "status_description") final  String? statusDescription;
@override@JsonKey(name: "is_user_registered") final  bool? isUserRegistered;
@override@JsonKey(name: "is_k_y_c_registered") final  bool? isKYCRegistered;
@override@JsonKey(name: "is_approved") final  bool? isApproved;
@override@JsonKey(name: "is_m_p_i_n_created") final  bool? isMPINCreated;
@override@JsonKey(name: "app_member_code") final  int? appMemberCode;
@override@JsonKey(name: "member_code") final  int? memberCode;
@override@JsonKey(name: "is_bio_metric_login_enabled") final  bool? isBioMetricLoginEnabled;
@override@JsonKey(name: "expected_turnover") final  int? expectedTurnover;
@override@JsonKey(name: "expected_transaction_count") final  int? expectedTransactionCount;
@override@JsonKey(name: "mobile_number_with_out_code") final  String? mobileNumberWithOutCode;
@override@JsonKey(name: "salutation") final  String? salutation;
@override@JsonKey(name: "employer") final  String? employer;
@override@JsonKey(name: "place_of_birth") final  String? placeOfBirth;
@override@JsonKey(name: "economic_activity_code") final  String? economicActivityCode;
@override@JsonKey(name: "member_group_id") final  int? memberGroupId;
@override@JsonKey(name: "present_address2") final  String? presentAddress2;
@override@JsonKey(name: "risk_type_code") final  String? riskTypeCode;
@override@JsonKey(name: "member_group") final  String? memberGroup;
@override@JsonKey(name: "risk_type_name") final  String? riskTypeName;
@override@JsonKey(name: "salutation_name") final  String? salutationName;
@override@JsonKey(name: "k_y_c_status") final  String? kYCStatus;
@override@JsonKey(name: "identity_type") final  String? identityType;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.mobileCode, mobileCode) || other.mobileCode == mobileCode)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.country, country) || other.country == country)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.state, state) || other.state == state)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.countryOfBirthCode, countryOfBirthCode) || other.countryOfBirthCode == countryOfBirthCode)&&(identical(other.countryOfBirth, countryOfBirth) || other.countryOfBirth == countryOfBirth)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.residencyType, residencyType) || other.residencyType == residencyType)&&(identical(other.status, status) || other.status == status)&&(identical(other.identityTypeCode, identityTypeCode) || other.identityTypeCode == identityTypeCode)&&(identical(other.statusDescription, statusDescription) || other.statusDescription == statusDescription)&&(identical(other.isUserRegistered, isUserRegistered) || other.isUserRegistered == isUserRegistered)&&(identical(other.isKYCRegistered, isKYCRegistered) || other.isKYCRegistered == isKYCRegistered)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isMPINCreated, isMPINCreated) || other.isMPINCreated == isMPINCreated)&&(identical(other.appMemberCode, appMemberCode) || other.appMemberCode == appMemberCode)&&(identical(other.memberCode, memberCode) || other.memberCode == memberCode)&&(identical(other.isBioMetricLoginEnabled, isBioMetricLoginEnabled) || other.isBioMetricLoginEnabled == isBioMetricLoginEnabled)&&(identical(other.expectedTurnover, expectedTurnover) || other.expectedTurnover == expectedTurnover)&&(identical(other.expectedTransactionCount, expectedTransactionCount) || other.expectedTransactionCount == expectedTransactionCount)&&(identical(other.mobileNumberWithOutCode, mobileNumberWithOutCode) || other.mobileNumberWithOutCode == mobileNumberWithOutCode)&&(identical(other.salutation, salutation) || other.salutation == salutation)&&(identical(other.employer, employer) || other.employer == employer)&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.economicActivityCode, economicActivityCode) || other.economicActivityCode == economicActivityCode)&&(identical(other.memberGroupId, memberGroupId) || other.memberGroupId == memberGroupId)&&(identical(other.presentAddress2, presentAddress2) || other.presentAddress2 == presentAddress2)&&(identical(other.riskTypeCode, riskTypeCode) || other.riskTypeCode == riskTypeCode)&&(identical(other.memberGroup, memberGroup) || other.memberGroup == memberGroup)&&(identical(other.riskTypeName, riskTypeName) || other.riskTypeName == riskTypeName)&&(identical(other.salutationName, salutationName) || other.salutationName == salutationName)&&(identical(other.kYCStatus, kYCStatus) || other.kYCStatus == kYCStatus)&&(identical(other.identityType, identityType) || other.identityType == identityType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,mobileCode,mobileNumber,name,firstName,middleName,lastName,dateOfBirth,gender,countryCode,idNumber,country,stateCode,state,cityId,address1,address2,nationalityCode,countryOfBirthCode,countryOfBirth,email,isEmailVerified,residencyType,status,identityTypeCode,statusDescription,isUserRegistered,isKYCRegistered,isApproved,isMPINCreated,appMemberCode,memberCode,isBioMetricLoginEnabled,expectedTurnover,expectedTransactionCount,mobileNumberWithOutCode,salutation,employer,placeOfBirth,economicActivityCode,memberGroupId,presentAddress2,riskTypeCode,memberGroup,riskTypeName,salutationName,kYCStatus,identityType]);

@override
String toString() {
  return 'User(eId: $eId, mobileCode: $mobileCode, mobileNumber: $mobileNumber, name: $name, firstName: $firstName, middleName: $middleName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: $gender, countryCode: $countryCode, idNumber: $idNumber, country: $country, stateCode: $stateCode, state: $state, cityId: $cityId, address1: $address1, address2: $address2, nationalityCode: $nationalityCode, countryOfBirthCode: $countryOfBirthCode, countryOfBirth: $countryOfBirth, email: $email, isEmailVerified: $isEmailVerified, residencyType: $residencyType, status: $status, identityTypeCode: $identityTypeCode, statusDescription: $statusDescription, isUserRegistered: $isUserRegistered, isKYCRegistered: $isKYCRegistered, isApproved: $isApproved, isMPINCreated: $isMPINCreated, appMemberCode: $appMemberCode, memberCode: $memberCode, isBioMetricLoginEnabled: $isBioMetricLoginEnabled, expectedTurnover: $expectedTurnover, expectedTransactionCount: $expectedTransactionCount, mobileNumberWithOutCode: $mobileNumberWithOutCode, salutation: $salutation, employer: $employer, placeOfBirth: $placeOfBirth, economicActivityCode: $economicActivityCode, memberGroupId: $memberGroupId, presentAddress2: $presentAddress2, riskTypeCode: $riskTypeCode, memberGroup: $memberGroup, riskTypeName: $riskTypeName, salutationName: $salutationName, kYCStatus: $kYCStatus, identityType: $identityType)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "mobile_code") int? mobileCode,@JsonKey(name: "mobile_number") String? mobileNumber,@JsonKey(name: "name") String? name,@JsonKey(name: "first_name") String? firstName,@JsonKey(name: "middle_name") String? middleName,@JsonKey(name: "last_name") String? lastName,@JsonKey(name: "date_of_birth") DateTime? dateOfBirth,@JsonKey(name: "gender") String? gender,@JsonKey(name: "country_code") String? countryCode,@JsonKey(name: "id_number") String? idNumber,@JsonKey(name: "country") String? country,@JsonKey(name: "state_code") String? stateCode,@JsonKey(name: "state") String? state,@JsonKey(name: "city_id") String? cityId,@JsonKey(name: "address1") String? address1,@JsonKey(name: "address2") String? address2,@JsonKey(name: "nationality_code") String? nationalityCode,@JsonKey(name: "country_of_birth_code") String? countryOfBirthCode,@JsonKey(name: "country_of_birth") String? countryOfBirth,@JsonKey(name: "email") String? email,@JsonKey(name: "is_email_verified") bool? isEmailVerified,@JsonKey(name: "residency_type") String? residencyType,@JsonKey(name: "status") String? status,@JsonKey(name: "identity_type_code") String? identityTypeCode,@JsonKey(name: "status_description") String? statusDescription,@JsonKey(name: "is_user_registered") bool? isUserRegistered,@JsonKey(name: "is_k_y_c_registered") bool? isKYCRegistered,@JsonKey(name: "is_approved") bool? isApproved,@JsonKey(name: "is_m_p_i_n_created") bool? isMPINCreated,@JsonKey(name: "app_member_code") int? appMemberCode,@JsonKey(name: "member_code") int? memberCode,@JsonKey(name: "is_bio_metric_login_enabled") bool? isBioMetricLoginEnabled,@JsonKey(name: "expected_turnover") int? expectedTurnover,@JsonKey(name: "expected_transaction_count") int? expectedTransactionCount,@JsonKey(name: "mobile_number_with_out_code") String? mobileNumberWithOutCode,@JsonKey(name: "salutation") String? salutation,@JsonKey(name: "employer") String? employer,@JsonKey(name: "place_of_birth") String? placeOfBirth,@JsonKey(name: "economic_activity_code") String? economicActivityCode,@JsonKey(name: "member_group_id") int? memberGroupId,@JsonKey(name: "present_address2") String? presentAddress2,@JsonKey(name: "risk_type_code") String? riskTypeCode,@JsonKey(name: "member_group") String? memberGroup,@JsonKey(name: "risk_type_name") String? riskTypeName,@JsonKey(name: "salutation_name") String? salutationName,@JsonKey(name: "k_y_c_status") String? kYCStatus,@JsonKey(name: "identity_type") String? identityType
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
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? mobileCode = freezed,Object? mobileNumber = freezed,Object? name = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? countryCode = freezed,Object? idNumber = freezed,Object? country = freezed,Object? stateCode = freezed,Object? state = freezed,Object? cityId = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? nationalityCode = freezed,Object? countryOfBirthCode = freezed,Object? countryOfBirth = freezed,Object? email = freezed,Object? isEmailVerified = freezed,Object? residencyType = freezed,Object? status = freezed,Object? identityTypeCode = freezed,Object? statusDescription = freezed,Object? isUserRegistered = freezed,Object? isKYCRegistered = freezed,Object? isApproved = freezed,Object? isMPINCreated = freezed,Object? appMemberCode = freezed,Object? memberCode = freezed,Object? isBioMetricLoginEnabled = freezed,Object? expectedTurnover = freezed,Object? expectedTransactionCount = freezed,Object? mobileNumberWithOutCode = freezed,Object? salutation = freezed,Object? employer = freezed,Object? placeOfBirth = freezed,Object? economicActivityCode = freezed,Object? memberGroupId = freezed,Object? presentAddress2 = freezed,Object? riskTypeCode = freezed,Object? memberGroup = freezed,Object? riskTypeName = freezed,Object? salutationName = freezed,Object? kYCStatus = freezed,Object? identityType = freezed,}) {
  return _then(_User(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,mobileCode: freezed == mobileCode ? _self.mobileCode : mobileCode // ignore: cast_nullable_to_non_nullable
as int?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,nationalityCode: freezed == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String?,countryOfBirthCode: freezed == countryOfBirthCode ? _self.countryOfBirthCode : countryOfBirthCode // ignore: cast_nullable_to_non_nullable
as String?,countryOfBirth: freezed == countryOfBirth ? _self.countryOfBirth : countryOfBirth // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,residencyType: freezed == residencyType ? _self.residencyType : residencyType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,identityTypeCode: freezed == identityTypeCode ? _self.identityTypeCode : identityTypeCode // ignore: cast_nullable_to_non_nullable
as String?,statusDescription: freezed == statusDescription ? _self.statusDescription : statusDescription // ignore: cast_nullable_to_non_nullable
as String?,isUserRegistered: freezed == isUserRegistered ? _self.isUserRegistered : isUserRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isKYCRegistered: freezed == isKYCRegistered ? _self.isKYCRegistered : isKYCRegistered // ignore: cast_nullable_to_non_nullable
as bool?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,isMPINCreated: freezed == isMPINCreated ? _self.isMPINCreated : isMPINCreated // ignore: cast_nullable_to_non_nullable
as bool?,appMemberCode: freezed == appMemberCode ? _self.appMemberCode : appMemberCode // ignore: cast_nullable_to_non_nullable
as int?,memberCode: freezed == memberCode ? _self.memberCode : memberCode // ignore: cast_nullable_to_non_nullable
as int?,isBioMetricLoginEnabled: freezed == isBioMetricLoginEnabled ? _self.isBioMetricLoginEnabled : isBioMetricLoginEnabled // ignore: cast_nullable_to_non_nullable
as bool?,expectedTurnover: freezed == expectedTurnover ? _self.expectedTurnover : expectedTurnover // ignore: cast_nullable_to_non_nullable
as int?,expectedTransactionCount: freezed == expectedTransactionCount ? _self.expectedTransactionCount : expectedTransactionCount // ignore: cast_nullable_to_non_nullable
as int?,mobileNumberWithOutCode: freezed == mobileNumberWithOutCode ? _self.mobileNumberWithOutCode : mobileNumberWithOutCode // ignore: cast_nullable_to_non_nullable
as String?,salutation: freezed == salutation ? _self.salutation : salutation // ignore: cast_nullable_to_non_nullable
as String?,employer: freezed == employer ? _self.employer : employer // ignore: cast_nullable_to_non_nullable
as String?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,economicActivityCode: freezed == economicActivityCode ? _self.economicActivityCode : economicActivityCode // ignore: cast_nullable_to_non_nullable
as String?,memberGroupId: freezed == memberGroupId ? _self.memberGroupId : memberGroupId // ignore: cast_nullable_to_non_nullable
as int?,presentAddress2: freezed == presentAddress2 ? _self.presentAddress2 : presentAddress2 // ignore: cast_nullable_to_non_nullable
as String?,riskTypeCode: freezed == riskTypeCode ? _self.riskTypeCode : riskTypeCode // ignore: cast_nullable_to_non_nullable
as String?,memberGroup: freezed == memberGroup ? _self.memberGroup : memberGroup // ignore: cast_nullable_to_non_nullable
as String?,riskTypeName: freezed == riskTypeName ? _self.riskTypeName : riskTypeName // ignore: cast_nullable_to_non_nullable
as String?,salutationName: freezed == salutationName ? _self.salutationName : salutationName // ignore: cast_nullable_to_non_nullable
as String?,kYCStatus: freezed == kYCStatus ? _self.kYCStatus : kYCStatus // ignore: cast_nullable_to_non_nullable
as String?,identityType: freezed == identityType ? _self.identityType : identityType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
