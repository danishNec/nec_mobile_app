// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_combo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonComboDto {

@JsonKey(name: "country_list") List<ComboItem> get countryList;@JsonKey(name: "gender_list") List<ComboItem> get genderList;@JsonKey(name: "residency_type_list") List<ComboItem> get residencyTypeList;@JsonKey(name: "profession_list") List<ComboItem> get professionList;@JsonKey(name: "salutation_list") List<ComboItem> get salutationList;@JsonKey(name: "airport_list") List<ComboItem> get airportList;@JsonKey(name: "beneficiary_bank_account_type_list") List<ComboItem> get beneficiaryBankAccountTypeList;@JsonKey(name: "relationship_list") List<ComboItem> get relationshipList;@JsonKey(name: "member_category_list") List<ComboItem> get memberCategoryList;@JsonKey(name: "route_type_list") List<ComboItem> get routeTypeList;@JsonKey(name: "beneficiary_branch_list") List<ComboItem> get beneficiaryBranchList;@JsonKey(name: "beneficiary_route_code_list") List<ComboItem> get beneficiaryRouteCodeList;@JsonKey(name: "beneficiary_bank_list") List<ComboItem> get beneficiaryBankList;
/// Create a copy of CommonComboDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonComboDtoCopyWith<CommonComboDto> get copyWith => _$CommonComboDtoCopyWithImpl<CommonComboDto>(this as CommonComboDto, _$identity);

  /// Serializes this CommonComboDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonComboDto&&const DeepCollectionEquality().equals(other.countryList, countryList)&&const DeepCollectionEquality().equals(other.genderList, genderList)&&const DeepCollectionEquality().equals(other.residencyTypeList, residencyTypeList)&&const DeepCollectionEquality().equals(other.professionList, professionList)&&const DeepCollectionEquality().equals(other.salutationList, salutationList)&&const DeepCollectionEquality().equals(other.airportList, airportList)&&const DeepCollectionEquality().equals(other.beneficiaryBankAccountTypeList, beneficiaryBankAccountTypeList)&&const DeepCollectionEquality().equals(other.relationshipList, relationshipList)&&const DeepCollectionEquality().equals(other.memberCategoryList, memberCategoryList)&&const DeepCollectionEquality().equals(other.routeTypeList, routeTypeList)&&const DeepCollectionEquality().equals(other.beneficiaryBranchList, beneficiaryBranchList)&&const DeepCollectionEquality().equals(other.beneficiaryRouteCodeList, beneficiaryRouteCodeList)&&const DeepCollectionEquality().equals(other.beneficiaryBankList, beneficiaryBankList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(countryList),const DeepCollectionEquality().hash(genderList),const DeepCollectionEquality().hash(residencyTypeList),const DeepCollectionEquality().hash(professionList),const DeepCollectionEquality().hash(salutationList),const DeepCollectionEquality().hash(airportList),const DeepCollectionEquality().hash(beneficiaryBankAccountTypeList),const DeepCollectionEquality().hash(relationshipList),const DeepCollectionEquality().hash(memberCategoryList),const DeepCollectionEquality().hash(routeTypeList),const DeepCollectionEquality().hash(beneficiaryBranchList),const DeepCollectionEquality().hash(beneficiaryRouteCodeList),const DeepCollectionEquality().hash(beneficiaryBankList));

@override
String toString() {
  return 'CommonComboDto(countryList: $countryList, genderList: $genderList, residencyTypeList: $residencyTypeList, professionList: $professionList, salutationList: $salutationList, airportList: $airportList, beneficiaryBankAccountTypeList: $beneficiaryBankAccountTypeList, relationshipList: $relationshipList, memberCategoryList: $memberCategoryList, routeTypeList: $routeTypeList, beneficiaryBranchList: $beneficiaryBranchList, beneficiaryRouteCodeList: $beneficiaryRouteCodeList, beneficiaryBankList: $beneficiaryBankList)';
}


}

/// @nodoc
abstract mixin class $CommonComboDtoCopyWith<$Res>  {
  factory $CommonComboDtoCopyWith(CommonComboDto value, $Res Function(CommonComboDto) _then) = _$CommonComboDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "country_list") List<ComboItem> countryList,@JsonKey(name: "gender_list") List<ComboItem> genderList,@JsonKey(name: "residency_type_list") List<ComboItem> residencyTypeList,@JsonKey(name: "profession_list") List<ComboItem> professionList,@JsonKey(name: "salutation_list") List<ComboItem> salutationList,@JsonKey(name: "airport_list") List<ComboItem> airportList,@JsonKey(name: "beneficiary_bank_account_type_list") List<ComboItem> beneficiaryBankAccountTypeList,@JsonKey(name: "relationship_list") List<ComboItem> relationshipList,@JsonKey(name: "member_category_list") List<ComboItem> memberCategoryList,@JsonKey(name: "route_type_list") List<ComboItem> routeTypeList,@JsonKey(name: "beneficiary_branch_list") List<ComboItem> beneficiaryBranchList,@JsonKey(name: "beneficiary_route_code_list") List<ComboItem> beneficiaryRouteCodeList,@JsonKey(name: "beneficiary_bank_list") List<ComboItem> beneficiaryBankList
});




}
/// @nodoc
class _$CommonComboDtoCopyWithImpl<$Res>
    implements $CommonComboDtoCopyWith<$Res> {
  _$CommonComboDtoCopyWithImpl(this._self, this._then);

  final CommonComboDto _self;
  final $Res Function(CommonComboDto) _then;

/// Create a copy of CommonComboDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryList = null,Object? genderList = null,Object? residencyTypeList = null,Object? professionList = null,Object? salutationList = null,Object? airportList = null,Object? beneficiaryBankAccountTypeList = null,Object? relationshipList = null,Object? memberCategoryList = null,Object? routeTypeList = null,Object? beneficiaryBranchList = null,Object? beneficiaryRouteCodeList = null,Object? beneficiaryBankList = null,}) {
  return _then(_self.copyWith(
countryList: null == countryList ? _self.countryList : countryList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,genderList: null == genderList ? _self.genderList : genderList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,residencyTypeList: null == residencyTypeList ? _self.residencyTypeList : residencyTypeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,professionList: null == professionList ? _self.professionList : professionList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,salutationList: null == salutationList ? _self.salutationList : salutationList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,airportList: null == airportList ? _self.airportList : airportList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryBankAccountTypeList: null == beneficiaryBankAccountTypeList ? _self.beneficiaryBankAccountTypeList : beneficiaryBankAccountTypeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,relationshipList: null == relationshipList ? _self.relationshipList : relationshipList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,memberCategoryList: null == memberCategoryList ? _self.memberCategoryList : memberCategoryList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,routeTypeList: null == routeTypeList ? _self.routeTypeList : routeTypeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryBranchList: null == beneficiaryBranchList ? _self.beneficiaryBranchList : beneficiaryBranchList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryRouteCodeList: null == beneficiaryRouteCodeList ? _self.beneficiaryRouteCodeList : beneficiaryRouteCodeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryBankList: null == beneficiaryBankList ? _self.beneficiaryBankList : beneficiaryBankList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonComboDto].
extension CommonComboDtoPatterns on CommonComboDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonComboDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonComboDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonComboDto value)  $default,){
final _that = this;
switch (_that) {
case _CommonComboDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonComboDto value)?  $default,){
final _that = this;
switch (_that) {
case _CommonComboDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "country_list")  List<ComboItem> countryList, @JsonKey(name: "gender_list")  List<ComboItem> genderList, @JsonKey(name: "residency_type_list")  List<ComboItem> residencyTypeList, @JsonKey(name: "profession_list")  List<ComboItem> professionList, @JsonKey(name: "salutation_list")  List<ComboItem> salutationList, @JsonKey(name: "airport_list")  List<ComboItem> airportList, @JsonKey(name: "beneficiary_bank_account_type_list")  List<ComboItem> beneficiaryBankAccountTypeList, @JsonKey(name: "relationship_list")  List<ComboItem> relationshipList, @JsonKey(name: "member_category_list")  List<ComboItem> memberCategoryList, @JsonKey(name: "route_type_list")  List<ComboItem> routeTypeList, @JsonKey(name: "beneficiary_branch_list")  List<ComboItem> beneficiaryBranchList, @JsonKey(name: "beneficiary_route_code_list")  List<ComboItem> beneficiaryRouteCodeList, @JsonKey(name: "beneficiary_bank_list")  List<ComboItem> beneficiaryBankList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonComboDto() when $default != null:
return $default(_that.countryList,_that.genderList,_that.residencyTypeList,_that.professionList,_that.salutationList,_that.airportList,_that.beneficiaryBankAccountTypeList,_that.relationshipList,_that.memberCategoryList,_that.routeTypeList,_that.beneficiaryBranchList,_that.beneficiaryRouteCodeList,_that.beneficiaryBankList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "country_list")  List<ComboItem> countryList, @JsonKey(name: "gender_list")  List<ComboItem> genderList, @JsonKey(name: "residency_type_list")  List<ComboItem> residencyTypeList, @JsonKey(name: "profession_list")  List<ComboItem> professionList, @JsonKey(name: "salutation_list")  List<ComboItem> salutationList, @JsonKey(name: "airport_list")  List<ComboItem> airportList, @JsonKey(name: "beneficiary_bank_account_type_list")  List<ComboItem> beneficiaryBankAccountTypeList, @JsonKey(name: "relationship_list")  List<ComboItem> relationshipList, @JsonKey(name: "member_category_list")  List<ComboItem> memberCategoryList, @JsonKey(name: "route_type_list")  List<ComboItem> routeTypeList, @JsonKey(name: "beneficiary_branch_list")  List<ComboItem> beneficiaryBranchList, @JsonKey(name: "beneficiary_route_code_list")  List<ComboItem> beneficiaryRouteCodeList, @JsonKey(name: "beneficiary_bank_list")  List<ComboItem> beneficiaryBankList)  $default,) {final _that = this;
switch (_that) {
case _CommonComboDto():
return $default(_that.countryList,_that.genderList,_that.residencyTypeList,_that.professionList,_that.salutationList,_that.airportList,_that.beneficiaryBankAccountTypeList,_that.relationshipList,_that.memberCategoryList,_that.routeTypeList,_that.beneficiaryBranchList,_that.beneficiaryRouteCodeList,_that.beneficiaryBankList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "country_list")  List<ComboItem> countryList, @JsonKey(name: "gender_list")  List<ComboItem> genderList, @JsonKey(name: "residency_type_list")  List<ComboItem> residencyTypeList, @JsonKey(name: "profession_list")  List<ComboItem> professionList, @JsonKey(name: "salutation_list")  List<ComboItem> salutationList, @JsonKey(name: "airport_list")  List<ComboItem> airportList, @JsonKey(name: "beneficiary_bank_account_type_list")  List<ComboItem> beneficiaryBankAccountTypeList, @JsonKey(name: "relationship_list")  List<ComboItem> relationshipList, @JsonKey(name: "member_category_list")  List<ComboItem> memberCategoryList, @JsonKey(name: "route_type_list")  List<ComboItem> routeTypeList, @JsonKey(name: "beneficiary_branch_list")  List<ComboItem> beneficiaryBranchList, @JsonKey(name: "beneficiary_route_code_list")  List<ComboItem> beneficiaryRouteCodeList, @JsonKey(name: "beneficiary_bank_list")  List<ComboItem> beneficiaryBankList)?  $default,) {final _that = this;
switch (_that) {
case _CommonComboDto() when $default != null:
return $default(_that.countryList,_that.genderList,_that.residencyTypeList,_that.professionList,_that.salutationList,_that.airportList,_that.beneficiaryBankAccountTypeList,_that.relationshipList,_that.memberCategoryList,_that.routeTypeList,_that.beneficiaryBranchList,_that.beneficiaryRouteCodeList,_that.beneficiaryBankList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonComboDto implements CommonComboDto {
  const _CommonComboDto({@JsonKey(name: "country_list") final  List<ComboItem> countryList = const [], @JsonKey(name: "gender_list") final  List<ComboItem> genderList = const [], @JsonKey(name: "residency_type_list") final  List<ComboItem> residencyTypeList = const [], @JsonKey(name: "profession_list") final  List<ComboItem> professionList = const [], @JsonKey(name: "salutation_list") final  List<ComboItem> salutationList = const [], @JsonKey(name: "airport_list") final  List<ComboItem> airportList = const [], @JsonKey(name: "beneficiary_bank_account_type_list") final  List<ComboItem> beneficiaryBankAccountTypeList = const [], @JsonKey(name: "relationship_list") final  List<ComboItem> relationshipList = const [], @JsonKey(name: "member_category_list") final  List<ComboItem> memberCategoryList = const [], @JsonKey(name: "route_type_list") final  List<ComboItem> routeTypeList = const [], @JsonKey(name: "beneficiary_branch_list") final  List<ComboItem> beneficiaryBranchList = const [], @JsonKey(name: "beneficiary_route_code_list") final  List<ComboItem> beneficiaryRouteCodeList = const [], @JsonKey(name: "beneficiary_bank_list") final  List<ComboItem> beneficiaryBankList = const []}): _countryList = countryList,_genderList = genderList,_residencyTypeList = residencyTypeList,_professionList = professionList,_salutationList = salutationList,_airportList = airportList,_beneficiaryBankAccountTypeList = beneficiaryBankAccountTypeList,_relationshipList = relationshipList,_memberCategoryList = memberCategoryList,_routeTypeList = routeTypeList,_beneficiaryBranchList = beneficiaryBranchList,_beneficiaryRouteCodeList = beneficiaryRouteCodeList,_beneficiaryBankList = beneficiaryBankList;
  factory _CommonComboDto.fromJson(Map<String, dynamic> json) => _$CommonComboDtoFromJson(json);

 final  List<ComboItem> _countryList;
@override@JsonKey(name: "country_list") List<ComboItem> get countryList {
  if (_countryList is EqualUnmodifiableListView) return _countryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countryList);
}

 final  List<ComboItem> _genderList;
@override@JsonKey(name: "gender_list") List<ComboItem> get genderList {
  if (_genderList is EqualUnmodifiableListView) return _genderList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genderList);
}

 final  List<ComboItem> _residencyTypeList;
@override@JsonKey(name: "residency_type_list") List<ComboItem> get residencyTypeList {
  if (_residencyTypeList is EqualUnmodifiableListView) return _residencyTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_residencyTypeList);
}

 final  List<ComboItem> _professionList;
@override@JsonKey(name: "profession_list") List<ComboItem> get professionList {
  if (_professionList is EqualUnmodifiableListView) return _professionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_professionList);
}

 final  List<ComboItem> _salutationList;
@override@JsonKey(name: "salutation_list") List<ComboItem> get salutationList {
  if (_salutationList is EqualUnmodifiableListView) return _salutationList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salutationList);
}

 final  List<ComboItem> _airportList;
@override@JsonKey(name: "airport_list") List<ComboItem> get airportList {
  if (_airportList is EqualUnmodifiableListView) return _airportList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_airportList);
}

 final  List<ComboItem> _beneficiaryBankAccountTypeList;
@override@JsonKey(name: "beneficiary_bank_account_type_list") List<ComboItem> get beneficiaryBankAccountTypeList {
  if (_beneficiaryBankAccountTypeList is EqualUnmodifiableListView) return _beneficiaryBankAccountTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_beneficiaryBankAccountTypeList);
}

 final  List<ComboItem> _relationshipList;
@override@JsonKey(name: "relationship_list") List<ComboItem> get relationshipList {
  if (_relationshipList is EqualUnmodifiableListView) return _relationshipList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relationshipList);
}

 final  List<ComboItem> _memberCategoryList;
@override@JsonKey(name: "member_category_list") List<ComboItem> get memberCategoryList {
  if (_memberCategoryList is EqualUnmodifiableListView) return _memberCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memberCategoryList);
}

 final  List<ComboItem> _routeTypeList;
@override@JsonKey(name: "route_type_list") List<ComboItem> get routeTypeList {
  if (_routeTypeList is EqualUnmodifiableListView) return _routeTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routeTypeList);
}

 final  List<ComboItem> _beneficiaryBranchList;
@override@JsonKey(name: "beneficiary_branch_list") List<ComboItem> get beneficiaryBranchList {
  if (_beneficiaryBranchList is EqualUnmodifiableListView) return _beneficiaryBranchList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_beneficiaryBranchList);
}

 final  List<ComboItem> _beneficiaryRouteCodeList;
@override@JsonKey(name: "beneficiary_route_code_list") List<ComboItem> get beneficiaryRouteCodeList {
  if (_beneficiaryRouteCodeList is EqualUnmodifiableListView) return _beneficiaryRouteCodeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_beneficiaryRouteCodeList);
}

 final  List<ComboItem> _beneficiaryBankList;
@override@JsonKey(name: "beneficiary_bank_list") List<ComboItem> get beneficiaryBankList {
  if (_beneficiaryBankList is EqualUnmodifiableListView) return _beneficiaryBankList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_beneficiaryBankList);
}


/// Create a copy of CommonComboDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonComboDtoCopyWith<_CommonComboDto> get copyWith => __$CommonComboDtoCopyWithImpl<_CommonComboDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonComboDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonComboDto&&const DeepCollectionEquality().equals(other._countryList, _countryList)&&const DeepCollectionEquality().equals(other._genderList, _genderList)&&const DeepCollectionEquality().equals(other._residencyTypeList, _residencyTypeList)&&const DeepCollectionEquality().equals(other._professionList, _professionList)&&const DeepCollectionEquality().equals(other._salutationList, _salutationList)&&const DeepCollectionEquality().equals(other._airportList, _airportList)&&const DeepCollectionEquality().equals(other._beneficiaryBankAccountTypeList, _beneficiaryBankAccountTypeList)&&const DeepCollectionEquality().equals(other._relationshipList, _relationshipList)&&const DeepCollectionEquality().equals(other._memberCategoryList, _memberCategoryList)&&const DeepCollectionEquality().equals(other._routeTypeList, _routeTypeList)&&const DeepCollectionEquality().equals(other._beneficiaryBranchList, _beneficiaryBranchList)&&const DeepCollectionEquality().equals(other._beneficiaryRouteCodeList, _beneficiaryRouteCodeList)&&const DeepCollectionEquality().equals(other._beneficiaryBankList, _beneficiaryBankList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countryList),const DeepCollectionEquality().hash(_genderList),const DeepCollectionEquality().hash(_residencyTypeList),const DeepCollectionEquality().hash(_professionList),const DeepCollectionEquality().hash(_salutationList),const DeepCollectionEquality().hash(_airportList),const DeepCollectionEquality().hash(_beneficiaryBankAccountTypeList),const DeepCollectionEquality().hash(_relationshipList),const DeepCollectionEquality().hash(_memberCategoryList),const DeepCollectionEquality().hash(_routeTypeList),const DeepCollectionEquality().hash(_beneficiaryBranchList),const DeepCollectionEquality().hash(_beneficiaryRouteCodeList),const DeepCollectionEquality().hash(_beneficiaryBankList));

@override
String toString() {
  return 'CommonComboDto(countryList: $countryList, genderList: $genderList, residencyTypeList: $residencyTypeList, professionList: $professionList, salutationList: $salutationList, airportList: $airportList, beneficiaryBankAccountTypeList: $beneficiaryBankAccountTypeList, relationshipList: $relationshipList, memberCategoryList: $memberCategoryList, routeTypeList: $routeTypeList, beneficiaryBranchList: $beneficiaryBranchList, beneficiaryRouteCodeList: $beneficiaryRouteCodeList, beneficiaryBankList: $beneficiaryBankList)';
}


}

/// @nodoc
abstract mixin class _$CommonComboDtoCopyWith<$Res> implements $CommonComboDtoCopyWith<$Res> {
  factory _$CommonComboDtoCopyWith(_CommonComboDto value, $Res Function(_CommonComboDto) _then) = __$CommonComboDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "country_list") List<ComboItem> countryList,@JsonKey(name: "gender_list") List<ComboItem> genderList,@JsonKey(name: "residency_type_list") List<ComboItem> residencyTypeList,@JsonKey(name: "profession_list") List<ComboItem> professionList,@JsonKey(name: "salutation_list") List<ComboItem> salutationList,@JsonKey(name: "airport_list") List<ComboItem> airportList,@JsonKey(name: "beneficiary_bank_account_type_list") List<ComboItem> beneficiaryBankAccountTypeList,@JsonKey(name: "relationship_list") List<ComboItem> relationshipList,@JsonKey(name: "member_category_list") List<ComboItem> memberCategoryList,@JsonKey(name: "route_type_list") List<ComboItem> routeTypeList,@JsonKey(name: "beneficiary_branch_list") List<ComboItem> beneficiaryBranchList,@JsonKey(name: "beneficiary_route_code_list") List<ComboItem> beneficiaryRouteCodeList,@JsonKey(name: "beneficiary_bank_list") List<ComboItem> beneficiaryBankList
});




}
/// @nodoc
class __$CommonComboDtoCopyWithImpl<$Res>
    implements _$CommonComboDtoCopyWith<$Res> {
  __$CommonComboDtoCopyWithImpl(this._self, this._then);

  final _CommonComboDto _self;
  final $Res Function(_CommonComboDto) _then;

/// Create a copy of CommonComboDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryList = null,Object? genderList = null,Object? residencyTypeList = null,Object? professionList = null,Object? salutationList = null,Object? airportList = null,Object? beneficiaryBankAccountTypeList = null,Object? relationshipList = null,Object? memberCategoryList = null,Object? routeTypeList = null,Object? beneficiaryBranchList = null,Object? beneficiaryRouteCodeList = null,Object? beneficiaryBankList = null,}) {
  return _then(_CommonComboDto(
countryList: null == countryList ? _self._countryList : countryList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,genderList: null == genderList ? _self._genderList : genderList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,residencyTypeList: null == residencyTypeList ? _self._residencyTypeList : residencyTypeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,professionList: null == professionList ? _self._professionList : professionList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,salutationList: null == salutationList ? _self._salutationList : salutationList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,airportList: null == airportList ? _self._airportList : airportList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryBankAccountTypeList: null == beneficiaryBankAccountTypeList ? _self._beneficiaryBankAccountTypeList : beneficiaryBankAccountTypeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,relationshipList: null == relationshipList ? _self._relationshipList : relationshipList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,memberCategoryList: null == memberCategoryList ? _self._memberCategoryList : memberCategoryList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,routeTypeList: null == routeTypeList ? _self._routeTypeList : routeTypeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryBranchList: null == beneficiaryBranchList ? _self._beneficiaryBranchList : beneficiaryBranchList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryRouteCodeList: null == beneficiaryRouteCodeList ? _self._beneficiaryRouteCodeList : beneficiaryRouteCodeList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,beneficiaryBankList: null == beneficiaryBankList ? _self._beneficiaryBankList : beneficiaryBankList // ignore: cast_nullable_to_non_nullable
as List<ComboItem>,
  ));
}


}


/// @nodoc
mixin _$ComboItem {

@JsonKey(name: "code") String get code;@JsonKey(name: "name") String get name;
/// Create a copy of ComboItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComboItemCopyWith<ComboItem> get copyWith => _$ComboItemCopyWithImpl<ComboItem>(this as ComboItem, _$identity);

  /// Serializes this ComboItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComboItem&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name);

@override
String toString() {
  return 'ComboItem(code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class $ComboItemCopyWith<$Res>  {
  factory $ComboItemCopyWith(ComboItem value, $Res Function(ComboItem) _then) = _$ComboItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") String code,@JsonKey(name: "name") String name
});




}
/// @nodoc
class _$ComboItemCopyWithImpl<$Res>
    implements $ComboItemCopyWith<$Res> {
  _$ComboItemCopyWithImpl(this._self, this._then);

  final ComboItem _self;
  final $Res Function(ComboItem) _then;

/// Create a copy of ComboItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ComboItem].
extension ComboItemPatterns on ComboItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComboItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComboItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComboItem value)  $default,){
final _that = this;
switch (_that) {
case _ComboItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComboItem value)?  $default,){
final _that = this;
switch (_that) {
case _ComboItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String code, @JsonKey(name: "name")  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComboItem() when $default != null:
return $default(_that.code,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String code, @JsonKey(name: "name")  String name)  $default,) {final _that = this;
switch (_that) {
case _ComboItem():
return $default(_that.code,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "code")  String code, @JsonKey(name: "name")  String name)?  $default,) {final _that = this;
switch (_that) {
case _ComboItem() when $default != null:
return $default(_that.code,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComboItem implements ComboItem {
  const _ComboItem({@JsonKey(name: "code") required this.code, @JsonKey(name: "name") required this.name});
  factory _ComboItem.fromJson(Map<String, dynamic> json) => _$ComboItemFromJson(json);

@override@JsonKey(name: "code") final  String code;
@override@JsonKey(name: "name") final  String name;

/// Create a copy of ComboItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComboItemCopyWith<_ComboItem> get copyWith => __$ComboItemCopyWithImpl<_ComboItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComboItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComboItem&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name);

@override
String toString() {
  return 'ComboItem(code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ComboItemCopyWith<$Res> implements $ComboItemCopyWith<$Res> {
  factory _$ComboItemCopyWith(_ComboItem value, $Res Function(_ComboItem) _then) = __$ComboItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") String code,@JsonKey(name: "name") String name
});




}
/// @nodoc
class __$ComboItemCopyWithImpl<$Res>
    implements _$ComboItemCopyWith<$Res> {
  __$ComboItemCopyWithImpl(this._self, this._then);

  final _ComboItem _self;
  final $Res Function(_ComboItem) _then;

/// Create a copy of ComboItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,}) {
  return _then(_ComboItem(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
