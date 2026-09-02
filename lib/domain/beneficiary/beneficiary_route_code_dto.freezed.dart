// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_route_code_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryRouteCodeDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of BeneficiaryRouteCodeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryRouteCodeDtoCopyWith<BeneficiaryRouteCodeDto> get copyWith => _$BeneficiaryRouteCodeDtoCopyWithImpl<BeneficiaryRouteCodeDto>(this as BeneficiaryRouteCodeDto, _$identity);

  /// Serializes this BeneficiaryRouteCodeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryRouteCodeDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryRouteCodeDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryRouteCodeDtoCopyWith<$Res>  {
  factory $BeneficiaryRouteCodeDtoCopyWith(BeneficiaryRouteCodeDto value, $Res Function(BeneficiaryRouteCodeDto) _then) = _$BeneficiaryRouteCodeDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryRouteCodeDtoCopyWithImpl<$Res>
    implements $BeneficiaryRouteCodeDtoCopyWith<$Res> {
  _$BeneficiaryRouteCodeDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryRouteCodeDto _self;
  final $Res Function(BeneficiaryRouteCodeDto) _then;

/// Create a copy of BeneficiaryRouteCodeDto
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
/// Create a copy of BeneficiaryRouteCodeDto
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


/// Adds pattern-matching-related methods to [BeneficiaryRouteCodeDto].
extension BeneficiaryRouteCodeDtoPatterns on BeneficiaryRouteCodeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryRouteCodeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryRouteCodeDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryRouteCodeDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeDto() when $default != null:
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
case _BeneficiaryRouteCodeDto() when $default != null:
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
case _BeneficiaryRouteCodeDto():
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
case _BeneficiaryRouteCodeDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryRouteCodeDto implements BeneficiaryRouteCodeDto {
  const _BeneficiaryRouteCodeDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _BeneficiaryRouteCodeDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryRouteCodeDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of BeneficiaryRouteCodeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryRouteCodeDtoCopyWith<_BeneficiaryRouteCodeDto> get copyWith => __$BeneficiaryRouteCodeDtoCopyWithImpl<_BeneficiaryRouteCodeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryRouteCodeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryRouteCodeDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryRouteCodeDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryRouteCodeDtoCopyWith<$Res> implements $BeneficiaryRouteCodeDtoCopyWith<$Res> {
  factory _$BeneficiaryRouteCodeDtoCopyWith(_BeneficiaryRouteCodeDto value, $Res Function(_BeneficiaryRouteCodeDto) _then) = __$BeneficiaryRouteCodeDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryRouteCodeDtoCopyWithImpl<$Res>
    implements _$BeneficiaryRouteCodeDtoCopyWith<$Res> {
  __$BeneficiaryRouteCodeDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryRouteCodeDto _self;
  final $Res Function(_BeneficiaryRouteCodeDto) _then;

/// Create a copy of BeneficiaryRouteCodeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_BeneficiaryRouteCodeDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeneficiaryRouteCodeDto
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

@JsonKey(name: "beneficiary_route_code_list") List<BeneficiaryRouteCodeList>? get beneficiaryRouteCodeList;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.beneficiaryRouteCodeList, beneficiaryRouteCodeList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(beneficiaryRouteCodeList));

@override
String toString() {
  return 'Data(beneficiaryRouteCodeList: $beneficiaryRouteCodeList)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "beneficiary_route_code_list") List<BeneficiaryRouteCodeList>? beneficiaryRouteCodeList
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
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiaryRouteCodeList = freezed,}) {
  return _then(_self.copyWith(
beneficiaryRouteCodeList: freezed == beneficiaryRouteCodeList ? _self.beneficiaryRouteCodeList : beneficiaryRouteCodeList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryRouteCodeList>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_route_code_list")  List<BeneficiaryRouteCodeList>? beneficiaryRouteCodeList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryRouteCodeList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_route_code_list")  List<BeneficiaryRouteCodeList>? beneficiaryRouteCodeList)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.beneficiaryRouteCodeList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary_route_code_list")  List<BeneficiaryRouteCodeList>? beneficiaryRouteCodeList)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryRouteCodeList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "beneficiary_route_code_list") final  List<BeneficiaryRouteCodeList>? beneficiaryRouteCodeList}): _beneficiaryRouteCodeList = beneficiaryRouteCodeList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<BeneficiaryRouteCodeList>? _beneficiaryRouteCodeList;
@override@JsonKey(name: "beneficiary_route_code_list") List<BeneficiaryRouteCodeList>? get beneficiaryRouteCodeList {
  final value = _beneficiaryRouteCodeList;
  if (value == null) return null;
  if (_beneficiaryRouteCodeList is EqualUnmodifiableListView) return _beneficiaryRouteCodeList;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._beneficiaryRouteCodeList, _beneficiaryRouteCodeList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_beneficiaryRouteCodeList));

@override
String toString() {
  return 'Data(beneficiaryRouteCodeList: $beneficiaryRouteCodeList)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "beneficiary_route_code_list") List<BeneficiaryRouteCodeList>? beneficiaryRouteCodeList
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
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiaryRouteCodeList = freezed,}) {
  return _then(_Data(
beneficiaryRouteCodeList: freezed == beneficiaryRouteCodeList ? _self._beneficiaryRouteCodeList : beneficiaryRouteCodeList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryRouteCodeList>?,
  ));
}


}


/// @nodoc
mixin _$BeneficiaryRouteCodeList {

@JsonKey(name: "code") String? get code;@JsonKey(name: "is_default") bool? get isDefault;
/// Create a copy of BeneficiaryRouteCodeList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryRouteCodeListCopyWith<BeneficiaryRouteCodeList> get copyWith => _$BeneficiaryRouteCodeListCopyWithImpl<BeneficiaryRouteCodeList>(this as BeneficiaryRouteCodeList, _$identity);

  /// Serializes this BeneficiaryRouteCodeList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryRouteCodeList&&(identical(other.code, code) || other.code == code)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,isDefault);

@override
String toString() {
  return 'BeneficiaryRouteCodeList(code: $code, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryRouteCodeListCopyWith<$Res>  {
  factory $BeneficiaryRouteCodeListCopyWith(BeneficiaryRouteCodeList value, $Res Function(BeneficiaryRouteCodeList) _then) = _$BeneficiaryRouteCodeListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class _$BeneficiaryRouteCodeListCopyWithImpl<$Res>
    implements $BeneficiaryRouteCodeListCopyWith<$Res> {
  _$BeneficiaryRouteCodeListCopyWithImpl(this._self, this._then);

  final BeneficiaryRouteCodeList _self;
  final $Res Function(BeneficiaryRouteCodeList) _then;

/// Create a copy of BeneficiaryRouteCodeList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? isDefault = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryRouteCodeList].
extension BeneficiaryRouteCodeListPatterns on BeneficiaryRouteCodeList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryRouteCodeList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryRouteCodeList value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryRouteCodeList value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "is_default")  bool? isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeList() when $default != null:
return $default(_that.code,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "is_default")  bool? isDefault)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeList():
return $default(_that.code,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "is_default")  bool? isDefault)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryRouteCodeList() when $default != null:
return $default(_that.code,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryRouteCodeList implements BeneficiaryRouteCodeList {
  const _BeneficiaryRouteCodeList({@JsonKey(name: "code") this.code, @JsonKey(name: "is_default") this.isDefault});
  factory _BeneficiaryRouteCodeList.fromJson(Map<String, dynamic> json) => _$BeneficiaryRouteCodeListFromJson(json);

@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "is_default") final  bool? isDefault;

/// Create a copy of BeneficiaryRouteCodeList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryRouteCodeListCopyWith<_BeneficiaryRouteCodeList> get copyWith => __$BeneficiaryRouteCodeListCopyWithImpl<_BeneficiaryRouteCodeList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryRouteCodeListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryRouteCodeList&&(identical(other.code, code) || other.code == code)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,isDefault);

@override
String toString() {
  return 'BeneficiaryRouteCodeList(code: $code, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryRouteCodeListCopyWith<$Res> implements $BeneficiaryRouteCodeListCopyWith<$Res> {
  factory _$BeneficiaryRouteCodeListCopyWith(_BeneficiaryRouteCodeList value, $Res Function(_BeneficiaryRouteCodeList) _then) = __$BeneficiaryRouteCodeListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class __$BeneficiaryRouteCodeListCopyWithImpl<$Res>
    implements _$BeneficiaryRouteCodeListCopyWith<$Res> {
  __$BeneficiaryRouteCodeListCopyWithImpl(this._self, this._then);

  final _BeneficiaryRouteCodeList _self;
  final $Res Function(_BeneficiaryRouteCodeList) _then;

/// Create a copy of BeneficiaryRouteCodeList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? isDefault = freezed,}) {
  return _then(_BeneficiaryRouteCodeList(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
