// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonTransactionDto _$CommonTransactionDtoFromJson(
  Map<String, dynamic> json,
) => _CommonTransactionDto(
  success: json['success'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? const CommonTransactionData()
      : CommonTransactionData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CommonTransactionDtoToJson(
  _CommonTransactionDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_CommonTransactionData _$CommonTransactionDataFromJson(
  Map<String, dynamic> json,
) => _CommonTransactionData(
  transactions:
      (json['transactions'] as List<dynamic>?)
          ?.map((e) => CommonTransaction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CommonTransactionDataToJson(
  _CommonTransactionData instance,
) => <String, dynamic>{'transactions': instance.transactions};

_CommonTransaction _$CommonTransactionFromJson(Map<String, dynamic> json) =>
    _CommonTransaction(
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

Map<String, dynamic> _$CommonTransactionToJson(_CommonTransaction instance) =>
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
