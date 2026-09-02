// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_combo_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryComboListDto _$BeneficiaryComboListDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryComboListDto(
  success: json['success'] as String?,
  statusCode: (json['status_code'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  timeStamp: json['time_stamp'] == null
      ? null
      : DateTime.parse(json['time_stamp'] as String),
  version: json['version'] as String?,
);

Map<String, dynamic> _$BeneficiaryComboListDtoToJson(
  _BeneficiaryComboListDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  salutationList: (json['salutation_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  countryList: (json['country_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  airportList: (json['airport_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  professionList: (json['profession_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  genderList: (json['gender_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  residencyTypeList: (json['residency_type_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  memberCategoryList: (json['member_category_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  relationshipList: (json['relationship_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  beneficiaryBankList: (json['beneficiary_bank_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  beneficiaryTransferTypeList:
      (json['beneficiary_transfer_type_list'] as List<dynamic>?)
          ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
  routeTypeList: (json['route_type_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  identityTypesList: (json['identity_types_list'] as List<dynamic>?)
      ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  beneficiaryBankAccountTypeList:
      (json['beneficiary_bank_account_type_list'] as List<dynamic>?)
          ?.map((e) => AirportListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
  defaultIdentityType: json['defaultIdentityType'] as String?,
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'salutation_list': instance.salutationList,
  'country_list': instance.countryList,
  'airport_list': instance.airportList,
  'profession_list': instance.professionList,
  'gender_list': instance.genderList,
  'residency_type_list': instance.residencyTypeList,
  'member_category_list': instance.memberCategoryList,
  'relationship_list': instance.relationshipList,
  'beneficiary_bank_list': instance.beneficiaryBankList,
  'beneficiary_transfer_type_list': instance.beneficiaryTransferTypeList,
  'route_type_list': instance.routeTypeList,
  'identity_types_list': instance.identityTypesList,
  'beneficiary_bank_account_type_list': instance.beneficiaryBankAccountTypeList,
  'defaultIdentityType': instance.defaultIdentityType,
};

_AirportListElement _$AirportListElementFromJson(Map<String, dynamic> json) =>
    _AirportListElement(
      code: json['code'] as String?,
      name: json['name'] as String?,
      isDefault: json['is_default'] as bool?,
    );

Map<String, dynamic> _$AirportListElementToJson(_AirportListElement instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'is_default': instance.isDefault,
    };
