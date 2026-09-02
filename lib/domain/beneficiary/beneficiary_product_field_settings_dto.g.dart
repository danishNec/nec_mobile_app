// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_product_field_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryProductFieldSettingsDto
_$BeneficiaryProductFieldSettingsDtoFromJson(Map<String, dynamic> json) =>
    _BeneficiaryProductFieldSettingsDto(
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

Map<String, dynamic> _$BeneficiaryProductFieldSettingsDtoToJson(
  _BeneficiaryProductFieldSettingsDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  allProductFieldSettingList: json['all_product_field_setting_list'] == null
      ? null
      : AllProductFieldSettingList.fromJson(
          json['all_product_field_setting_list'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'all_product_field_setting_list': instance.allProductFieldSettingList,
};

_AllProductFieldSettingList _$AllProductFieldSettingListFromJson(
  Map<String, dynamic> json,
) => _AllProductFieldSettingList(
  beneficiary: (json['beneficiary'] as List<dynamic>?)
      ?.map((e) => Beneficiary.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AllProductFieldSettingListToJson(
  _AllProductFieldSettingList instance,
) => <String, dynamic>{'beneficiary': instance.beneficiary};

_Beneficiary _$BeneficiaryFromJson(Map<String, dynamic> json) => _Beneficiary(
  eId: json['e_id'] as String?,
  productCode: (json['product_code'] as num?)?.toInt(),
  displayOrder: (json['display_order'] as num?)?.toInt(),
  fieldName: json['field_name'] as String?,
  displayFieldName: json['display_field_name'] as String?,
  minimumLength: (json['minimum_length'] as num?)?.toInt(),
  maximumLength: (json['maximum_length'] as num?)?.toInt(),
  supportedDataType: json['supported_data_type'] as String?,
  type: json['type'] as String?,
  isTypeSystemReserved: json['is_type_system_reserved'] as bool?,
  enabled: json['enabled'] as bool?,
  mandatory: json['mandatory'] as bool?,
  visible: json['visible'] as bool?,
  defaultValue: json['default_value'] as String?,
  allowedSpecialCharacters: json['allowed_special_characters'] as String?,
  specialCharacterCheckingRqrd:
      json['special_character_checking_rqrd'] as bool?,
  isSystemReserve: json['is_system_reserve'] as bool?,
  memberSection: json['member_section'] as String?,
  wUComboOrder: (json['w_u_combo_order'] as num?)?.toInt(),
  wUFieldSettingsID: (json['w_u_field_settings_i_d'] as num?)?.toInt(),
  isArabic: json['is_arabic'] as bool?,
);

Map<String, dynamic> _$BeneficiaryToJson(_Beneficiary instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'product_code': instance.productCode,
      'display_order': instance.displayOrder,
      'field_name': instance.fieldName,
      'display_field_name': instance.displayFieldName,
      'minimum_length': instance.minimumLength,
      'maximum_length': instance.maximumLength,
      'supported_data_type': instance.supportedDataType,
      'type': instance.type,
      'is_type_system_reserved': instance.isTypeSystemReserved,
      'enabled': instance.enabled,
      'mandatory': instance.mandatory,
      'visible': instance.visible,
      'default_value': instance.defaultValue,
      'allowed_special_characters': instance.allowedSpecialCharacters,
      'special_character_checking_rqrd': instance.specialCharacterCheckingRqrd,
      'is_system_reserve': instance.isSystemReserve,
      'member_section': instance.memberSection,
      'w_u_combo_order': instance.wUComboOrder,
      'w_u_field_settings_i_d': instance.wUFieldSettingsID,
      'is_arabic': instance.isArabic,
    };
