// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_bank_combo_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryBankComboListDto _$BeneficiaryBankComboListDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryBankComboListDto(
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

Map<String, dynamic> _$BeneficiaryBankComboListDtoToJson(
  _BeneficiaryBankComboListDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryBankList: (json['beneficiary_bank_list'] as List<dynamic>?)
      ?.map((e) => BeneficiaryBankList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_bank_list': instance.beneficiaryBankList,
};

_BeneficiaryBankList _$BeneficiaryBankListFromJson(Map<String, dynamic> json) =>
    _BeneficiaryBankList(
      code: json['code'] as String?,
      name: json['name'] as String?,
      isDefault: json['is_default'] as bool?,
    );

Map<String, dynamic> _$BeneficiaryBankListToJson(
  _BeneficiaryBankList instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'is_default': instance.isDefault,
};
