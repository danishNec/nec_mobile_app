// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileUserDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "data") Data? get data;
/// Create a copy of ProfileUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUserDtoCopyWith<ProfileUserDto> get copyWith => _$ProfileUserDtoCopyWithImpl<ProfileUserDto>(this as ProfileUserDto, _$identity);

  /// Serializes this ProfileUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUserDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ProfileUserDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ProfileUserDtoCopyWith<$Res>  {
  factory $ProfileUserDtoCopyWith(ProfileUserDto value, $Res Function(ProfileUserDto) _then) = _$ProfileUserDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ProfileUserDtoCopyWithImpl<$Res>
    implements $ProfileUserDtoCopyWith<$Res> {
  _$ProfileUserDtoCopyWithImpl(this._self, this._then);

  final ProfileUserDto _self;
  final $Res Function(ProfileUserDto) _then;

/// Create a copy of ProfileUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of ProfileUserDto
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


/// Adds pattern-matching-related methods to [ProfileUserDto].
extension ProfileUserDtoPatterns on ProfileUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileUserDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "data")  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileUserDto() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "data")  Data? data)  $default,) {final _that = this;
switch (_that) {
case _ProfileUserDto():
return $default(_that.success,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "data")  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _ProfileUserDto() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileUserDto implements ProfileUserDto {
  const _ProfileUserDto({@JsonKey(name: "success") this.success, @JsonKey(name: "data") this.data});
  factory _ProfileUserDto.fromJson(Map<String, dynamic> json) => _$ProfileUserDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of ProfileUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileUserDtoCopyWith<_ProfileUserDto> get copyWith => __$ProfileUserDtoCopyWithImpl<_ProfileUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileUserDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ProfileUserDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProfileUserDtoCopyWith<$Res> implements $ProfileUserDtoCopyWith<$Res> {
  factory _$ProfileUserDtoCopyWith(_ProfileUserDto value, $Res Function(_ProfileUserDto) _then) = __$ProfileUserDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ProfileUserDtoCopyWithImpl<$Res>
    implements _$ProfileUserDtoCopyWith<$Res> {
  __$ProfileUserDtoCopyWithImpl(this._self, this._then);

  final _ProfileUserDto _self;
  final $Res Function(_ProfileUserDto) _then;

/// Create a copy of ProfileUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_ProfileUserDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of ProfileUserDto
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

@JsonKey(name: "user") User? get user;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'Data(user: $user)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "user") User? user
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
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "user")  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "user")  User? user)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.user);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "user")  User? user)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "user") this.user});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'Data(user: $user)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "user") User? user
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
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_Data(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
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

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "name") String? get name;@JsonKey(name: "status") String? get status;@JsonKey(name: "mobile_number") String? get mobileNumber;@JsonKey(name: "email") String? get email;@JsonKey(name: "is_email_verified") bool? get isEmailVerified;@JsonKey(name: "gender") String? get gender;@JsonKey(name: "nationality") String? get nationality;@JsonKey(name: "date_of_birth") DateTime? get dateOfBirth;@JsonKey(name: "place_of_birth") String? get placeOfBirth;@JsonKey(name: "country_of_birth") String? get countryOfBirth;@JsonKey(name: "address1") String? get address1;@JsonKey(name: "state") String? get state;@JsonKey(name: "id_number") String? get idNumber;@JsonKey(name: "issue_date") DateTime? get issueDate;@JsonKey(name: "expiry_date") DateTime? get expiryDate;@JsonKey(name: "employer") String? get employer;@JsonKey(name: "profession") String? get profession;@JsonKey(name: "expected_transaction_count") int? get expectedTransactionCount;@JsonKey(name: "expected_turnover") int? get expectedTurnover;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.countryOfBirth, countryOfBirth) || other.countryOfBirth == countryOfBirth)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.state, state) || other.state == state)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.employer, employer) || other.employer == employer)&&(identical(other.profession, profession) || other.profession == profession)&&(identical(other.expectedTransactionCount, expectedTransactionCount) || other.expectedTransactionCount == expectedTransactionCount)&&(identical(other.expectedTurnover, expectedTurnover) || other.expectedTurnover == expectedTurnover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,name,status,mobileNumber,email,isEmailVerified,gender,nationality,dateOfBirth,placeOfBirth,countryOfBirth,address1,state,idNumber,issueDate,expiryDate,employer,profession,expectedTransactionCount,expectedTurnover]);

@override
String toString() {
  return 'User(eId: $eId, name: $name, status: $status, mobileNumber: $mobileNumber, email: $email, isEmailVerified: $isEmailVerified, gender: $gender, nationality: $nationality, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, countryOfBirth: $countryOfBirth, address1: $address1, state: $state, idNumber: $idNumber, issueDate: $issueDate, expiryDate: $expiryDate, employer: $employer, profession: $profession, expectedTransactionCount: $expectedTransactionCount, expectedTurnover: $expectedTurnover)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "mobile_number") String? mobileNumber,@JsonKey(name: "email") String? email,@JsonKey(name: "is_email_verified") bool? isEmailVerified,@JsonKey(name: "gender") String? gender,@JsonKey(name: "nationality") String? nationality,@JsonKey(name: "date_of_birth") DateTime? dateOfBirth,@JsonKey(name: "place_of_birth") String? placeOfBirth,@JsonKey(name: "country_of_birth") String? countryOfBirth,@JsonKey(name: "address1") String? address1,@JsonKey(name: "state") String? state,@JsonKey(name: "id_number") String? idNumber,@JsonKey(name: "issue_date") DateTime? issueDate,@JsonKey(name: "expiry_date") DateTime? expiryDate,@JsonKey(name: "employer") String? employer,@JsonKey(name: "profession") String? profession,@JsonKey(name: "expected_transaction_count") int? expectedTransactionCount,@JsonKey(name: "expected_turnover") int? expectedTurnover
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
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? name = freezed,Object? status = freezed,Object? mobileNumber = freezed,Object? email = freezed,Object? isEmailVerified = freezed,Object? gender = freezed,Object? nationality = freezed,Object? dateOfBirth = freezed,Object? placeOfBirth = freezed,Object? countryOfBirth = freezed,Object? address1 = freezed,Object? state = freezed,Object? idNumber = freezed,Object? issueDate = freezed,Object? expiryDate = freezed,Object? employer = freezed,Object? profession = freezed,Object? expectedTransactionCount = freezed,Object? expectedTurnover = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,countryOfBirth: freezed == countryOfBirth ? _self.countryOfBirth : countryOfBirth // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,employer: freezed == employer ? _self.employer : employer // ignore: cast_nullable_to_non_nullable
as String?,profession: freezed == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as String?,expectedTransactionCount: freezed == expectedTransactionCount ? _self.expectedTransactionCount : expectedTransactionCount // ignore: cast_nullable_to_non_nullable
as int?,expectedTurnover: freezed == expectedTurnover ? _self.expectedTurnover : expectedTurnover // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "email")  String? email, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "nationality")  String? nationality, @JsonKey(name: "date_of_birth")  DateTime? dateOfBirth, @JsonKey(name: "place_of_birth")  String? placeOfBirth, @JsonKey(name: "country_of_birth")  String? countryOfBirth, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "state")  String? state, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "issue_date")  DateTime? issueDate, @JsonKey(name: "expiry_date")  DateTime? expiryDate, @JsonKey(name: "employer")  String? employer, @JsonKey(name: "profession")  String? profession, @JsonKey(name: "expected_transaction_count")  int? expectedTransactionCount, @JsonKey(name: "expected_turnover")  int? expectedTurnover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.eId,_that.name,_that.status,_that.mobileNumber,_that.email,_that.isEmailVerified,_that.gender,_that.nationality,_that.dateOfBirth,_that.placeOfBirth,_that.countryOfBirth,_that.address1,_that.state,_that.idNumber,_that.issueDate,_that.expiryDate,_that.employer,_that.profession,_that.expectedTransactionCount,_that.expectedTurnover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "email")  String? email, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "nationality")  String? nationality, @JsonKey(name: "date_of_birth")  DateTime? dateOfBirth, @JsonKey(name: "place_of_birth")  String? placeOfBirth, @JsonKey(name: "country_of_birth")  String? countryOfBirth, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "state")  String? state, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "issue_date")  DateTime? issueDate, @JsonKey(name: "expiry_date")  DateTime? expiryDate, @JsonKey(name: "employer")  String? employer, @JsonKey(name: "profession")  String? profession, @JsonKey(name: "expected_transaction_count")  int? expectedTransactionCount, @JsonKey(name: "expected_turnover")  int? expectedTurnover)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.eId,_that.name,_that.status,_that.mobileNumber,_that.email,_that.isEmailVerified,_that.gender,_that.nationality,_that.dateOfBirth,_that.placeOfBirth,_that.countryOfBirth,_that.address1,_that.state,_that.idNumber,_that.issueDate,_that.expiryDate,_that.employer,_that.profession,_that.expectedTransactionCount,_that.expectedTurnover);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "mobile_number")  String? mobileNumber, @JsonKey(name: "email")  String? email, @JsonKey(name: "is_email_verified")  bool? isEmailVerified, @JsonKey(name: "gender")  String? gender, @JsonKey(name: "nationality")  String? nationality, @JsonKey(name: "date_of_birth")  DateTime? dateOfBirth, @JsonKey(name: "place_of_birth")  String? placeOfBirth, @JsonKey(name: "country_of_birth")  String? countryOfBirth, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "state")  String? state, @JsonKey(name: "id_number")  String? idNumber, @JsonKey(name: "issue_date")  DateTime? issueDate, @JsonKey(name: "expiry_date")  DateTime? expiryDate, @JsonKey(name: "employer")  String? employer, @JsonKey(name: "profession")  String? profession, @JsonKey(name: "expected_transaction_count")  int? expectedTransactionCount, @JsonKey(name: "expected_turnover")  int? expectedTurnover)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.eId,_that.name,_that.status,_that.mobileNumber,_that.email,_that.isEmailVerified,_that.gender,_that.nationality,_that.dateOfBirth,_that.placeOfBirth,_that.countryOfBirth,_that.address1,_that.state,_that.idNumber,_that.issueDate,_that.expiryDate,_that.employer,_that.profession,_that.expectedTransactionCount,_that.expectedTurnover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "name") this.name, @JsonKey(name: "status") this.status, @JsonKey(name: "mobile_number") this.mobileNumber, @JsonKey(name: "email") this.email, @JsonKey(name: "is_email_verified") this.isEmailVerified, @JsonKey(name: "gender") this.gender, @JsonKey(name: "nationality") this.nationality, @JsonKey(name: "date_of_birth") this.dateOfBirth, @JsonKey(name: "place_of_birth") this.placeOfBirth, @JsonKey(name: "country_of_birth") this.countryOfBirth, @JsonKey(name: "address1") this.address1, @JsonKey(name: "state") this.state, @JsonKey(name: "id_number") this.idNumber, @JsonKey(name: "issue_date") this.issueDate, @JsonKey(name: "expiry_date") this.expiryDate, @JsonKey(name: "employer") this.employer, @JsonKey(name: "profession") this.profession, @JsonKey(name: "expected_transaction_count") this.expectedTransactionCount, @JsonKey(name: "expected_turnover") this.expectedTurnover});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "mobile_number") final  String? mobileNumber;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "is_email_verified") final  bool? isEmailVerified;
@override@JsonKey(name: "gender") final  String? gender;
@override@JsonKey(name: "nationality") final  String? nationality;
@override@JsonKey(name: "date_of_birth") final  DateTime? dateOfBirth;
@override@JsonKey(name: "place_of_birth") final  String? placeOfBirth;
@override@JsonKey(name: "country_of_birth") final  String? countryOfBirth;
@override@JsonKey(name: "address1") final  String? address1;
@override@JsonKey(name: "state") final  String? state;
@override@JsonKey(name: "id_number") final  String? idNumber;
@override@JsonKey(name: "issue_date") final  DateTime? issueDate;
@override@JsonKey(name: "expiry_date") final  DateTime? expiryDate;
@override@JsonKey(name: "employer") final  String? employer;
@override@JsonKey(name: "profession") final  String? profession;
@override@JsonKey(name: "expected_transaction_count") final  int? expectedTransactionCount;
@override@JsonKey(name: "expected_turnover") final  int? expectedTurnover;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.placeOfBirth, placeOfBirth) || other.placeOfBirth == placeOfBirth)&&(identical(other.countryOfBirth, countryOfBirth) || other.countryOfBirth == countryOfBirth)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.state, state) || other.state == state)&&(identical(other.idNumber, idNumber) || other.idNumber == idNumber)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.employer, employer) || other.employer == employer)&&(identical(other.profession, profession) || other.profession == profession)&&(identical(other.expectedTransactionCount, expectedTransactionCount) || other.expectedTransactionCount == expectedTransactionCount)&&(identical(other.expectedTurnover, expectedTurnover) || other.expectedTurnover == expectedTurnover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,name,status,mobileNumber,email,isEmailVerified,gender,nationality,dateOfBirth,placeOfBirth,countryOfBirth,address1,state,idNumber,issueDate,expiryDate,employer,profession,expectedTransactionCount,expectedTurnover]);

@override
String toString() {
  return 'User(eId: $eId, name: $name, status: $status, mobileNumber: $mobileNumber, email: $email, isEmailVerified: $isEmailVerified, gender: $gender, nationality: $nationality, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, countryOfBirth: $countryOfBirth, address1: $address1, state: $state, idNumber: $idNumber, issueDate: $issueDate, expiryDate: $expiryDate, employer: $employer, profession: $profession, expectedTransactionCount: $expectedTransactionCount, expectedTurnover: $expectedTurnover)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "mobile_number") String? mobileNumber,@JsonKey(name: "email") String? email,@JsonKey(name: "is_email_verified") bool? isEmailVerified,@JsonKey(name: "gender") String? gender,@JsonKey(name: "nationality") String? nationality,@JsonKey(name: "date_of_birth") DateTime? dateOfBirth,@JsonKey(name: "place_of_birth") String? placeOfBirth,@JsonKey(name: "country_of_birth") String? countryOfBirth,@JsonKey(name: "address1") String? address1,@JsonKey(name: "state") String? state,@JsonKey(name: "id_number") String? idNumber,@JsonKey(name: "issue_date") DateTime? issueDate,@JsonKey(name: "expiry_date") DateTime? expiryDate,@JsonKey(name: "employer") String? employer,@JsonKey(name: "profession") String? profession,@JsonKey(name: "expected_transaction_count") int? expectedTransactionCount,@JsonKey(name: "expected_turnover") int? expectedTurnover
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
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? name = freezed,Object? status = freezed,Object? mobileNumber = freezed,Object? email = freezed,Object? isEmailVerified = freezed,Object? gender = freezed,Object? nationality = freezed,Object? dateOfBirth = freezed,Object? placeOfBirth = freezed,Object? countryOfBirth = freezed,Object? address1 = freezed,Object? state = freezed,Object? idNumber = freezed,Object? issueDate = freezed,Object? expiryDate = freezed,Object? employer = freezed,Object? profession = freezed,Object? expectedTransactionCount = freezed,Object? expectedTurnover = freezed,}) {
  return _then(_User(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,placeOfBirth: freezed == placeOfBirth ? _self.placeOfBirth : placeOfBirth // ignore: cast_nullable_to_non_nullable
as String?,countryOfBirth: freezed == countryOfBirth ? _self.countryOfBirth : countryOfBirth // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,idNumber: freezed == idNumber ? _self.idNumber : idNumber // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,employer: freezed == employer ? _self.employer : employer // ignore: cast_nullable_to_non_nullable
as String?,profession: freezed == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as String?,expectedTransactionCount: freezed == expectedTransactionCount ? _self.expectedTransactionCount : expectedTransactionCount // ignore: cast_nullable_to_non_nullable
as int?,expectedTurnover: freezed == expectedTurnover ? _self.expectedTurnover : expectedTurnover // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
