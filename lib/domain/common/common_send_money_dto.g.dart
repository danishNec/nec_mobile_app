// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_send_money_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonSendMoneyDto _$CommonSendMoneyDtoFromJson(Map<String, dynamic> json) =>
    _CommonSendMoneyDto(
      sourceAmount: (json['sourceAmount'] as num?)?.toDouble(),
      destinationAmount: (json['destinationAmount'] as num?)?.toDouble(),
      displayRate: (json['displayRate'] as num?)?.toDouble(),
      rate: (json['rate'] as num?)?.toDouble(),
      rateOperator: json['rateOperator'] as String?,
      benePay: (json['benePay'] as num?)?.toDouble(),
      fCCommission: (json['fCCommission'] as num?)?.toDouble(),
      netLcAmount: (json['netLcAmount'] as num?)?.toDouble(),
      commission: (json['commission'] as num?)?.toDouble(),
      fee: (json['fee'] as num?)?.toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
      taxPercentage: (json['taxPercentage'] as num?)?.toDouble(),
      payAmount: (json['payAmount'] as num?)?.toDouble(),
      totalPayableAmount: (json['totalPayableAmount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CommonSendMoneyDtoToJson(_CommonSendMoneyDto instance) =>
    <String, dynamic>{
      'sourceAmount': instance.sourceAmount,
      'destinationAmount': instance.destinationAmount,
      'displayRate': instance.displayRate,
      'rate': instance.rate,
      'rateOperator': instance.rateOperator,
      'benePay': instance.benePay,
      'fCCommission': instance.fCCommission,
      'netLcAmount': instance.netLcAmount,
      'commission': instance.commission,
      'fee': instance.fee,
      'tax': instance.tax,
      'taxPercentage': instance.taxPercentage,
      'payAmount': instance.payAmount,
      'totalPayableAmount': instance.totalPayableAmount,
    };
