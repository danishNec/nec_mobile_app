// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_source_of_fund_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiarySourceOfFundDto _$BeneficiarySourceOfFundDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiarySourceOfFundDto(
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

Map<String, dynamic> _$BeneficiarySourceOfFundDtoToJson(
  _BeneficiarySourceOfFundDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  incomeSourceList: (json['income_source_list'] as List<dynamic>?)
      ?.map((e) => IncomeSourceList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'income_source_list': instance.incomeSourceList,
};

_IncomeSourceList _$IncomeSourceListFromJson(Map<String, dynamic> json) =>
    _IncomeSourceList(
      code: json['code'] as String?,
      name: json['name'] as String?,
      isDefault: json['is_default'] as bool?,
    );

Map<String, dynamic> _$IncomeSourceListToJson(_IncomeSourceList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'is_default': instance.isDefault,
    };
