// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_calculate_amount_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeCalculateAmountDto _$HomeCalculateAmountDtoFromJson(
  Map<String, dynamic> json,
) => _HomeCalculateAmountDto(
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

Map<String, dynamic> _$HomeCalculateAmountDtoToJson(
  _HomeCalculateAmountDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  amount: json['amount'] == null
      ? null
      : Amount.fromJson(json['amount'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'amount': instance.amount,
};

_Amount _$AmountFromJson(Map<String, dynamic> json) => _Amount(
  payAmount: (json['pay_amount'] as num?)?.toDouble(),
  commission: (json['commission'] as num?)?.toDouble(),
  taxPercentage: (json['tax_percentage'] as num?)?.toDouble(),
  tax: (json['tax'] as num?)?.toDouble(),
  fee: (json['fee'] as num?)?.toDouble(),
  hoRate: (json['ho_rate'] as num?)?.toDouble(),
  netPayAmount: (json['net_pay_amount'] as num?)?.toDouble(),
  fcCommission: (json['f_c_commission'] as num?)?.toDouble(),
  rate: (json['rate'] as num?)?.toDouble(),
  displayRate: (json['display_rate'] as num?)?.toDouble(),
  netReceiveAmount: (json['net_receive_amount'] as num?)?.toDouble(),
  rateOperator: json['rate_operator'] as String?,
  mobileRateOperator: json['mobile_rate_operator'] as String?,
  agentName: json['agent_name'] as String?,
  agentCode: json['agent_code'] as String?,
  branchName: json['branch_name'] as String?,
  branchCode: json['branch_code'] as String?,
);

Map<String, dynamic> _$AmountToJson(_Amount instance) => <String, dynamic>{
  'pay_amount': instance.payAmount,
  'commission': instance.commission,
  'tax_percentage': instance.taxPercentage,
  'tax': instance.tax,
  'fee': instance.fee,
  'ho_rate': instance.hoRate,
  'net_pay_amount': instance.netPayAmount,
  'f_c_commission': instance.fcCommission,
  'rate': instance.rate,
  'display_rate': instance.displayRate,
  'net_receive_amount': instance.netReceiveAmount,
  'rate_operator': instance.rateOperator,
  'mobile_rate_operator': instance.mobileRateOperator,
  'agent_name': instance.agentName,
  'agent_code': instance.agentCode,
  'branch_name': instance.branchName,
  'branch_code': instance.branchCode,
};
