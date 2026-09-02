// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_beneficiary_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeBeneficiaryListDto _$HomeBeneficiaryListDtoFromJson(
  Map<String, dynamic> json,
) => _HomeBeneficiaryListDto(
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

Map<String, dynamic> _$HomeBeneficiaryListDtoToJson(
  _HomeBeneficiaryListDto instance,
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
      ?.map((e) => BeneficiaryList.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalRecordCount: (json['total_record_count'] as num?)?.toInt(),
  totalPageCount: (json['total_page_count'] as num?)?.toInt(),
  perPageRecordCount: (json['per_page_record_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_list': instance.beneficiaryList,
  'total_record_count': instance.totalRecordCount,
  'total_page_count': instance.totalPageCount,
  'per_page_record_count': instance.perPageRecordCount,
};

_BeneficiaryList _$BeneficiaryListFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryList(
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
  beneficiaryAddress1: json['beneficiary_address1'] as String?,
  beneficiaryAddress2: json['beneficiary_address2'] as String?,
  beneficiaryCountryCode: json['beneficiary_country_code'] as String?,
  beneficiaryCountryName: json['beneficiary_country_name'] as String?,
  beneficiaryNationalityCode: json['beneficiary_nationality_code'] as String?,
  beneficiaryNationalityName: json['beneficiary_nationality_name'] as String?,
  beneficiaryBankCode: json['beneficiary_bank_code'] as String?,
  beneficiaryBranchCode: json['beneficiary_branch_code'] as String?,
  beneficaryRelation: json['beneficary_relation'] as String?,
  beneficaryRelationName: json['beneficary_relation_name'] as String?,
  beneficiaryBankAccountNumber:
      json['beneficiary_bank_account_number'] as String?,
  beneficiaryCategoryCode: json['beneficiary_category_code'] as String?,
  productCode: (json['product_code'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  status: json['status'] as String?,
  disbursalModeId: (json['disbursal_mode_id'] as num?)?.toInt(),
  whiteListNotes: json['white_list_notes'] as String?,
  disbursalMode: json['disbursal_mode'] as String?,
  currencyCode: json['currency_code'] as String?,
  incomeSourceName: json['income_source_name'] as String?,
  purposeName: json['purpose_name'] as String?,
  sourceOfFund: json['source_of_fund'] as String?,
  purposeOfTransaction: json['purpose_of_transaction'] as String?,
  beneficiaryCategory: json['beneficiary_category'] as String?,
  flagUrl: json['flag_url'] as String?,
  beneficiaryGender: json['beneficiary_gender'] as String?,
  routeCode: json['route_code'] as String?,
  routeType: json['route_type'] as String?,
  beneficiaryState: json['beneficiary_state'] as String?,
  beneficiaryCity: json['beneficiary_city'] as String?,
  beneficiarySalutation: json['beneficiary_salutation'] as String?,
);

Map<String, dynamic> _$BeneficiaryListToJson(_BeneficiaryList instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'beneficiary_code': instance.beneficiaryCode,
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
      'beneficiary_nationality_name': instance.beneficiaryNationalityName,
      'beneficiary_bank_code': instance.beneficiaryBankCode,
      'beneficiary_branch_code': instance.beneficiaryBranchCode,
      'beneficary_relation': instance.beneficaryRelation,
      'beneficary_relation_name': instance.beneficaryRelationName,
      'beneficiary_bank_account_number': instance.beneficiaryBankAccountNumber,
      'beneficiary_category_code': instance.beneficiaryCategoryCode,
      'product_code': instance.productCode,
      'product_name': instance.productName,
      'status': instance.status,
      'disbursal_mode_id': instance.disbursalModeId,
      'white_list_notes': instance.whiteListNotes,
      'disbursal_mode': instance.disbursalMode,
      'currency_code': instance.currencyCode,
      'income_source_name': instance.incomeSourceName,
      'purpose_name': instance.purposeName,
      'source_of_fund': instance.sourceOfFund,
      'purpose_of_transaction': instance.purposeOfTransaction,
      'beneficiary_category': instance.beneficiaryCategory,
      'flag_url': instance.flagUrl,
      'beneficiary_gender': instance.beneficiaryGender,
      'route_code': instance.routeCode,
      'route_type': instance.routeType,
      'beneficiary_state': instance.beneficiaryState,
      'beneficiary_city': instance.beneficiaryCity,
      'beneficiary_salutation': instance.beneficiarySalutation,
    };
