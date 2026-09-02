// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_by_id_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryByIdDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "data") Data? get data;
/// Create a copy of BeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryByIdDtoCopyWith<BeneficiaryByIdDto> get copyWith => _$BeneficiaryByIdDtoCopyWithImpl<BeneficiaryByIdDto>(this as BeneficiaryByIdDto, _$identity);

  /// Serializes this BeneficiaryByIdDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryByIdDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'BeneficiaryByIdDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryByIdDtoCopyWith<$Res>  {
  factory $BeneficiaryByIdDtoCopyWith(BeneficiaryByIdDto value, $Res Function(BeneficiaryByIdDto) _then) = _$BeneficiaryByIdDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryByIdDtoCopyWithImpl<$Res>
    implements $BeneficiaryByIdDtoCopyWith<$Res> {
  _$BeneficiaryByIdDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryByIdDto _self;
  final $Res Function(BeneficiaryByIdDto) _then;

/// Create a copy of BeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of BeneficiaryByIdDto
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


/// Adds pattern-matching-related methods to [BeneficiaryByIdDto].
extension BeneficiaryByIdDtoPatterns on BeneficiaryByIdDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryByIdDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryByIdDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryByIdDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryByIdDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryByIdDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryByIdDto() when $default != null:
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
case _BeneficiaryByIdDto() when $default != null:
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
case _BeneficiaryByIdDto():
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
case _BeneficiaryByIdDto() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryByIdDto implements BeneficiaryByIdDto {
  const _BeneficiaryByIdDto({@JsonKey(name: "success") this.success, @JsonKey(name: "data") this.data});
  factory _BeneficiaryByIdDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryByIdDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of BeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryByIdDtoCopyWith<_BeneficiaryByIdDto> get copyWith => __$BeneficiaryByIdDtoCopyWithImpl<_BeneficiaryByIdDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryByIdDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryByIdDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'BeneficiaryByIdDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryByIdDtoCopyWith<$Res> implements $BeneficiaryByIdDtoCopyWith<$Res> {
  factory _$BeneficiaryByIdDtoCopyWith(_BeneficiaryByIdDto value, $Res Function(_BeneficiaryByIdDto) _then) = __$BeneficiaryByIdDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryByIdDtoCopyWithImpl<$Res>
    implements _$BeneficiaryByIdDtoCopyWith<$Res> {
  __$BeneficiaryByIdDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryByIdDto _self;
  final $Res Function(_BeneficiaryByIdDto) _then;

/// Create a copy of BeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_BeneficiaryByIdDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of BeneficiaryByIdDto
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

@JsonKey(name: "beneficiary_by_id") BeneficiaryById? get beneficiaryById;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.beneficiaryById, beneficiaryById) || other.beneficiaryById == beneficiaryById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beneficiaryById);

@override
String toString() {
  return 'Data(beneficiaryById: $beneficiaryById)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "beneficiary_by_id") BeneficiaryById? beneficiaryById
});


$BeneficiaryByIdCopyWith<$Res>? get beneficiaryById;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiaryById = freezed,}) {
  return _then(_self.copyWith(
beneficiaryById: freezed == beneficiaryById ? _self.beneficiaryById : beneficiaryById // ignore: cast_nullable_to_non_nullable
as BeneficiaryById?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryByIdCopyWith<$Res>? get beneficiaryById {
    if (_self.beneficiaryById == null) {
    return null;
  }

  return $BeneficiaryByIdCopyWith<$Res>(_self.beneficiaryById!, (value) {
    return _then(_self.copyWith(beneficiaryById: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_by_id")  BeneficiaryById? beneficiaryById)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryById);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_by_id")  BeneficiaryById? beneficiaryById)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.beneficiaryById);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary_by_id")  BeneficiaryById? beneficiaryById)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryById);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "beneficiary_by_id") this.beneficiaryById});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "beneficiary_by_id") final  BeneficiaryById? beneficiaryById;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.beneficiaryById, beneficiaryById) || other.beneficiaryById == beneficiaryById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beneficiaryById);

@override
String toString() {
  return 'Data(beneficiaryById: $beneficiaryById)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "beneficiary_by_id") BeneficiaryById? beneficiaryById
});


@override $BeneficiaryByIdCopyWith<$Res>? get beneficiaryById;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiaryById = freezed,}) {
  return _then(_Data(
beneficiaryById: freezed == beneficiaryById ? _self.beneficiaryById : beneficiaryById // ignore: cast_nullable_to_non_nullable
as BeneficiaryById?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeneficiaryByIdCopyWith<$Res>? get beneficiaryById {
    if (_self.beneficiaryById == null) {
    return null;
  }

  return $BeneficiaryByIdCopyWith<$Res>(_self.beneficiaryById!, (value) {
    return _then(_self.copyWith(beneficiaryById: value));
  });
}
}


/// @nodoc
mixin _$BeneficiaryById {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "beneficiary_gender") String? get beneficiaryGender;@JsonKey(name: "beneficiary_first_name") String? get beneficiaryFirstName;@JsonKey(name: "beneficiary_last_name") String? get beneficiaryLastName;@JsonKey(name: "beneficiary_mobile") String? get beneficiaryMobile;@JsonKey(name: "beneficiary_country_code") String? get beneficiaryCountryCode;@JsonKey(name: "beneficiary_country_name") String? get beneficiaryCountryName;@JsonKey(name: "beneficiary_nationality_code") String? get beneficiaryNationalityCode;@JsonKey(name: "beneficiary_nationality_name") String? get beneficiaryNationalityName;@JsonKey(name: "beneficiary_bank_code") String? get beneficiaryBankCode;@JsonKey(name: "beneficiary_bank_name") String? get beneficiaryBankName;@JsonKey(name: "beneficiary_branch_code") String? get beneficiaryBranchCode;@JsonKey(name: "beneficiary_branch_name") String? get beneficiaryBranchName;@JsonKey(name: "beneficary_relation") String? get beneficaryRelation;@JsonKey(name: "beneficary_relation_name") String? get beneficaryRelationName;@JsonKey(name: "route_code") String? get routeCode;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "status") String? get status;@JsonKey(name: "disbursal_mode_id") int? get disbursalModeId;@JsonKey(name: "disbursal_mode") String? get disbursalMode;@JsonKey(name: "currency_code") String? get currencyCode;@JsonKey(name: "income_source_name") String? get incomeSourceName;@JsonKey(name: "purpose_name") String? get purposeName;@JsonKey(name: "source_of_fund") String? get sourceOfFund;@JsonKey(name: "purpose_of_transaction") String? get purposeOfTransaction;
/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryByIdCopyWith<BeneficiaryById> get copyWith => _$BeneficiaryByIdCopyWithImpl<BeneficiaryById>(this as BeneficiaryById, _$identity);

  /// Serializes this BeneficiaryById to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryById&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryMobile, beneficiaryMobile) || other.beneficiaryMobile == beneficiaryMobile)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryGender,beneficiaryFirstName,beneficiaryLastName,beneficiaryMobile,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficaryRelation,beneficaryRelationName,routeCode,productCode,status,disbursalModeId,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction]);

@override
String toString() {
  return 'BeneficiaryById(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryGender: $beneficiaryGender, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryLastName: $beneficiaryLastName, beneficiaryMobile: $beneficiaryMobile, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, routeCode: $routeCode, productCode: $productCode, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryByIdCopyWith<$Res>  {
  factory $BeneficiaryByIdCopyWith(BeneficiaryById value, $Res Function(BeneficiaryById) _then) = _$BeneficiaryByIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_mobile") String? beneficiaryMobile,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction
});




}
/// @nodoc
class _$BeneficiaryByIdCopyWithImpl<$Res>
    implements $BeneficiaryByIdCopyWith<$Res> {
  _$BeneficiaryByIdCopyWithImpl(this._self, this._then);

  final BeneficiaryById _self;
  final $Res Function(BeneficiaryById) _then;

/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryMobile = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? routeCode = freezed,Object? productCode = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMobile: freezed == beneficiaryMobile ? _self.beneficiaryMobile : beneficiaryMobile // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchName: freezed == beneficiaryBranchName ? _self.beneficiaryBranchName : beneficiaryBranchName // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryById].
extension BeneficiaryByIdPatterns on BeneficiaryById {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryById value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryById value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryById():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryById value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryMobile,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficaryRelation,_that.beneficaryRelationName,_that.routeCode,_that.productCode,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryById():
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryMobile,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficaryRelation,_that.beneficaryRelationName,_that.routeCode,_that.productCode,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryMobile,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficaryRelation,_that.beneficaryRelationName,_that.routeCode,_that.productCode,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryById implements BeneficiaryById {
  const _BeneficiaryById({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "beneficiary_gender") this.beneficiaryGender, @JsonKey(name: "beneficiary_first_name") this.beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name") this.beneficiaryLastName, @JsonKey(name: "beneficiary_mobile") this.beneficiaryMobile, @JsonKey(name: "beneficiary_country_code") this.beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name") this.beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code") this.beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name") this.beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code") this.beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name") this.beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code") this.beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name") this.beneficiaryBranchName, @JsonKey(name: "beneficary_relation") this.beneficaryRelation, @JsonKey(name: "beneficary_relation_name") this.beneficaryRelationName, @JsonKey(name: "route_code") this.routeCode, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "status") this.status, @JsonKey(name: "disbursal_mode_id") this.disbursalModeId, @JsonKey(name: "disbursal_mode") this.disbursalMode, @JsonKey(name: "currency_code") this.currencyCode, @JsonKey(name: "income_source_name") this.incomeSourceName, @JsonKey(name: "purpose_name") this.purposeName, @JsonKey(name: "source_of_fund") this.sourceOfFund, @JsonKey(name: "purpose_of_transaction") this.purposeOfTransaction});
  factory _BeneficiaryById.fromJson(Map<String, dynamic> json) => _$BeneficiaryByIdFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "beneficiary_gender") final  String? beneficiaryGender;
@override@JsonKey(name: "beneficiary_first_name") final  String? beneficiaryFirstName;
@override@JsonKey(name: "beneficiary_last_name") final  String? beneficiaryLastName;
@override@JsonKey(name: "beneficiary_mobile") final  String? beneficiaryMobile;
@override@JsonKey(name: "beneficiary_country_code") final  String? beneficiaryCountryCode;
@override@JsonKey(name: "beneficiary_country_name") final  String? beneficiaryCountryName;
@override@JsonKey(name: "beneficiary_nationality_code") final  String? beneficiaryNationalityCode;
@override@JsonKey(name: "beneficiary_nationality_name") final  String? beneficiaryNationalityName;
@override@JsonKey(name: "beneficiary_bank_code") final  String? beneficiaryBankCode;
@override@JsonKey(name: "beneficiary_bank_name") final  String? beneficiaryBankName;
@override@JsonKey(name: "beneficiary_branch_code") final  String? beneficiaryBranchCode;
@override@JsonKey(name: "beneficiary_branch_name") final  String? beneficiaryBranchName;
@override@JsonKey(name: "beneficary_relation") final  String? beneficaryRelation;
@override@JsonKey(name: "beneficary_relation_name") final  String? beneficaryRelationName;
@override@JsonKey(name: "route_code") final  String? routeCode;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "disbursal_mode_id") final  int? disbursalModeId;
@override@JsonKey(name: "disbursal_mode") final  String? disbursalMode;
@override@JsonKey(name: "currency_code") final  String? currencyCode;
@override@JsonKey(name: "income_source_name") final  String? incomeSourceName;
@override@JsonKey(name: "purpose_name") final  String? purposeName;
@override@JsonKey(name: "source_of_fund") final  String? sourceOfFund;
@override@JsonKey(name: "purpose_of_transaction") final  String? purposeOfTransaction;

/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryByIdCopyWith<_BeneficiaryById> get copyWith => __$BeneficiaryByIdCopyWithImpl<_BeneficiaryById>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryByIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryById&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryMobile, beneficiaryMobile) || other.beneficiaryMobile == beneficiaryMobile)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryGender,beneficiaryFirstName,beneficiaryLastName,beneficiaryMobile,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficaryRelation,beneficaryRelationName,routeCode,productCode,status,disbursalModeId,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction]);

@override
String toString() {
  return 'BeneficiaryById(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryGender: $beneficiaryGender, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryLastName: $beneficiaryLastName, beneficiaryMobile: $beneficiaryMobile, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, routeCode: $routeCode, productCode: $productCode, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryByIdCopyWith<$Res> implements $BeneficiaryByIdCopyWith<$Res> {
  factory _$BeneficiaryByIdCopyWith(_BeneficiaryById value, $Res Function(_BeneficiaryById) _then) = __$BeneficiaryByIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_mobile") String? beneficiaryMobile,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction
});




}
/// @nodoc
class __$BeneficiaryByIdCopyWithImpl<$Res>
    implements _$BeneficiaryByIdCopyWith<$Res> {
  __$BeneficiaryByIdCopyWithImpl(this._self, this._then);

  final _BeneficiaryById _self;
  final $Res Function(_BeneficiaryById) _then;

/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryMobile = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? routeCode = freezed,Object? productCode = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,}) {
  return _then(_BeneficiaryById(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMobile: freezed == beneficiaryMobile ? _self.beneficiaryMobile : beneficiaryMobile // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchName: freezed == beneficiaryBranchName ? _self.beneficiaryBranchName : beneficiaryBranchName // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
