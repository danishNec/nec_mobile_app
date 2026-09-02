// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_beneficiary_by_id_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SummaryBeneficiaryByIdDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "data") Data? get data;
/// Create a copy of SummaryBeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryBeneficiaryByIdDtoCopyWith<SummaryBeneficiaryByIdDto> get copyWith => _$SummaryBeneficiaryByIdDtoCopyWithImpl<SummaryBeneficiaryByIdDto>(this as SummaryBeneficiaryByIdDto, _$identity);

  /// Serializes this SummaryBeneficiaryByIdDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummaryBeneficiaryByIdDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SummaryBeneficiaryByIdDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $SummaryBeneficiaryByIdDtoCopyWith<$Res>  {
  factory $SummaryBeneficiaryByIdDtoCopyWith(SummaryBeneficiaryByIdDto value, $Res Function(SummaryBeneficiaryByIdDto) _then) = _$SummaryBeneficiaryByIdDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$SummaryBeneficiaryByIdDtoCopyWithImpl<$Res>
    implements $SummaryBeneficiaryByIdDtoCopyWith<$Res> {
  _$SummaryBeneficiaryByIdDtoCopyWithImpl(this._self, this._then);

  final SummaryBeneficiaryByIdDto _self;
  final $Res Function(SummaryBeneficiaryByIdDto) _then;

/// Create a copy of SummaryBeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of SummaryBeneficiaryByIdDto
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


/// Adds pattern-matching-related methods to [SummaryBeneficiaryByIdDto].
extension SummaryBeneficiaryByIdDtoPatterns on SummaryBeneficiaryByIdDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SummaryBeneficiaryByIdDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SummaryBeneficiaryByIdDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SummaryBeneficiaryByIdDto value)  $default,){
final _that = this;
switch (_that) {
case _SummaryBeneficiaryByIdDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SummaryBeneficiaryByIdDto value)?  $default,){
final _that = this;
switch (_that) {
case _SummaryBeneficiaryByIdDto() when $default != null:
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
case _SummaryBeneficiaryByIdDto() when $default != null:
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
case _SummaryBeneficiaryByIdDto():
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
case _SummaryBeneficiaryByIdDto() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SummaryBeneficiaryByIdDto implements SummaryBeneficiaryByIdDto {
  const _SummaryBeneficiaryByIdDto({@JsonKey(name: "success") this.success, @JsonKey(name: "data") this.data});
  factory _SummaryBeneficiaryByIdDto.fromJson(Map<String, dynamic> json) => _$SummaryBeneficiaryByIdDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "data") final  Data? data;

/// Create a copy of SummaryBeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryBeneficiaryByIdDtoCopyWith<_SummaryBeneficiaryByIdDto> get copyWith => __$SummaryBeneficiaryByIdDtoCopyWithImpl<_SummaryBeneficiaryByIdDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryBeneficiaryByIdDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SummaryBeneficiaryByIdDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'SummaryBeneficiaryByIdDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SummaryBeneficiaryByIdDtoCopyWith<$Res> implements $SummaryBeneficiaryByIdDtoCopyWith<$Res> {
  factory _$SummaryBeneficiaryByIdDtoCopyWith(_SummaryBeneficiaryByIdDto value, $Res Function(_SummaryBeneficiaryByIdDto) _then) = __$SummaryBeneficiaryByIdDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "data") Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$SummaryBeneficiaryByIdDtoCopyWithImpl<$Res>
    implements _$SummaryBeneficiaryByIdDtoCopyWith<$Res> {
  __$SummaryBeneficiaryByIdDtoCopyWithImpl(this._self, this._then);

  final _SummaryBeneficiaryByIdDto _self;
  final $Res Function(_SummaryBeneficiaryByIdDto) _then;

/// Create a copy of SummaryBeneficiaryByIdDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? data = freezed,}) {
  return _then(_SummaryBeneficiaryByIdDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of SummaryBeneficiaryByIdDto
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

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "beneficiary_first_name") String? get beneficiaryFirstName;@JsonKey(name: "beneficiary_middle_name") String? get beneficiaryMiddleName;@JsonKey(name: "beneficiary_last_name") String? get beneficiaryLastName;@JsonKey(name: "beneficiary_first_name_unicode") String? get beneficiaryFirstNameUnicode;@JsonKey(name: "beneficiary_middle_name_unicode") String? get beneficiaryMiddleNameUnicode;@JsonKey(name: "beneficiary_last_name_unicode") String? get beneficiaryLastNameUnicode;@JsonKey(name: "beneficiary_country_code") String? get beneficiaryCountryCode;@JsonKey(name: "beneficiary_country_name") String? get beneficiaryCountryName;@JsonKey(name: "beneficiary_nationality_code") String? get beneficiaryNationalityCode;@JsonKey(name: "beneficiary_nationality_name") String? get beneficiaryNationalityName;@JsonKey(name: "beneficiary_bank_code") String? get beneficiaryBankCode;@JsonKey(name: "beneficiary_bank_name") String? get beneficiaryBankName;@JsonKey(name: "beneficiary_branch_code") String? get beneficiaryBranchCode;@JsonKey(name: "beneficiary_branch_name") String? get beneficiaryBranchName;@JsonKey(name: "beneficiary_branch_address") String? get beneficiaryBranchAddress;@JsonKey(name: "beneficary_relation") String? get beneficaryRelation;@JsonKey(name: "beneficary_relation_name") String? get beneficaryRelationName;@JsonKey(name: "beneficiary_bank_account_number") String? get beneficiaryBankAccountNumber;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "disbursal_mode") String? get disbursalMode;@JsonKey(name: "currency_code") String? get currencyCode;@JsonKey(name: "income_source_name") String? get incomeSourceName;@JsonKey(name: "purpose_name") String? get purposeName;@JsonKey(name: "source_of_fund") String? get sourceOfFund;@JsonKey(name: "purpose_of_transaction") String? get purposeOfTransaction;@JsonKey(name: "service_code") String? get serviceCode;@JsonKey(name: "tran_list") List<TranList>? get tranList;
/// Create a copy of BeneficiaryById
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryByIdCopyWith<BeneficiaryById> get copyWith => _$BeneficiaryByIdCopyWithImpl<BeneficiaryById>(this as BeneficiaryById, _$identity);

  /// Serializes this BeneficiaryById to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryById&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryFirstNameUnicode, beneficiaryFirstNameUnicode) || other.beneficiaryFirstNameUnicode == beneficiaryFirstNameUnicode)&&(identical(other.beneficiaryMiddleNameUnicode, beneficiaryMiddleNameUnicode) || other.beneficiaryMiddleNameUnicode == beneficiaryMiddleNameUnicode)&&(identical(other.beneficiaryLastNameUnicode, beneficiaryLastNameUnicode) || other.beneficiaryLastNameUnicode == beneficiaryLastNameUnicode)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficiaryBranchAddress, beneficiaryBranchAddress) || other.beneficiaryBranchAddress == beneficiaryBranchAddress)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.serviceCode, serviceCode) || other.serviceCode == serviceCode)&&const DeepCollectionEquality().equals(other.tranList, tranList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName,beneficiaryFirstNameUnicode,beneficiaryMiddleNameUnicode,beneficiaryLastNameUnicode,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficiaryBranchAddress,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,productCode,productName,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,serviceCode,const DeepCollectionEquality().hash(tranList)]);

@override
String toString() {
  return 'BeneficiaryById(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName, beneficiaryFirstNameUnicode: $beneficiaryFirstNameUnicode, beneficiaryMiddleNameUnicode: $beneficiaryMiddleNameUnicode, beneficiaryLastNameUnicode: $beneficiaryLastNameUnicode, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficiaryBranchAddress: $beneficiaryBranchAddress, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, productCode: $productCode, productName: $productName, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, serviceCode: $serviceCode, tranList: $tranList)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryByIdCopyWith<$Res>  {
  factory $BeneficiaryByIdCopyWith(BeneficiaryById value, $Res Function(BeneficiaryById) _then) = _$BeneficiaryByIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_first_name_unicode") String? beneficiaryFirstNameUnicode,@JsonKey(name: "beneficiary_middle_name_unicode") String? beneficiaryMiddleNameUnicode,@JsonKey(name: "beneficiary_last_name_unicode") String? beneficiaryLastNameUnicode,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficiary_branch_address") String? beneficiaryBranchAddress,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "service_code") String? serviceCode,@JsonKey(name: "tran_list") List<TranList>? tranList
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
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryFirstNameUnicode = freezed,Object? beneficiaryMiddleNameUnicode = freezed,Object? beneficiaryLastNameUnicode = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficiaryBranchAddress = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? productCode = freezed,Object? productName = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? serviceCode = freezed,Object? tranList = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstNameUnicode: freezed == beneficiaryFirstNameUnicode ? _self.beneficiaryFirstNameUnicode : beneficiaryFirstNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleNameUnicode: freezed == beneficiaryMiddleNameUnicode ? _self.beneficiaryMiddleNameUnicode : beneficiaryMiddleNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastNameUnicode: freezed == beneficiaryLastNameUnicode ? _self.beneficiaryLastNameUnicode : beneficiaryLastNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchName: freezed == beneficiaryBranchName ? _self.beneficiaryBranchName : beneficiaryBranchName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchAddress: freezed == beneficiaryBranchAddress ? _self.beneficiaryBranchAddress : beneficiaryBranchAddress // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,serviceCode: freezed == serviceCode ? _self.serviceCode : serviceCode // ignore: cast_nullable_to_non_nullable
as String?,tranList: freezed == tranList ? _self.tranList : tranList // ignore: cast_nullable_to_non_nullable
as List<TranList>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address")  String? beneficiaryBranchAddress, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "service_code")  String? serviceCode, @JsonKey(name: "tran_list")  List<TranList>? tranList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficiaryBranchAddress,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.productCode,_that.productName,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.serviceCode,_that.tranList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address")  String? beneficiaryBranchAddress, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "service_code")  String? serviceCode, @JsonKey(name: "tran_list")  List<TranList>? tranList)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryById():
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficiaryBranchAddress,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.productCode,_that.productName,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.serviceCode,_that.tranList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name")  String? beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode")  String? beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode")  String? beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode")  String? beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address")  String? beneficiaryBranchAddress, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "service_code")  String? serviceCode, @JsonKey(name: "tran_list")  List<TranList>? tranList)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryById() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryFirstName,_that.beneficiaryMiddleName,_that.beneficiaryLastName,_that.beneficiaryFirstNameUnicode,_that.beneficiaryMiddleNameUnicode,_that.beneficiaryLastNameUnicode,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficiaryBranchAddress,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.productCode,_that.productName,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.serviceCode,_that.tranList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryById implements BeneficiaryById {
  const _BeneficiaryById({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "beneficiary_first_name") this.beneficiaryFirstName, @JsonKey(name: "beneficiary_middle_name") this.beneficiaryMiddleName, @JsonKey(name: "beneficiary_last_name") this.beneficiaryLastName, @JsonKey(name: "beneficiary_first_name_unicode") this.beneficiaryFirstNameUnicode, @JsonKey(name: "beneficiary_middle_name_unicode") this.beneficiaryMiddleNameUnicode, @JsonKey(name: "beneficiary_last_name_unicode") this.beneficiaryLastNameUnicode, @JsonKey(name: "beneficiary_country_code") this.beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name") this.beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code") this.beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name") this.beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code") this.beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name") this.beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code") this.beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name") this.beneficiaryBranchName, @JsonKey(name: "beneficiary_branch_address") this.beneficiaryBranchAddress, @JsonKey(name: "beneficary_relation") this.beneficaryRelation, @JsonKey(name: "beneficary_relation_name") this.beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number") this.beneficiaryBankAccountNumber, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "disbursal_mode") this.disbursalMode, @JsonKey(name: "currency_code") this.currencyCode, @JsonKey(name: "income_source_name") this.incomeSourceName, @JsonKey(name: "purpose_name") this.purposeName, @JsonKey(name: "source_of_fund") this.sourceOfFund, @JsonKey(name: "purpose_of_transaction") this.purposeOfTransaction, @JsonKey(name: "service_code") this.serviceCode, @JsonKey(name: "tran_list") final  List<TranList>? tranList}): _tranList = tranList;
  factory _BeneficiaryById.fromJson(Map<String, dynamic> json) => _$BeneficiaryByIdFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "beneficiary_first_name") final  String? beneficiaryFirstName;
@override@JsonKey(name: "beneficiary_middle_name") final  String? beneficiaryMiddleName;
@override@JsonKey(name: "beneficiary_last_name") final  String? beneficiaryLastName;
@override@JsonKey(name: "beneficiary_first_name_unicode") final  String? beneficiaryFirstNameUnicode;
@override@JsonKey(name: "beneficiary_middle_name_unicode") final  String? beneficiaryMiddleNameUnicode;
@override@JsonKey(name: "beneficiary_last_name_unicode") final  String? beneficiaryLastNameUnicode;
@override@JsonKey(name: "beneficiary_country_code") final  String? beneficiaryCountryCode;
@override@JsonKey(name: "beneficiary_country_name") final  String? beneficiaryCountryName;
@override@JsonKey(name: "beneficiary_nationality_code") final  String? beneficiaryNationalityCode;
@override@JsonKey(name: "beneficiary_nationality_name") final  String? beneficiaryNationalityName;
@override@JsonKey(name: "beneficiary_bank_code") final  String? beneficiaryBankCode;
@override@JsonKey(name: "beneficiary_bank_name") final  String? beneficiaryBankName;
@override@JsonKey(name: "beneficiary_branch_code") final  String? beneficiaryBranchCode;
@override@JsonKey(name: "beneficiary_branch_name") final  String? beneficiaryBranchName;
@override@JsonKey(name: "beneficiary_branch_address") final  String? beneficiaryBranchAddress;
@override@JsonKey(name: "beneficary_relation") final  String? beneficaryRelation;
@override@JsonKey(name: "beneficary_relation_name") final  String? beneficaryRelationName;
@override@JsonKey(name: "beneficiary_bank_account_number") final  String? beneficiaryBankAccountNumber;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "disbursal_mode") final  String? disbursalMode;
@override@JsonKey(name: "currency_code") final  String? currencyCode;
@override@JsonKey(name: "income_source_name") final  String? incomeSourceName;
@override@JsonKey(name: "purpose_name") final  String? purposeName;
@override@JsonKey(name: "source_of_fund") final  String? sourceOfFund;
@override@JsonKey(name: "purpose_of_transaction") final  String? purposeOfTransaction;
@override@JsonKey(name: "service_code") final  String? serviceCode;
 final  List<TranList>? _tranList;
@override@JsonKey(name: "tran_list") List<TranList>? get tranList {
  final value = _tranList;
  if (value == null) return null;
  if (_tranList is EqualUnmodifiableListView) return _tranList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryById&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryMiddleName, beneficiaryMiddleName) || other.beneficiaryMiddleName == beneficiaryMiddleName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryFirstNameUnicode, beneficiaryFirstNameUnicode) || other.beneficiaryFirstNameUnicode == beneficiaryFirstNameUnicode)&&(identical(other.beneficiaryMiddleNameUnicode, beneficiaryMiddleNameUnicode) || other.beneficiaryMiddleNameUnicode == beneficiaryMiddleNameUnicode)&&(identical(other.beneficiaryLastNameUnicode, beneficiaryLastNameUnicode) || other.beneficiaryLastNameUnicode == beneficiaryLastNameUnicode)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficiaryBranchAddress, beneficiaryBranchAddress) || other.beneficiaryBranchAddress == beneficiaryBranchAddress)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.serviceCode, serviceCode) || other.serviceCode == serviceCode)&&const DeepCollectionEquality().equals(other._tranList, _tranList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryFirstName,beneficiaryMiddleName,beneficiaryLastName,beneficiaryFirstNameUnicode,beneficiaryMiddleNameUnicode,beneficiaryLastNameUnicode,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficiaryBranchAddress,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,productCode,productName,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,serviceCode,const DeepCollectionEquality().hash(_tranList)]);

@override
String toString() {
  return 'BeneficiaryById(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryMiddleName: $beneficiaryMiddleName, beneficiaryLastName: $beneficiaryLastName, beneficiaryFirstNameUnicode: $beneficiaryFirstNameUnicode, beneficiaryMiddleNameUnicode: $beneficiaryMiddleNameUnicode, beneficiaryLastNameUnicode: $beneficiaryLastNameUnicode, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficiaryBranchAddress: $beneficiaryBranchAddress, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, productCode: $productCode, productName: $productName, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, serviceCode: $serviceCode, tranList: $tranList)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryByIdCopyWith<$Res> implements $BeneficiaryByIdCopyWith<$Res> {
  factory _$BeneficiaryByIdCopyWith(_BeneficiaryById value, $Res Function(_BeneficiaryById) _then) = __$BeneficiaryByIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_middle_name") String? beneficiaryMiddleName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_first_name_unicode") String? beneficiaryFirstNameUnicode,@JsonKey(name: "beneficiary_middle_name_unicode") String? beneficiaryMiddleNameUnicode,@JsonKey(name: "beneficiary_last_name_unicode") String? beneficiaryLastNameUnicode,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficiary_branch_address") String? beneficiaryBranchAddress,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "service_code") String? serviceCode,@JsonKey(name: "tran_list") List<TranList>? tranList
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
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryMiddleName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryFirstNameUnicode = freezed,Object? beneficiaryMiddleNameUnicode = freezed,Object? beneficiaryLastNameUnicode = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficiaryBranchAddress = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? productCode = freezed,Object? productName = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? serviceCode = freezed,Object? tranList = freezed,}) {
  return _then(_BeneficiaryById(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleName: freezed == beneficiaryMiddleName ? _self.beneficiaryMiddleName : beneficiaryMiddleName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstNameUnicode: freezed == beneficiaryFirstNameUnicode ? _self.beneficiaryFirstNameUnicode : beneficiaryFirstNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryMiddleNameUnicode: freezed == beneficiaryMiddleNameUnicode ? _self.beneficiaryMiddleNameUnicode : beneficiaryMiddleNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastNameUnicode: freezed == beneficiaryLastNameUnicode ? _self.beneficiaryLastNameUnicode : beneficiaryLastNameUnicode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryCode: freezed == beneficiaryCountryCode ? _self.beneficiaryCountryCode : beneficiaryCountryCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCountryName: freezed == beneficiaryCountryName ? _self.beneficiaryCountryName : beneficiaryCountryName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityCode: freezed == beneficiaryNationalityCode ? _self.beneficiaryNationalityCode : beneficiaryNationalityCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryNationalityName: freezed == beneficiaryNationalityName ? _self.beneficiaryNationalityName : beneficiaryNationalityName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankCode: freezed == beneficiaryBankCode ? _self.beneficiaryBankCode : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankName: freezed == beneficiaryBankName ? _self.beneficiaryBankName : beneficiaryBankName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchCode: freezed == beneficiaryBranchCode ? _self.beneficiaryBranchCode : beneficiaryBranchCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchName: freezed == beneficiaryBranchName ? _self.beneficiaryBranchName : beneficiaryBranchName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBranchAddress: freezed == beneficiaryBranchAddress ? _self.beneficiaryBranchAddress : beneficiaryBranchAddress // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelation: freezed == beneficaryRelation ? _self.beneficaryRelation : beneficaryRelation // ignore: cast_nullable_to_non_nullable
as String?,beneficaryRelationName: freezed == beneficaryRelationName ? _self.beneficaryRelationName : beneficaryRelationName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,serviceCode: freezed == serviceCode ? _self.serviceCode : serviceCode // ignore: cast_nullable_to_non_nullable
as String?,tranList: freezed == tranList ? _self._tranList : tranList // ignore: cast_nullable_to_non_nullable
as List<TranList>?,
  ));
}


}


/// @nodoc
mixin _$TranList {

@JsonKey(name: "payment_mode") String? get paymentModeName;@JsonKey(name: "payment_mode_code") String? get paymentModeCode;
/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranListCopyWith<TranList> get copyWith => _$TranListCopyWithImpl<TranList>(this as TranList, _$identity);

  /// Serializes this TranList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranList&&(identical(other.paymentModeName, paymentModeName) || other.paymentModeName == paymentModeName)&&(identical(other.paymentModeCode, paymentModeCode) || other.paymentModeCode == paymentModeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentModeName,paymentModeCode);

@override
String toString() {
  return 'TranList(paymentModeName: $paymentModeName, paymentModeCode: $paymentModeCode)';
}


}

/// @nodoc
abstract mixin class $TranListCopyWith<$Res>  {
  factory $TranListCopyWith(TranList value, $Res Function(TranList) _then) = _$TranListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "payment_mode") String? paymentModeName,@JsonKey(name: "payment_mode_code") String? paymentModeCode
});




}
/// @nodoc
class _$TranListCopyWithImpl<$Res>
    implements $TranListCopyWith<$Res> {
  _$TranListCopyWithImpl(this._self, this._then);

  final TranList _self;
  final $Res Function(TranList) _then;

/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentModeName = freezed,Object? paymentModeCode = freezed,}) {
  return _then(_self.copyWith(
paymentModeName: freezed == paymentModeName ? _self.paymentModeName : paymentModeName // ignore: cast_nullable_to_non_nullable
as String?,paymentModeCode: freezed == paymentModeCode ? _self.paymentModeCode : paymentModeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TranList].
extension TranListPatterns on TranList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranList value)  $default,){
final _that = this;
switch (_that) {
case _TranList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranList value)?  $default,){
final _that = this;
switch (_that) {
case _TranList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "payment_mode")  String? paymentModeName, @JsonKey(name: "payment_mode_code")  String? paymentModeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranList() when $default != null:
return $default(_that.paymentModeName,_that.paymentModeCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "payment_mode")  String? paymentModeName, @JsonKey(name: "payment_mode_code")  String? paymentModeCode)  $default,) {final _that = this;
switch (_that) {
case _TranList():
return $default(_that.paymentModeName,_that.paymentModeCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "payment_mode")  String? paymentModeName, @JsonKey(name: "payment_mode_code")  String? paymentModeCode)?  $default,) {final _that = this;
switch (_that) {
case _TranList() when $default != null:
return $default(_that.paymentModeName,_that.paymentModeCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranList implements TranList {
  const _TranList({@JsonKey(name: "payment_mode") this.paymentModeName, @JsonKey(name: "payment_mode_code") this.paymentModeCode});
  factory _TranList.fromJson(Map<String, dynamic> json) => _$TranListFromJson(json);

@override@JsonKey(name: "payment_mode") final  String? paymentModeName;
@override@JsonKey(name: "payment_mode_code") final  String? paymentModeCode;

/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranListCopyWith<_TranList> get copyWith => __$TranListCopyWithImpl<_TranList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranList&&(identical(other.paymentModeName, paymentModeName) || other.paymentModeName == paymentModeName)&&(identical(other.paymentModeCode, paymentModeCode) || other.paymentModeCode == paymentModeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentModeName,paymentModeCode);

@override
String toString() {
  return 'TranList(paymentModeName: $paymentModeName, paymentModeCode: $paymentModeCode)';
}


}

/// @nodoc
abstract mixin class _$TranListCopyWith<$Res> implements $TranListCopyWith<$Res> {
  factory _$TranListCopyWith(_TranList value, $Res Function(_TranList) _then) = __$TranListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "payment_mode") String? paymentModeName,@JsonKey(name: "payment_mode_code") String? paymentModeCode
});




}
/// @nodoc
class __$TranListCopyWithImpl<$Res>
    implements _$TranListCopyWith<$Res> {
  __$TranListCopyWithImpl(this._self, this._then);

  final _TranList _self;
  final $Res Function(_TranList) _then;

/// Create a copy of TranList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentModeName = freezed,Object? paymentModeCode = freezed,}) {
  return _then(_TranList(
paymentModeName: freezed == paymentModeName ? _self.paymentModeName : paymentModeName // ignore: cast_nullable_to_non_nullable
as String?,paymentModeCode: freezed == paymentModeCode ? _self.paymentModeCode : paymentModeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
