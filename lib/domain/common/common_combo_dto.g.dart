// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_combo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonComboDto _$CommonComboDtoFromJson(Map<String, dynamic> json) =>
    _CommonComboDto(
      countryList:
          (json['country_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      genderList:
          (json['gender_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      residencyTypeList:
          (json['residency_type_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      professionList:
          (json['profession_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      salutationList:
          (json['salutation_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      airportList:
          (json['airport_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      beneficiaryBankAccountTypeList:
          (json['beneficiary_bank_account_type_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      relationshipList:
          (json['relationship_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      memberCategoryList:
          (json['member_category_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      routeTypeList:
          (json['route_type_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      beneficiaryBranchList:
          (json['beneficiary_branch_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      beneficiaryRouteCodeList:
          (json['beneficiary_route_code_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      beneficiaryBankList:
          (json['beneficiary_bank_list'] as List<dynamic>?)
              ?.map((e) => ComboItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CommonComboDtoToJson(
  _CommonComboDto instance,
) => <String, dynamic>{
  'country_list': instance.countryList,
  'gender_list': instance.genderList,
  'residency_type_list': instance.residencyTypeList,
  'profession_list': instance.professionList,
  'salutation_list': instance.salutationList,
  'airport_list': instance.airportList,
  'beneficiary_bank_account_type_list': instance.beneficiaryBankAccountTypeList,
  'relationship_list': instance.relationshipList,
  'member_category_list': instance.memberCategoryList,
  'route_type_list': instance.routeTypeList,
  'beneficiary_branch_list': instance.beneficiaryBranchList,
  'beneficiary_route_code_list': instance.beneficiaryRouteCodeList,
  'beneficiary_bank_list': instance.beneficiaryBankList,
};

_ComboItem _$ComboItemFromJson(Map<String, dynamic> json) =>
    _ComboItem(code: json['code'] as String, name: json['name'] as String);

Map<String, dynamic> _$ComboItemToJson(_ComboItem instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};
