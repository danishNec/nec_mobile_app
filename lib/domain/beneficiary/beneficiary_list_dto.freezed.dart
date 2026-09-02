// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryListDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "message") String? get message;@JsonKey(name: "data") Data? get data; String? get version;
/// Create a copy of BeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryListDtoCopyWith<BeneficiaryListDto> get copyWith => _$BeneficiaryListDtoCopyWithImpl<BeneficiaryListDto>(this as BeneficiaryListDto, _$identity);

  /// Serializes this BeneficiaryListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,version);

@override
String toString() {
  return 'BeneficiaryListDto(success: $success, message: $message, data: $data, version: $version)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryListDtoCopyWith<$Res>  {
  factory $BeneficiaryListDtoCopyWith(BeneficiaryListDto value, $Res Function(BeneficiaryListDto) _then) = _$BeneficiaryListDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data, String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryListDtoCopyWithImpl<$Res>
    implements $BeneficiaryListDtoCopyWith<$Res> {
  _$BeneficiaryListDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryListDto _self;
  final $Res Function(BeneficiaryListDto) _then;

/// Create a copy of BeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BeneficiaryListDto
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


/// Adds pattern-matching-related methods to [BeneficiaryListDto].
extension BeneficiaryListDtoPatterns on BeneficiaryListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryListDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryListDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data,  String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryListDto() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data,  String? version)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryListDto():
return $default(_that.success,_that.message,_that.data,_that.version);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  String? success, @JsonKey(name: "message")  String? message, @JsonKey(name: "data")  Data? data,  String? version)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryListDto() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryListDto implements BeneficiaryListDto {
  const _BeneficiaryListDto({@JsonKey(name: "success") this.success, @JsonKey(name: "message") this.message, @JsonKey(name: "data") this.data, this.version});
  factory _BeneficiaryListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryListDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "data") final  Data? data;
@override final  String? version;

/// Create a copy of BeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryListDtoCopyWith<_BeneficiaryListDto> get copyWith => __$BeneficiaryListDtoCopyWithImpl<_BeneficiaryListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,version);

@override
String toString() {
  return 'BeneficiaryListDto(success: $success, message: $message, data: $data, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryListDtoCopyWith<$Res> implements $BeneficiaryListDtoCopyWith<$Res> {
  factory _$BeneficiaryListDtoCopyWith(_BeneficiaryListDto value, $Res Function(_BeneficiaryListDto) _then) = __$BeneficiaryListDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "message") String? message,@JsonKey(name: "data") Data? data, String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryListDtoCopyWithImpl<$Res>
    implements _$BeneficiaryListDtoCopyWith<$Res> {
  __$BeneficiaryListDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryListDto _self;
  final $Res Function(_BeneficiaryListDto) _then;

/// Create a copy of BeneficiaryListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? data = freezed,Object? version = freezed,}) {
  return _then(_BeneficiaryListDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeneficiaryListDto
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

@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? get beneficiaryList;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.beneficiaryList, beneficiaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(beneficiaryList));

@override
String toString() {
  return 'Data(beneficiaryList: $beneficiaryList)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? beneficiaryList
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
@pragma('vm:prefer-inline') @override $Res call({Object? beneficiaryList = freezed,}) {
  return _then(_self.copyWith(
beneficiaryList: freezed == beneficiaryList ? _self.beneficiaryList : beneficiaryList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryList>?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.beneficiaryList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "beneficiary_list")  List<BeneficiaryList>? beneficiaryList)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.beneficiaryList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "beneficiary_list") final  List<BeneficiaryList>? beneficiaryList}): _beneficiaryList = beneficiaryList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<BeneficiaryList>? _beneficiaryList;
@override@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? get beneficiaryList {
  final value = _beneficiaryList;
  if (value == null) return null;
  if (_beneficiaryList is EqualUnmodifiableListView) return _beneficiaryList;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._beneficiaryList, _beneficiaryList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_beneficiaryList));

@override
String toString() {
  return 'Data(beneficiaryList: $beneficiaryList)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "beneficiary_list") List<BeneficiaryList>? beneficiaryList
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
@override @pragma('vm:prefer-inline') $Res call({Object? beneficiaryList = freezed,}) {
  return _then(_Data(
beneficiaryList: freezed == beneficiaryList ? _self._beneficiaryList : beneficiaryList // ignore: cast_nullable_to_non_nullable
as List<BeneficiaryList>?,
  ));
}


}


/// @nodoc
mixin _$BeneficiaryList {

@JsonKey(name: "e_id") String? get eId;@JsonKey(name: "beneficiary_code") int? get beneficiaryCode;@JsonKey(name: "beneficiary_gender") String? get beneficiaryGender;@JsonKey(name: "beneficiary_first_name") String? get beneficiaryFirstName;@JsonKey(name: "beneficiary_last_name") String? get beneficiaryLastName;@JsonKey(name: "beneficiary_phone") String? get beneficiaryPhone;@JsonKey(name: "beneficiary_mobile") String? get beneficiaryMobile;@JsonKey(name: "beneficiary_country_code") String? get beneficiaryCountryCode;@JsonKey(name: "beneficiary_country_name") String? get beneficiaryCountryName;@JsonKey(name: "beneficiary_nationality_code") String? get beneficiaryNationalityCode;@JsonKey(name: "beneficiary_nationality_name") String? get beneficiaryNationalityName;@JsonKey(name: "beneficiary_bank_code") String? get beneficiaryBankCode;@JsonKey(name: "beneficiary_bank_name") String? get beneficiaryBankName;@JsonKey(name: "beneficiary_branch_code") String? get beneficiaryBranchCode;@JsonKey(name: "beneficiary_branch_name") String? get beneficiaryBranchName;@JsonKey(name: "beneficary_relation") String? get beneficaryRelation;@JsonKey(name: "beneficary_relation_name") String? get beneficaryRelationName;@JsonKey(name: "beneficiary_bank_account_number") String? get beneficiaryBankAccountNumber;@JsonKey(name: "product_code") int? get productCode;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "currency_name") String? get currencyName;@JsonKey(name: "status") String? get status;@JsonKey(name: "disbursal_mode_id") int? get disbursalModeId;@JsonKey(name: "disbursal_mode") String? get disbursalMode;@JsonKey(name: "currency_code") String? get currencyCode;@JsonKey(name: "income_source_name") String? get incomeSourceName;@JsonKey(name: "purpose_name") String? get purposeName;@JsonKey(name: "source_of_fund") String? get sourceOfFund;@JsonKey(name: "purpose_of_transaction") String? get purposeOfTransaction;@JsonKey(name: "flag_url") String? get flagUrl;@JsonKey(name: "beneficiary_idtype_name") String? get beneficiaryIdtypeName;@JsonKey(name: "beneficiary_idtype_code") String? get beneficiaryIdtypeCode;@JsonKey(name: "beneficiary_idtype_no") String? get beneficiaryIdtypeNo;@JsonKey(name: "route_code") String? get routeCode;@JsonKey(name: "other_info") String? get otherInfo;@JsonKey(name: "ben_father_name") String? get beneficiaryFatherName;@JsonKey(name: "beneficiary_bank_account_type") String? get beneficiaryBankAccountType;@JsonKey(name: "beneficiary_bank_account_type_code") String? get beneficiaryBankAccountTypeCode;
/// Create a copy of BeneficiaryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryListCopyWith<BeneficiaryList> get copyWith => _$BeneficiaryListCopyWithImpl<BeneficiaryList>(this as BeneficiaryList, _$identity);

  /// Serializes this BeneficiaryList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryPhone, beneficiaryPhone) || other.beneficiaryPhone == beneficiaryPhone)&&(identical(other.beneficiaryMobile, beneficiaryMobile) || other.beneficiaryMobile == beneficiaryMobile)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.currencyName, currencyName) || other.currencyName == currencyName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.beneficiaryIdtypeName, beneficiaryIdtypeName) || other.beneficiaryIdtypeName == beneficiaryIdtypeName)&&(identical(other.beneficiaryIdtypeCode, beneficiaryIdtypeCode) || other.beneficiaryIdtypeCode == beneficiaryIdtypeCode)&&(identical(other.beneficiaryIdtypeNo, beneficiaryIdtypeNo) || other.beneficiaryIdtypeNo == beneficiaryIdtypeNo)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.otherInfo, otherInfo) || other.otherInfo == otherInfo)&&(identical(other.beneficiaryFatherName, beneficiaryFatherName) || other.beneficiaryFatherName == beneficiaryFatherName)&&(identical(other.beneficiaryBankAccountType, beneficiaryBankAccountType) || other.beneficiaryBankAccountType == beneficiaryBankAccountType)&&(identical(other.beneficiaryBankAccountTypeCode, beneficiaryBankAccountTypeCode) || other.beneficiaryBankAccountTypeCode == beneficiaryBankAccountTypeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryGender,beneficiaryFirstName,beneficiaryLastName,beneficiaryPhone,beneficiaryMobile,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,productCode,productName,currencyName,status,disbursalModeId,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,flagUrl,beneficiaryIdtypeName,beneficiaryIdtypeCode,beneficiaryIdtypeNo,routeCode,otherInfo,beneficiaryFatherName,beneficiaryBankAccountType,beneficiaryBankAccountTypeCode]);

@override
String toString() {
  return 'BeneficiaryList(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryGender: $beneficiaryGender, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryLastName: $beneficiaryLastName, beneficiaryPhone: $beneficiaryPhone, beneficiaryMobile: $beneficiaryMobile, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, productCode: $productCode, productName: $productName, currencyName: $currencyName, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, flagUrl: $flagUrl, beneficiaryIdtypeName: $beneficiaryIdtypeName, beneficiaryIdtypeCode: $beneficiaryIdtypeCode, beneficiaryIdtypeNo: $beneficiaryIdtypeNo, routeCode: $routeCode, otherInfo: $otherInfo, beneficiaryFatherName: $beneficiaryFatherName, beneficiaryBankAccountType: $beneficiaryBankAccountType, beneficiaryBankAccountTypeCode: $beneficiaryBankAccountTypeCode)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryListCopyWith<$Res>  {
  factory $BeneficiaryListCopyWith(BeneficiaryList value, $Res Function(BeneficiaryList) _then) = _$BeneficiaryListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_phone") String? beneficiaryPhone,@JsonKey(name: "beneficiary_mobile") String? beneficiaryMobile,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "currency_name") String? currencyName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "beneficiary_idtype_name") String? beneficiaryIdtypeName,@JsonKey(name: "beneficiary_idtype_code") String? beneficiaryIdtypeCode,@JsonKey(name: "beneficiary_idtype_no") String? beneficiaryIdtypeNo,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "other_info") String? otherInfo,@JsonKey(name: "ben_father_name") String? beneficiaryFatherName,@JsonKey(name: "beneficiary_bank_account_type") String? beneficiaryBankAccountType,@JsonKey(name: "beneficiary_bank_account_type_code") String? beneficiaryBankAccountTypeCode
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
@pragma('vm:prefer-inline') @override $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryPhone = freezed,Object? beneficiaryMobile = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? productCode = freezed,Object? productName = freezed,Object? currencyName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? flagUrl = freezed,Object? beneficiaryIdtypeName = freezed,Object? beneficiaryIdtypeCode = freezed,Object? beneficiaryIdtypeNo = freezed,Object? routeCode = freezed,Object? otherInfo = freezed,Object? beneficiaryFatherName = freezed,Object? beneficiaryBankAccountType = freezed,Object? beneficiaryBankAccountTypeCode = freezed,}) {
  return _then(_self.copyWith(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryPhone: freezed == beneficiaryPhone ? _self.beneficiaryPhone : beneficiaryPhone // ignore: cast_nullable_to_non_nullable
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
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,currencyName: freezed == currencyName ? _self.currencyName : currencyName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeName: freezed == beneficiaryIdtypeName ? _self.beneficiaryIdtypeName : beneficiaryIdtypeName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeCode: freezed == beneficiaryIdtypeCode ? _self.beneficiaryIdtypeCode : beneficiaryIdtypeCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeNo: freezed == beneficiaryIdtypeNo ? _self.beneficiaryIdtypeNo : beneficiaryIdtypeNo // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,otherInfo: freezed == otherInfo ? _self.otherInfo : otherInfo // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFatherName: freezed == beneficiaryFatherName ? _self.beneficiaryFatherName : beneficiaryFatherName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountType: freezed == beneficiaryBankAccountType ? _self.beneficiaryBankAccountType : beneficiaryBankAccountType // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountTypeCode: freezed == beneficiaryBankAccountTypeCode ? _self.beneficiaryBankAccountTypeCode : beneficiaryBankAccountTypeCode // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_phone")  String? beneficiaryPhone, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "currency_name")  String? currencyName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_idtype_name")  String? beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_code")  String? beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_no")  String? beneficiaryIdtypeNo, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "other_info")  String? otherInfo, @JsonKey(name: "ben_father_name")  String? beneficiaryFatherName, @JsonKey(name: "beneficiary_bank_account_type")  String? beneficiaryBankAccountType, @JsonKey(name: "beneficiary_bank_account_type_code")  String? beneficiaryBankAccountTypeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryPhone,_that.beneficiaryMobile,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.productCode,_that.productName,_that.currencyName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.flagUrl,_that.beneficiaryIdtypeName,_that.beneficiaryIdtypeCode,_that.beneficiaryIdtypeNo,_that.routeCode,_that.otherInfo,_that.beneficiaryFatherName,_that.beneficiaryBankAccountType,_that.beneficiaryBankAccountTypeCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_phone")  String? beneficiaryPhone, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "currency_name")  String? currencyName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_idtype_name")  String? beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_code")  String? beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_no")  String? beneficiaryIdtypeNo, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "other_info")  String? otherInfo, @JsonKey(name: "ben_father_name")  String? beneficiaryFatherName, @JsonKey(name: "beneficiary_bank_account_type")  String? beneficiaryBankAccountType, @JsonKey(name: "beneficiary_bank_account_type_code")  String? beneficiaryBankAccountTypeCode)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryList():
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryPhone,_that.beneficiaryMobile,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.productCode,_that.productName,_that.currencyName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.flagUrl,_that.beneficiaryIdtypeName,_that.beneficiaryIdtypeCode,_that.beneficiaryIdtypeNo,_that.routeCode,_that.otherInfo,_that.beneficiaryFatherName,_that.beneficiaryBankAccountType,_that.beneficiaryBankAccountTypeCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "e_id")  String? eId, @JsonKey(name: "beneficiary_code")  int? beneficiaryCode, @JsonKey(name: "beneficiary_gender")  String? beneficiaryGender, @JsonKey(name: "beneficiary_first_name")  String? beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name")  String? beneficiaryLastName, @JsonKey(name: "beneficiary_phone")  String? beneficiaryPhone, @JsonKey(name: "beneficiary_mobile")  String? beneficiaryMobile, @JsonKey(name: "beneficiary_country_code")  String? beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name")  String? beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code")  String? beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name")  String? beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code")  String? beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name")  String? beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code")  String? beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name")  String? beneficiaryBranchName, @JsonKey(name: "beneficary_relation")  String? beneficaryRelation, @JsonKey(name: "beneficary_relation_name")  String? beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number")  String? beneficiaryBankAccountNumber, @JsonKey(name: "product_code")  int? productCode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "currency_name")  String? currencyName, @JsonKey(name: "status")  String? status, @JsonKey(name: "disbursal_mode_id")  int? disbursalModeId, @JsonKey(name: "disbursal_mode")  String? disbursalMode, @JsonKey(name: "currency_code")  String? currencyCode, @JsonKey(name: "income_source_name")  String? incomeSourceName, @JsonKey(name: "purpose_name")  String? purposeName, @JsonKey(name: "source_of_fund")  String? sourceOfFund, @JsonKey(name: "purpose_of_transaction")  String? purposeOfTransaction, @JsonKey(name: "flag_url")  String? flagUrl, @JsonKey(name: "beneficiary_idtype_name")  String? beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_code")  String? beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_no")  String? beneficiaryIdtypeNo, @JsonKey(name: "route_code")  String? routeCode, @JsonKey(name: "other_info")  String? otherInfo, @JsonKey(name: "ben_father_name")  String? beneficiaryFatherName, @JsonKey(name: "beneficiary_bank_account_type")  String? beneficiaryBankAccountType, @JsonKey(name: "beneficiary_bank_account_type_code")  String? beneficiaryBankAccountTypeCode)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryList() when $default != null:
return $default(_that.eId,_that.beneficiaryCode,_that.beneficiaryGender,_that.beneficiaryFirstName,_that.beneficiaryLastName,_that.beneficiaryPhone,_that.beneficiaryMobile,_that.beneficiaryCountryCode,_that.beneficiaryCountryName,_that.beneficiaryNationalityCode,_that.beneficiaryNationalityName,_that.beneficiaryBankCode,_that.beneficiaryBankName,_that.beneficiaryBranchCode,_that.beneficiaryBranchName,_that.beneficaryRelation,_that.beneficaryRelationName,_that.beneficiaryBankAccountNumber,_that.productCode,_that.productName,_that.currencyName,_that.status,_that.disbursalModeId,_that.disbursalMode,_that.currencyCode,_that.incomeSourceName,_that.purposeName,_that.sourceOfFund,_that.purposeOfTransaction,_that.flagUrl,_that.beneficiaryIdtypeName,_that.beneficiaryIdtypeCode,_that.beneficiaryIdtypeNo,_that.routeCode,_that.otherInfo,_that.beneficiaryFatherName,_that.beneficiaryBankAccountType,_that.beneficiaryBankAccountTypeCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryList implements BeneficiaryList {
  const _BeneficiaryList({@JsonKey(name: "e_id") this.eId, @JsonKey(name: "beneficiary_code") this.beneficiaryCode, @JsonKey(name: "beneficiary_gender") this.beneficiaryGender, @JsonKey(name: "beneficiary_first_name") this.beneficiaryFirstName, @JsonKey(name: "beneficiary_last_name") this.beneficiaryLastName, @JsonKey(name: "beneficiary_phone") this.beneficiaryPhone, @JsonKey(name: "beneficiary_mobile") this.beneficiaryMobile, @JsonKey(name: "beneficiary_country_code") this.beneficiaryCountryCode, @JsonKey(name: "beneficiary_country_name") this.beneficiaryCountryName, @JsonKey(name: "beneficiary_nationality_code") this.beneficiaryNationalityCode, @JsonKey(name: "beneficiary_nationality_name") this.beneficiaryNationalityName, @JsonKey(name: "beneficiary_bank_code") this.beneficiaryBankCode, @JsonKey(name: "beneficiary_bank_name") this.beneficiaryBankName, @JsonKey(name: "beneficiary_branch_code") this.beneficiaryBranchCode, @JsonKey(name: "beneficiary_branch_name") this.beneficiaryBranchName, @JsonKey(name: "beneficary_relation") this.beneficaryRelation, @JsonKey(name: "beneficary_relation_name") this.beneficaryRelationName, @JsonKey(name: "beneficiary_bank_account_number") this.beneficiaryBankAccountNumber, @JsonKey(name: "product_code") this.productCode, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "currency_name") this.currencyName, @JsonKey(name: "status") this.status, @JsonKey(name: "disbursal_mode_id") this.disbursalModeId, @JsonKey(name: "disbursal_mode") this.disbursalMode, @JsonKey(name: "currency_code") this.currencyCode, @JsonKey(name: "income_source_name") this.incomeSourceName, @JsonKey(name: "purpose_name") this.purposeName, @JsonKey(name: "source_of_fund") this.sourceOfFund, @JsonKey(name: "purpose_of_transaction") this.purposeOfTransaction, @JsonKey(name: "flag_url") this.flagUrl, @JsonKey(name: "beneficiary_idtype_name") this.beneficiaryIdtypeName, @JsonKey(name: "beneficiary_idtype_code") this.beneficiaryIdtypeCode, @JsonKey(name: "beneficiary_idtype_no") this.beneficiaryIdtypeNo, @JsonKey(name: "route_code") this.routeCode, @JsonKey(name: "other_info") this.otherInfo, @JsonKey(name: "ben_father_name") this.beneficiaryFatherName, @JsonKey(name: "beneficiary_bank_account_type") this.beneficiaryBankAccountType, @JsonKey(name: "beneficiary_bank_account_type_code") this.beneficiaryBankAccountTypeCode});
  factory _BeneficiaryList.fromJson(Map<String, dynamic> json) => _$BeneficiaryListFromJson(json);

@override@JsonKey(name: "e_id") final  String? eId;
@override@JsonKey(name: "beneficiary_code") final  int? beneficiaryCode;
@override@JsonKey(name: "beneficiary_gender") final  String? beneficiaryGender;
@override@JsonKey(name: "beneficiary_first_name") final  String? beneficiaryFirstName;
@override@JsonKey(name: "beneficiary_last_name") final  String? beneficiaryLastName;
@override@JsonKey(name: "beneficiary_phone") final  String? beneficiaryPhone;
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
@override@JsonKey(name: "beneficiary_bank_account_number") final  String? beneficiaryBankAccountNumber;
@override@JsonKey(name: "product_code") final  int? productCode;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "currency_name") final  String? currencyName;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "disbursal_mode_id") final  int? disbursalModeId;
@override@JsonKey(name: "disbursal_mode") final  String? disbursalMode;
@override@JsonKey(name: "currency_code") final  String? currencyCode;
@override@JsonKey(name: "income_source_name") final  String? incomeSourceName;
@override@JsonKey(name: "purpose_name") final  String? purposeName;
@override@JsonKey(name: "source_of_fund") final  String? sourceOfFund;
@override@JsonKey(name: "purpose_of_transaction") final  String? purposeOfTransaction;
@override@JsonKey(name: "flag_url") final  String? flagUrl;
@override@JsonKey(name: "beneficiary_idtype_name") final  String? beneficiaryIdtypeName;
@override@JsonKey(name: "beneficiary_idtype_code") final  String? beneficiaryIdtypeCode;
@override@JsonKey(name: "beneficiary_idtype_no") final  String? beneficiaryIdtypeNo;
@override@JsonKey(name: "route_code") final  String? routeCode;
@override@JsonKey(name: "other_info") final  String? otherInfo;
@override@JsonKey(name: "ben_father_name") final  String? beneficiaryFatherName;
@override@JsonKey(name: "beneficiary_bank_account_type") final  String? beneficiaryBankAccountType;
@override@JsonKey(name: "beneficiary_bank_account_type_code") final  String? beneficiaryBankAccountTypeCode;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryList&&(identical(other.eId, eId) || other.eId == eId)&&(identical(other.beneficiaryCode, beneficiaryCode) || other.beneficiaryCode == beneficiaryCode)&&(identical(other.beneficiaryGender, beneficiaryGender) || other.beneficiaryGender == beneficiaryGender)&&(identical(other.beneficiaryFirstName, beneficiaryFirstName) || other.beneficiaryFirstName == beneficiaryFirstName)&&(identical(other.beneficiaryLastName, beneficiaryLastName) || other.beneficiaryLastName == beneficiaryLastName)&&(identical(other.beneficiaryPhone, beneficiaryPhone) || other.beneficiaryPhone == beneficiaryPhone)&&(identical(other.beneficiaryMobile, beneficiaryMobile) || other.beneficiaryMobile == beneficiaryMobile)&&(identical(other.beneficiaryCountryCode, beneficiaryCountryCode) || other.beneficiaryCountryCode == beneficiaryCountryCode)&&(identical(other.beneficiaryCountryName, beneficiaryCountryName) || other.beneficiaryCountryName == beneficiaryCountryName)&&(identical(other.beneficiaryNationalityCode, beneficiaryNationalityCode) || other.beneficiaryNationalityCode == beneficiaryNationalityCode)&&(identical(other.beneficiaryNationalityName, beneficiaryNationalityName) || other.beneficiaryNationalityName == beneficiaryNationalityName)&&(identical(other.beneficiaryBankCode, beneficiaryBankCode) || other.beneficiaryBankCode == beneficiaryBankCode)&&(identical(other.beneficiaryBankName, beneficiaryBankName) || other.beneficiaryBankName == beneficiaryBankName)&&(identical(other.beneficiaryBranchCode, beneficiaryBranchCode) || other.beneficiaryBranchCode == beneficiaryBranchCode)&&(identical(other.beneficiaryBranchName, beneficiaryBranchName) || other.beneficiaryBranchName == beneficiaryBranchName)&&(identical(other.beneficaryRelation, beneficaryRelation) || other.beneficaryRelation == beneficaryRelation)&&(identical(other.beneficaryRelationName, beneficaryRelationName) || other.beneficaryRelationName == beneficaryRelationName)&&(identical(other.beneficiaryBankAccountNumber, beneficiaryBankAccountNumber) || other.beneficiaryBankAccountNumber == beneficiaryBankAccountNumber)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.currencyName, currencyName) || other.currencyName == currencyName)&&(identical(other.status, status) || other.status == status)&&(identical(other.disbursalModeId, disbursalModeId) || other.disbursalModeId == disbursalModeId)&&(identical(other.disbursalMode, disbursalMode) || other.disbursalMode == disbursalMode)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.incomeSourceName, incomeSourceName) || other.incomeSourceName == incomeSourceName)&&(identical(other.purposeName, purposeName) || other.purposeName == purposeName)&&(identical(other.sourceOfFund, sourceOfFund) || other.sourceOfFund == sourceOfFund)&&(identical(other.purposeOfTransaction, purposeOfTransaction) || other.purposeOfTransaction == purposeOfTransaction)&&(identical(other.flagUrl, flagUrl) || other.flagUrl == flagUrl)&&(identical(other.beneficiaryIdtypeName, beneficiaryIdtypeName) || other.beneficiaryIdtypeName == beneficiaryIdtypeName)&&(identical(other.beneficiaryIdtypeCode, beneficiaryIdtypeCode) || other.beneficiaryIdtypeCode == beneficiaryIdtypeCode)&&(identical(other.beneficiaryIdtypeNo, beneficiaryIdtypeNo) || other.beneficiaryIdtypeNo == beneficiaryIdtypeNo)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.otherInfo, otherInfo) || other.otherInfo == otherInfo)&&(identical(other.beneficiaryFatherName, beneficiaryFatherName) || other.beneficiaryFatherName == beneficiaryFatherName)&&(identical(other.beneficiaryBankAccountType, beneficiaryBankAccountType) || other.beneficiaryBankAccountType == beneficiaryBankAccountType)&&(identical(other.beneficiaryBankAccountTypeCode, beneficiaryBankAccountTypeCode) || other.beneficiaryBankAccountTypeCode == beneficiaryBankAccountTypeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,eId,beneficiaryCode,beneficiaryGender,beneficiaryFirstName,beneficiaryLastName,beneficiaryPhone,beneficiaryMobile,beneficiaryCountryCode,beneficiaryCountryName,beneficiaryNationalityCode,beneficiaryNationalityName,beneficiaryBankCode,beneficiaryBankName,beneficiaryBranchCode,beneficiaryBranchName,beneficaryRelation,beneficaryRelationName,beneficiaryBankAccountNumber,productCode,productName,currencyName,status,disbursalModeId,disbursalMode,currencyCode,incomeSourceName,purposeName,sourceOfFund,purposeOfTransaction,flagUrl,beneficiaryIdtypeName,beneficiaryIdtypeCode,beneficiaryIdtypeNo,routeCode,otherInfo,beneficiaryFatherName,beneficiaryBankAccountType,beneficiaryBankAccountTypeCode]);

@override
String toString() {
  return 'BeneficiaryList(eId: $eId, beneficiaryCode: $beneficiaryCode, beneficiaryGender: $beneficiaryGender, beneficiaryFirstName: $beneficiaryFirstName, beneficiaryLastName: $beneficiaryLastName, beneficiaryPhone: $beneficiaryPhone, beneficiaryMobile: $beneficiaryMobile, beneficiaryCountryCode: $beneficiaryCountryCode, beneficiaryCountryName: $beneficiaryCountryName, beneficiaryNationalityCode: $beneficiaryNationalityCode, beneficiaryNationalityName: $beneficiaryNationalityName, beneficiaryBankCode: $beneficiaryBankCode, beneficiaryBankName: $beneficiaryBankName, beneficiaryBranchCode: $beneficiaryBranchCode, beneficiaryBranchName: $beneficiaryBranchName, beneficaryRelation: $beneficaryRelation, beneficaryRelationName: $beneficaryRelationName, beneficiaryBankAccountNumber: $beneficiaryBankAccountNumber, productCode: $productCode, productName: $productName, currencyName: $currencyName, status: $status, disbursalModeId: $disbursalModeId, disbursalMode: $disbursalMode, currencyCode: $currencyCode, incomeSourceName: $incomeSourceName, purposeName: $purposeName, sourceOfFund: $sourceOfFund, purposeOfTransaction: $purposeOfTransaction, flagUrl: $flagUrl, beneficiaryIdtypeName: $beneficiaryIdtypeName, beneficiaryIdtypeCode: $beneficiaryIdtypeCode, beneficiaryIdtypeNo: $beneficiaryIdtypeNo, routeCode: $routeCode, otherInfo: $otherInfo, beneficiaryFatherName: $beneficiaryFatherName, beneficiaryBankAccountType: $beneficiaryBankAccountType, beneficiaryBankAccountTypeCode: $beneficiaryBankAccountTypeCode)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryListCopyWith<$Res> implements $BeneficiaryListCopyWith<$Res> {
  factory _$BeneficiaryListCopyWith(_BeneficiaryList value, $Res Function(_BeneficiaryList) _then) = __$BeneficiaryListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "e_id") String? eId,@JsonKey(name: "beneficiary_code") int? beneficiaryCode,@JsonKey(name: "beneficiary_gender") String? beneficiaryGender,@JsonKey(name: "beneficiary_first_name") String? beneficiaryFirstName,@JsonKey(name: "beneficiary_last_name") String? beneficiaryLastName,@JsonKey(name: "beneficiary_phone") String? beneficiaryPhone,@JsonKey(name: "beneficiary_mobile") String? beneficiaryMobile,@JsonKey(name: "beneficiary_country_code") String? beneficiaryCountryCode,@JsonKey(name: "beneficiary_country_name") String? beneficiaryCountryName,@JsonKey(name: "beneficiary_nationality_code") String? beneficiaryNationalityCode,@JsonKey(name: "beneficiary_nationality_name") String? beneficiaryNationalityName,@JsonKey(name: "beneficiary_bank_code") String? beneficiaryBankCode,@JsonKey(name: "beneficiary_bank_name") String? beneficiaryBankName,@JsonKey(name: "beneficiary_branch_code") String? beneficiaryBranchCode,@JsonKey(name: "beneficiary_branch_name") String? beneficiaryBranchName,@JsonKey(name: "beneficary_relation") String? beneficaryRelation,@JsonKey(name: "beneficary_relation_name") String? beneficaryRelationName,@JsonKey(name: "beneficiary_bank_account_number") String? beneficiaryBankAccountNumber,@JsonKey(name: "product_code") int? productCode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "currency_name") String? currencyName,@JsonKey(name: "status") String? status,@JsonKey(name: "disbursal_mode_id") int? disbursalModeId,@JsonKey(name: "disbursal_mode") String? disbursalMode,@JsonKey(name: "currency_code") String? currencyCode,@JsonKey(name: "income_source_name") String? incomeSourceName,@JsonKey(name: "purpose_name") String? purposeName,@JsonKey(name: "source_of_fund") String? sourceOfFund,@JsonKey(name: "purpose_of_transaction") String? purposeOfTransaction,@JsonKey(name: "flag_url") String? flagUrl,@JsonKey(name: "beneficiary_idtype_name") String? beneficiaryIdtypeName,@JsonKey(name: "beneficiary_idtype_code") String? beneficiaryIdtypeCode,@JsonKey(name: "beneficiary_idtype_no") String? beneficiaryIdtypeNo,@JsonKey(name: "route_code") String? routeCode,@JsonKey(name: "other_info") String? otherInfo,@JsonKey(name: "ben_father_name") String? beneficiaryFatherName,@JsonKey(name: "beneficiary_bank_account_type") String? beneficiaryBankAccountType,@JsonKey(name: "beneficiary_bank_account_type_code") String? beneficiaryBankAccountTypeCode
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
@override @pragma('vm:prefer-inline') $Res call({Object? eId = freezed,Object? beneficiaryCode = freezed,Object? beneficiaryGender = freezed,Object? beneficiaryFirstName = freezed,Object? beneficiaryLastName = freezed,Object? beneficiaryPhone = freezed,Object? beneficiaryMobile = freezed,Object? beneficiaryCountryCode = freezed,Object? beneficiaryCountryName = freezed,Object? beneficiaryNationalityCode = freezed,Object? beneficiaryNationalityName = freezed,Object? beneficiaryBankCode = freezed,Object? beneficiaryBankName = freezed,Object? beneficiaryBranchCode = freezed,Object? beneficiaryBranchName = freezed,Object? beneficaryRelation = freezed,Object? beneficaryRelationName = freezed,Object? beneficiaryBankAccountNumber = freezed,Object? productCode = freezed,Object? productName = freezed,Object? currencyName = freezed,Object? status = freezed,Object? disbursalModeId = freezed,Object? disbursalMode = freezed,Object? currencyCode = freezed,Object? incomeSourceName = freezed,Object? purposeName = freezed,Object? sourceOfFund = freezed,Object? purposeOfTransaction = freezed,Object? flagUrl = freezed,Object? beneficiaryIdtypeName = freezed,Object? beneficiaryIdtypeCode = freezed,Object? beneficiaryIdtypeNo = freezed,Object? routeCode = freezed,Object? otherInfo = freezed,Object? beneficiaryFatherName = freezed,Object? beneficiaryBankAccountType = freezed,Object? beneficiaryBankAccountTypeCode = freezed,}) {
  return _then(_BeneficiaryList(
eId: freezed == eId ? _self.eId : eId // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryCode: freezed == beneficiaryCode ? _self.beneficiaryCode : beneficiaryCode // ignore: cast_nullable_to_non_nullable
as int?,beneficiaryGender: freezed == beneficiaryGender ? _self.beneficiaryGender : beneficiaryGender // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFirstName: freezed == beneficiaryFirstName ? _self.beneficiaryFirstName : beneficiaryFirstName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryLastName: freezed == beneficiaryLastName ? _self.beneficiaryLastName : beneficiaryLastName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryPhone: freezed == beneficiaryPhone ? _self.beneficiaryPhone : beneficiaryPhone // ignore: cast_nullable_to_non_nullable
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
as String?,beneficiaryBankAccountNumber: freezed == beneficiaryBankAccountNumber ? _self.beneficiaryBankAccountNumber : beneficiaryBankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,currencyName: freezed == currencyName ? _self.currencyName : currencyName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,disbursalModeId: freezed == disbursalModeId ? _self.disbursalModeId : disbursalModeId // ignore: cast_nullable_to_non_nullable
as int?,disbursalMode: freezed == disbursalMode ? _self.disbursalMode : disbursalMode // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,incomeSourceName: freezed == incomeSourceName ? _self.incomeSourceName : incomeSourceName // ignore: cast_nullable_to_non_nullable
as String?,purposeName: freezed == purposeName ? _self.purposeName : purposeName // ignore: cast_nullable_to_non_nullable
as String?,sourceOfFund: freezed == sourceOfFund ? _self.sourceOfFund : sourceOfFund // ignore: cast_nullable_to_non_nullable
as String?,purposeOfTransaction: freezed == purposeOfTransaction ? _self.purposeOfTransaction : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
as String?,flagUrl: freezed == flagUrl ? _self.flagUrl : flagUrl // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeName: freezed == beneficiaryIdtypeName ? _self.beneficiaryIdtypeName : beneficiaryIdtypeName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeCode: freezed == beneficiaryIdtypeCode ? _self.beneficiaryIdtypeCode : beneficiaryIdtypeCode // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryIdtypeNo: freezed == beneficiaryIdtypeNo ? _self.beneficiaryIdtypeNo : beneficiaryIdtypeNo // ignore: cast_nullable_to_non_nullable
as String?,routeCode: freezed == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String?,otherInfo: freezed == otherInfo ? _self.otherInfo : otherInfo // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryFatherName: freezed == beneficiaryFatherName ? _self.beneficiaryFatherName : beneficiaryFatherName // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountType: freezed == beneficiaryBankAccountType ? _self.beneficiaryBankAccountType : beneficiaryBankAccountType // ignore: cast_nullable_to_non_nullable
as String?,beneficiaryBankAccountTypeCode: freezed == beneficiaryBankAccountTypeCode ? _self.beneficiaryBankAccountTypeCode : beneficiaryBankAccountTypeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
