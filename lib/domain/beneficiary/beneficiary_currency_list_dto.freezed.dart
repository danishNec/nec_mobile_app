// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_currency_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryCurrencyListDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of BeneficiaryCurrencyListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryCurrencyListDtoCopyWith<BeneficiaryCurrencyListDto> get copyWith => _$BeneficiaryCurrencyListDtoCopyWithImpl<BeneficiaryCurrencyListDto>(this as BeneficiaryCurrencyListDto, _$identity);

  /// Serializes this BeneficiaryCurrencyListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryCurrencyListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryCurrencyListDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryCurrencyListDtoCopyWith<$Res>  {
  factory $BeneficiaryCurrencyListDtoCopyWith(BeneficiaryCurrencyListDto value, $Res Function(BeneficiaryCurrencyListDto) _then) = _$BeneficiaryCurrencyListDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryCurrencyListDtoCopyWithImpl<$Res>
    implements $BeneficiaryCurrencyListDtoCopyWith<$Res> {
  _$BeneficiaryCurrencyListDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryCurrencyListDto _self;
  final $Res Function(BeneficiaryCurrencyListDto) _then;

/// Create a copy of BeneficiaryCurrencyListDto
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
/// Create a copy of BeneficiaryCurrencyListDto
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


/// Adds pattern-matching-related methods to [BeneficiaryCurrencyListDto].
extension BeneficiaryCurrencyListDtoPatterns on BeneficiaryCurrencyListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryCurrencyListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryCurrencyListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryCurrencyListDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryCurrencyListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryCurrencyListDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryCurrencyListDto() when $default != null:
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
case _BeneficiaryCurrencyListDto() when $default != null:
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
case _BeneficiaryCurrencyListDto():
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
case _BeneficiaryCurrencyListDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.message,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryCurrencyListDto implements BeneficiaryCurrencyListDto {
  const _BeneficiaryCurrencyListDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _BeneficiaryCurrencyListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryCurrencyListDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of BeneficiaryCurrencyListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryCurrencyListDtoCopyWith<_BeneficiaryCurrencyListDto> get copyWith => __$BeneficiaryCurrencyListDtoCopyWithImpl<_BeneficiaryCurrencyListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryCurrencyListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryCurrencyListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,message,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryCurrencyListDto(success: $success, statusCode: $statusCode, message: $message, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryCurrencyListDtoCopyWith<$Res> implements $BeneficiaryCurrencyListDtoCopyWith<$Res> {
  factory _$BeneficiaryCurrencyListDtoCopyWith(_BeneficiaryCurrencyListDto value, $Res Function(_BeneficiaryCurrencyListDto) _then) = __$BeneficiaryCurrencyListDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryCurrencyListDtoCopyWithImpl<$Res>
    implements _$BeneficiaryCurrencyListDtoCopyWith<$Res> {
  __$BeneficiaryCurrencyListDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryCurrencyListDto _self;
  final $Res Function(_BeneficiaryCurrencyListDto) _then;

/// Create a copy of BeneficiaryCurrencyListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_BeneficiaryCurrencyListDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeneficiaryCurrencyListDto
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

@JsonKey(name: "currency_list") List<CurrencyList>? get currencyList;@JsonKey(name: "economic_activity_id") int? get economicActivityId;@JsonKey(name: "total_record_count") int? get totalRecordCount;@JsonKey(name: "total_page_count") int? get totalPageCount;@JsonKey(name: "per_page_record_count") int? get perPageRecordCount;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.currencyList, currencyList)&&(identical(other.economicActivityId, economicActivityId) || other.economicActivityId == economicActivityId)&&(identical(other.totalRecordCount, totalRecordCount) || other.totalRecordCount == totalRecordCount)&&(identical(other.totalPageCount, totalPageCount) || other.totalPageCount == totalPageCount)&&(identical(other.perPageRecordCount, perPageRecordCount) || other.perPageRecordCount == perPageRecordCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currencyList),economicActivityId,totalRecordCount,totalPageCount,perPageRecordCount);

@override
String toString() {
  return 'Data(currencyList: $currencyList, economicActivityId: $economicActivityId, totalRecordCount: $totalRecordCount, totalPageCount: $totalPageCount, perPageRecordCount: $perPageRecordCount)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "currency_list") List<CurrencyList>? currencyList,@JsonKey(name: "economic_activity_id") int? economicActivityId,@JsonKey(name: "total_record_count") int? totalRecordCount,@JsonKey(name: "total_page_count") int? totalPageCount,@JsonKey(name: "per_page_record_count") int? perPageRecordCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? currencyList = freezed,Object? economicActivityId = freezed,Object? totalRecordCount = freezed,Object? totalPageCount = freezed,Object? perPageRecordCount = freezed,}) {
  return _then(_self.copyWith(
currencyList: freezed == currencyList ? _self.currencyList : currencyList // ignore: cast_nullable_to_non_nullable
as List<CurrencyList>?,economicActivityId: freezed == economicActivityId ? _self.economicActivityId : economicActivityId // ignore: cast_nullable_to_non_nullable
as int?,totalRecordCount: freezed == totalRecordCount ? _self.totalRecordCount : totalRecordCount // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "currency_list")  List<CurrencyList>? currencyList, @JsonKey(name: "economic_activity_id")  int? economicActivityId, @JsonKey(name: "total_record_count")  int? totalRecordCount, @JsonKey(name: "total_page_count")  int? totalPageCount, @JsonKey(name: "per_page_record_count")  int? perPageRecordCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.currencyList,_that.economicActivityId,_that.totalRecordCount,_that.totalPageCount,_that.perPageRecordCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "currency_list")  List<CurrencyList>? currencyList, @JsonKey(name: "economic_activity_id")  int? economicActivityId, @JsonKey(name: "total_record_count")  int? totalRecordCount, @JsonKey(name: "total_page_count")  int? totalPageCount, @JsonKey(name: "per_page_record_count")  int? perPageRecordCount)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.currencyList,_that.economicActivityId,_that.totalRecordCount,_that.totalPageCount,_that.perPageRecordCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "currency_list")  List<CurrencyList>? currencyList, @JsonKey(name: "economic_activity_id")  int? economicActivityId, @JsonKey(name: "total_record_count")  int? totalRecordCount, @JsonKey(name: "total_page_count")  int? totalPageCount, @JsonKey(name: "per_page_record_count")  int? perPageRecordCount)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.currencyList,_that.economicActivityId,_that.totalRecordCount,_that.totalPageCount,_that.perPageRecordCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "currency_list") final  List<CurrencyList>? currencyList, @JsonKey(name: "economic_activity_id") this.economicActivityId, @JsonKey(name: "total_record_count") this.totalRecordCount, @JsonKey(name: "total_page_count") this.totalPageCount, @JsonKey(name: "per_page_record_count") this.perPageRecordCount}): _currencyList = currencyList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<CurrencyList>? _currencyList;
@override@JsonKey(name: "currency_list") List<CurrencyList>? get currencyList {
  final value = _currencyList;
  if (value == null) return null;
  if (_currencyList is EqualUnmodifiableListView) return _currencyList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "economic_activity_id") final  int? economicActivityId;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._currencyList, _currencyList)&&(identical(other.economicActivityId, economicActivityId) || other.economicActivityId == economicActivityId)&&(identical(other.totalRecordCount, totalRecordCount) || other.totalRecordCount == totalRecordCount)&&(identical(other.totalPageCount, totalPageCount) || other.totalPageCount == totalPageCount)&&(identical(other.perPageRecordCount, perPageRecordCount) || other.perPageRecordCount == perPageRecordCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currencyList),economicActivityId,totalRecordCount,totalPageCount,perPageRecordCount);

@override
String toString() {
  return 'Data(currencyList: $currencyList, economicActivityId: $economicActivityId, totalRecordCount: $totalRecordCount, totalPageCount: $totalPageCount, perPageRecordCount: $perPageRecordCount)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "currency_list") List<CurrencyList>? currencyList,@JsonKey(name: "economic_activity_id") int? economicActivityId,@JsonKey(name: "total_record_count") int? totalRecordCount,@JsonKey(name: "total_page_count") int? totalPageCount,@JsonKey(name: "per_page_record_count") int? perPageRecordCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? currencyList = freezed,Object? economicActivityId = freezed,Object? totalRecordCount = freezed,Object? totalPageCount = freezed,Object? perPageRecordCount = freezed,}) {
  return _then(_Data(
currencyList: freezed == currencyList ? _self._currencyList : currencyList // ignore: cast_nullable_to_non_nullable
as List<CurrencyList>?,economicActivityId: freezed == economicActivityId ? _self.economicActivityId : economicActivityId // ignore: cast_nullable_to_non_nullable
as int?,totalRecordCount: freezed == totalRecordCount ? _self.totalRecordCount : totalRecordCount // ignore: cast_nullable_to_non_nullable
as int?,totalPageCount: freezed == totalPageCount ? _self.totalPageCount : totalPageCount // ignore: cast_nullable_to_non_nullable
as int?,perPageRecordCount: freezed == perPageRecordCount ? _self.perPageRecordCount : perPageRecordCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CurrencyList {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "currency_code") String? get currencyCode;@JsonKey(name: "currency_name") String? get currencyName;@JsonKey(name: "country_code") String? get countryCode;@JsonKey(name: "country_name") String? get countryName;@JsonKey(name: "flag_url") String? get flagUrl;@JsonKey(name: "currency_symbol") String? get currencySymbol;@JsonKey(name: "rate") int? get rate;@JsonKey(name: "status") String? get status;
/// Create a copy of CurrencyList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyListCopyWith<CurrencyList> get copyWith => _$CurrencyListCopyWithImpl<CurrencyList>(this as CurrencyList, _$identity);

  /// Serializes this CurrencyList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.currencyName, currencyName) || other.currencyName == currencyName)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,currencyCode,currencyName,countryCode,countryName,flagUrl,currencySymbol,rate,status);

@override
String toString() {
  return 'CurrencyList(eId: $eId, currencyCode: $currencyCode, currencyName: $currencyName, countryCode: $countryCode, countryName: $countryName, flagUrl: $flagUrl, currencySymbol: $currencySymbol, rate: $rate, status: $status)';
}


}

/// @nodoc
abstract mixin class $CurrencyListCopyWith<$Res>  {
  factory $CurrencyListCopyWith(CurrencyList value, $Res Function(CurrencyList) _then) = _$CurrencyListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "currency_name") String? currencyName,@JsonKey(name: "country_code") String? countryCode,@JsonKey(name: "country_name") String? countryName,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "currency_symbol") String? currencySymbol,@JsonKey(name: "rate") int? rate,@JsonKey(name: "status") String? status
});




}
/// @nodoc
class _$CurrencyListCopyWithImpl<$Res>
    implements $CurrencyListCopyWith<$Res> {
  _$CurrencyListCopyWithImpl(this._self, this._then);

  final CurrencyList _self;
  final $Res Function(CurrencyList) _then;

/// Create a copy of CurrencyList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? currencyCode = freezed,Object? currencyName = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? flagUrl = freezed,Object? currencySymbol = freezed,Object? rate = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,currencyName: freezed == currencyName ? _self.currencyName : currencyName // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrencyList].
extension CurrencyListPatterns on CurrencyList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyList value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyList value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "currency_name")  String? currencyName, @JsonKey(name: "country_code")  String? countryCode, @JsonKey(name: "country_name")  String? countryName, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "currency_symbol")  String? currencySymbol, @JsonKey(name: "rate")  int? rate, @JsonKey(name: "status")  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyList() when $default != null:
return $default(_that.eId,_that.currencyCode,_that.currencyName,_that.countryCode,_that.countryName,_that.flagUrl,_that.currencySymbol,_that.rate,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "currency_name")  String? currencyName, @JsonKey(name: "country_code")  String? countryCode, @JsonKey(name: "country_name")  String? countryName, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "currency_symbol")  String? currencySymbol, @JsonKey(name: "rate")  int? rate, @JsonKey(name: "status")  String? status)  $default,) {final _that = this;
switch (_that) {
case _CurrencyList():
return $default(_that.eId,_that.currencyCode,_that.currencyName,_that.countryCode,_that.countryName,_that.flagUrl,_that.currencySymbol,_that.rate,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "currency_name")  String? currencyName, @JsonKey(name: "country_code")  String? countryCode, @JsonKey(name: "country_name")  String? countryName, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "currency_symbol")  String? currencySymbol, @JsonKey(name: "rate")  int? rate, @JsonKey(name: "status")  String? status)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyList() when $default != null:
return $default(_that.eId,_that.currencyCode,_that.currencyName,_that.countryCode,_that.countryName,_that.flagUrl,_that.currencySymbol,_that.rate,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrencyList implements CurrencyList {
  const _CurrencyList({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "currency_code") this.currencyCode, @JsonKey(name: "currency_name") this.currencyName, @JsonKey(name: "country_code") this.countryCode, @JsonKey(name: "country_name") this.countryName, @JsonKey(name: "flag_url") this.flagUrl, @JsonKey(name: "currency_symbol") this.currencySymbol, @JsonKey(name: "rate") this.rate, @JsonKey(name: "status") this.status});
  factory _CurrencyList.fromJson(Map<String, dynamic> json) => _$CurrencyListFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "currency_code") final  String? currencyCode;
@override@JsonKey(name: "currency_name") final  String? currencyName;
@override@JsonKey(name: "country_code") final  String? countryCode;
@override@JsonKey(name: "country_name") final  String? countryName;
@override@JsonKey(name: "flag_url") final  String? flagUrl;
@override@JsonKey(name: "currency_symbol") final  String? currencySymbol;
@override@JsonKey(name: "rate") final  int? rate;
@override@JsonKey(name: "status") final  String? status;

/// Create a copy of CurrencyList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyListCopyWith<_CurrencyList> get copyWith => __$CurrencyListCopyWithImpl<_CurrencyList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.currencyName, currencyName) || other.currencyName == currencyName)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eId,currencyCode,currencyName,countryCode,countryName,flagUrl,currencySymbol,rate,status);

@override
String toString() {
  return 'CurrencyList(eId: $eId, currencyCode: $currencyCode, currencyName: $currencyName, countryCode: $countryCode, countryName: $countryName, flagUrl: $flagUrl, currencySymbol: $currencySymbol, rate: $rate, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CurrencyListCopyWith<$Res> implements $CurrencyListCopyWith<$Res> {
  factory _$CurrencyListCopyWith(_CurrencyList value, $Res Function(_CurrencyList) _then) = __$CurrencyListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "currency_name") String? currencyName,@JsonKey(name: "country_code") String? countryCode,@JsonKey(name: "country_name") String? countryName,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "currency_symbol") String? currencySymbol,@JsonKey(name: "rate") int? rate,@JsonKey(name: "status") String? status
});




}
/// @nodoc
class __$CurrencyListCopyWithImpl<$Res>
    implements _$CurrencyListCopyWith<$Res> {
  __$CurrencyListCopyWithImpl(this._self, this._then);

  final _CurrencyList _self;
  final $Res Function(_CurrencyList) _then;

/// Create a copy of CurrencyList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? currencyCode = freezed,Object? currencyName = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? flagUrl = freezed,Object? currencySymbol = freezed,Object? rate = freezed,Object? status = freezed,}) {
  return _then(_CurrencyList(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,currencyName: freezed == currencyName ? _self.currencyName : currencyName // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,currencySymbol: freezed == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String?,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
