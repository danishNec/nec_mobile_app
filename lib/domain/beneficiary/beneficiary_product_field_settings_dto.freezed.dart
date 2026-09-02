// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_product_field_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryProductFieldSettingsDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of BeneficiaryProductFieldSettingsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryProductFieldSettingsDtoCopyWith<BeneficiaryProductFieldSettingsDto> get copyWith => _$BeneficiaryProductFieldSettingsDtoCopyWithImpl<BeneficiaryProductFieldSettingsDto>(this as BeneficiaryProductFieldSettingsDto, _$identity);

  /// Serializes this BeneficiaryProductFieldSettingsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryProductFieldSettingsDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryProductFieldSettingsDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryProductFieldSettingsDtoCopyWith<$Res>  {
  factory $BeneficiaryProductFieldSettingsDtoCopyWith(BeneficiaryProductFieldSettingsDto value, $Res Function(BeneficiaryProductFieldSettingsDto) _then) = _$BeneficiaryProductFieldSettingsDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryProductFieldSettingsDtoCopyWithImpl<$Res>
    implements $BeneficiaryProductFieldSettingsDtoCopyWith<$Res> {
  _$BeneficiaryProductFieldSettingsDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryProductFieldSettingsDto _self;
  final $Res Function(BeneficiaryProductFieldSettingsDto) _then;

/// Create a copy of BeneficiaryProductFieldSettingsDto
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
/// Create a copy of BeneficiaryProductFieldSettingsDto
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


/// Adds pattern-matching-related methods to [BeneficiaryProductFieldSettingsDto].
extension BeneficiaryProductFieldSettingsDtoPatterns on BeneficiaryProductFieldSettingsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryProductFieldSettingsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryProductFieldSettingsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryProductFieldSettingsDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryProductFieldSettingsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryProductFieldSettingsDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryProductFieldSettingsDto() when $default != null:
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
case _BeneficiaryProductFieldSettingsDto() when $default != null:
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
case _BeneficiaryProductFieldSettingsDto():
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
case _BeneficiaryProductFieldSettingsDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryProductFieldSettingsDto implements BeneficiaryProductFieldSettingsDto {
  const _BeneficiaryProductFieldSettingsDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _BeneficiaryProductFieldSettingsDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryProductFieldSettingsDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of BeneficiaryProductFieldSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryProductFieldSettingsDtoCopyWith<_BeneficiaryProductFieldSettingsDto> get copyWith => __$BeneficiaryProductFieldSettingsDtoCopyWithImpl<_BeneficiaryProductFieldSettingsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryProductFieldSettingsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryProductFieldSettingsDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryProductFieldSettingsDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryProductFieldSettingsDtoCopyWith<$Res> implements $BeneficiaryProductFieldSettingsDtoCopyWith<$Res> {
  factory _$BeneficiaryProductFieldSettingsDtoCopyWith(_BeneficiaryProductFieldSettingsDto value, $Res Function(_BeneficiaryProductFieldSettingsDto) _then) = __$BeneficiaryProductFieldSettingsDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryProductFieldSettingsDtoCopyWithImpl<$Res>
    implements _$BeneficiaryProductFieldSettingsDtoCopyWith<$Res> {
  __$BeneficiaryProductFieldSettingsDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryProductFieldSettingsDto _self;
  final $Res Function(_BeneficiaryProductFieldSettingsDto) _then;

/// Create a copy of BeneficiaryProductFieldSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_BeneficiaryProductFieldSettingsDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeneficiaryProductFieldSettingsDto
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

@JsonKey(name: "all_product_field_setting_list") AllProductFieldSettingList? get allProductFieldSettingList;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.allProductFieldSettingList, allProductFieldSettingList) || other.allProductFieldSettingList == allProductFieldSettingList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allProductFieldSettingList);

@override
String toString() {
  return 'Data(allProductFieldSettingList: $allProductFieldSettingList)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "all_product_field_setting_list") AllProductFieldSettingList? allProductFieldSettingList
});


$AllProductFieldSettingListCopyWith<$Res>? get allProductFieldSettingList;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allProductFieldSettingList = freezed,}) {
  return _then(_self.copyWith(
allProductFieldSettingList: freezed == allProductFieldSettingList ? _self.allProductFieldSettingList : allProductFieldSettingList // ignore: cast_nullable_to_non_nullable
as AllProductFieldSettingList?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AllProductFieldSettingListCopyWith<$Res>? get allProductFieldSettingList {
    if (_self.allProductFieldSettingList == null) {
    return null;
  }

  return $AllProductFieldSettingListCopyWith<$Res>(_self.allProductFieldSettingList!, (value) {
    return _then(_self.copyWith(allProductFieldSettingList: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "all_product_field_setting_list")  AllProductFieldSettingList? allProductFieldSettingList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.allProductFieldSettingList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "all_product_field_setting_list")  AllProductFieldSettingList? allProductFieldSettingList)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.allProductFieldSettingList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "all_product_field_setting_list")  AllProductFieldSettingList? allProductFieldSettingList)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.allProductFieldSettingList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "all_product_field_setting_list") this.allProductFieldSettingList});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "all_product_field_setting_list") final  AllProductFieldSettingList? allProductFieldSettingList;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.allProductFieldSettingList, allProductFieldSettingList) || other.allProductFieldSettingList == allProductFieldSettingList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allProductFieldSettingList);

@override
String toString() {
  return 'Data(allProductFieldSettingList: $allProductFieldSettingList)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "all_product_field_setting_list") AllProductFieldSettingList? allProductFieldSettingList
});


@override $AllProductFieldSettingListCopyWith<$Res>? get allProductFieldSettingList;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allProductFieldSettingList = freezed,}) {
  return _then(_Data(
allProductFieldSettingList: freezed == allProductFieldSettingList ? _self.allProductFieldSettingList : allProductFieldSettingList // ignore: cast_nullable_to_non_nullable
as AllProductFieldSettingList?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AllProductFieldSettingListCopyWith<$Res>? get allProductFieldSettingList {
    if (_self.allProductFieldSettingList == null) {
    return null;
  }

  return $AllProductFieldSettingListCopyWith<$Res>(_self.allProductFieldSettingList!, (value) {
    return _then(_self.copyWith(allProductFieldSettingList: value));
  });
}
}


/// @nodoc
mixin _$AllProductFieldSettingList {

@JsonKey(name: "beneficiary") List<Beneficiary>? get beneficiary;
/// Create a copy of AllProductFieldSettingList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllProductFieldSettingListCopyWith<AllProductFieldSettingList> get copyWith => _$AllProductFieldSettingListCopyWithImpl<AllProductFieldSettingList>(this as AllProductFieldSettingList, _$identity);

  /// Serializes this AllProductFieldSettingList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllProductFieldSettingList&&const DeepCollectionEquality().equals(other.beneficiary, beneficiary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(beneficiary));

@override
String toString() {
  return 'AllProductFieldSettingList(beneficiary: $beneficiary)';
}


}

/// @nodoc
abstract mixin class $AllProductFieldSettingListCopyWith<$Res>  {
  factory $AllProductFieldSettingListCopyWith(AllProductFieldSettingList value, $Res Function(AllProductFieldSettingList) _then) = _$AllProductFieldSettingListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "beneficiary") List<Beneficiary>? beneficiary
});




}
/// @nodoc
class _$AllProductFieldSettingListCopyWithImpl<$Res>
    implements $AllProductFieldSettingListCopyWith<$Res> {
  _$AllProductFieldSettingListCopyWithImpl(this._self, this._then);

  final AllProductFieldSettingList _self;
  final $Res Function(AllProductFieldSettingList) _then;

/// Create a copy of AllProductFieldSettingList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiary = freezed,}) {
  return _then(_self.copyWith(
beneficiary: freezed == beneficiary ? _self.beneficiary : beneficiary // ignore: cast_nullable_to_non_nullable
as List<Beneficiary>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AllProductFieldSettingList].
extension AllProductFieldSettingListPatterns on AllProductFieldSettingList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllProductFieldSettingList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllProductFieldSettingList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllProductFieldSettingList value)  $default,){
final _that = this;
switch (_that) {
case _AllProductFieldSettingList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllProductFieldSettingList value)?  $default,){
final _that = this;
switch (_that) {
case _AllProductFieldSettingList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary")  List<Beneficiary>? beneficiary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllProductFieldSettingList() when $default != null:
return $default(_that.beneficiary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary")  List<Beneficiary>? beneficiary)  $default,) {final _that = this;
switch (_that) {
case _AllProductFieldSettingList():
return $default(_that.beneficiary);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary")  List<Beneficiary>? beneficiary)?  $default,) {final _that = this;
switch (_that) {
case _AllProductFieldSettingList() when $default != null:
return $default(_that.beneficiary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllProductFieldSettingList implements AllProductFieldSettingList {
  const _AllProductFieldSettingList({@JsonKey(name: "beneficiary") final  List<Beneficiary>? beneficiary}): _beneficiary = beneficiary;
  factory _AllProductFieldSettingList.fromJson(Map<String, dynamic> json) => _$AllProductFieldSettingListFromJson(json);

 final  List<Beneficiary>? _beneficiary;
@override@JsonKey(name: "beneficiary") List<Beneficiary>? get beneficiary {
  final value = _beneficiary;
  if (value == null) return null;
  if (_beneficiary is EqualUnmodifiableListView) return _beneficiary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AllProductFieldSettingList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllProductFieldSettingListCopyWith<_AllProductFieldSettingList> get copyWith => __$AllProductFieldSettingListCopyWithImpl<_AllProductFieldSettingList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllProductFieldSettingListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllProductFieldSettingList&&const DeepCollectionEquality().equals(other._beneficiary, _beneficiary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_beneficiary));

@override
String toString() {
  return 'AllProductFieldSettingList(beneficiary: $beneficiary)';
}


}

/// @nodoc
abstract mixin class _$AllProductFieldSettingListCopyWith<$Res> implements $AllProductFieldSettingListCopyWith<$Res> {
  factory _$AllProductFieldSettingListCopyWith(_AllProductFieldSettingList value, $Res Function(_AllProductFieldSettingList) _then) = __$AllProductFieldSettingListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "beneficiary") List<Beneficiary>? beneficiary
});




}
/// @nodoc
class __$AllProductFieldSettingListCopyWithImpl<$Res>
    implements _$AllProductFieldSettingListCopyWith<$Res> {
  __$AllProductFieldSettingListCopyWithImpl(this._self, this._then);

  final _AllProductFieldSettingList _self;
  final $Res Function(_AllProductFieldSettingList) _then;

/// Create a copy of AllProductFieldSettingList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiary = freezed,}) {
  return _then(_AllProductFieldSettingList(
beneficiary: freezed == beneficiary ? _self._beneficiary : beneficiary // ignore: cast_nullable_to_non_nullable
as List<Beneficiary>?,
  ));
}


}


/// @nodoc
mixin _$Beneficiary {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "display_order") int? get displayOrder;@JsonKey(name: "field_name") String? get fieldName;@JsonKey(name: "display_field_name") String? get displayFieldName;@JsonKey(name: "minimum_length") int? get minimumLength;@JsonKey(name: "maximum_length") int? get maximumLength;@JsonKey(name: "supported_data_type") String? get supportedDataType;@JsonKey(name: "type") String? get type;@JsonKey(name: "is_type_system_reserved") bool? get isTypeSystemReserved;@JsonKey(name: "enabled") bool? get enabled;@JsonKey(name: "mandatory") bool? get mandatory;@JsonKey(name: "visible") bool? get visible;@JsonKey(name: "default_value") String? get defaultValue;@JsonKey(name: "allowed_special_characters") String? get allowedSpecialCharacters;@JsonKey(name: "special_character_checking_rqrd") bool? get specialCharacterCheckingRqrd;@JsonKey(name: "is_system_reserve") bool? get isSystemReserve;@JsonKey(name: "member_section") String? get memberSection;@JsonKey(name: "w_u_combo_order") int? get wUComboOrder;@JsonKey(name: "w_u_field_settings_i_d") int? get wUFieldSettingsID;@JsonKey(name: "is_arabic") bool? get isArabic;
/// Create a copy of Beneficiary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryCopyWith<Beneficiary> get copyWith => _$BeneficiaryCopyWithImpl<Beneficiary>(this as Beneficiary, _$identity);

  /// Serializes this Beneficiary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Beneficiary&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.displayOrder, displayOrder) || other.displayOrder == displayOrder)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.displayFieldName, displayFieldName) || other.displayFieldName == displayFieldName)&&(identical(other.minimumLength, minimumLength) || other.minimumLength == minimumLength)&&(identical(other.maximumLength, maximumLength) || other.maximumLength == maximumLength)&&(identical(other.supportedDataType, supportedDataType) || other.supportedDataType == supportedDataType)&&(identical(other.type, type) || other.type == type)&&(identical(other.isTypeSystemReserved, isTypeSystemReserved) || other.isTypeSystemReserved == isTypeSystemReserved)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&(identical(other.visible, visible) || other.visible == visible)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.allowedSpecialCharacters, allowedSpecialCharacters) || other.allowedSpecialCharacters == allowedSpecialCharacters)&&(identical(other.specialCharacterCheckingRqrd, specialCharacterCheckingRqrd) || other.specialCharacterCheckingRqrd == specialCharacterCheckingRqrd)&&(identical(other.isSystemReserve, isSystemReserve) || other.isSystemReserve == isSystemReserve)&&(identical(other.memberSection, memberSection) || other.memberSection == memberSection)&&(identical(other.wUComboOrder, wUComboOrder) || other.wUComboOrder == wUComboOrder)&&(identical(other.wUFieldSettingsID, wUFieldSettingsID) || other.wUFieldSettingsID == wUFieldSettingsID)&&(identical(other.isArabic, isArabic) || other.isArabic == isArabic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,productCode,displayOrder,fieldName,displayFieldName,minimumLength,maximumLength,supportedDataType,type,isTypeSystemReserved,enabled,mandatory,visible,defaultValue,allowedSpecialCharacters,specialCharacterCheckingRqrd,isSystemReserve,memberSection,wUComboOrder,wUFieldSettingsID,isArabic]);

@override
String toString() {
  return 'Beneficiary(eId: $eId, productCode: $productCode, displayOrder: $displayOrder, fieldName: $fieldName, displayFieldName: $displayFieldName, minimumLength: $minimumLength, maximumLength: $maximumLength, supportedDataType: $supportedDataType, type: $type, isTypeSystemReserved: $isTypeSystemReserved, enabled: $enabled, mandatory: $mandatory, visible: $visible, defaultValue: $defaultValue, allowedSpecialCharacters: $allowedSpecialCharacters, specialCharacterCheckingRqrd: $specialCharacterCheckingRqrd, isSystemReserve: $isSystemReserve, memberSection: $memberSection, wUComboOrder: $wUComboOrder, wUFieldSettingsID: $wUFieldSettingsID, isArabic: $isArabic)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryCopyWith<$Res>  {
  factory $BeneficiaryCopyWith(Beneficiary value, $Res Function(Beneficiary) _then) = _$BeneficiaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "display_order") int? displayOrder,@JsonKey(name: "field_name") String? fieldName,@JsonKey(name: "display_field_name") String? displayFieldName,@JsonKey(name: "minimum_length") int? minimumLength,@JsonKey(name: "maximum_length") int? maximumLength,@JsonKey(name: "supported_data_type") String? supportedDataType,@JsonKey(name: "type") String? type,@JsonKey(name: "is_type_system_reserved") bool? isTypeSystemReserved,@JsonKey(name: "enabled") bool? enabled,@JsonKey(name: "mandatory") bool? mandatory,@JsonKey(name: "visible") bool? visible,@JsonKey(name: "default_value") String? defaultValue,@JsonKey(name: "allowed_special_characters") String? allowedSpecialCharacters,@JsonKey(name: "special_character_checking_rqrd") bool? specialCharacterCheckingRqrd,@JsonKey(name: "is_system_reserve") bool? isSystemReserve,@JsonKey(name: "member_section") String? memberSection,@JsonKey(name: "w_u_combo_order") int? wUComboOrder,@JsonKey(name: "w_u_field_settings_i_d") int? wUFieldSettingsID,@JsonKey(name: "is_arabic") bool? isArabic
});




}
/// @nodoc
class _$BeneficiaryCopyWithImpl<$Res>
    implements $BeneficiaryCopyWith<$Res> {
  _$BeneficiaryCopyWithImpl(this._self, this._then);

  final Beneficiary _self;
  final $Res Function(Beneficiary) _then;

/// Create a copy of Beneficiary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? productCode = freezed,Object? displayOrder = freezed,Object? fieldName = freezed,Object? displayFieldName = freezed,Object? minimumLength = freezed,Object? maximumLength = freezed,Object? supportedDataType = freezed,Object? type = freezed,Object? isTypeSystemReserved = freezed,Object? enabled = freezed,Object? mandatory = freezed,Object? visible = freezed,Object? defaultValue = freezed,Object? allowedSpecialCharacters = freezed,Object? specialCharacterCheckingRqrd = freezed,Object? isSystemReserve = freezed,Object? memberSection = freezed,Object? wUComboOrder = freezed,Object? wUFieldSettingsID = freezed,Object? isArabic = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,displayOrder: freezed == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int?,fieldName: freezed == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String?,displayFieldName: freezed == displayFieldName ? _self.displayFieldName : displayFieldName // ignore: cast_nullable_to_non_nullable
as String?,minimumLength: freezed == minimumLength ? _self.minimumLength : minimumLength // ignore: cast_nullable_to_non_nullable
as int?,maximumLength: freezed == maximumLength ? _self.maximumLength : maximumLength // ignore: cast_nullable_to_non_nullable
as int?,supportedDataType: freezed == supportedDataType ? _self.supportedDataType : supportedDataType // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isTypeSystemReserved: freezed == isTypeSystemReserved ? _self.isTypeSystemReserved : isTypeSystemReserved // ignore: cast_nullable_to_non_nullable
as bool?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,mandatory: freezed == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool?,visible: freezed == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,allowedSpecialCharacters: freezed == allowedSpecialCharacters ? _self.allowedSpecialCharacters : allowedSpecialCharacters // ignore: cast_nullable_to_non_nullable
as String?,specialCharacterCheckingRqrd: freezed == specialCharacterCheckingRqrd ? _self.specialCharacterCheckingRqrd : specialCharacterCheckingRqrd // ignore: cast_nullable_to_non_nullable
as bool?,isSystemReserve: freezed == isSystemReserve ? _self.isSystemReserve : isSystemReserve // ignore: cast_nullable_to_non_nullable
as bool?,memberSection: freezed == memberSection ? _self.memberSection : memberSection // ignore: cast_nullable_to_non_nullable
as String?,wUComboOrder: freezed == wUComboOrder ? _self.wUComboOrder : wUComboOrder // ignore: cast_nullable_to_non_nullable
as int?,wUFieldSettingsID: freezed == wUFieldSettingsID ? _self.wUFieldSettingsID : wUFieldSettingsID // ignore: cast_nullable_to_non_nullable
as int?,isArabic: freezed == isArabic ? _self.isArabic : isArabic // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Beneficiary].
extension BeneficiaryPatterns on Beneficiary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Beneficiary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Beneficiary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Beneficiary value)  $default,){
final _that = this;
switch (_that) {
case _Beneficiary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Beneficiary value)?  $default,){
final _that = this;
switch (_that) {
case _Beneficiary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "display_order")  int? displayOrder, @JsonKey(name: "field_name")  String? fieldName, @JsonKey(name: "display_field_name")  String? displayFieldName, @JsonKey(name: "minimum_length")  int? minimumLength, @JsonKey(name: "maximum_length")  int? maximumLength, @JsonKey(name: "supported_data_type")  String? supportedDataType, @JsonKey(name: "type")  String? type, @JsonKey(name: "is_type_system_reserved")  bool? isTypeSystemReserved, @JsonKey(name: "enabled")  bool? enabled, @JsonKey(name: "mandatory")  bool? mandatory, @JsonKey(name: "visible")  bool? visible, @JsonKey(name: "default_value")  String? defaultValue, @JsonKey(name: "allowed_special_characters")  String? allowedSpecialCharacters, @JsonKey(name: "special_character_checking_rqrd")  bool? specialCharacterCheckingRqrd, @JsonKey(name: "is_system_reserve")  bool? isSystemReserve, @JsonKey(name: "member_section")  String? memberSection, @JsonKey(name: "w_u_combo_order")  int? wUComboOrder, @JsonKey(name: "w_u_field_settings_i_d")  int? wUFieldSettingsID, @JsonKey(name: "is_arabic")  bool? isArabic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Beneficiary() when $default != null:
return $default(_that.eId,_that.productCode,_that.displayOrder,_that.fieldName,_that.displayFieldName,_that.minimumLength,_that.maximumLength,_that.supportedDataType,_that.type,_that.isTypeSystemReserved,_that.enabled,_that.mandatory,_that.visible,_that.defaultValue,_that.allowedSpecialCharacters,_that.specialCharacterCheckingRqrd,_that.isSystemReserve,_that.memberSection,_that.wUComboOrder,_that.wUFieldSettingsID,_that.isArabic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "display_order")  int? displayOrder, @JsonKey(name: "field_name")  String? fieldName, @JsonKey(name: "display_field_name")  String? displayFieldName, @JsonKey(name: "minimum_length")  int? minimumLength, @JsonKey(name: "maximum_length")  int? maximumLength, @JsonKey(name: "supported_data_type")  String? supportedDataType, @JsonKey(name: "type")  String? type, @JsonKey(name: "is_type_system_reserved")  bool? isTypeSystemReserved, @JsonKey(name: "enabled")  bool? enabled, @JsonKey(name: "mandatory")  bool? mandatory, @JsonKey(name: "visible")  bool? visible, @JsonKey(name: "default_value")  String? defaultValue, @JsonKey(name: "allowed_special_characters")  String? allowedSpecialCharacters, @JsonKey(name: "special_character_checking_rqrd")  bool? specialCharacterCheckingRqrd, @JsonKey(name: "is_system_reserve")  bool? isSystemReserve, @JsonKey(name: "member_section")  String? memberSection, @JsonKey(name: "w_u_combo_order")  int? wUComboOrder, @JsonKey(name: "w_u_field_settings_i_d")  int? wUFieldSettingsID, @JsonKey(name: "is_arabic")  bool? isArabic)  $default,) {final _that = this;
switch (_that) {
case _Beneficiary():
return $default(_that.eId,_that.productCode,_that.displayOrder,_that.fieldName,_that.displayFieldName,_that.minimumLength,_that.maximumLength,_that.supportedDataType,_that.type,_that.isTypeSystemReserved,_that.enabled,_that.mandatory,_that.visible,_that.defaultValue,_that.allowedSpecialCharacters,_that.specialCharacterCheckingRqrd,_that.isSystemReserve,_that.memberSection,_that.wUComboOrder,_that.wUFieldSettingsID,_that.isArabic);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "display_order")  int? displayOrder, @JsonKey(name: "field_name")  String? fieldName, @JsonKey(name: "display_field_name")  String? displayFieldName, @JsonKey(name: "minimum_length")  int? minimumLength, @JsonKey(name: "maximum_length")  int? maximumLength, @JsonKey(name: "supported_data_type")  String? supportedDataType, @JsonKey(name: "type")  String? type, @JsonKey(name: "is_type_system_reserved")  bool? isTypeSystemReserved, @JsonKey(name: "enabled")  bool? enabled, @JsonKey(name: "mandatory")  bool? mandatory, @JsonKey(name: "visible")  bool? visible, @JsonKey(name: "default_value")  String? defaultValue, @JsonKey(name: "allowed_special_characters")  String? allowedSpecialCharacters, @JsonKey(name: "special_character_checking_rqrd")  bool? specialCharacterCheckingRqrd, @JsonKey(name: "is_system_reserve")  bool? isSystemReserve, @JsonKey(name: "member_section")  String? memberSection, @JsonKey(name: "w_u_combo_order")  int? wUComboOrder, @JsonKey(name: "w_u_field_settings_i_d")  int? wUFieldSettingsID, @JsonKey(name: "is_arabic")  bool? isArabic)?  $default,) {final _that = this;
switch (_that) {
case _Beneficiary() when $default != null:
return $default(_that.eId,_that.productCode,_that.displayOrder,_that.fieldName,_that.displayFieldName,_that.minimumLength,_that.maximumLength,_that.supportedDataType,_that.type,_that.isTypeSystemReserved,_that.enabled,_that.mandatory,_that.visible,_that.defaultValue,_that.allowedSpecialCharacters,_that.specialCharacterCheckingRqrd,_that.isSystemReserve,_that.memberSection,_that.wUComboOrder,_that.wUFieldSettingsID,_that.isArabic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Beneficiary implements Beneficiary {
  const _Beneficiary({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "display_order") this.displayOrder, @JsonKey(name: "field_name") this.fieldName, @JsonKey(name: "display_field_name") this.displayFieldName, @JsonKey(name: "minimum_length") this.minimumLength, @JsonKey(name: "maximum_length") this.maximumLength, @JsonKey(name: "supported_data_type") this.supportedDataType, @JsonKey(name: "type") this.type, @JsonKey(name: "is_type_system_reserved") this.isTypeSystemReserved, @JsonKey(name: "enabled") this.enabled, @JsonKey(name: "mandatory") this.mandatory, @JsonKey(name: "visible") this.visible, @JsonKey(name: "default_value") this.defaultValue, @JsonKey(name: "allowed_special_characters") this.allowedSpecialCharacters, @JsonKey(name: "special_character_checking_rqrd") this.specialCharacterCheckingRqrd, @JsonKey(name: "is_system_reserve") this.isSystemReserve, @JsonKey(name: "member_section") this.memberSection, @JsonKey(name: "w_u_combo_order") this.wUComboOrder, @JsonKey(name: "w_u_field_settings_i_d") this.wUFieldSettingsID, @JsonKey(name: "is_arabic") this.isArabic});
  factory _Beneficiary.fromJson(Map<String, dynamic> json) => _$BeneficiaryFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "display_order") final  int? displayOrder;
@override@JsonKey(name: "field_name") final  String? fieldName;
@override@JsonKey(name: "display_field_name") final  String? displayFieldName;
@override@JsonKey(name: "minimum_length") final  int? minimumLength;
@override@JsonKey(name: "maximum_length") final  int? maximumLength;
@override@JsonKey(name: "supported_data_type") final  String? supportedDataType;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "is_type_system_reserved") final  bool? isTypeSystemReserved;
@override@JsonKey(name: "enabled") final  bool? enabled;
@override@JsonKey(name: "mandatory") final  bool? mandatory;
@override@JsonKey(name: "visible") final  bool? visible;
@override@JsonKey(name: "default_value") final  String? defaultValue;
@override@JsonKey(name: "allowed_special_characters") final  String? allowedSpecialCharacters;
@override@JsonKey(name: "special_character_checking_rqrd") final  bool? specialCharacterCheckingRqrd;
@override@JsonKey(name: "is_system_reserve") final  bool? isSystemReserve;
@override@JsonKey(name: "member_section") final  String? memberSection;
@override@JsonKey(name: "w_u_combo_order") final  int? wUComboOrder;
@override@JsonKey(name: "w_u_field_settings_i_d") final  int? wUFieldSettingsID;
@override@JsonKey(name: "is_arabic") final  bool? isArabic;

/// Create a copy of Beneficiary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryCopyWith<_Beneficiary> get copyWith => __$BeneficiaryCopyWithImpl<_Beneficiary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Beneficiary&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.displayOrder, displayOrder) || other.displayOrder == displayOrder)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.displayFieldName, displayFieldName) || other.displayFieldName == displayFieldName)&&(identical(other.minimumLength, minimumLength) || other.minimumLength == minimumLength)&&(identical(other.maximumLength, maximumLength) || other.maximumLength == maximumLength)&&(identical(other.supportedDataType, supportedDataType) || other.supportedDataType == supportedDataType)&&(identical(other.type, type) || other.type == type)&&(identical(other.isTypeSystemReserved, isTypeSystemReserved) || other.isTypeSystemReserved == isTypeSystemReserved)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&(identical(other.visible, visible) || other.visible == visible)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.allowedSpecialCharacters, allowedSpecialCharacters) || other.allowedSpecialCharacters == allowedSpecialCharacters)&&(identical(other.specialCharacterCheckingRqrd, specialCharacterCheckingRqrd) || other.specialCharacterCheckingRqrd == specialCharacterCheckingRqrd)&&(identical(other.isSystemReserve, isSystemReserve) || other.isSystemReserve == isSystemReserve)&&(identical(other.memberSection, memberSection) || other.memberSection == memberSection)&&(identical(other.wUComboOrder, wUComboOrder) || other.wUComboOrder == wUComboOrder)&&(identical(other.wUFieldSettingsID, wUFieldSettingsID) || other.wUFieldSettingsID == wUFieldSettingsID)&&(identical(other.isArabic, isArabic) || other.isArabic == isArabic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,productCode,displayOrder,fieldName,displayFieldName,minimumLength,maximumLength,supportedDataType,type,isTypeSystemReserved,enabled,mandatory,visible,defaultValue,allowedSpecialCharacters,specialCharacterCheckingRqrd,isSystemReserve,memberSection,wUComboOrder,wUFieldSettingsID,isArabic]);

@override
String toString() {
  return 'Beneficiary(eId: $eId, productCode: $productCode, displayOrder: $displayOrder, fieldName: $fieldName, displayFieldName: $displayFieldName, minimumLength: $minimumLength, maximumLength: $maximumLength, supportedDataType: $supportedDataType, type: $type, isTypeSystemReserved: $isTypeSystemReserved, enabled: $enabled, mandatory: $mandatory, visible: $visible, defaultValue: $defaultValue, allowedSpecialCharacters: $allowedSpecialCharacters, specialCharacterCheckingRqrd: $specialCharacterCheckingRqrd, isSystemReserve: $isSystemReserve, memberSection: $memberSection, wUComboOrder: $wUComboOrder, wUFieldSettingsID: $wUFieldSettingsID, isArabic: $isArabic)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryCopyWith<$Res> implements $BeneficiaryCopyWith<$Res> {
  factory _$BeneficiaryCopyWith(_Beneficiary value, $Res Function(_Beneficiary) _then) = __$BeneficiaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "display_order") int? displayOrder,@JsonKey(name: "field_name") String? fieldName,@JsonKey(name: "display_field_name") String? displayFieldName,@JsonKey(name: "minimum_length") int? minimumLength,@JsonKey(name: "maximum_length") int? maximumLength,@JsonKey(name: "supported_data_type") String? supportedDataType,@JsonKey(name: "type") String? type,@JsonKey(name: "is_type_system_reserved") bool? isTypeSystemReserved,@JsonKey(name: "enabled") bool? enabled,@JsonKey(name: "mandatory") bool? mandatory,@JsonKey(name: "visible") bool? visible,@JsonKey(name: "default_value") String? defaultValue,@JsonKey(name: "allowed_special_characters") String? allowedSpecialCharacters,@JsonKey(name: "special_character_checking_rqrd") bool? specialCharacterCheckingRqrd,@JsonKey(name: "is_system_reserve") bool? isSystemReserve,@JsonKey(name: "member_section") String? memberSection,@JsonKey(name: "w_u_combo_order") int? wUComboOrder,@JsonKey(name: "w_u_field_settings_i_d") int? wUFieldSettingsID,@JsonKey(name: "is_arabic") bool? isArabic
});




}
/// @nodoc
class __$BeneficiaryCopyWithImpl<$Res>
    implements _$BeneficiaryCopyWith<$Res> {
  __$BeneficiaryCopyWithImpl(this._self, this._then);

  final _Beneficiary _self;
  final $Res Function(_Beneficiary) _then;

/// Create a copy of Beneficiary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? productCode = freezed,Object? displayOrder = freezed,Object? fieldName = freezed,Object? displayFieldName = freezed,Object? minimumLength = freezed,Object? maximumLength = freezed,Object? supportedDataType = freezed,Object? type = freezed,Object? isTypeSystemReserved = freezed,Object? enabled = freezed,Object? mandatory = freezed,Object? visible = freezed,Object? defaultValue = freezed,Object? allowedSpecialCharacters = freezed,Object? specialCharacterCheckingRqrd = freezed,Object? isSystemReserve = freezed,Object? memberSection = freezed,Object? wUComboOrder = freezed,Object? wUFieldSettingsID = freezed,Object? isArabic = freezed,}) {
  return _then(_Beneficiary(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,displayOrder: freezed == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int?,fieldName: freezed == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String?,displayFieldName: freezed == displayFieldName ? _self.displayFieldName : displayFieldName // ignore: cast_nullable_to_non_nullable
as String?,minimumLength: freezed == minimumLength ? _self.minimumLength : minimumLength // ignore: cast_nullable_to_non_nullable
as int?,maximumLength: freezed == maximumLength ? _self.maximumLength : maximumLength // ignore: cast_nullable_to_non_nullable
as int?,supportedDataType: freezed == supportedDataType ? _self.supportedDataType : supportedDataType // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,isTypeSystemReserved: freezed == isTypeSystemReserved ? _self.isTypeSystemReserved : isTypeSystemReserved // ignore: cast_nullable_to_non_nullable
as bool?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,mandatory: freezed == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool?,visible: freezed == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,allowedSpecialCharacters: freezed == allowedSpecialCharacters ? _self.allowedSpecialCharacters : allowedSpecialCharacters // ignore: cast_nullable_to_non_nullable
as String?,specialCharacterCheckingRqrd: freezed == specialCharacterCheckingRqrd ? _self.specialCharacterCheckingRqrd : specialCharacterCheckingRqrd // ignore: cast_nullable_to_non_nullable
as bool?,isSystemReserve: freezed == isSystemReserve ? _self.isSystemReserve : isSystemReserve // ignore: cast_nullable_to_non_nullable
as bool?,memberSection: freezed == memberSection ? _self.memberSection : memberSection // ignore: cast_nullable_to_non_nullable
as String?,wUComboOrder: freezed == wUComboOrder ? _self.wUComboOrder : wUComboOrder // ignore: cast_nullable_to_non_nullable
as int?,wUFieldSettingsID: freezed == wUFieldSettingsID ? _self.wUFieldSettingsID : wUFieldSettingsID // ignore: cast_nullable_to_non_nullable
as int?,isArabic: freezed == isArabic ? _self.isArabic : isArabic // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
