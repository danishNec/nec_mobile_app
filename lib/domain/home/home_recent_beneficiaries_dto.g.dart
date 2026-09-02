// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_recent_beneficiaries_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeRecentBeneficiariesDto _$HomeRecentBeneficiariesDtoFromJson(
  Map<String, dynamic> json,
) => _HomeRecentBeneficiariesDto(
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

Map<String, dynamic> _$HomeRecentBeneficiariesDtoToJson(
  _HomeRecentBeneficiariesDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryList: (json['beneficiary_list'] as List<dynamic>?)
      ?.map((e) => RecentBeneficiaryList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_list': instance.beneficiaryList,
};

_RecentBeneficiaryList _$RecentBeneficiaryListFromJson(
  Map<String, dynamic> json,
) => _RecentBeneficiaryList(
  eId: json['e_id'] as String?,
  transactionReference: (json['transaction_reference'] as num?)?.toInt(),
  beneficiaryCode: (json['beneficiary_code'] as num?)?.toInt(),
  beneficiarySalutation: json['beneficiary_salutation'] as String?,
  beneficiaryGender: json['beneficiary_gender'] as String?,
  beneficiaryFirstName: json['beneficiary_first_name'] as String?,
  beneficiaryMiddleName: json['beneficiary_middle_name'] as String?,
  beneficiaryLastName: json['beneficiary_last_name'] as String?,
  beneficiaryFirstNameUnicode:
      json['beneficiary_first_name_unicode'] as String?,
  beneficiaryMiddleNameUnicode:
      json['beneficiary_middle_name_unicode'] as String?,
  beneficiaryLastNameUnicode: json['beneficiary_last_name_unicode'] as String?,
  beneficiaryAddress1: json['beneficiary_address1'] as String?,
  beneficiaryAddress2: json['beneficiary_address2'] as String?,
  beneficiaryCountryCode: json['beneficiary_country_code'] as String?,
  beneficiaryCountryName: json['beneficiary_country_name'] as String?,
  beneficiaryNationalityCode: json['beneficiary_nationality_code'] as String?,
  beneficiaryBankCode: json['beneficiary_bank_code'] as String?,
  beneficiaryBankName: json['beneficiary_bank_name'] as String?,
  beneficiaryBranchCode: json['beneficiary_branch_code'] as String?,
  beneficaryRelation: json['beneficary_relation'] as String?,
  beneficaryRelationName: json['beneficary_relation_name'] as String?,
  beneficiaryBankAccountNumber:
      json['beneficiary_bank_account_number'] as String?,
  beneficiaryCategoryCode: json['beneficiary_category_code'] as String?,
  routeCode: json['route_code'] as String?,
  productCode: (json['product_code'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  status: json['status'] as String?,
  disbursalModeId: (json['disbursal_mode_id'] as num?)?.toInt(),
  disbursalMode: json['disbursal_mode'] as String?,
  currencyCode: json['currency_code'] as String?,
  incomeSourceName: json['income_source_name'] as String?,
  purposeName: json['purpose_name'] as String?,
  sourceOfFund: json['source_of_fund'] as String?,
  purposeOfTransaction: json['purpose_of_transaction'] as String?,
  beneficiaryCategory: json['beneficiary_category'] as String?,
  moduleCode: (json['module_code'] as num?)?.toInt(),
  routingBankCode: (json['routing_bank_code'] as num?)?.toInt(),
  flagUrl: json['flag_url'] as String?,
  beneficiaryStateId: (json['beneficiary_state_id'] as num?)?.toInt(),
  tranList: (json['tran_list'] as List<dynamic>?)
      ?.map((e) => TranList.fromJson(e as Map<String, dynamic>))
      .toList(),
  beneficiaryState: json['beneficiary_state'] as String?,
  beneficiaryCity: json['beneficiary_city'] as String?,
);

Map<String, dynamic> _$RecentBeneficiaryListToJson(
  _RecentBeneficiaryList instance,
) => <String, dynamic>{
  'e_id': instance.eId,
  'transaction_reference': instance.transactionReference,
  'beneficiary_code': instance.beneficiaryCode,
  'beneficiary_salutation': instance.beneficiarySalutation,
  'beneficiary_gender': instance.beneficiaryGender,
  'beneficiary_first_name': instance.beneficiaryFirstName,
  'beneficiary_middle_name': instance.beneficiaryMiddleName,
  'beneficiary_last_name': instance.beneficiaryLastName,
  'beneficiary_first_name_unicode': instance.beneficiaryFirstNameUnicode,
  'beneficiary_middle_name_unicode': instance.beneficiaryMiddleNameUnicode,
  'beneficiary_last_name_unicode': instance.beneficiaryLastNameUnicode,
  'beneficiary_address1': instance.beneficiaryAddress1,
  'beneficiary_address2': instance.beneficiaryAddress2,
  'beneficiary_country_code': instance.beneficiaryCountryCode,
  'beneficiary_country_name': instance.beneficiaryCountryName,
  'beneficiary_nationality_code': instance.beneficiaryNationalityCode,
  'beneficiary_bank_code': instance.beneficiaryBankCode,
  'beneficiary_bank_name': instance.beneficiaryBankName,
  'beneficiary_branch_code': instance.beneficiaryBranchCode,
  'beneficary_relation': instance.beneficaryRelation,
  'beneficary_relation_name': instance.beneficaryRelationName,
  'beneficiary_bank_account_number': instance.beneficiaryBankAccountNumber,
  'beneficiary_category_code': instance.beneficiaryCategoryCode,
  'route_code': instance.routeCode,
  'product_code': instance.productCode,
  'product_name': instance.productName,
  'status': instance.status,
  'disbursal_mode_id': instance.disbursalModeId,
  'disbursal_mode': instance.disbursalMode,
  'currency_code': instance.currencyCode,
  'income_source_name': instance.incomeSourceName,
  'purpose_name': instance.purposeName,
  'source_of_fund': instance.sourceOfFund,
  'purpose_of_transaction': instance.purposeOfTransaction,
  'beneficiary_category': instance.beneficiaryCategory,
  'module_code': instance.moduleCode,
  'routing_bank_code': instance.routingBankCode,
  'flag_url': instance.flagUrl,
  'beneficiary_state_id': instance.beneficiaryStateId,
  'tran_list': instance.tranList,
  'beneficiary_state': instance.beneficiaryState,
  'beneficiary_city': instance.beneficiaryCity,
};

_TranList _$TranListFromJson(Map<String, dynamic> json) => _TranList(
  transactionReference: (json['transaction_reference'] as num?)?.toInt(),
  transactionDate: json['transaction_date'] == null
      ? null
      : DateTime.parse(json['transaction_date'] as String),
  sourceCurrencyCode: json['source_currency_code'] as String?,
  sourceCurrencyName: json['source_currency_name'] as String?,
  destinationCurrencyCode: json['destination_currency_code'] as String?,
  destinationCurrencyName: json['destination_currency_name'] as String?,
  sourceCountryCode: json['source_country_code'] as String?,
  sourceCountryName: json['source_country_name'] as String?,
  destinationCountryCode: json['destination_country_code'] as String?,
  destinationCountryName: json['destination_country_name'] as String?,
  sourceAmount: (json['source_amount'] as num?)?.toDouble(),
  localAmount: (json['local_amount'] as num?)?.toDouble(),
  benePay: (json['bene_pay'] as num?)?.toInt(),
  transactionProductCode: (json['transaction_product_code'] as num?)?.toInt(),
  rate: (json['rate'] as num?)?.toInt(),
  destinationAmount: (json['destination_amount'] as num?)?.toDouble(),
  commission: (json['commission'] as num?)?.toInt(),
  taxPercentage: (json['tax_percentage'] as num?)?.toInt(),
  taxCollected: (json['tax_collected'] as num?)?.toInt(),
  payAmount: (json['pay_amount'] as num?)?.toInt(),
  receiveAmount: (json['receive_amount'] as num?)?.toInt(),
  productCode: (json['product_code'] as num?)?.toInt(),
  paymentMode: json['payment_mode'] as String?,
  paymentModeCode: json['payment_mode_code'] as String?,
  beneficiaryCode: (json['beneficiary_code'] as num?)?.toInt(),
  routeType: json['route_type'] as String?,
  status: json['status'] as String?,
  disbursalModeName: json['disbursal_mode_name'] as String?,
  createdOn: json['created_on'] == null
      ? null
      : DateTime.parse(json['created_on'] as String),
  routingBankName: json['routing_bank_name'] as String?,
  routingBankAccountCode: json['routing_bank_account_code'] as String?,
  disbursalModeCode: json['disbursal_mode_code'] as String?,
  disbursalModeCBCode: json['disbursal_mode_c_b_code'] as String?,
  moduleCode: (json['module_code'] as num?)?.toInt(),
  locationCode: (json['location_code'] as num?)?.toInt(),
  routingBankCode: (json['routing_bank_code'] as num?)?.toInt(),
  disbursalModeId: (json['disbursal_mode_id'] as num?)?.toInt(),
  memberCode: (json['member_code'] as num?)?.toInt(),
  transactionPinNumber: json['transaction_pin_number'] as String?,
  decimalPlaces: (json['decimal_places'] as num?)?.toInt(),
);

Map<String, dynamic> _$TranListToJson(_TranList instance) => <String, dynamic>{
  'transaction_reference': instance.transactionReference,
  'transaction_date': instance.transactionDate?.toIso8601String(),
  'source_currency_code': instance.sourceCurrencyCode,
  'source_currency_name': instance.sourceCurrencyName,
  'destination_currency_code': instance.destinationCurrencyCode,
  'destination_currency_name': instance.destinationCurrencyName,
  'source_country_code': instance.sourceCountryCode,
  'source_country_name': instance.sourceCountryName,
  'destination_country_code': instance.destinationCountryCode,
  'destination_country_name': instance.destinationCountryName,
  'source_amount': instance.sourceAmount,
  'local_amount': instance.localAmount,
  'bene_pay': instance.benePay,
  'transaction_product_code': instance.transactionProductCode,
  'rate': instance.rate,
  'destination_amount': instance.destinationAmount,
  'commission': instance.commission,
  'tax_percentage': instance.taxPercentage,
  'tax_collected': instance.taxCollected,
  'pay_amount': instance.payAmount,
  'receive_amount': instance.receiveAmount,
  'product_code': instance.productCode,
  'payment_mode': instance.paymentMode,
  'payment_mode_code': instance.paymentModeCode,
  'beneficiary_code': instance.beneficiaryCode,
  'route_type': instance.routeType,
  'status': instance.status,
  'disbursal_mode_name': instance.disbursalModeName,
  'created_on': instance.createdOn?.toIso8601String(),
  'routing_bank_name': instance.routingBankName,
  'routing_bank_account_code': instance.routingBankAccountCode,
  'disbursal_mode_code': instance.disbursalModeCode,
  'disbursal_mode_c_b_code': instance.disbursalModeCBCode,
  'module_code': instance.moduleCode,
  'location_code': instance.locationCode,
  'routing_bank_code': instance.routingBankCode,
  'disbursal_mode_id': instance.disbursalModeId,
  'member_code': instance.memberCode,
  'transaction_pin_number': instance.transactionPinNumber,
  'decimal_places': instance.decimalPlaces,
};
