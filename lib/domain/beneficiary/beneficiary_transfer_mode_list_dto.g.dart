// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_transfer_mode_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryTransferModeListDto _$BeneficiaryTransferModeListDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryTransferModeListDto(
  success: json['success'] as String?,
  statusCode: (json['status_code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  timeStamp: json['time_stamp'] == null
      ? null
      : DateTime.parse(json['time_stamp'] as String),
  version: json['version'] as String?,
);

Map<String, dynamic> _$BeneficiaryTransferModeListDtoToJson(
  _BeneficiaryTransferModeListDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  transferModeList: (json['transfer_mode_list'] as List<dynamic>?)
      ?.map((e) => TransferModeList.fromJson(e as Map<String, dynamic>))
      .toList(),
  economicActivityId: (json['economic_activity_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'transfer_mode_list': instance.transferModeList,
  'economic_activity_id': instance.economicActivityId,
};

_TransferModeList _$TransferModeListFromJson(Map<String, dynamic> json) =>
    _TransferModeList(
      eId: json['e_id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$TransferModeListToJson(_TransferModeList instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'code': instance.code,
      'name': instance.name,
    };
