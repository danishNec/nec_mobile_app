// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_payment_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummaryPaymentMethodDto _$SummaryPaymentMethodDtoFromJson(
  Map<String, dynamic> json,
) => _SummaryPaymentMethodDto(
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

Map<String, dynamic> _$SummaryPaymentMethodDtoToJson(
  _SummaryPaymentMethodDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  paymentModes: (json['payment_modes'] as List<dynamic>?)
      ?.map((e) => PaymentMode.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'payment_modes': instance.paymentModes,
};

_PaymentMode _$PaymentModeFromJson(Map<String, dynamic> json) =>
    _PaymentMode(code: json['code'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$PaymentModeToJson(_PaymentMode instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};
