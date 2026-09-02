// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_bank_or_agent_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryBankOrAgentListDto _$BeneficiaryBankOrAgentListDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryBankOrAgentListDto(
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

Map<String, dynamic> _$BeneficiaryBankOrAgentListDtoToJson(
  _BeneficiaryBankOrAgentListDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  productList: (json['product_list'] as List<dynamic>?)
      ?.map((e) => ProductList.fromJson(e as Map<String, dynamic>))
      .toList(),
  economicActivityId: (json['economic_activity_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'product_list': instance.productList,
  'economic_activity_id': instance.economicActivityId,
};

_ProductList _$ProductListFromJson(Map<String, dynamic> json) => _ProductList(
  eId: json['e_id'] as String?,
  code: (json['code'] as num?)?.toInt(),
  name: json['name'] as String?,
  routingBankCode: (json['routing_bank_code'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductListToJson(_ProductList instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'code': instance.code,
      'name': instance.name,
      'routing_bank_code': instance.routingBankCode,
    };
