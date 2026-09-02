// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryListDto _$BeneficiaryListDtoFromJson(Map<String, dynamic> json) =>
    _BeneficiaryListDto(
      success: json['success'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$BeneficiaryListDtoToJson(_BeneficiaryListDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'version': instance.version,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryList: (json['beneficiary_list'] as List<dynamic>?)
      ?.map((e) => BeneficiaryList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_list': instance.beneficiaryList,
};

_BeneficiaryList _$BeneficiaryListFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryList(
  eId: json['e_id'] as String?,
  beneficiaryCode: (json['beneficiary_code'] as num?)?.toInt(),
  beneficiaryGender: json['beneficiary_gender'] as String?,
  beneficiaryFirstName: json['beneficiary_first_name'] as String?,
  beneficiaryLastName: json['beneficiary_last_name'] as String?,
  beneficiaryPhone: json['beneficiary_phone'] as String?,
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
  beneficiaryBankAccountNumber:
      json['beneficiary_bank_account_number'] as String?,
  productCode: (json['product_code'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  currencyName: json['currency_name'] as String?,
  status: json['status'] as String?,
  disbursalModeId: (json['disbursal_mode_id'] as num?)?.toInt(),
  disbursalMode: json['disbursal_mode'] as String?,
  currencyCode: json['currency_code'] as String?,
  incomeSourceName: json['income_source_name'] as String?,
  purposeName: json['purpose_name'] as String?,
  sourceOfFund: json['source_of_fund'] as String?,
  purposeOfTransaction: json['purpose_of_transaction'] as String?,
  flagUrl: json['flag_url'] as String?,
  beneficiaryIdtypeName: json['beneficiary_idtype_name'] as String?,
  beneficiaryIdtypeCode: json['beneficiary_idtype_code'] as String?,
  beneficiaryIdtypeNo: json['beneficiary_idtype_no'] as String?,
  routeCode: json['route_code'] as String?,
  otherInfo: json['other_info'] as String?,
  beneficiaryFatherName: json['ben_father_name'] as String?,
  beneficiaryBankAccountType: json['beneficiary_bank_account_type'] as String?,
  beneficiaryBankAccountTypeCode:
      json['beneficiary_bank_account_type_code'] as String?,
);

Map<String, dynamic> _$BeneficiaryListToJson(
  _BeneficiaryList instance,
) => <String, dynamic>{
  'e_id': instance.eId,
  'beneficiary_code': instance.beneficiaryCode,
  'beneficiary_gender': instance.beneficiaryGender,
  'beneficiary_first_name': instance.beneficiaryFirstName,
  'beneficiary_last_name': instance.beneficiaryLastName,
  'beneficiary_phone': instance.beneficiaryPhone,
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
  'beneficiary_bank_account_number': instance.beneficiaryBankAccountNumber,
  'product_code': instance.productCode,
  'product_name': instance.productName,
  'currency_name': instance.currencyName,
  'status': instance.status,
  'disbursal_mode_id': instance.disbursalModeId,
  'disbursal_mode': instance.disbursalMode,
  'currency_code': instance.currencyCode,
  'income_source_name': instance.incomeSourceName,
  'purpose_name': instance.purposeName,
  'source_of_fund': instance.sourceOfFund,
  'purpose_of_transaction': instance.purposeOfTransaction,
  'flag_url': instance.flagUrl,
  'beneficiary_idtype_name': instance.beneficiaryIdtypeName,
  'beneficiary_idtype_code': instance.beneficiaryIdtypeCode,
  'beneficiary_idtype_no': instance.beneficiaryIdtypeNo,
  'route_code': instance.routeCode,
  'other_info': instance.otherInfo,
  'ben_father_name': instance.beneficiaryFatherName,
  'beneficiary_bank_account_type': instance.beneficiaryBankAccountType,
  'beneficiary_bank_account_type_code': instance.beneficiaryBankAccountTypeCode,
};
