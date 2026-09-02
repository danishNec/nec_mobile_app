// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_branches_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonBranchesDto {

 String? get success; int? get statusCode; String? get message; BranchesData? get data;
/// Create a copy of CommonBranchesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonBranchesDtoCopyWith<CommonBranchesDto> get copyWith => _$CommonBranchesDtoCopyWithImpl<CommonBranchesDto>(this as CommonBranchesDto, _$identity);

  /// Serializes this CommonBranchesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonBranchesDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data);

@override
String toString() {
  return 'CommonBranchesDto(success: $success, statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $CommonBranchesDtoCopyWith<$Res>  {
  factory $CommonBranchesDtoCopyWith(CommonBranchesDto value, $Res Function(CommonBranchesDto) _then) = _$CommonBranchesDtoCopyWithImpl;
@useResult
$Res call({
 String? success, int? statusCode, String? message, BranchesData? data
});


$BranchesDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$CommonBranchesDtoCopyWithImpl<$Res>
    implements $CommonBranchesDtoCopyWith<$Res> {
  _$CommonBranchesDtoCopyWithImpl(this._self, this._then);

  final CommonBranchesDto _self;
  final $Res Function(CommonBranchesDto) _then;

/// Create a copy of CommonBranchesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BranchesData?,
  ));
}
/// Create a copy of CommonBranchesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BranchesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommonBranchesDto].
extension CommonBranchesDtoPatterns on CommonBranchesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonBranchesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonBranchesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonBranchesDto value)  $default,){
final _that = this;
switch (_that) {
case _CommonBranchesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonBranchesDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommonBranchesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? success,  int? statusCode,  String? message,  BranchesData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonBranchesDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? success,  int? statusCode,  String? message,  BranchesData? data)  $default,) {final _that = this;
switch (_that) {
case _CommonBranchesDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? success,  int? statusCode,  String? message,  BranchesData? data)?  $default,) {final _that = this;
switch (_that) {
case _CommonBranchesDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonBranchesDto implements CommonBranchesDto {
  const _CommonBranchesDto({this.success, this.statusCode, this.message, this.data});
  factory _CommonBranchesDto.fromJson(Map<String, dynamic> json) => _$CommonBranchesDtoFromJson(json);

@override final  String? success;
@override final  int? statusCode;
@override final  String? message;
@override final  BranchesData? data;

/// Create a copy of CommonBranchesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonBranchesDtoCopyWith<_CommonBranchesDto> get copyWith => __$CommonBranchesDtoCopyWithImpl<_CommonBranchesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonBranchesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonBranchesDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data);

@override
String toString() {
  return 'CommonBranchesDto(success: $success, statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CommonBranchesDtoCopyWith<$Res> implements $CommonBranchesDtoCopyWith<$Res> {
  factory _$CommonBranchesDtoCopyWith(_CommonBranchesDto value, $Res Function(_CommonBranchesDto) _then) = __$CommonBranchesDtoCopyWithImpl;
@override @useResult
$Res call({
 String? success, int? statusCode, String? message, BranchesData? data
});


@override $BranchesDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$CommonBranchesDtoCopyWithImpl<$Res>
    implements _$CommonBranchesDtoCopyWith<$Res> {
  __$CommonBranchesDtoCopyWithImpl(this._self, this._then);

  final _CommonBranchesDto _self;
  final $Res Function(_CommonBranchesDto) _then;

/// Create a copy of CommonBranchesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_CommonBranchesDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BranchesData?,
  ));
}

/// Create a copy of CommonBranchesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BranchesDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BranchesData {

 List<BranchDto>? get branchList;
/// Create a copy of BranchesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchesDataCopyWith<BranchesData> get copyWith => _$BranchesDataCopyWithImpl<BranchesData>(this as BranchesData, _$identity);

  /// Serializes this BranchesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchesData&&const DeepCollectionEquality().equals(other.branchList, branchList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(branchList));

@override
String toString() {
  return 'BranchesData(branchList: $branchList)';
}


}

/// @nodoc
abstract mixin class $BranchesDataCopyWith<$Res>  {
  factory $BranchesDataCopyWith(BranchesData value, $Res Function(BranchesData) _then) = _$BranchesDataCopyWithImpl;
@useResult
$Res call({
 List<BranchDto>? branchList
});




}
/// @nodoc
class _$BranchesDataCopyWithImpl<$Res>
    implements $BranchesDataCopyWith<$Res> {
  _$BranchesDataCopyWithImpl(this._self, this._then);

  final BranchesData _self;
  final $Res Function(BranchesData) _then;

/// Create a copy of BranchesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchList = freezed,}) {
  return _then(_self.copyWith(
branchList: freezed == branchList ? _self.branchList : branchList // ignore: cast_nullable_to_non_nullable
as List<BranchDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchesData].
extension BranchesDataPatterns on BranchesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchesData value)  $default,){
final _that = this;
switch (_that) {
case _BranchesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchesData value)?  $default,){
final _that = this;
switch (_that) {
case _BranchesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BranchDto>? branchList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchesData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BranchDto>? branchList)  $default,) {final _that = this;
switch (_that) {
case _BranchesData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BranchDto>? branchList)?  $default,) {final _that = this;
switch (_that) {
case _BranchesData() when $default != null:
return $default(_that.branchList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchesData implements BranchesData {
  const _BranchesData({final  List<BranchDto>? branchList}): _branchList = branchList;
  factory _BranchesData.fromJson(Map<String, dynamic> json) => _$BranchesDataFromJson(json);

 final  List<BranchDto>? _branchList;
@override List<BranchDto>? get branchList {
  final value = _branchList;
  if (value == null) return null;
  if (_branchList is EqualUnmodifiableListView) return _branchList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BranchesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchesDataCopyWith<_BranchesData> get copyWith => __$BranchesDataCopyWithImpl<_BranchesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchesData&&const DeepCollectionEquality().equals(other._branchList, _branchList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_branchList));

@override
String toString() {
  return 'BranchesData(branchList: $branchList)';
}


}

/// @nodoc
abstract mixin class _$BranchesDataCopyWith<$Res> implements $BranchesDataCopyWith<$Res> {
  factory _$BranchesDataCopyWith(_BranchesData value, $Res Function(_BranchesData) _then) = __$BranchesDataCopyWithImpl;
@override @useResult
$Res call({
 List<BranchDto>? branchList
});




}
/// @nodoc
class __$BranchesDataCopyWithImpl<$Res>
    implements _$BranchesDataCopyWith<$Res> {
  __$BranchesDataCopyWithImpl(this._self, this._then);

  final _BranchesData _self;
  final $Res Function(_BranchesData) _then;

/// Create a copy of BranchesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchList = freezed,}) {
  return _then(_BranchesData(
branchList: freezed == branchList ? _self._branchList : branchList // ignore: cast_nullable_to_non_nullable
as List<BranchDto>?,
  ));
}


}


/// @nodoc
mixin _$BranchDto {

 String? get branchCode; String? get branchName; String? get address1; String? get address2; String? get address3; String? get phone; String? get email; String? get latitude; String? get longitude; String? get workingHours; String? get appMessage1; String? get appMessage2; String? get validTimeLimit;
/// Create a copy of BranchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchDtoCopyWith<BranchDto> get copyWith => _$BranchDtoCopyWithImpl<BranchDto>(this as BranchDto, _$identity);

  /// Serializes this BranchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchDto&&(identical(other.branchCode, branchCode) || other.branchCode == branchCode)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.address3, address3) || other.address3 == address3)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.appMessage1, appMessage1) || other.appMessage1 == appMessage1)&&(identical(other.appMessage2, appMessage2) || other.appMessage2 == appMessage2)&&(identical(other.validTimeLimit, validTimeLimit) || other.validTimeLimit == validTimeLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchCode,branchName,address1,address2,address3,phone,email,latitude,longitude,workingHours,appMessage1,appMessage2,validTimeLimit);

@override
String toString() {
  return 'BranchDto(branchCode: $branchCode, branchName: $branchName, address1: $address1, address2: $address2, address3: $address3, phone: $phone, email: $email, latitude: $latitude, longitude: $longitude, workingHours: $workingHours, appMessage1: $appMessage1, appMessage2: $appMessage2, validTimeLimit: $validTimeLimit)';
}


}

/// @nodoc
abstract mixin class $BranchDtoCopyWith<$Res>  {
  factory $BranchDtoCopyWith(BranchDto value, $Res Function(BranchDto) _then) = _$BranchDtoCopyWithImpl;
@useResult
$Res call({
 String? branchCode, String? branchName, String? address1, String? address2, String? address3, String? phone, String? email, String? latitude, String? longitude, String? workingHours, String? appMessage1, String? appMessage2, String? validTimeLimit
});




}
/// @nodoc
class _$BranchDtoCopyWithImpl<$Res>
    implements $BranchDtoCopyWith<$Res> {
  _$BranchDtoCopyWithImpl(this._self, this._then);

  final BranchDto _self;
  final $Res Function(BranchDto) _then;

/// Create a copy of BranchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchCode = freezed,Object? branchName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? address3 = freezed,Object? phone = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? workingHours = freezed,Object? appMessage1 = freezed,Object? appMessage2 = freezed,Object? validTimeLimit = freezed,}) {
  return _then(_self.copyWith(
branchCode: freezed == branchCode ? _self.branchCode : branchCode // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,address3: freezed == address3 ? _self.address3 : address3 // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String?,appMessage1: freezed == appMessage1 ? _self.appMessage1 : appMessage1 // ignore: cast_nullable_to_non_nullable
as String?,appMessage2: freezed == appMessage2 ? _self.appMessage2 : appMessage2 // ignore: cast_nullable_to_non_nullable
as String?,validTimeLimit: freezed == validTimeLimit ? _self.validTimeLimit : validTimeLimit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchDto].
extension BranchDtoPatterns on BranchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchDto value)  $default,){
final _that = this;
switch (_that) {
case _BranchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchDto value)?  $default,){
final _that = this;
switch (_that) {
case _BranchDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? branchCode,  String? branchName,  String? address1,  String? address2,  String? address3,  String? phone,  String? email,  String? latitude,  String? longitude,  String? workingHours,  String? appMessage1,  String? appMessage2,  String? validTimeLimit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchDto() when $default != null:
return $default(_that.branchCode,_that.branchName,_that.address1,_that.address2,_that.address3,_that.phone,_that.email,_that.latitude,_that.longitude,_that.workingHours,_that.appMessage1,_that.appMessage2,_that.validTimeLimit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? branchCode,  String? branchName,  String? address1,  String? address2,  String? address3,  String? phone,  String? email,  String? latitude,  String? longitude,  String? workingHours,  String? appMessage1,  String? appMessage2,  String? validTimeLimit)  $default,) {final _that = this;
switch (_that) {
case _BranchDto():
return $default(_that.branchCode,_that.branchName,_that.address1,_that.address2,_that.address3,_that.phone,_that.email,_that.latitude,_that.longitude,_that.workingHours,_that.appMessage1,_that.appMessage2,_that.validTimeLimit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? branchCode,  String? branchName,  String? address1,  String? address2,  String? address3,  String? phone,  String? email,  String? latitude,  String? longitude,  String? workingHours,  String? appMessage1,  String? appMessage2,  String? validTimeLimit)?  $default,) {final _that = this;
switch (_that) {
case _BranchDto() when $default != null:
return $default(_that.branchCode,_that.branchName,_that.address1,_that.address2,_that.address3,_that.phone,_that.email,_that.latitude,_that.longitude,_that.workingHours,_that.appMessage1,_that.appMessage2,_that.validTimeLimit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchDto implements BranchDto {
  const _BranchDto({this.branchCode, this.branchName, this.address1, this.address2, this.address3, this.phone, this.email, this.latitude, this.longitude, this.workingHours, this.appMessage1, this.appMessage2, this.validTimeLimit});
  factory _BranchDto.fromJson(Map<String, dynamic> json) => _$BranchDtoFromJson(json);

@override final  String? branchCode;
@override final  String? branchName;
@override final  String? address1;
@override final  String? address2;
@override final  String? address3;
@override final  String? phone;
@override final  String? email;
@override final  String? latitude;
@override final  String? longitude;
@override final  String? workingHours;
@override final  String? appMessage1;
@override final  String? appMessage2;
@override final  String? validTimeLimit;

/// Create a copy of BranchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchDtoCopyWith<_BranchDto> get copyWith => __$BranchDtoCopyWithImpl<_BranchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchDto&&(identical(other.branchCode, branchCode) || other.branchCode == branchCode)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.address3, address3) || other.address3 == address3)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.appMessage1, appMessage1) || other.appMessage1 == appMessage1)&&(identical(other.appMessage2, appMessage2) || other.appMessage2 == appMessage2)&&(identical(other.validTimeLimit, validTimeLimit) || other.validTimeLimit == validTimeLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,branchCode,branchName,address1,address2,address3,phone,email,latitude,longitude,workingHours,appMessage1,appMessage2,validTimeLimit);

@override
String toString() {
  return 'BranchDto(branchCode: $branchCode, branchName: $branchName, address1: $address1, address2: $address2, address3: $address3, phone: $phone, email: $email, latitude: $latitude, longitude: $longitude, workingHours: $workingHours, appMessage1: $appMessage1, appMessage2: $appMessage2, validTimeLimit: $validTimeLimit)';
}


}

/// @nodoc
abstract mixin class _$BranchDtoCopyWith<$Res> implements $BranchDtoCopyWith<$Res> {
  factory _$BranchDtoCopyWith(_BranchDto value, $Res Function(_BranchDto) _then) = __$BranchDtoCopyWithImpl;
@override @useResult
$Res call({
 String? branchCode, String? branchName, String? address1, String? address2, String? address3, String? phone, String? email, String? latitude, String? longitude, String? workingHours, String? appMessage1, String? appMessage2, String? validTimeLimit
});




}
/// @nodoc
class __$BranchDtoCopyWithImpl<$Res>
    implements _$BranchDtoCopyWith<$Res> {
  __$BranchDtoCopyWithImpl(this._self, this._then);

  final _BranchDto _self;
  final $Res Function(_BranchDto) _then;

/// Create a copy of BranchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchCode = freezed,Object? branchName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? address3 = freezed,Object? phone = freezed,Object? email = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? workingHours = freezed,Object? appMessage1 = freezed,Object? appMessage2 = freezed,Object? validTimeLimit = freezed,}) {
  return _then(_BranchDto(
branchCode: freezed == branchCode ? _self.branchCode : branchCode // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,address3: freezed == address3 ? _self.address3 : address3 // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String?,appMessage1: freezed == appMessage1 ? _self.appMessage1 : appMessage1 // ignore: cast_nullable_to_non_nullable
as String?,appMessage2: freezed == appMessage2 ? _self.appMessage2 : appMessage2 // ignore: cast_nullable_to_non_nullable
as String?,validTimeLimit: freezed == validTimeLimit ? _self.validTimeLimit : validTimeLimit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
