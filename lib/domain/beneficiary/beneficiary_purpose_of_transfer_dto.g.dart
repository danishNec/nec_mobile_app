// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_purpose_of_transfer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryPurposeOfTransferDto _$BeneficiaryPurposeOfTransferDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryPurposeOfTransferDto(
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

Map<String, dynamic> _$BeneficiaryPurposeOfTransferDtoToJson(
  _BeneficiaryPurposeOfTransferDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  purposeList: (json['purpose_list'] as List<dynamic>?)
      ?.map((e) => PurposeList.fromJson(e as Map<String, dynamic>))
      .toList(),
  appTransactionReference: (json['app_transaction_reference'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'purpose_list': instance.purposeList,
  'app_transaction_reference': instance.appTransactionReference,
};

_PurposeList _$PurposeListFromJson(Map<String, dynamic> json) => _PurposeList(
  code: json['code'] as String?,
  name: json['name'] as String?,
  isDefault: json['is_default'] as bool?,
);

Map<String, dynamic> _$PurposeListToJson(_PurposeList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'is_default': instance.isDefault,
    };
