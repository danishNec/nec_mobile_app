// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_route_code_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryRouteCodeDto _$BeneficiaryRouteCodeDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryRouteCodeDto(
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

Map<String, dynamic> _$BeneficiaryRouteCodeDtoToJson(
  _BeneficiaryRouteCodeDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryRouteCodeList:
      (json['beneficiary_route_code_list'] as List<dynamic>?)
          ?.map(
            (e) => BeneficiaryRouteCodeList.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_route_code_list': instance.beneficiaryRouteCodeList,
};

_BeneficiaryRouteCodeList _$BeneficiaryRouteCodeListFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryRouteCodeList(
  code: json['code'] as String?,
  isDefault: json['is_default'] as bool?,
);

Map<String, dynamic> _$BeneficiaryRouteCodeListToJson(
  _BeneficiaryRouteCodeList instance,
) => <String, dynamic>{'code': instance.code, 'is_default': instance.isDefault};
