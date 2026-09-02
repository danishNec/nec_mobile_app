// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_id_identity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginIdIdentityDto _$LoginIdIdentityDtoFromJson(Map<String, dynamic> json) =>
    _LoginIdIdentityDto(
      success: json['success'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginIdIdentityDtoToJson(_LoginIdIdentityDto instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  identityTypesList: (json['identity_types_list'] as List<dynamic>?)
      ?.map((e) => CountryListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'identity_types_list': instance.identityTypesList,
};

_CountryListElement _$CountryListElementFromJson(Map<String, dynamic> json) =>
    _CountryListElement(
      code: json['code'] as String?,
      name: json['name'] as String?,
      isDefault: json['is_default'] as bool?,
    );

Map<String, dynamic> _$CountryListElementToJson(_CountryListElement instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'is_default': instance.isDefault,
    };
