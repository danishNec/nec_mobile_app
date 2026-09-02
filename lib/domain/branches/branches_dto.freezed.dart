// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branches_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchesDto {

@JsonKey(name: "success") String? get success; int? get statusCode;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;
/// Create a copy of BranchesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchesDtoCopyWith<BranchesDto> get copyWith => _$BranchesDtoCopyWithImpl<BranchesDto>(this as BranchesDto, _$identity);

  /// Serializes this BranchesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchesDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data);

@override
String toString() {
  return 'BranchesDto(success: $success, statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BranchesDtoCopyWith<$Res>  {
  factory $BranchesDtoCopyWith(BranchesDto value, $Res Function(BranchesDto) _then) = _$BranchesDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success, int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BranchesDtoCopyWithImpl<$Res>
    implements $BranchesDtoCopyWith<$Res> {
  _$BranchesDtoCopyWithImpl(this._self, this._then);

  final BranchesDto _self;
  final $Res Function(BranchesDto) _then;

/// Create a copy of BranchesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of BranchesDto
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


/// Adds pattern-matching-related methods to [BranchesDto].
extension BranchesDtoPatterns on BranchesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchesDto value)  $default,){
final _that = this;
switch (_that) {
case _BranchesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchesDto value)?  $default,){
final _that = this;
switch (_that) {
case _BranchesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success,  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchesDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success,  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)  $default,) {final _that = this;
switch (_that) {
case _BranchesDto():
return $default(_that.success,_that.statusCode,_that.message,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success,  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _BranchesDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchesDto implements BranchesDto {
  const _BranchesDto({@JsonKey(name: "success") this.success, this.statusCode, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data});
  factory _BranchesDto.fromJson(Map<String, dynamic> json) => _$BranchesDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override final  int? statusCode;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of BranchesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchesDtoCopyWith<_BranchesDto> get copyWith => __$BranchesDtoCopyWithImpl<_BranchesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchesDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data);

@override
String toString() {
  return 'BranchesDto(success: $success, statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BranchesDtoCopyWith<$Res> implements $BranchesDtoCopyWith<$Res> {
  factory _$BranchesDtoCopyWith(_BranchesDto value, $Res Function(_BranchesDto) _then) = __$BranchesDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success, int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BranchesDtoCopyWithImpl<$Res>
    implements _$BranchesDtoCopyWith<$Res> {
  __$BranchesDtoCopyWithImpl(this._self, this._then);

  final _BranchesDto _self;
  final $Res Function(_BranchesDto) _then;

/// Create a copy of BranchesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BranchesDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of BranchesDto
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

@JsonKey(name: "branch_list") List<BranchList>? get branchList;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.branchList, branchList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(branchList));

@override
String toString() {
  return 'Data(branchList: $branchList)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "branch_list") List<BranchList>? branchList
});




}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchList = freezed,}) {
  return _then(_self.copyWith(
branchList: freezed == branchList ? _self.branchList : branchList // ignore: cast_nullable_to_non_nullable
as List<BranchList>?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "branch_list")  List<BranchList>? branchList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.branchList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "branch_list")  List<BranchList>? branchList)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.branchList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "branch_list")  List<BranchList>? branchList)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.branchList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "branch_list") final  List<BranchList>? branchList}): _branchList = branchList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<BranchList>? _branchList;
@override@JsonKey(name: "branch_list") List<BranchList>? get branchList {
  final value = _branchList;
  if (value == null) return null;
  if (_branchList is EqualUnmodifiableListView) return _branchList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._branchList, _branchList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_branchList));

@override
String toString() {
  return 'Data(branchList: $branchList)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "branch_list") List<BranchList>? branchList
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchList = freezed,}) {
  return _then(_Data(
branchList: freezed == branchList ? _self._branchList : branchList // ignore: cast_nullable_to_non_nullable
as List<BranchList>?,
  ));
}


}


/// @nodoc
mixin _$BranchList {

@JsonKey(name: "branch_name") String? get branchName;@JsonKey(name: "address1") String? get address1;@JsonKey(name: "address2") String? get address2;@JsonKey(name: "address3") String? get address3;@JsonKey(name: "phone") String? get phone;@JsonKey(name: "email") String? get email;@JsonKey(name: "latitude") String? get latitude;@JsonKey(name: "longitude") String? get longitude;
/// Create a copy of BranchList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchListCopyWith<BranchList> get copyWith => _$BranchListCopyWithImpl<BranchList>(this as BranchList, _$identity);

  /// Serializes this BranchList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchList&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.address3, address3) || other.address3 == address3)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchName,address1,address2,address3,phone,email,latitude,longitude);

@override
String toString() {
  return 'BranchList(branchName: $branchName, address1: $address1, address2: $address2, address3: $address3, phone: $phone, email: $email, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $BranchListCopyWith<$Res>  {
  factory $BranchListCopyWith(BranchList value, $Res Function(BranchList) _then) = _$BranchListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "branch_name") String? branchName,@JsonKey(name: "address1") String? address1,@JsonKey(name: "address2") String? address2,@JsonKey(name: "address3") String? address3,@JsonKey(name: "phone") String? phone,@JsonKey(name: "email") String? email,@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude
});




}
/// @nodoc
class _$BranchListCopyWithImpl<$Res>
    implements $BranchListCopyWith<$Res> {
  _$BranchListCopyWithImpl(this._self, this._then);

  final BranchList _self;
  final $Res Function(BranchList) _then;

/// Create a copy of BranchList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? address3 = freezed,Object? phone = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_self.copyWith(
branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,address3: freezed == address3 ? _self.address3 : address3 // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchList].
extension BranchListPatterns on BranchList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchList value)  $default,){
final _that = this;
switch (_that) {
case _BranchList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchList value)?  $default,){
final _that = this;
switch (_that) {
case _BranchList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "address2")  String? address2, @JsonKey(name: "address3")  String? address3, @JsonKey(name: "phone")  String? phone, @JsonKey(name: "email")  String? email, @JsonKey(name: "latitude")  String? latitude, @JsonKey(name: "longitude")  String? longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchList() when $default != null:
return $default(_that.branchName,_that.address1,_that.address2,_that.address3,_that.phone,_that.email,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "address2")  String? address2, @JsonKey(name: "address3")  String? address3, @JsonKey(name: "phone")  String? phone, @JsonKey(name: "email")  String? email, @JsonKey(name: "latitude")  String? latitude, @JsonKey(name: "longitude")  String? longitude)  $default,) {final _that = this;
switch (_that) {
case _BranchList():
return $default(_that.branchName,_that.address1,_that.address2,_that.address3,_that.phone,_that.email,_that.latitude,_that.longitude);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "branch_name")  String? branchName, @JsonKey(name: "address1")  String? address1, @JsonKey(name: "address2")  String? address2, @JsonKey(name: "address3")  String? address3, @JsonKey(name: "phone")  String? phone, @JsonKey(name: "email")  String? email, @JsonKey(name: "latitude")  String? latitude, @JsonKey(name: "longitude")  String? longitude)?  $default,) {final _that = this;
switch (_that) {
case _BranchList() when $default != null:
return $default(_that.branchName,_that.address1,_that.address2,_that.address3,_that.phone,_that.email,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchList implements BranchList {
  const _BranchList({@JsonKey(name: "branch_name") this.branchName, @JsonKey(name: "address1") this.address1, @JsonKey(name: "address2") this.address2, @JsonKey(name: "address3") this.address3, @JsonKey(name: "phone") this.phone, @JsonKey(name: "email") this.email, @JsonKey(name: "latitude") this.latitude, @JsonKey(name: "longitude") this.longitude});
  factory _BranchList.fromJson(Map<String, dynamic> json) => _$BranchListFromJson(json);

@override@JsonKey(name: "branch_name") final  String? branchName;
@override@JsonKey(name: "address1") final  String? address1;
@override@JsonKey(name: "address2") final  String? address2;
@override@JsonKey(name: "address3") final  String? address3;
@override@JsonKey(name: "phone") final  String? phone;
@override@JsonKey(name: "email") final  String? email;
@override@JsonKey(name: "latitude") final  String? latitude;
@override@JsonKey(name: "longitude") final  String? longitude;

/// Create a copy of BranchList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchListCopyWith<_BranchList> get copyWith => __$BranchListCopyWithImpl<_BranchList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchList&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.address3, address3) || other.address3 == address3)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchName,address1,address2,address3,phone,email,latitude,longitude);

@override
String toString() {
  return 'BranchList(branchName: $branchName, address1: $address1, address2: $address2, address3: $address3, phone: $phone, email: $email, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$BranchListCopyWith<$Res> implements $BranchListCopyWith<$Res> {
  factory _$BranchListCopyWith(_BranchList value, $Res Function(_BranchList) _then) = __$BranchListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "branch_name") String? branchName,@JsonKey(name: "address1") String? address1,@JsonKey(name: "address2") String? address2,@JsonKey(name: "address3") String? address3,@JsonKey(name: "phone") String? phone,@JsonKey(name: "email") String? email,@JsonKey(name: "latitude") String? latitude,@JsonKey(name: "longitude") String? longitude
});




}
/// @nodoc
class __$BranchListCopyWithImpl<$Res>
    implements _$BranchListCopyWith<$Res> {
  __$BranchListCopyWithImpl(this._self, this._then);

  final _BranchList _self;
  final $Res Function(_BranchList) _then;

/// Create a copy of BranchList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? address3 = freezed,Object? phone = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,}) {
  return _then(_BranchList(
branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,address3: freezed == address3 ? _self.address3 : address3 // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
