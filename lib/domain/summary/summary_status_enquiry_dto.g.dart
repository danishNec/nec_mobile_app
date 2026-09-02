// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_status_enquiry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummaryStatusEnquiryDto _$SummaryStatusEnquiryDtoFromJson(
  Map<String, dynamic> json,
) => _SummaryStatusEnquiryDto(
  success: json['success'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SummaryStatusEnquiryDtoToJson(
  _SummaryStatusEnquiryDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  trackId: json['track_id'] as String?,
  transactionReference: json['transaction_reference'] as String?,
  amount: (json['amount'] as num?)?.toDouble(),
  beneficiaryName: json['beneficiary_name'] as String?,
  paymentIntentId: json['payment_intent_id'] as String?,
  paymentMethod: json['payment_method'] as String?,
  transactionDate: json['transaction_date'] == null
      ? null
      : DateTime.parse(json['transaction_date'] as String),
  paymentStatus: json['payment_status'] as String?,
  authResponseCode: json['auth_response_code'] as String?,
  statusDescription: json['status_description'] as String?,
  referenceNo: json['reference_no'] as String?,
  pGTransactionId: json['p_g_transaction_id'] as String?,
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'track_id': instance.trackId,
  'transaction_reference': instance.transactionReference,
  'amount': instance.amount,
  'beneficiary_name': instance.beneficiaryName,
  'payment_intent_id': instance.paymentIntentId,
  'payment_method': instance.paymentMethod,
  'transaction_date': instance.transactionDate?.toIso8601String(),
  'payment_status': instance.paymentStatus,
  'auth_response_code': instance.authResponseCode,
  'status_description': instance.statusDescription,
  'reference_no': instance.referenceNo,
  'p_g_transaction_id': instance.pGTransactionId,
};
