// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_by_id_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryByIdDto _$BeneficiaryByIdDtoFromJson(Map<String, dynamic> json) =>
    _BeneficiaryByIdDto(
      success: json['success'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BeneficiaryByIdDtoToJson(_BeneficiaryByIdDto instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

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
  beneficiaryGender: json['beneficiary_gender'] as String?,
  beneficiaryFirstName: json['beneficiary_first_name'] as String?,
  beneficiaryLastName: json['beneficiary_last_name'] as String?,
  beneficiaryMobile: json['beneficiary_mobile'] as String?,
  beneficiaryCountryCode: json['beneficiary_country_code'] as String?,
  beneficiaryCountryName: json['beneficiary_country_name'] as String?,
  beneficiaryNationalityCode: json['beneficiary_nationality_code'] as String?,
  beneficiaryNationalityName: json['beneficiary_nationality_name'] as String?,
  beneficiaryBankCode: json['beneficiary_bank_code'] as String?,
  beneficiaryBankName: json['beneficiary_bank_name'] as String?,
  beneficiaryBranchCode: json['beneficiary_branch_code'] as String?,
  beneficiaryBranchName: json['beneficiary_branch_name'] as String?,
  beneficaryRelation: json['beneficary_relation'] as String?,
  beneficaryRelationName: json['beneficary_relation_name'] as String?,
  routeCode: json['route_code'] as String?,
  productCode: (json['product_code'] as num?)?.toInt(),
  status: json['status'] as String?,
  disbursalModeId: (json['disbursal_mode_id'] as num?)?.toInt(),
  disbursalMode: json['disbursal_mode'] as String?,
  currencyCode: json['currency_code'] as String?,
  incomeSourceName: json['income_source_name'] as String?,
  purposeName: json['purpose_name'] as String?,
  sourceOfFund: json['source_of_fund'] as String?,
  purposeOfTransaction: json['purpose_of_transaction'] as String?,
);

Map<String, dynamic> _$BeneficiaryByIdToJson(_BeneficiaryById instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'beneficiary_code': instance.beneficiaryCode,
      'beneficiary_gender': instance.beneficiaryGender,
      'beneficiary_first_name': instance.beneficiaryFirstName,
      'beneficiary_last_name': instance.beneficiaryLastName,
      'beneficiary_mobile': instance.beneficiaryMobile,
      'beneficiary_country_code': instance.beneficiaryCountryCode,
      'beneficiary_country_name': instance.beneficiaryCountryName,
      'beneficiary_nationality_code': instance.beneficiaryNationalityCode,
      'beneficiary_nationality_name': instance.beneficiaryNationalityName,
      'beneficiary_bank_code': instance.beneficiaryBankCode,
      'beneficiary_bank_name': instance.beneficiaryBankName,
      'beneficiary_branch_code': instance.beneficiaryBranchCode,
      'beneficiary_branch_name': instance.beneficiaryBranchName,
      'beneficary_relation': instance.beneficaryRelation,
      'beneficary_relation_name': instance.beneficaryRelationName,
      'route_code': instance.routeCode,
      'product_code': instance.productCode,
      'status': instance.status,
      'disbursal_mode_id': instance.disbursalModeId,
      'disbursal_mode': instance.disbursalMode,
      'currency_code': instance.currencyCode,
      'income_source_name': instance.incomeSourceName,
      'purpose_name': instance.purposeName,
      'source_of_fund': instance.sourceOfFund,
      'purpose_of_transaction': instance.purposeOfTransaction,
    };
