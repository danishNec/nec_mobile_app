// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_beneficiary_by_id_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SummaryBeneficiaryByIdDto _$SummaryBeneficiaryByIdDtoFromJson(
  Map<String, dynamic> json,
) => _SummaryBeneficiaryByIdDto(
  success: json['success'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SummaryBeneficiaryByIdDtoToJson(
  _SummaryBeneficiaryByIdDto instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryById: json['beneficiary_by_id'] == null
      ? null
      : BeneficiaryById.fromJson(
          json['beneficiary_by_id'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_by_id': instance.beneficiaryById,
};

_BeneficiaryById _$BeneficiaryByIdFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryById(
  eId: json['e_id'] as String?,
  beneficiaryCode: (json['beneficiary_code'] as num?)?.toInt(),
  beneficiaryFirstName: json['beneficiary_first_name'] as String?,
  beneficiaryMiddleName: json['beneficiary_middle_name'] as String?,
  beneficiaryLastName: json['beneficiary_last_name'] as String?,
  beneficiaryFirstNameUnicode:
      json['beneficiary_first_name_unicode'] as String?,
  beneficiaryMiddleNameUnicode:
      json['beneficiary_middle_name_unicode'] as String?,
  beneficiaryLastNameUnicode: json['beneficiary_last_name_unicode'] as String?,
  beneficiaryCountryCode: json['beneficiary_country_code'] as String?,
  beneficiaryCountryName: json['beneficiary_country_name'] as String?,
  beneficiaryNationalityCode: json['beneficiary_nationality_code'] as String?,
  beneficiaryNationalityName: json['beneficiary_nationality_name'] as String?,
  beneficiaryBankCode: json['beneficiary_bank_code'] as String?,
  beneficiaryBankName: json['beneficiary_bank_name'] as String?,
  beneficiaryBranchCode: json['beneficiary_branch_code'] as String?,
  beneficiaryBranchName: json['beneficiary_branch_name'] as String?,
  beneficiaryBranchAddress: json['beneficiary_branch_address'] as String?,
  beneficaryRelation: json['beneficary_relation'] as String?,
  beneficaryRelationName: json['beneficary_relation_name'] as String?,
  beneficiaryBankAccountNumber:
      json['beneficiary_bank_account_number'] as String?,
  productCode: (json['product_code'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  disbursalMode: json['disbursal_mode'] as String?,
  currencyCode: json['currency_code'] as String?,
  incomeSourceName: json['income_source_name'] as String?,
  purposeName: json['purpose_name'] as String?,
  sourceOfFund: json['source_of_fund'] as String?,
  purposeOfTransaction: json['purpose_of_transaction'] as String?,
  serviceCode: json['service_code'] as String?,
  tranList: (json['tran_list'] as List<dynamic>?)
      ?.map((e) => TranList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BeneficiaryByIdToJson(_BeneficiaryById instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'beneficiary_code': instance.beneficiaryCode,
      'beneficiary_first_name': instance.beneficiaryFirstName,
      'beneficiary_middle_name': instance.beneficiaryMiddleName,
      'beneficiary_last_name': instance.beneficiaryLastName,
      'beneficiary_first_name_unicode': instance.beneficiaryFirstNameUnicode,
      'beneficiary_middle_name_unicode': instance.beneficiaryMiddleNameUnicode,
      'beneficiary_last_name_unicode': instance.beneficiaryLastNameUnicode,
      'beneficiary_country_code': instance.beneficiaryCountryCode,
      'beneficiary_country_name': instance.beneficiaryCountryName,
      'beneficiary_nationality_code': instance.beneficiaryNationalityCode,
      'beneficiary_nationality_name': instance.beneficiaryNationalityName,
      'beneficiary_bank_code': instance.beneficiaryBankCode,
      'beneficiary_bank_name': instance.beneficiaryBankName,
      'beneficiary_branch_code': instance.beneficiaryBranchCode,
      'beneficiary_branch_name': instance.beneficiaryBranchName,
      'beneficiary_branch_address': instance.beneficiaryBranchAddress,
      'beneficary_relation': instance.beneficaryRelation,
      'beneficary_relation_name': instance.beneficaryRelationName,
      'beneficiary_bank_account_number': instance.beneficiaryBankAccountNumber,
      'product_code': instance.productCode,
      'product_name': instance.productName,
      'disbursal_mode': instance.disbursalMode,
      'currency_code': instance.currencyCode,
      'income_source_name': instance.incomeSourceName,
      'purpose_name': instance.purposeName,
      'source_of_fund': instance.sourceOfFund,
      'purpose_of_transaction': instance.purposeOfTransaction,
      'service_code': instance.serviceCode,
      'tran_list': instance.tranList,
    };

_TranList _$TranListFromJson(Map<String, dynamic> json) => _TranList(
  paymentModeName: json['payment_mode'] as String?,
  paymentModeCode: json['payment_mode_code'] as String?,
);

Map<String, dynamic> _$TranListToJson(_TranList instance) => <String, dynamic>{
  'payment_mode': instance.paymentModeName,
  'payment_mode_code': instance.paymentModeCode,
};
