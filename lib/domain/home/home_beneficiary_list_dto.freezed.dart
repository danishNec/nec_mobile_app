// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_beneficiary_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeBeneficiaryListDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of HomeBeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeBeneficiaryListDtoCopyWith<HomeBeneficiaryListDto> get copyWith => _$HomeBeneficiaryListDtoCopyWithImpl<HomeBeneficiaryListDto>(this as HomeBeneficiaryListDto, _$identity);

  /// Serializes this HomeBeneficiaryListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeBeneficiaryListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'HomeBeneficiaryListDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $HomeBeneficiaryListDtoCopyWith<$Res>  {
  factory $HomeBeneficiaryListDtoCopyWith(HomeBeneficiaryListDto value, $Res Function(HomeBeneficiaryListDto) _then) = _$HomeBeneficiaryListDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$HomeBeneficiaryListDtoCopyWithImpl<$Res>
    implements $HomeBeneficiaryListDtoCopyWith<$Res> {
  _$HomeBeneficiaryListDtoCopyWithImpl(this._self, this._then);

  final HomeBeneficiaryListDto _self;
  final $Res Function(HomeBeneficiaryListDto) _then;

/// Create a copy of HomeBeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeBeneficiaryListDto
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


/// Adds pattern-matching-related methods to [HomeBeneficiaryListDto].
extension HomeBeneficiaryListDtoPatterns on HomeBeneficiaryListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeBeneficiaryListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeBeneficiaryListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeBeneficiaryListDto value)  $default,){
final _that = this;
switch (_that) {
case _HomeBeneficiaryListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeBeneficiaryListDto value)?  $default,){
final _that = this;
switch (_that) {
case _HomeBeneficiaryListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeBeneficiaryListDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)  $default,) {final _that = this;
switch (_that) {
case _HomeBeneficiaryListDto():
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "status_code")  int? statusCode, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data, @JsonKey(name: "time_stamp")  DateTime? timeStamp, @JsonKey(name: "version")  String? version)?  $default,) {final _that = this;
switch (_that) {
case _HomeBeneficiaryListDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeBeneficiaryListDto implements HomeBeneficiaryListDto {
  const _HomeBeneficiaryListDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _HomeBeneficiaryListDto.fromJson(Map<String, dynamic> json) => _$HomeBeneficiaryListDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of HomeBeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeBeneficiaryListDtoCopyWith<_HomeBeneficiaryListDto> get copyWith => __$HomeBeneficiaryListDtoCopyWithImpl<_HomeBeneficiaryListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeBeneficiaryListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeBeneficiaryListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'HomeBeneficiaryListDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$HomeBeneficiaryListDtoCopyWith<$Res> implements $HomeBeneficiaryListDtoCopyWith<$Res> {
  factory _$HomeBeneficiaryListDtoCopyWith(_HomeBeneficiaryListDto value, $Res Function(_HomeBeneficiaryListDto) _then) = __$HomeBeneficiaryListDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$HomeBeneficiaryListDtoCopyWithImpl<$Res>
    implements _$HomeBeneficiaryListDtoCopyWith<$Res> {
  __$HomeBeneficiaryListDtoCopyWithImpl(this._self, this._then);

  final _HomeBeneficiaryListDto _self;
  final $Res Function(_HomeBeneficiaryListDto) _then;

/// Create a copy of HomeBeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_HomeBeneficiaryListDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeBeneficiaryListDto
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

@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? get beneficiaryList;@JsonKey(name: "total_record_count") int? get totalRecordCount;@JsonKey(name: "total_page_count") int? get totalPageCount;@JsonKey(name: "per_page_record_count") int? get perPageRecordCount;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.beneficiaryList, beneficiaryList)&&(identical(other.totalRecordCount, totalRecordCount) || other.totalRecordCount == totalRecordCount)&&(identical(other.totalPageCount, totalPageCount) || other.totalPageCount == totalPageCount)&&(identical(other.perPageRecordCount, perPageRecordCount) || other.perPageRecordCount == perPageRecordCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(beneficiaryList),totalRecordCount,totalPageCount,perPageRecordCount);

@override
String toString() {
  return 'Data(beneficiaryList: $beneficiaryList, totalRecordCount: $totalRecordCount, totalPageCount: $totalPageCount, perPageRecordCount: $perPageRecordCount)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? beneficiaryList,@JsonKey(name: "total_record_count") int? totalRecordCount,@JsonKey(name: "total_page_count") int? totalPageCount,@JsonKey(name: "per_page_record_count") int? perPageRecordCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiaryList = freezed,Object? totalRecordCount = freezed,Object? totalPageCount = freezed,Object? perPageRecordCount = freezed,}) {
  return _then(_self.copyWith(
beneficiaryList: freezed == beneficiaryList ? _self.beneficiaryList : beneficiaryList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryList>?,totalRecordCount: freezed == totalRecordCount ? _self.totalRecordCount : totalRecordCount // ignore: cast_nullable_to_non_nullable
as int?,totalPageCount: freezed == totalPageCount ? _self.totalPageCount : totalPageCount // ignore: cast_nullable_to_non_nullable
as int?,perPageRecordCount: freezed == perPageRecordCount ? _self.perPageRecordCount : perPageRecordCount // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList, @JsonKey(name: "total_record_count")  int? totalRecordCount, @JsonKey(name: "total_page_count")  int? totalPageCount, @JsonKey(name: "per_page_record_count")  int? perPageRecordCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryList,_that.totalRecordCount,_that.totalPageCount,_that.perPageRecordCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList, @JsonKey(name: "total_record_count")  int? totalRecordCount, @JsonKey(name: "total_page_count")  int? totalPageCount, @JsonKey(name: "per_page_record_count")  int? perPageRecordCount)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.beneficiaryList,_that.totalRecordCount,_that.totalPageCount,_that.perPageRecordCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList, @JsonKey(name: "total_record_count")  int? totalRecordCount, @JsonKey(name: "total_page_count")  int? totalPageCount, @JsonKey(name: "per_page_record_count")  int? perPageRecordCount)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryList,_that.totalRecordCount,_that.totalPageCount,_that.perPageRecordCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "beneficiary_list") final  List<BeneficiaryList>? beneficiaryList, @JsonKey(name: "total_record_count") this.totalRecordCount, @JsonKey(name: "total_page_count") this.totalPageCount, @JsonKey(name: "per_page_record_count") this.perPageRecordCount}): _beneficiaryList = beneficiaryList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<BeneficiaryList>? _beneficiaryList;
@override@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? get beneficiaryList {
  final value = _beneficiaryList;
  if (value == null) return null;
  if (_beneficiaryList is EqualUnmodifiableListView) return _beneficiaryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "total_record_count") final  int? totalRecordCount;
@override@JsonKey(name: "total_page_count") final  int? totalPageCount;
@override@JsonKey(name: "per_page_record_count") final  int? perPageRecordCount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._beneficiaryList, _beneficiaryList)&&(identical(other.totalRecordCount, totalRecordCount) || other.totalRecordCount == totalRecordCount)&&(identical(other.totalPageCount, totalPageCount) || other.totalPageCount == totalPageCount)&&(identical(other.perPageRecordCount, perPageRecordCount) || other.perPageRecordCount == perPageRecordCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_beneficiaryList),totalRecordCount,totalPageCount,perPageRecordCount);

@override
String toString() {
  return 'Data(beneficiaryList: $beneficiaryList, totalRecordCount: $totalRecordCount, totalPageCount: $totalPageCount, perPageRecordCount: $perPageRecordCount)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? beneficiaryList,@JsonKey(name: "total_record_count") int? totalRecordCount,@JsonKey(name: "total_page_count") int? totalPageCount,@JsonKey(name: "per_page_record_count") int? perPageRecordCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiaryList = freezed,Object? totalRecordCount = freezed,Object? totalPageCount = freezed,Object? perPageRecordCount = freezed,}) {
  return _then(_Data(
beneficiaryList: freezed == beneficiaryList ? _self._beneficiaryList : beneficiaryList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryList>?,totalRecordCount: freezed == totalRecordCount ? _self.totalRecordCount : totalRecordCount // ignore: cast_nullable_to_non_nullable
as int?,totalPageCount: freezed == totalPageCount ? _self.totalPageCount : totalPageCount // ignore: cast_nullable_to_non_nullable
as int?,perPageRecordCount: freezed == perPageRecordCount ? _self.perPageRecordCount : perPageRecordCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$BeneficiaryList {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "beneficiary_first_name") String? get beneficiaryFirstName;@JsonKey(name: "beneficiary_middle_name") String? get beneficiaryMiddleName;@JsonKey(name: "beneficiary_last_name") String? get beneficiaryLastName;@JsonKey(name: "beneficiary_first_name_unicode") String? get beneficiaryFirstNameUnicode;@JsonKey(name: "beneficiary_middle_name_unicode") String? get beneficiaryMiddleNameUnicode;@JsonKey(name: "beneficiary_last_name_unicode") String? get beneficiaryLastNameUnicode;@JsonKey(name: "beneficiary_address1") String? get beneficiaryAddress1;@JsonKey(name: "beneficiary_address2") String? get beneficiaryAddress2;@JsonKey(name: "beneficiary_country_code") String? get beneficiaryCountryCode;@JsonKey(name: "beneficiary_country_name") String? get beneficiaryCountryName;@JsonKey(name: "beneficiary_nationality_code") String? get beneficiaryNationalityCode;@JsonKey(name: "beneficiary_nationality_name") String? get beneficiaryNationalityName;@JsonKey(name: "beneficiary_bank_code") String? get beneficiaryBankCode;@JsonKey(name: "beneficiary_branch_code") String? get beneficiaryBranchCode;@JsonKey(name: "beneficary_relation") String? get beneficaryRelation;@JsonKey(name: "beneficary_relation_name") String? get beneficaryRelationName;@JsonKey(name: "beneficiary_bank_account_number") String? get beneficiaryBankAccountNumber;@JsonKey(name: "beneficiary_category_code") String? get beneficiaryCategoryCode;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "status") String? get status;@JsonKey(name: "disbursal_mode_id") int? get disbursalModeId;@JsonKey(name: "white_list_notes") String? get whiteListNotes;@JsonKey(name: "disbursal_mode") String? get disbursalMode;@JsonKey(name: "currency_code") String? get currencyCode;@JsonKey(name: "income_source_name") String? get incomeSourceName;@JsonKey(name: "purpose_name") String? get purposeName;@JsonKey(name: "source_of_fund") String? get sourceOfFund;@JsonKey(name: "purpose_of_transaction") String? get purposeOfTransaction;@JsonKey(name: "beneficiary_category") String? get beneficiaryCategory;@JsonKey(name: "flag_url") String? get flagUrl;@JsonKey(name: "beneficiary_gender") String? get beneficiaryGender;@JsonKey(name: "route_code") String? get routeCode;@JsonKey(name: "route_type") String? get routeType;@JsonKey(name: "beneficiary_state") String? get beneficiaryState;@JsonKey(name: "beneficiary_city") String? get beneficiaryCity;@JsonKey(name: "beneficiary_salutation") String? get beneficiarySalutation;
/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryListCopyWith<BeneficiaryList> get copyWith => _$BeneficiaryListCopyWithImpl<BeneficiaryList>(this as BeneficiaryList, _$identity);

  /// Serializes this BeneficiaryList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryFirstNameUnicode, beneficiaryFirstNameUnicode) || other.beneficiaryFirstNameUnicode == beneficiaryFirstNameUnicode)&&(identical(other.beneficiaryMiddleNameUnicode, beneficiaryMiddleNameUnicode) || other.beneficiaryMiddleNameUnicode == beneficiaryMiddleNameUnicode)&&(identical(other.beneficiaryLastNameUnicode, beneficiaryLastNameUnicode) || other.beneficiaryLastNameUnicode == beneficiaryLastNameUnicode)&&(identical(other.beneficiaryAddress1, beneficiaryAddress1) || other.beneficiaryAddress1 == beneficiaryAddress1)&&(identical(other.beneficiaryAddress2, beneficiaryAddress2) || other.beneficiaryAddress2 == beneficiaryAddress2)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.beneficiaryCategoryCode, beneficiaryCategoryCode) || other.beneficiaryCategoryCode == beneficiaryCategoryCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.whiteListNotes, whiteListNotes) || other.whiteListNotes == whiteListNotes)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.beneficiaryCategory, beneficiaryCategory) || other.beneficiaryCategory == beneficiaryCategory)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.beneficiaryState, beneficiaryState) || other.beneficiaryState == beneficiaryState)&&(identical(other.beneficiaryCity, beneficiaryCity) || other.beneficiaryCity == beneficiaryCity)&&(identical(other.beneficiarySalutation, beneficiarySalutation) || other.beneficiarySalutation == beneficiarySalutation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName,beneficiaryFirstNameUnicode,beneficiaryMiddleNameUnicode,beneficiaryLastNameUnicode,beneficiaryAddress1,beneficiaryAddress2,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBranchCode,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,beneficiaryCategoryCode,productCode,productName,status,disbursalModeId,whiteListNotes,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,beneficiaryCategory,flagUrl,beneficiaryGender,routeCode,routeType,beneficiaryState,beneficiaryCity,beneficiarySalutation]);

@override
String toString() {
  return 'BeneficiaryList(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName, beneficiaryFirstNameUnicode: $beneficiaryFirstNameUnicode, beneficiaryMiddleNameUnicode: $beneficiaryMiddleNameUnicode, beneficiaryLastNameUnicode: $beneficiaryLastNameUnicode, beneficiaryAddress1: $beneficiaryAddress1, beneficiaryAddress2: $beneficiaryAddress2, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBranchCode: $beneficiaryBranchCode, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, beneficiaryCategoryCode: $beneficiaryCategoryCode, productCode: $productCode, productName: $productName, status: $status, disbursalModeId: $disbursalModeId, whiteListNotes: $whiteListNotes, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, beneficiaryCategory: $beneficiaryCategory, flagUrl: $flagUrl, beneficiaryGender: $beneficiaryGender, routeCode: $routeCode, routeType: $routeType, beneficiaryState: $beneficiaryState, beneficiaryCity: $beneficiaryCity, beneficiarySalutation: $beneficiarySalutation)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryListCopyWith<$Res>  {
  factory $BeneficiaryListCopyWith(BeneficiaryList value, $Res Function(BeneficiaryList) _then) = _$BeneficiaryListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_first_name_unicode") String? beneficiaryFirstNameUnicode,@JsonKey(name: "beneficiary_middle_name_unicode") String? beneficiaryMiddleNameUnicode,@JsonKey(name: "beneficiary_last_name_unicode") String? beneficiaryLastNameUnicode,@JsonKey(name: "beneficiary_address1") String? beneficiaryAddress1,@JsonKey(name: "beneficiary_address2") String? beneficiaryAddress2,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "beneficiary_category_code") String? beneficiaryCategoryCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "white_list_notes") String? whiteListNotes,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "beneficiary_category") String? beneficiaryCategory,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "beneficiary_state") String? beneficiaryState,@JsonKey(name: "beneficiary_city") String? beneficiaryCity,@JsonKey(name: "beneficiary_salutation") String? beneficiarySalutation
});




}
/// @nodoc
class _$BeneficiaryListCopyWithImpl<$Res>
    implements $BeneficiaryListCopyWith<$Res> {
  _$BeneficiaryListCopyWithImpl(this._self, this._then);

  final BeneficiaryList _self;
  final $Res Function(BeneficiaryList) _then;

/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryFirstNameUnicode = freezed,Object? beneficiaryMiddleNameUnicode = freezed,Object? beneficiaryLastNameUnicode = freezed,Object? beneficiaryAddress1 = freezed,Object? beneficiaryAddress2 = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? beneficiaryCategoryCode = freezed,Object? productCode = freezed,Object? productName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? whiteListNotes = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? beneficiaryCategory = freezed,Object? flagUrl = freezed,Object? beneficiaryGender = freezed,Object? routeCode = freezed,Object? routeType = freezed,Object? beneficiaryState = freezed,Object? beneficiaryCity = freezed,Object? beneficiarySalutation = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstNameUnicode: freezed == beneficiaryFirstNameUnicode ? _self.beneficiaryFirstNameUnicode : beneficiaryFirstNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleNameUnicode: freezed == beneficiaryMiddleNameUnicode ? _self.beneficiaryMiddleNameUnicode : beneficiaryMiddleNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastNameUnicode: freezed == beneficiaryLastNameUnicode ? _self.beneficiaryLastNameUnicode : beneficiaryLastNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress1: freezed == beneficiaryAddress1 ? _self.beneficiaryAddress1 : beneficiaryAddress1 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress2: freezed == beneficiaryAddress2 ? _self.beneficiaryAddress2 : beneficiaryAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategoryCode: freezed == beneficiaryCategoryCode ? _self.beneficiaryCategoryCode : beneficiaryCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,whiteListNotes: freezed == whiteListNotes ? _self.whiteListNotes : whiteListNotes // ignore: cast_nullable_to_non_nullable
as String?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategory: freezed == beneficiaryCategory ? _self.beneficiaryCategory : beneficiaryCategory // ignore: cast_nullable_to_non_nullable
as String?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryState: freezed == beneficiaryState ? _self.beneficiaryState : beneficiaryState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCity: freezed == beneficiaryCity ? _self.beneficiaryCity : beneficiaryCity // ignore: cast_nullable_to_non_nullable
as String?,beneficiarySalutation: freezed == beneficiarySalutation ? _self.beneficiarySalutation : beneficiarySalutation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryList].
extension BeneficiaryListPatterns on BeneficiaryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryList value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryList value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "white_list_notes")  String? whiteListNotes, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity, @JsonKey(name: "beneficiary_salutation")  String? beneficiarySalutation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBranchCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.whiteListNotes,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.beneficiaryCategory,_that.flagUrl,_that.beneficiaryGender,_that.routeCode,_that.routeType,_that.beneficiaryState,_that.beneficiaryCity,_that.beneficiarySalutation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "white_list_notes")  String? whiteListNotes, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity, @JsonKey(name: "beneficiary_salutation")  String? beneficiarySalutation)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryList():
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBranchCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.whiteListNotes,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.beneficiaryCategory,_that.flagUrl,_that.beneficiaryGender,_that.routeCode,_that.routeType,_that.beneficiaryState,_that.beneficiaryCity,_that.beneficiarySalutation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1")  String? beneficiaryAddress1, @JsonKey(name: "beneficiary_address2")  String? beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code")  String? beneficiaryCategoryCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "white_list_notes")  String? whiteListNotes, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "beneficiary_category")  String? beneficiaryCategory, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "route_type")  String? routeType, @JsonKey(name: "beneficiary_state")  String? beneficiaryState, @JsonKey(name: "beneficiary_city")  String? beneficiaryCity, @JsonKey(name: "beneficiary_salutation")  String? beneficiarySalutation)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryAddress1,_that.beneficiaryAddress2,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBranchCode,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.beneficiaryCategoryCode,_that.productCode,_that.productName,_that.status,_that.disbursalModeId,_that.whiteListNotes,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.beneficiaryCategory,_that.flagUrl,_that.beneficiaryGender,_that.routeCode,_that.routeType,_that.beneficiaryState,_that.beneficiaryCity,_that.beneficiarySalutation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryList implements BeneficiaryList {
  const _BeneficiaryList({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "beneficiary_first_name") this.beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name") this.beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name") this.beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode") this.beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode") this.beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode") this.beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_address1") this.beneficiaryAddress1, @JsonKey(name: "beneficiary_address2") this.beneficiaryAddress2, @JsonKey(name: "beneficiary_country_code") this.beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name") this.beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code") this.beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name") this.beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code") this.beneficiaryBankCode, @JsonKey(name: "beneficiary_branch_code") this.beneficiaryBranchCode, @JsonKey(name: "beneficary_relation") this.beneficaryRelation, @JsonKey(name: "beneficary_relation_name") this.beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number") this.beneficiaryBankAccountNumber, @JsonKey(name: "beneficiary_category_code") this.beneficiaryCategoryCode, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "status") this.status, @JsonKey(name: "disbursal_mode_id") this.disbursalModeId, @JsonKey(name: "white_list_notes") this.whiteListNotes, @JsonKey(name: "disbursal_mode") this.disbursalMode, @JsonKey(name: "currency_code") this.currencyCode, @JsonKey(name: "income_source_name") this.incomeSourceName, @JsonKey(name: "purpose_name") this.purposeName, @JsonKey(name: "source_of_fund") this.sourceOfFund, @JsonKey(name: "purpose_of_transaction") this.purposeOfTransaction, @JsonKey(name: "beneficiary_category") this.beneficiaryCategory, @JsonKey(name: "flag_url") this.flagUrl, @JsonKey(name: "beneficiary_gender") this.beneficiaryGender, @JsonKey(name: "route_code") this.routeCode, @JsonKey(name: "route_type") this.routeType, @JsonKey(name: "beneficiary_state") this.beneficiaryState, @JsonKey(name: "beneficiary_city") this.beneficiaryCity, @JsonKey(name: "beneficiary_salutation") this.beneficiarySalutation});
  factory _BeneficiaryList.fromJson(Map<String, dynamic> json) => _$BeneficiaryListFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "beneficiary_first_name") final  String? beneficiaryFirstName;
@override@JsonKey(name: "beneficiary_middle_name") final  String? beneficiaryMiddleName;
@override@JsonKey(name: "beneficiary_last_name") final  String? beneficiaryLastName;
@override@JsonKey(name: "beneficiary_first_name_unicode") final  String? beneficiaryFirstNameUnicode;
@override@JsonKey(name: "beneficiary_middle_name_unicode") final  String? beneficiaryMiddleNameUnicode;
@override@JsonKey(name: "beneficiary_last_name_unicode") final  String? beneficiaryLastNameUnicode;
@override@JsonKey(name: "beneficiary_address1") final  String? beneficiaryAddress1;
@override@JsonKey(name: "beneficiary_address2") final  String? beneficiaryAddress2;
@override@JsonKey(name: "beneficiary_country_code") final  String? beneficiaryCountryCode;
@override@JsonKey(name: "beneficiary_country_name") final  String? beneficiaryCountryName;
@override@JsonKey(name: "beneficiary_nationality_code") final  String? beneficiaryNationalityCode;
@override@JsonKey(name: "beneficiary_nationality_name") final  String? beneficiaryNationalityName;
@override@JsonKey(name: "beneficiary_bank_code") final  String? beneficiaryBankCode;
@override@JsonKey(name: "beneficiary_branch_code") final  String? beneficiaryBranchCode;
@override@JsonKey(name: "beneficary_relation") final  String? beneficaryRelation;
@override@JsonKey(name: "beneficary_relation_name") final  String? beneficaryRelationName;
@override@JsonKey(name: "beneficiary_bank_account_number") final  String? beneficiaryBankAccountNumber;
@override@JsonKey(name: "beneficiary_category_code") final  String? beneficiaryCategoryCode;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "disbursal_mode_id") final  int? disbursalModeId;
@override@JsonKey(name: "white_list_notes") final  String? whiteListNotes;
@override@JsonKey(name: "disbursal_mode") final  String? disbursalMode;
@override@JsonKey(name: "currency_code") final  String? currencyCode;
@override@JsonKey(name: "income_source_name") final  String? incomeSourceName;
@override@JsonKey(name: "purpose_name") final  String? purposeName;
@override@JsonKey(name: "source_of_fund") final  String? sourceOfFund;
@override@JsonKey(name: "purpose_of_transaction") final  String? purposeOfTransaction;
@override@JsonKey(name: "beneficiary_category") final  String? beneficiaryCategory;
@override@JsonKey(name: "flag_url") final  String? flagUrl;
@override@JsonKey(name: "beneficiary_gender") final  String? beneficiaryGender;
@override@JsonKey(name: "route_code") final  String? routeCode;
@override@JsonKey(name: "route_type") final  String? routeType;
@override@JsonKey(name: "beneficiary_state") final  String? beneficiaryState;
@override@JsonKey(name: "beneficiary_city") final  String? beneficiaryCity;
@override@JsonKey(name: "beneficiary_salutation") final  String? beneficiarySalutation;

/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryListCopyWith<_BeneficiaryList> get copyWith => __$BeneficiaryListCopyWithImpl<_BeneficiaryList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryFirstNameUnicode, beneficiaryFirstNameUnicode) || other.beneficiaryFirstNameUnicode == beneficiaryFirstNameUnicode)&&(identical(other.beneficiaryMiddleNameUnicode, beneficiaryMiddleNameUnicode) || other.beneficiaryMiddleNameUnicode == beneficiaryMiddleNameUnicode)&&(identical(other.beneficiaryLastNameUnicode, beneficiaryLastNameUnicode) || other.beneficiaryLastNameUnicode == beneficiaryLastNameUnicode)&&(identical(other.beneficiaryAddress1, beneficiaryAddress1) || other.beneficiaryAddress1 == beneficiaryAddress1)&&(identical(other.beneficiaryAddress2, beneficiaryAddress2) || other.beneficiaryAddress2 == beneficiaryAddress2)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.beneficiaryCategoryCode, beneficiaryCategoryCode) || other.beneficiaryCategoryCode == beneficiaryCategoryCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.whiteListNotes, whiteListNotes) || other.whiteListNotes == whiteListNotes)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.beneficiaryCategory, beneficiaryCategory) || other.beneficiaryCategory == beneficiaryCategory)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.routeType, routeType) || other.routeType == routeType)&&(identical(other.beneficiaryState, beneficiaryState) || other.beneficiaryState == beneficiaryState)&&(identical(other.beneficiaryCity, beneficiaryCity) || other.beneficiaryCity == beneficiaryCity)&&(identical(other.beneficiarySalutation, beneficiarySalutation) || other.beneficiarySalutation == beneficiarySalutation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName,beneficiaryFirstNameUnicode,beneficiaryMiddleNameUnicode,beneficiaryLastNameUnicode,beneficiaryAddress1,beneficiaryAddress2,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBranchCode,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,beneficiaryCategoryCode,productCode,productName,status,disbursalModeId,whiteListNotes,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,beneficiaryCategory,flagUrl,beneficiaryGender,routeCode,routeType,beneficiaryState,beneficiaryCity,beneficiarySalutation]);

@override
String toString() {
  return 'BeneficiaryList(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName, beneficiaryFirstNameUnicode: $beneficiaryFirstNameUnicode, beneficiaryMiddleNameUnicode: $beneficiaryMiddleNameUnicode, beneficiaryLastNameUnicode: $beneficiaryLastNameUnicode, beneficiaryAddress1: $beneficiaryAddress1, beneficiaryAddress2: $beneficiaryAddress2, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBranchCode: $beneficiaryBranchCode, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, beneficiaryCategoryCode: $beneficiaryCategoryCode, productCode: $productCode, productName: $productName, status: $status, disbursalModeId: $disbursalModeId, whiteListNotes: $whiteListNotes, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, beneficiaryCategory: $beneficiaryCategory, flagUrl: $flagUrl, beneficiaryGender: $beneficiaryGender, routeCode: $routeCode, routeType: $routeType, beneficiaryState: $beneficiaryState, beneficiaryCity: $beneficiaryCity, beneficiarySalutation: $beneficiarySalutation)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryListCopyWith<$Res> implements $BeneficiaryListCopyWith<$Res> {
  factory _$BeneficiaryListCopyWith(_BeneficiaryList value, $Res Function(_BeneficiaryList) _then) = __$BeneficiaryListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_first_name_unicode") String? beneficiaryFirstNameUnicode,@JsonKey(name: "beneficiary_middle_name_unicode") String? beneficiaryMiddleNameUnicode,@JsonKey(name: "beneficiary_last_name_unicode") String? beneficiaryLastNameUnicode,@JsonKey(name: "beneficiary_address1") String? beneficiaryAddress1,@JsonKey(name: "beneficiary_address2") String? beneficiaryAddress2,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "beneficiary_category_code") String? beneficiaryCategoryCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "white_list_notes") String? whiteListNotes,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "beneficiary_category") String? beneficiaryCategory,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "route_type") String? routeType,@JsonKey(name: "beneficiary_state") String? beneficiaryState,@JsonKey(name: "beneficiary_city") String? beneficiaryCity,@JsonKey(name: "beneficiary_salutation") String? beneficiarySalutation
});




}
/// @nodoc
class __$BeneficiaryListCopyWithImpl<$Res>
    implements _$BeneficiaryListCopyWith<$Res> {
  __$BeneficiaryListCopyWithImpl(this._self, this._then);

  final _BeneficiaryList _self;
  final $Res Function(_BeneficiaryList) _then;

/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryFirstNameUnicode = freezed,Object? beneficiaryMiddleNameUnicode = freezed,Object? beneficiaryLastNameUnicode = freezed,Object? beneficiaryAddress1 = freezed,Object? beneficiaryAddress2 = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? beneficiaryCategoryCode = freezed,Object? productCode = freezed,Object? productName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? whiteListNotes = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? beneficiaryCategory = freezed,Object? flagUrl = freezed,Object? beneficiaryGender = freezed,Object? routeCode = freezed,Object? routeType = freezed,Object? beneficiaryState = freezed,Object? beneficiaryCity = freezed,Object? beneficiarySalutation = freezed,}) {
  return _then(_BeneficiaryList(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstNameUnicode: freezed == beneficiaryFirstNameUnicode ? _self.beneficiaryFirstNameUnicode : beneficiaryFirstNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleNameUnicode: freezed == beneficiaryMiddleNameUnicode ? _self.beneficiaryMiddleNameUnicode : beneficiaryMiddleNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastNameUnicode: freezed == beneficiaryLastNameUnicode ? _self.beneficiaryLastNameUnicode : beneficiaryLastNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress1: freezed == beneficiaryAddress1 ? _self.beneficiaryAddress1 : beneficiaryAddress1 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryAddress2: freezed == beneficiaryAddress2 ? _self.beneficiaryAddress2 : beneficiaryAddress2 // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategoryCode: freezed == beneficiaryCategoryCode ? _self.beneficiaryCategoryCode : beneficiaryCategoryCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,whiteListNotes: freezed == whiteListNotes ? _self.whiteListNotes : whiteListNotes // ignore: cast_nullable_to_non_nullable
as String?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCategory: freezed == beneficiaryCategory ? _self.beneficiaryCategory : beneficiaryCategory // ignore: cast_nullable_to_non_nullable
as String?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,routeType: freezed == routeType ? _self.routeType : routeType // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryState: freezed == beneficiaryState ? _self.beneficiaryState : beneficiaryState // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCity: freezed == beneficiaryCity ? _self.beneficiaryCity : beneficiaryCity // ignore: cast_nullable_to_non_nullable
as String?,beneficiarySalutation: freezed == beneficiarySalutation ? _self.beneficiarySalutation : beneficiarySalutation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
