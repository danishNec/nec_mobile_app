// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_temporary_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummaryTemporarySessionDto _$SummaryTemporarySessionDtoFromJson(
  Map<String, dynamic> json,
) => _SummaryTemporarySessionDto(
  success: json['success'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SummaryTemporarySessionDtoToJson(
  _SummaryTemporarySessionDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  isMaker: json['is_maker'] as bool?,
  appTransactionReference: json['app_transaction_reference'] as String?,
  pGUrl: json['p_g_url'] as String?,
  eId: json['e_id'] as String?,
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'is_maker': instance.isMaker,
  'app_transaction_reference': instance.appTransactionReference,
  'p_g_url': instance.pGUrl,
  'e_id': instance.eId,
};
