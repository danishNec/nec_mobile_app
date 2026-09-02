// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionHistoryDto _$TransactionHistoryDtoFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryDto(
  success: json['success'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TransactionHistoryDtoToJson(
  _TransactionHistoryDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  transactions: (json['transactions'] as List<dynamic>?)
      ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'transactions': instance.transactions,
};

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  transactionReference: (json['transaction_reference'] as num?)?.toInt(),
  beneficiaryName: json['beneficiary_name'] as String?,
  eId: json['e_id'] as String?,
  sourceCurrencyCode: json['source_currency_code'] as String?,
  destinationCurrencyCode: json['destination_currency_code'] as String?,
  sourceCountryCode: json['source_country_code'] as String?,
  destinationCountryCode: json['destination_country_code'] as String?,
  payAmount: (json['pay_amount'] as num?)?.toInt(),
  receiveAmount: (json['receive_amount'] as num?)?.toDouble(),
  transferModeCode: json['transfer_mode_code'] as String?,
  transferMode: json['transfer_mode'] as String?,
  paymentMode: json['payment_mode'] as String?,
  status: json['status'] as String?,
  appStatus: json['app_status'] as String?,
  createdOn: json['created_on'] == null
      ? null
      : DateTime.parse(json['created_on'] as String),
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'transaction_reference': instance.transactionReference,
      'beneficiary_name': instance.beneficiaryName,
      'e_id': instance.eId,
      'source_currency_code': instance.sourceCurrencyCode,
      'destination_currency_code': instance.destinationCurrencyCode,
      'source_country_code': instance.sourceCountryCode,
      'destination_country_code': instance.destinationCountryCode,
      'pay_amount': instance.payAmount,
      'receive_amount': instance.receiveAmount,
      'transfer_mode_code': instance.transferModeCode,
      'transfer_mode': instance.transferMode,
      'payment_mode': instance.paymentMode,
      'status': instance.status,
      'app_status': instance.appStatus,
      'created_on': instance.createdOn?.toIso8601String(),
    };
