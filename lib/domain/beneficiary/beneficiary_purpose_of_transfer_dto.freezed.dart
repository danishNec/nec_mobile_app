// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_purpose_of_transfer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryPurposeOfTransferDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of BeneficiaryPurposeOfTransferDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryPurposeOfTransferDtoCopyWith<BeneficiaryPurposeOfTransferDto> get copyWith => _$BeneficiaryPurposeOfTransferDtoCopyWithImpl<BeneficiaryPurposeOfTransferDto>(this as BeneficiaryPurposeOfTransferDto, _$identity);

  /// Serializes this BeneficiaryPurposeOfTransferDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryPurposeOfTransferDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryPurposeOfTransferDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryPurposeOfTransferDtoCopyWith<$Res>  {
  factory $BeneficiaryPurposeOfTransferDtoCopyWith(BeneficiaryPurposeOfTransferDto value, $Res Function(BeneficiaryPurposeOfTransferDto) _then) = _$BeneficiaryPurposeOfTransferDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryPurposeOfTransferDtoCopyWithImpl<$Res>
    implements $BeneficiaryPurposeOfTransferDtoCopyWith<$Res> {
  _$BeneficiaryPurposeOfTransferDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryPurposeOfTransferDto _self;
  final $Res Function(BeneficiaryPurposeOfTransferDto) _then;

/// Create a copy of BeneficiaryPurposeOfTransferDto
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
/// Create a copy of BeneficiaryPurposeOfTransferDto
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


/// Adds pattern-matching-related methods to [BeneficiaryPurposeOfTransferDto].
extension BeneficiaryPurposeOfTransferDtoPatterns on BeneficiaryPurposeOfTransferDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryPurposeOfTransferDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryPurposeOfTransferDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryPurposeOfTransferDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryPurposeOfTransferDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryPurposeOfTransferDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryPurposeOfTransferDto() when $default != null:
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
case _BeneficiaryPurposeOfTransferDto() when $default != null:
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
case _BeneficiaryPurposeOfTransferDto():
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
case _BeneficiaryPurposeOfTransferDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryPurposeOfTransferDto implements BeneficiaryPurposeOfTransferDto {
  const _BeneficiaryPurposeOfTransferDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _BeneficiaryPurposeOfTransferDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryPurposeOfTransferDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of BeneficiaryPurposeOfTransferDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryPurposeOfTransferDtoCopyWith<_BeneficiaryPurposeOfTransferDto> get copyWith => __$BeneficiaryPurposeOfTransferDtoCopyWithImpl<_BeneficiaryPurposeOfTransferDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryPurposeOfTransferDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryPurposeOfTransferDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryPurposeOfTransferDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryPurposeOfTransferDtoCopyWith<$Res> implements $BeneficiaryPurposeOfTransferDtoCopyWith<$Res> {
  factory _$BeneficiaryPurposeOfTransferDtoCopyWith(_BeneficiaryPurposeOfTransferDto value, $Res Function(_BeneficiaryPurposeOfTransferDto) _then) = __$BeneficiaryPurposeOfTransferDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryPurposeOfTransferDtoCopyWithImpl<$Res>
    implements _$BeneficiaryPurposeOfTransferDtoCopyWith<$Res> {
  __$BeneficiaryPurposeOfTransferDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryPurposeOfTransferDto _self;
  final $Res Function(_BeneficiaryPurposeOfTransferDto) _then;

/// Create a copy of BeneficiaryPurposeOfTransferDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_BeneficiaryPurposeOfTransferDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeneficiaryPurposeOfTransferDto
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

@JsonKey(name: "purpose_list") List<PurposeList>? get purposeList;@JsonKey(name: "app_transaction_reference") int? get appTransactionReference;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.purposeList, purposeList)&&(identical(other.appTransactionReference, appTransactionReference) || other.appTransactionReference == appTransactionReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(purposeList),appTransactionReference);

@override
String toString() {
  return 'Data(purposeList: $purposeList, appTransactionReference: $appTransactionReference)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "purpose_list") List<PurposeList>? purposeList,@JsonKey(name: "app_transaction_reference") int? appTransactionReference
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
@pragma('vm:prefer-inline') @override $Res call({Object? purposeList = freezed,Object? appTransactionReference = freezed,}) {
  return _then(_self.copyWith(
purposeList: freezed == purposeList ? _self.purposeList : purposeList // ignore: cast_nullable_to_non_nullable
as List<PurposeList>?,appTransactionReference: freezed == appTransactionReference ? _self.appTransactionReference : appTransactionReference // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "purpose_list")  List<PurposeList>? purposeList, @JsonKey(name: "app_transaction_reference")  int? appTransactionReference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.purposeList,_that.appTransactionReference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "purpose_list")  List<PurposeList>? purposeList, @JsonKey(name: "app_transaction_reference")  int? appTransactionReference)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.purposeList,_that.appTransactionReference);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "purpose_list")  List<PurposeList>? purposeList, @JsonKey(name: "app_transaction_reference")  int? appTransactionReference)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.purposeList,_that.appTransactionReference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "purpose_list") final  List<PurposeList>? purposeList, @JsonKey(name: "app_transaction_reference") this.appTransactionReference}): _purposeList = purposeList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<PurposeList>? _purposeList;
@override@JsonKey(name: "purpose_list") List<PurposeList>? get purposeList {
  final value = _purposeList;
  if (value == null) return null;
  if (_purposeList is EqualUnmodifiableListView) return _purposeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "app_transaction_reference") final  int? appTransactionReference;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._purposeList, _purposeList)&&(identical(other.appTransactionReference, appTransactionReference) || other.appTransactionReference == appTransactionReference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_purposeList),appTransactionReference);

@override
String toString() {
  return 'Data(purposeList: $purposeList, appTransactionReference: $appTransactionReference)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "purpose_list") List<PurposeList>? purposeList,@JsonKey(name: "app_transaction_reference") int? appTransactionReference
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
@override @pragma('vm:prefer-inline') $Res call({Object? purposeList = freezed,Object? appTransactionReference = freezed,}) {
  return _then(_Data(
purposeList: freezed == purposeList ? _self._purposeList : purposeList // ignore: cast_nullable_to_non_nullable
as List<PurposeList>?,appTransactionReference: freezed == appTransactionReference ? _self.appTransactionReference : appTransactionReference // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PurposeList {

@JsonKey(name: "code") String? get code;@JsonKey(name: "name") String? get name;@JsonKey(name: "is_default") bool? get isDefault;
/// Create a copy of PurposeList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurposeListCopyWith<PurposeList> get copyWith => _$PurposeListCopyWithImpl<PurposeList>(this as PurposeList, _$identity);

  /// Serializes this PurposeList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurposeList&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'PurposeList(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $PurposeListCopyWith<$Res>  {
  factory $PurposeListCopyWith(PurposeList value, $Res Function(PurposeList) _then) = _$PurposeListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class _$PurposeListCopyWithImpl<$Res>
    implements $PurposeListCopyWith<$Res> {
  _$PurposeListCopyWithImpl(this._self, this._then);

  final PurposeList _self;
  final $Res Function(PurposeList) _then;

/// Create a copy of PurposeList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? name = freezed,Object? isDefault = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [PurposeList].
extension PurposeListPatterns on PurposeList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurposeList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurposeList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurposeList value)  $default,){
final _that = this;
switch (_that) {
case _PurposeList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurposeList value)?  $default,){
final _that = this;
switch (_that) {
case _PurposeList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "name")  String? name, @JsonKey(name: "is_default")  bool? isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurposeList() when $default != null:
return $default(_that.code,_that.name,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "name")  String? name, @JsonKey(name: "is_default")  bool? isDefault)  $default,) {final _that = this;
switch (_that) {
case _PurposeList():
return $default(_that.code,_that.name,_that.isDefault);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "name")  String? name, @JsonKey(name: "is_default")  bool? isDefault)?  $default,) {final _that = this;
switch (_that) {
case _PurposeList() when $default != null:
return $default(_that.code,_that.name,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurposeList implements PurposeList {
  const _PurposeList({@JsonKey(name: "code") this.code, @JsonKey(name: "name") this.name, @JsonKey(name: "is_default") this.isDefault});
  factory _PurposeList.fromJson(Map<String, dynamic> json) => _$PurposeListFromJson(json);

@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "is_default") final  bool? isDefault;

/// Create a copy of PurposeList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurposeListCopyWith<_PurposeList> get copyWith => __$PurposeListCopyWithImpl<_PurposeList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurposeListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurposeList&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'PurposeList(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$PurposeListCopyWith<$Res> implements $PurposeListCopyWith<$Res> {
  factory _$PurposeListCopyWith(_PurposeList value, $Res Function(_PurposeList) _then) = __$PurposeListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class __$PurposeListCopyWithImpl<$Res>
    implements _$PurposeListCopyWith<$Res> {
  __$PurposeListCopyWithImpl(this._self, this._then);

  final _PurposeList _self;
  final $Res Function(_PurposeList) _then;

/// Create a copy of PurposeList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? isDefault = freezed,}) {
  return _then(_PurposeList(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
