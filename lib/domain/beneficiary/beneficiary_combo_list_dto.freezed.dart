// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_combo_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryComboListDto {

@JsonKey(name: "success") String? get success;@JsonKey(name: "status_code") int? get statusCode;@JsonKey(name: "data") Data? get data;@JsonKey(name: "time_stamp") DateTime? get timeStamp;@JsonKey(name: "version") String? get version;
/// Create a copy of BeneficiaryComboListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryComboListDtoCopyWith<BeneficiaryComboListDto> get copyWith => _$BeneficiaryComboListDtoCopyWithImpl<BeneficiaryComboListDto>(this as BeneficiaryComboListDto, _$identity);

  /// Serializes this BeneficiaryComboListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryComboListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryComboListDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryComboListDtoCopyWith<$Res>  {
  factory $BeneficiaryComboListDtoCopyWith(BeneficiaryComboListDto value, $Res Function(BeneficiaryComboListDto) _then) = _$BeneficiaryComboListDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BeneficiaryComboListDtoCopyWithImpl<$Res>
    implements $BeneficiaryComboListDtoCopyWith<$Res> {
  _$BeneficiaryComboListDtoCopyWithImpl(this._self, this._then);

  final BeneficiaryComboListDto _self;
  final $Res Function(BeneficiaryComboListDto) _then;

/// Create a copy of BeneficiaryComboListDto
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
/// Create a copy of BeneficiaryComboListDto
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


/// Adds pattern-matching-related methods to [BeneficiaryComboListDto].
extension BeneficiaryComboListDtoPatterns on BeneficiaryComboListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryComboListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryComboListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryComboListDto value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryComboListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryComboListDto value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryComboListDto() when $default != null:
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
case _BeneficiaryComboListDto() when $default != null:
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
case _BeneficiaryComboListDto():
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
case _BeneficiaryComboListDto() when $default != null:
return $default(_that.success,_that.statusCode,_that.data,_that.timeStamp,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryComboListDto implements BeneficiaryComboListDto {
  const _BeneficiaryComboListDto({@JsonKey(name: "success") this.success, @JsonKey(name: "status_code") this.statusCode, @JsonKey(name: "data") this.data, @JsonKey(name: "time_stamp") this.timeStamp, @JsonKey(name: "version") this.version});
  factory _BeneficiaryComboListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryComboListDtoFromJson(json);

@override@JsonKey(name: "success") final  String? success;
@override@JsonKey(name: "status_code") final  int? statusCode;
@override@JsonKey(name: "data") final  Data? data;
@override@JsonKey(name: "time_stamp") final  DateTime? timeStamp;
@override@JsonKey(name: "version") final  String? version;

/// Create a copy of BeneficiaryComboListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryComboListDtoCopyWith<_BeneficiaryComboListDto> get copyWith => __$BeneficiaryComboListDtoCopyWithImpl<_BeneficiaryComboListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryComboListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryComboListDto&&(identical(other.success, success) || other.success == success)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,statusCode,data,timeStamp,version);

@override
String toString() {
  return 'BeneficiaryComboListDto(success: $success, statusCode: $statusCode, data: $data, timeStamp: $timeStamp, version: $version)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryComboListDtoCopyWith<$Res> implements $BeneficiaryComboListDtoCopyWith<$Res> {
  factory _$BeneficiaryComboListDtoCopyWith(_BeneficiaryComboListDto value, $Res Function(_BeneficiaryComboListDto) _then) = __$BeneficiaryComboListDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") String? success,@JsonKey(name: "status_code") int? statusCode,@JsonKey(name: "data") Data? data,@JsonKey(name: "time_stamp") DateTime? timeStamp,@JsonKey(name: "version") String? version
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BeneficiaryComboListDtoCopyWithImpl<$Res>
    implements _$BeneficiaryComboListDtoCopyWith<$Res> {
  __$BeneficiaryComboListDtoCopyWithImpl(this._self, this._then);

  final _BeneficiaryComboListDto _self;
  final $Res Function(_BeneficiaryComboListDto) _then;

/// Create a copy of BeneficiaryComboListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? statusCode = freezed,Object? data = freezed,Object? timeStamp = freezed,Object? version = freezed,}) {
  return _then(_BeneficiaryComboListDto(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,timeStamp: freezed == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeneficiaryComboListDto
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

@JsonKey(name: "salutation_list") List<AirportListElement>? get salutationList;@JsonKey(name: "country_list") List<AirportListElement>? get countryList;@JsonKey(name: "airport_list") List<AirportListElement>? get airportList;@JsonKey(name: "profession_list") List<AirportListElement>? get professionList;@JsonKey(name: "gender_list") List<AirportListElement>? get genderList;@JsonKey(name: "residency_type_list") List<AirportListElement>? get residencyTypeList;@JsonKey(name: "member_category_list") List<AirportListElement>? get memberCategoryList;@JsonKey(name: "relationship_list") List<AirportListElement>? get relationshipList;@JsonKey(name: "beneficiary_bank_list") List<AirportListElement>? get beneficiaryBankList;@JsonKey(name: "beneficiary_transfer_type_list") List<AirportListElement>? get beneficiaryTransferTypeList;@JsonKey(name: "route_type_list") List<AirportListElement>? get routeTypeList;@JsonKey(name: "identity_types_list") List<AirportListElement>? get identityTypesList;@JsonKey(name: "beneficiary_bank_account_type_list") List<AirportListElement>? get beneficiaryBankAccountTypeList; String? get defaultIdentityType;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.salutationList, salutationList)&&const DeepCollectionEquality().equals(other.countryList, countryList)&&const DeepCollectionEquality().equals(other.airportList, airportList)&&const DeepCollectionEquality().equals(other.professionList, professionList)&&const DeepCollectionEquality().equals(other.genderList, genderList)&&const DeepCollectionEquality().equals(other.residencyTypeList, residencyTypeList)&&const DeepCollectionEquality().equals(other.memberCategoryList, memberCategoryList)&&const DeepCollectionEquality().equals(other.relationshipList, relationshipList)&&const DeepCollectionEquality().equals(other.beneficiaryBankList, beneficiaryBankList)&&const DeepCollectionEquality().equals(other.beneficiaryTransferTypeList, beneficiaryTransferTypeList)&&const DeepCollectionEquality().equals(other.routeTypeList, routeTypeList)&&const DeepCollectionEquality().equals(other.identityTypesList, identityTypesList)&&const DeepCollectionEquality().equals(other.beneficiaryBankAccountTypeList, beneficiaryBankAccountTypeList)&&(identical(other.defaultIdentityType, defaultIdentityType) || other.defaultIdentityType == defaultIdentityType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(salutationList),const DeepCollectionEquality().hash(countryList),const DeepCollectionEquality().hash(airportList),const DeepCollectionEquality().hash(professionList),const DeepCollectionEquality().hash(genderList),const DeepCollectionEquality().hash(residencyTypeList),const DeepCollectionEquality().hash(memberCategoryList),const DeepCollectionEquality().hash(relationshipList),const DeepCollectionEquality().hash(beneficiaryBankList),const DeepCollectionEquality().hash(beneficiaryTransferTypeList),const DeepCollectionEquality().hash(routeTypeList),const DeepCollectionEquality().hash(identityTypesList),const DeepCollectionEquality().hash(beneficiaryBankAccountTypeList),defaultIdentityType);

@override
String toString() {
  return 'Data(salutationList: $salutationList, countryList: $countryList, airportList: $airportList, professionList: $professionList, genderList: $genderList, residencyTypeList: $residencyTypeList, memberCategoryList: $memberCategoryList, relationshipList: $relationshipList, beneficiaryBankList: $beneficiaryBankList, beneficiaryTransferTypeList: $beneficiaryTransferTypeList, routeTypeList: $routeTypeList, identityTypesList: $identityTypesList, beneficiaryBankAccountTypeList: $beneficiaryBankAccountTypeList, defaultIdentityType: $defaultIdentityType)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "salutation_list") List<AirportListElement>? salutationList,@JsonKey(name: "country_list") List<AirportListElement>? countryList,@JsonKey(name: "airport_list") List<AirportListElement>? airportList,@JsonKey(name: "profession_list") List<AirportListElement>? professionList,@JsonKey(name: "gender_list") List<AirportListElement>? genderList,@JsonKey(name: "residency_type_list") List<AirportListElement>? residencyTypeList,@JsonKey(name: "member_category_list") List<AirportListElement>? memberCategoryList,@JsonKey(name: "relationship_list") List<AirportListElement>? relationshipList,@JsonKey(name: "beneficiary_bank_list") List<AirportListElement>? beneficiaryBankList,@JsonKey(name: "beneficiary_transfer_type_list") List<AirportListElement>? beneficiaryTransferTypeList,@JsonKey(name: "route_type_list") List<AirportListElement>? routeTypeList,@JsonKey(name: "identity_types_list") List<AirportListElement>? identityTypesList,@JsonKey(name: "beneficiary_bank_account_type_list") List<AirportListElement>? beneficiaryBankAccountTypeList, String? defaultIdentityType
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
@pragma('vm:prefer-inline') @override $Res call({Object? salutationList = freezed,Object? countryList = freezed,Object? airportList = freezed,Object? professionList = freezed,Object? genderList = freezed,Object? residencyTypeList = freezed,Object? memberCategoryList = freezed,Object? relationshipList = freezed,Object? beneficiaryBankList = freezed,Object? beneficiaryTransferTypeList = freezed,Object? routeTypeList = freezed,Object? identityTypesList = freezed,Object? beneficiaryBankAccountTypeList = freezed,Object? defaultIdentityType = freezed,}) {
  return _then(_self.copyWith(
salutationList: freezed == salutationList ? _self.salutationList : salutationList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,countryList: freezed == countryList ? _self.countryList : countryList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,airportList: freezed == airportList ? _self.airportList : airportList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,professionList: freezed == professionList ? _self.professionList : professionList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,genderList: freezed == genderList ? _self.genderList : genderList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,residencyTypeList: freezed == residencyTypeList ? _self.residencyTypeList : residencyTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,memberCategoryList: freezed == memberCategoryList ? _self.memberCategoryList : memberCategoryList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,relationshipList: freezed == relationshipList ? _self.relationshipList : relationshipList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,beneficiaryBankList: freezed == beneficiaryBankList ? _self.beneficiaryBankList : beneficiaryBankList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,beneficiaryTransferTypeList: freezed == beneficiaryTransferTypeList ? _self.beneficiaryTransferTypeList : beneficiaryTransferTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,routeTypeList: freezed == routeTypeList ? _self.routeTypeList : routeTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,identityTypesList: freezed == identityTypesList ? _self.identityTypesList : identityTypesList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,beneficiaryBankAccountTypeList: freezed == beneficiaryBankAccountTypeList ? _self.beneficiaryBankAccountTypeList : beneficiaryBankAccountTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,defaultIdentityType: freezed == defaultIdentityType ? _self.defaultIdentityType : defaultIdentityType // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "salutation_list")  List<AirportListElement>? salutationList, @JsonKey(name: "country_list")  List<AirportListElement>? countryList, @JsonKey(name: "airport_list")  List<AirportListElement>? airportList, @JsonKey(name: "profession_list")  List<AirportListElement>? professionList, @JsonKey(name: "gender_list")  List<AirportListElement>? genderList, @JsonKey(name: "residency_type_list")  List<AirportListElement>? residencyTypeList, @JsonKey(name: "member_category_list")  List<AirportListElement>? memberCategoryList, @JsonKey(name: "relationship_list")  List<AirportListElement>? relationshipList, @JsonKey(name: "beneficiary_bank_list")  List<AirportListElement>? beneficiaryBankList, @JsonKey(name: "beneficiary_transfer_type_list")  List<AirportListElement>? beneficiaryTransferTypeList, @JsonKey(name: "route_type_list")  List<AirportListElement>? routeTypeList, @JsonKey(name: "identity_types_list")  List<AirportListElement>? identityTypesList, @JsonKey(name: "beneficiary_bank_account_type_list")  List<AirportListElement>? beneficiaryBankAccountTypeList,  String? defaultIdentityType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.salutationList,_that.countryList,_that.airportList,_that.professionList,_that.genderList,_that.residencyTypeList,_that.memberCategoryList,_that.relationshipList,_that.beneficiaryBankList,_that.beneficiaryTransferTypeList,_that.routeTypeList,_that.identityTypesList,_that.beneficiaryBankAccountTypeList,_that.defaultIdentityType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "salutation_list")  List<AirportListElement>? salutationList, @JsonKey(name: "country_list")  List<AirportListElement>? countryList, @JsonKey(name: "airport_list")  List<AirportListElement>? airportList, @JsonKey(name: "profession_list")  List<AirportListElement>? professionList, @JsonKey(name: "gender_list")  List<AirportListElement>? genderList, @JsonKey(name: "residency_type_list")  List<AirportListElement>? residencyTypeList, @JsonKey(name: "member_category_list")  List<AirportListElement>? memberCategoryList, @JsonKey(name: "relationship_list")  List<AirportListElement>? relationshipList, @JsonKey(name: "beneficiary_bank_list")  List<AirportListElement>? beneficiaryBankList, @JsonKey(name: "beneficiary_transfer_type_list")  List<AirportListElement>? beneficiaryTransferTypeList, @JsonKey(name: "route_type_list")  List<AirportListElement>? routeTypeList, @JsonKey(name: "identity_types_list")  List<AirportListElement>? identityTypesList, @JsonKey(name: "beneficiary_bank_account_type_list")  List<AirportListElement>? beneficiaryBankAccountTypeList,  String? defaultIdentityType)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.salutationList,_that.countryList,_that.airportList,_that.professionList,_that.genderList,_that.residencyTypeList,_that.memberCategoryList,_that.relationshipList,_that.beneficiaryBankList,_that.beneficiaryTransferTypeList,_that.routeTypeList,_that.identityTypesList,_that.beneficiaryBankAccountTypeList,_that.defaultIdentityType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "salutation_list")  List<AirportListElement>? salutationList, @JsonKey(name: "country_list")  List<AirportListElement>? countryList, @JsonKey(name: "airport_list")  List<AirportListElement>? airportList, @JsonKey(name: "profession_list")  List<AirportListElement>? professionList, @JsonKey(name: "gender_list")  List<AirportListElement>? genderList, @JsonKey(name: "residency_type_list")  List<AirportListElement>? residencyTypeList, @JsonKey(name: "member_category_list")  List<AirportListElement>? memberCategoryList, @JsonKey(name: "relationship_list")  List<AirportListElement>? relationshipList, @JsonKey(name: "beneficiary_bank_list")  List<AirportListElement>? beneficiaryBankList, @JsonKey(name: "beneficiary_transfer_type_list")  List<AirportListElement>? beneficiaryTransferTypeList, @JsonKey(name: "route_type_list")  List<AirportListElement>? routeTypeList, @JsonKey(name: "identity_types_list")  List<AirportListElement>? identityTypesList, @JsonKey(name: "beneficiary_bank_account_type_list")  List<AirportListElement>? beneficiaryBankAccountTypeList,  String? defaultIdentityType)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.salutationList,_that.countryList,_that.airportList,_that.professionList,_that.genderList,_that.residencyTypeList,_that.memberCategoryList,_that.relationshipList,_that.beneficiaryBankList,_that.beneficiaryTransferTypeList,_that.routeTypeList,_that.identityTypesList,_that.beneficiaryBankAccountTypeList,_that.defaultIdentityType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "salutation_list") final  List<AirportListElement>? salutationList, @JsonKey(name: "country_list") final  List<AirportListElement>? countryList, @JsonKey(name: "airport_list") final  List<AirportListElement>? airportList, @JsonKey(name: "profession_list") final  List<AirportListElement>? professionList, @JsonKey(name: "gender_list") final  List<AirportListElement>? genderList, @JsonKey(name: "residency_type_list") final  List<AirportListElement>? residencyTypeList, @JsonKey(name: "member_category_list") final  List<AirportListElement>? memberCategoryList, @JsonKey(name: "relationship_list") final  List<AirportListElement>? relationshipList, @JsonKey(name: "beneficiary_bank_list") final  List<AirportListElement>? beneficiaryBankList, @JsonKey(name: "beneficiary_transfer_type_list") final  List<AirportListElement>? beneficiaryTransferTypeList, @JsonKey(name: "route_type_list") final  List<AirportListElement>? routeTypeList, @JsonKey(name: "identity_types_list") final  List<AirportListElement>? identityTypesList, @JsonKey(name: "beneficiary_bank_account_type_list") final  List<AirportListElement>? beneficiaryBankAccountTypeList, this.defaultIdentityType}): _salutationList = salutationList,_countryList = countryList,_airportList = airportList,_professionList = professionList,_genderList = genderList,_residencyTypeList = residencyTypeList,_memberCategoryList = memberCategoryList,_relationshipList = relationshipList,_beneficiaryBankList = beneficiaryBankList,_beneficiaryTransferTypeList = beneficiaryTransferTypeList,_routeTypeList = routeTypeList,_identityTypesList = identityTypesList,_beneficiaryBankAccountTypeList = beneficiaryBankAccountTypeList;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

 final  List<AirportListElement>? _salutationList;
@override@JsonKey(name: "salutation_list") List<AirportListElement>? get salutationList {
  final value = _salutationList;
  if (value == null) return null;
  if (_salutationList is EqualUnmodifiableListView) return _salutationList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _countryList;
@override@JsonKey(name: "country_list") List<AirportListElement>? get countryList {
  final value = _countryList;
  if (value == null) return null;
  if (_countryList is EqualUnmodifiableListView) return _countryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _airportList;
@override@JsonKey(name: "airport_list") List<AirportListElement>? get airportList {
  final value = _airportList;
  if (value == null) return null;
  if (_airportList is EqualUnmodifiableListView) return _airportList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _professionList;
@override@JsonKey(name: "profession_list") List<AirportListElement>? get professionList {
  final value = _professionList;
  if (value == null) return null;
  if (_professionList is EqualUnmodifiableListView) return _professionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _genderList;
@override@JsonKey(name: "gender_list") List<AirportListElement>? get genderList {
  final value = _genderList;
  if (value == null) return null;
  if (_genderList is EqualUnmodifiableListView) return _genderList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _residencyTypeList;
@override@JsonKey(name: "residency_type_list") List<AirportListElement>? get residencyTypeList {
  final value = _residencyTypeList;
  if (value == null) return null;
  if (_residencyTypeList is EqualUnmodifiableListView) return _residencyTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _memberCategoryList;
@override@JsonKey(name: "member_category_list") List<AirportListElement>? get memberCategoryList {
  final value = _memberCategoryList;
  if (value == null) return null;
  if (_memberCategoryList is EqualUnmodifiableListView) return _memberCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _relationshipList;
@override@JsonKey(name: "relationship_list") List<AirportListElement>? get relationshipList {
  final value = _relationshipList;
  if (value == null) return null;
  if (_relationshipList is EqualUnmodifiableListView) return _relationshipList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _beneficiaryBankList;
@override@JsonKey(name: "beneficiary_bank_list") List<AirportListElement>? get beneficiaryBankList {
  final value = _beneficiaryBankList;
  if (value == null) return null;
  if (_beneficiaryBankList is EqualUnmodifiableListView) return _beneficiaryBankList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _beneficiaryTransferTypeList;
@override@JsonKey(name: "beneficiary_transfer_type_list") List<AirportListElement>? get beneficiaryTransferTypeList {
  final value = _beneficiaryTransferTypeList;
  if (value == null) return null;
  if (_beneficiaryTransferTypeList is EqualUnmodifiableListView) return _beneficiaryTransferTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _routeTypeList;
@override@JsonKey(name: "route_type_list") List<AirportListElement>? get routeTypeList {
  final value = _routeTypeList;
  if (value == null) return null;
  if (_routeTypeList is EqualUnmodifiableListView) return _routeTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _identityTypesList;
@override@JsonKey(name: "identity_types_list") List<AirportListElement>? get identityTypesList {
  final value = _identityTypesList;
  if (value == null) return null;
  if (_identityTypesList is EqualUnmodifiableListView) return _identityTypesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AirportListElement>? _beneficiaryBankAccountTypeList;
@override@JsonKey(name: "beneficiary_bank_account_type_list") List<AirportListElement>? get beneficiaryBankAccountTypeList {
  final value = _beneficiaryBankAccountTypeList;
  if (value == null) return null;
  if (_beneficiaryBankAccountTypeList is EqualUnmodifiableListView) return _beneficiaryBankAccountTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? defaultIdentityType;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._salutationList, _salutationList)&&const DeepCollectionEquality().equals(other._countryList, _countryList)&&const DeepCollectionEquality().equals(other._airportList, _airportList)&&const DeepCollectionEquality().equals(other._professionList, _professionList)&&const DeepCollectionEquality().equals(other._genderList, _genderList)&&const DeepCollectionEquality().equals(other._residencyTypeList, _residencyTypeList)&&const DeepCollectionEquality().equals(other._memberCategoryList, _memberCategoryList)&&const DeepCollectionEquality().equals(other._relationshipList, _relationshipList)&&const DeepCollectionEquality().equals(other._beneficiaryBankList, _beneficiaryBankList)&&const DeepCollectionEquality().equals(other._beneficiaryTransferTypeList, _beneficiaryTransferTypeList)&&const DeepCollectionEquality().equals(other._routeTypeList, _routeTypeList)&&const DeepCollectionEquality().equals(other._identityTypesList, _identityTypesList)&&const DeepCollectionEquality().equals(other._beneficiaryBankAccountTypeList, _beneficiaryBankAccountTypeList)&&(identical(other.defaultIdentityType, defaultIdentityType) || other.defaultIdentityType == defaultIdentityType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_salutationList),const DeepCollectionEquality().hash(_countryList),const DeepCollectionEquality().hash(_airportList),const DeepCollectionEquality().hash(_professionList),const DeepCollectionEquality().hash(_genderList),const DeepCollectionEquality().hash(_residencyTypeList),const DeepCollectionEquality().hash(_memberCategoryList),const DeepCollectionEquality().hash(_relationshipList),const DeepCollectionEquality().hash(_beneficiaryBankList),const DeepCollectionEquality().hash(_beneficiaryTransferTypeList),const DeepCollectionEquality().hash(_routeTypeList),const DeepCollectionEquality().hash(_identityTypesList),const DeepCollectionEquality().hash(_beneficiaryBankAccountTypeList),defaultIdentityType);

@override
String toString() {
  return 'Data(salutationList: $salutationList, countryList: $countryList, airportList: $airportList, professionList: $professionList, genderList: $genderList, residencyTypeList: $residencyTypeList, memberCategoryList: $memberCategoryList, relationshipList: $relationshipList, beneficiaryBankList: $beneficiaryBankList, beneficiaryTransferTypeList: $beneficiaryTransferTypeList, routeTypeList: $routeTypeList, identityTypesList: $identityTypesList, beneficiaryBankAccountTypeList: $beneficiaryBankAccountTypeList, defaultIdentityType: $defaultIdentityType)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "salutation_list") List<AirportListElement>? salutationList,@JsonKey(name: "country_list") List<AirportListElement>? countryList,@JsonKey(name: "airport_list") List<AirportListElement>? airportList,@JsonKey(name: "profession_list") List<AirportListElement>? professionList,@JsonKey(name: "gender_list") List<AirportListElement>? genderList,@JsonKey(name: "residency_type_list") List<AirportListElement>? residencyTypeList,@JsonKey(name: "member_category_list") List<AirportListElement>? memberCategoryList,@JsonKey(name: "relationship_list") List<AirportListElement>? relationshipList,@JsonKey(name: "beneficiary_bank_list") List<AirportListElement>? beneficiaryBankList,@JsonKey(name: "beneficiary_transfer_type_list") List<AirportListElement>? beneficiaryTransferTypeList,@JsonKey(name: "route_type_list") List<AirportListElement>? routeTypeList,@JsonKey(name: "identity_types_list") List<AirportListElement>? identityTypesList,@JsonKey(name: "beneficiary_bank_account_type_list") List<AirportListElement>? beneficiaryBankAccountTypeList, String? defaultIdentityType
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
@override @pragma('vm:prefer-inline') $Res call({Object? salutationList = freezed,Object? countryList = freezed,Object? airportList = freezed,Object? professionList = freezed,Object? genderList = freezed,Object? residencyTypeList = freezed,Object? memberCategoryList = freezed,Object? relationshipList = freezed,Object? beneficiaryBankList = freezed,Object? beneficiaryTransferTypeList = freezed,Object? routeTypeList = freezed,Object? identityTypesList = freezed,Object? beneficiaryBankAccountTypeList = freezed,Object? defaultIdentityType = freezed,}) {
  return _then(_Data(
salutationList: freezed == salutationList ? _self._salutationList : salutationList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,countryList: freezed == countryList ? _self._countryList : countryList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,airportList: freezed == airportList ? _self._airportList : airportList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,professionList: freezed == professionList ? _self._professionList : professionList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,genderList: freezed == genderList ? _self._genderList : genderList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,residencyTypeList: freezed == residencyTypeList ? _self._residencyTypeList : residencyTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,memberCategoryList: freezed == memberCategoryList ? _self._memberCategoryList : memberCategoryList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,relationshipList: freezed == relationshipList ? _self._relationshipList : relationshipList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,beneficiaryBankList: freezed == beneficiaryBankList ? _self._beneficiaryBankList : beneficiaryBankList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,beneficiaryTransferTypeList: freezed == beneficiaryTransferTypeList ? _self._beneficiaryTransferTypeList : beneficiaryTransferTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,routeTypeList: freezed == routeTypeList ? _self._routeTypeList : routeTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,identityTypesList: freezed == identityTypesList ? _self._identityTypesList : identityTypesList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,beneficiaryBankAccountTypeList: freezed == beneficiaryBankAccountTypeList ? _self._beneficiaryBankAccountTypeList : beneficiaryBankAccountTypeList // ignore: cast_nullable_to_non_nullable
as List<AirportListElement>?,defaultIdentityType: freezed == defaultIdentityType ? _self.defaultIdentityType : defaultIdentityType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AirportListElement {

@JsonKey(name: "code") String? get code;@JsonKey(name: "name") String? get name;@JsonKey(name: "is_default") bool? get isDefault;
/// Create a copy of AirportListElement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AirportListElementCopyWith<AirportListElement> get copyWith => _$AirportListElementCopyWithImpl<AirportListElement>(this as AirportListElement, _$identity);

  /// Serializes this AirportListElement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AirportListElement&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'AirportListElement(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $AirportListElementCopyWith<$Res>  {
  factory $AirportListElementCopyWith(AirportListElement value, $Res Function(AirportListElement) _then) = _$AirportListElementCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class _$AirportListElementCopyWithImpl<$Res>
    implements $AirportListElementCopyWith<$Res> {
  _$AirportListElementCopyWithImpl(this._self, this._then);

  final AirportListElement _self;
  final $Res Function(AirportListElement) _then;

/// Create a copy of AirportListElement
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


/// Adds pattern-matching-related methods to [AirportListElement].
extension AirportListElementPatterns on AirportListElement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AirportListElement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AirportListElement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AirportListElement value)  $default,){
final _that = this;
switch (_that) {
case _AirportListElement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AirportListElement value)?  $default,){
final _that = this;
switch (_that) {
case _AirportListElement() when $default != null:
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
case _AirportListElement() when $default != null:
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
case _AirportListElement():
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
case _AirportListElement() when $default != null:
return $default(_that.code,_that.name,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AirportListElement implements AirportListElement {
  const _AirportListElement({@JsonKey(name: "code") this.code, @JsonKey(name: "name") this.name, @JsonKey(name: "is_default") this.isDefault});
  factory _AirportListElement.fromJson(Map<String, dynamic> json) => _$AirportListElementFromJson(json);

@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "is_default") final  bool? isDefault;

/// Create a copy of AirportListElement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AirportListElementCopyWith<_AirportListElement> get copyWith => __$AirportListElementCopyWithImpl<_AirportListElement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AirportListElementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AirportListElement&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,isDefault);

@override
String toString() {
  return 'AirportListElement(code: $code, name: $name, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$AirportListElementCopyWith<$Res> implements $AirportListElementCopyWith<$Res> {
  factory _$AirportListElementCopyWith(_AirportListElement value, $Res Function(_AirportListElement) _then) = __$AirportListElementCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "name") String? name,@JsonKey(name: "is_default") bool? isDefault
});




}
/// @nodoc
class __$AirportListElementCopyWithImpl<$Res>
    implements _$AirportListElementCopyWith<$Res> {
  __$AirportListElementCopyWithImpl(this._self, this._then);

  final _AirportListElement _self;
  final $Res Function(_AirportListElement) _then;

/// Create a copy of AirportListElement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? isDefault = freezed,}) {
  return _then(_AirportListElement(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
