// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsUserDto {

@JsonKey(name: 'success') String? get success;@JsonKey(name: 'data') SettingsUserData? get data;
/// Create a copy of SettingsUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsUserDtoCopyWith<SettingsUserDto> get copyWith => _$SettingsUserDtoCopyWithImpl<SettingsUserDto>(this as SettingsUserDto, _$identity);

  /// Serializes this SettingsUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsUserDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SettingsUserDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SettingsUserDtoCopyWith<$Res>  {
  factory $SettingsUserDtoCopyWith(SettingsUserDto value, $Res Function(SettingsUserDto) _then) = _$SettingsUserDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') String? success,@JsonKey(name: 'data') SettingsUserData? data
});


$SettingsUserDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$SettingsUserDtoCopyWithImpl<$Res>
    implements $SettingsUserDtoCopyWith<$Res> {
  _$SettingsUserDtoCopyWithImpl(this._self, this._then);

  final SettingsUserDto _self;
  final $Res Function(SettingsUserDto) _then;

/// Create a copy of SettingsUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SettingsUserData?,
  ));
}
/// Create a copy of SettingsUserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsUserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SettingsUserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsUserDto].
extension SettingsUserDtoPatterns on SettingsUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsUserDto value)  $default,){
final _that = this;
switch (_that) {
case _SettingsUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  String? success, @JsonKey(name: 'data')  SettingsUserData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsUserDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  String? success, @JsonKey(name: 'data')  SettingsUserData? data)  $default,) {final _that = this;
switch (_that) {
case _SettingsUserDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  String? success, @JsonKey(name: 'data')  SettingsUserData? data)?  $default,) {final _that = this;
switch (_that) {
case _SettingsUserDto() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsUserDto implements SettingsUserDto {
  const _SettingsUserDto({@JsonKey(name: 'success') this.success, @JsonKey(name: 'data') this.data});
  factory _SettingsUserDto.fromJson(Map<String, dynamic> json) => _$SettingsUserDtoFromJson(json);

@override@JsonKey(name: 'success') final  String? success;
@override@JsonKey(name: 'data') final  SettingsUserData? data;

/// Create a copy of SettingsUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsUserDtoCopyWith<_SettingsUserDto> get copyWith => __$SettingsUserDtoCopyWithImpl<_SettingsUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsUserDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SettingsUserDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SettingsUserDtoCopyWith<$Res> implements $SettingsUserDtoCopyWith<$Res> {
  factory _$SettingsUserDtoCopyWith(_SettingsUserDto value, $Res Function(_SettingsUserDto) _then) = __$SettingsUserDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') String? success,@JsonKey(name: 'data') SettingsUserData? data
});


@override $SettingsUserDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$SettingsUserDtoCopyWithImpl<$Res>
    implements _$SettingsUserDtoCopyWith<$Res> {
  __$SettingsUserDtoCopyWithImpl(this._self, this._then);

  final _SettingsUserDto _self;
  final $Res Function(_SettingsUserDto) _then;

/// Create a copy of SettingsUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_SettingsUserDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SettingsUserData?,
  ));
}

/// Create a copy of SettingsUserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsUserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $SettingsUserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SettingsUserData {

@JsonKey(name: 'user') SettingsUser? get user;
/// Create a copy of SettingsUserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsUserDataCopyWith<SettingsUserData> get copyWith => _$SettingsUserDataCopyWithImpl<SettingsUserData>(this as SettingsUserData, _$identity);

  /// Serializes this SettingsUserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsUserData&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'SettingsUserData(user: $user)';
}


}

/// @nodoc
abstract mixin class $SettingsUserDataCopyWith<$Res>  {
  factory $SettingsUserDataCopyWith(SettingsUserData value, $Res Function(SettingsUserData) _then) = _$SettingsUserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user') SettingsUser? user
});


$SettingsUserCopyWith<$Res>? get user;

}
/// @nodoc
class _$SettingsUserDataCopyWithImpl<$Res>
    implements $SettingsUserDataCopyWith<$Res> {
  _$SettingsUserDataCopyWithImpl(this._self, this._then);

  final SettingsUserData _self;
  final $Res Function(SettingsUserData) _then;

/// Create a copy of SettingsUserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SettingsUser?,
  ));
}
/// Create a copy of SettingsUserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $SettingsUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsUserData].
extension SettingsUserDataPatterns on SettingsUserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsUserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsUserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsUserData value)  $default,){
final _that = this;
switch (_that) {
case _SettingsUserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsUserData value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsUserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user')  SettingsUser? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsUserData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user')  SettingsUser? user)  $default,) {final _that = this;
switch (_that) {
case _SettingsUserData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user')  SettingsUser? user)?  $default,) {final _that = this;
switch (_that) {
case _SettingsUserData() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsUserData implements SettingsUserData {
  const _SettingsUserData({@JsonKey(name: 'user') this.user});
  factory _SettingsUserData.fromJson(Map<String, dynamic> json) => _$SettingsUserDataFromJson(json);

@override@JsonKey(name: 'user') final  SettingsUser? user;

/// Create a copy of SettingsUserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsUserDataCopyWith<_SettingsUserData> get copyWith => __$SettingsUserDataCopyWithImpl<_SettingsUserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsUserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsUserData&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'SettingsUserData(user: $user)';
}


}

/// @nodoc
abstract mixin class _$SettingsUserDataCopyWith<$Res> implements $SettingsUserDataCopyWith<$Res> {
  factory _$SettingsUserDataCopyWith(_SettingsUserData value, $Res Function(_SettingsUserData) _then) = __$SettingsUserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user') SettingsUser? user
});


@override $SettingsUserCopyWith<$Res>? get user;

}
/// @nodoc
class __$SettingsUserDataCopyWithImpl<$Res>
    implements _$SettingsUserDataCopyWith<$Res> {
  __$SettingsUserDataCopyWithImpl(this._self, this._then);

  final _SettingsUserData _self;
  final $Res Function(_SettingsUserData) _then;

/// Create a copy of SettingsUserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_SettingsUserData(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SettingsUser?,
  ));
}

/// Create a copy of SettingsUserData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $SettingsUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$SettingsUser {

@JsonKey(name: 'e_id') String? get eId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'mobile_number') String? get mobileNumber;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'is_email_verified') bool? get isEmailVerified;
/// Create a copy of SettingsUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsUserCopyWith<SettingsUser> get copyWith => _$SettingsUserCopyWithImpl<SettingsUser>(this as SettingsUser, _$identity);

  /// Serializes this SettingsUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsUser&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,name,status,mobileNumber,email,isEmailVerified);

@override
String toString() {
  return 'SettingsUser(eId: $eId, name: $name, status: $status, mobileNumber: $mobileNumber, email: $email, isEmailVerified: $isEmailVerified)';
}


}

/// @nodoc
abstract mixin class $SettingsUserCopyWith<$Res>  {
  factory $SettingsUserCopyWith(SettingsUser value, $Res Function(SettingsUser) _then) = _$SettingsUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'e_id') String? eId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'status') String? status,@JsonKey(name: 'mobile_number') String? mobileNumber,@JsonKey(name: 'email') String? email,@JsonKey(name: 'is_email_verified') bool? isEmailVerified
});




}
/// @nodoc
class _$SettingsUserCopyWithImpl<$Res>
    implements $SettingsUserCopyWith<$Res> {
  _$SettingsUserCopyWithImpl(this._self, this._then);

  final SettingsUser _self;
  final $Res Function(SettingsUser) _then;

/// Create a copy of SettingsUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? name = freezed,Object? status = freezed,Object? mobileNumber = freezed,Object? email = freezed,Object? isEmailVerified = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsUser].
extension SettingsUserPatterns on SettingsUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsUser value)  $default,){
final _that = this;
switch (_that) {
case _SettingsUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsUser value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'e_id')  String? eId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'mobile_number')  String? mobileNumber, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'is_email_verified')  bool? isEmailVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsUser() when $default != null:
return $default(_that.eId,_that.name,_that.status,_that.mobileNumber,_that.email,_that.isEmailVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'e_id')  String? eId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'mobile_number')  String? mobileNumber, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'is_email_verified')  bool? isEmailVerified)  $default,) {final _that = this;
switch (_that) {
case _SettingsUser():
return $default(_that.eId,_that.name,_that.status,_that.mobileNumber,_that.email,_that.isEmailVerified);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'e_id')  String? eId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'mobile_number')  String? mobileNumber, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'is_email_verified')  bool? isEmailVerified)?  $default,) {final _that = this;
switch (_that) {
case _SettingsUser() when $default != null:
return $default(_that.eId,_that.name,_that.status,_that.mobileNumber,_that.email,_that.isEmailVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsUser implements SettingsUser {
  const _SettingsUser({@JsonKey(name: 'e_id') this.eId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'status') this.status, @JsonKey(name: 'mobile_number') this.mobileNumber, @JsonKey(name: 'email') this.email, @JsonKey(name: 'is_email_verified') this.isEmailVerified});
  factory _SettingsUser.fromJson(Map<String, dynamic> json) => _$SettingsUserFromJson(json);

@override@JsonKey(name: 'e_id') final  String? eId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'mobile_number') final  String? mobileNumber;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'is_email_verified') final  bool? isEmailVerified;

/// Create a copy of SettingsUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsUserCopyWith<_SettingsUser> get copyWith => __$SettingsUserCopyWithImpl<_SettingsUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsUser&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,name,status,mobileNumber,email,isEmailVerified);

@override
String toString() {
  return 'SettingsUser(eId: $eId, name: $name, status: $status, mobileNumber: $mobileNumber, email: $email, isEmailVerified: $isEmailVerified)';
}


}

/// @nodoc
abstract mixin class _$SettingsUserCopyWith<$Res> implements $SettingsUserCopyWith<$Res> {
  factory _$SettingsUserCopyWith(_SettingsUser value, $Res Function(_SettingsUser) _then) = __$SettingsUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'e_id') String? eId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'status') String? status,@JsonKey(name: 'mobile_number') String? mobileNumber,@JsonKey(name: 'email') String? email,@JsonKey(name: 'is_email_verified') bool? isEmailVerified
});




}
/// @nodoc
class __$SettingsUserCopyWithImpl<$Res>
    implements _$SettingsUserCopyWith<$Res> {
  __$SettingsUserCopyWithImpl(this._self, this._then);

  final _SettingsUser _self;
  final $Res Function(_SettingsUser) _then;

/// Create a copy of SettingsUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? name = freezed,Object? status = freezed,Object? mobileNumber = freezed,Object? email = freezed,Object? isEmailVerified = freezed,}) {
  return _then(_SettingsUser(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
