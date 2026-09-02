import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_list_dto.freezed.dart';
part 'beneficiary_list_dto.g.dart';

BeneficiaryListDto beneficiaryListDtoFromJson(String str) => BeneficiaryListDto.fromJson(json.decode(str));

String beneficiaryListDtoToJson(BeneficiaryListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryListDto with _$BeneficiaryListDto {
  const factory BeneficiaryListDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
    String? version,
  }) = _BeneficiaryListDto;

  factory BeneficiaryListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_list")
    List<BeneficiaryList>? beneficiaryList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BeneficiaryList with _$BeneficiaryList {
  const factory BeneficiaryList({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "beneficiary_code")
    int? beneficiaryCode,
    @JsonKey(name: "beneficiary_gender")
    String? beneficiaryGender,
    @JsonKey(name: "beneficiary_first_name")
    String? beneficiaryFirstName,
    @JsonKey(name: "beneficiary_last_name")
    String? beneficiaryLastName,
    @JsonKey(name: "beneficiary_phone")
    String? beneficiaryPhone,
    @JsonKey(name: "beneficiary_mobile")
    String? beneficiaryMobile,
    @JsonKey(name: "beneficiary_country_code")
    String? beneficiaryCountryCode,
    @JsonKey(name: "beneficiary_country_name")
    String? beneficiaryCountryName,
    @JsonKey(name: "beneficiary_nationality_code")
    String? beneficiaryNationalityCode,
    @JsonKey(name: "beneficiary_nationality_name")
    String? beneficiaryNationalityName,
    @JsonKey(name: "beneficiary_bank_code")
    String? beneficiaryBankCode,
    @JsonKey(name: "beneficiary_bank_name")
    String? beneficiaryBankName,
    @JsonKey(name: "beneficiary_branch_code")
    String? beneficiaryBranchCode,
    @JsonKey(name: "beneficiary_branch_name")
    String? beneficiaryBranchName,
    @JsonKey(name: "beneficary_relation")
    String? beneficaryRelation,
    @JsonKey(name: "beneficary_relation_name")
    String? beneficaryRelationName,
    @JsonKey(name: "beneficiary_bank_account_number")
    String? beneficiaryBankAccountNumber,
    @JsonKey(name: "product_code")
    int? productCode,
    @JsonKey(name: "product_name")
    String? productName,
    @JsonKey(name: "currency_name")
    String? currencyName,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "disbursal_mode_id")
    int? disbursalModeId,
    @JsonKey(name: "disbursal_mode")
    String? disbursalMode,
    @JsonKey(name: "currency_code")
    String? currencyCode,
    @JsonKey(name: "income_source_name")
    String? incomeSourceName,
    @JsonKey(name: "purpose_name")
    String? purposeName,
    @JsonKey(name: "source_of_fund")
    String? sourceOfFund,
    @JsonKey(name: "purpose_of_transaction")
    String? purposeOfTransaction,
    @JsonKey(name: "flag_url")
    String? flagUrl,
    @JsonKey(name: "beneficiary_idtype_name")
    String? beneficiaryIdtypeName,
    @JsonKey(name: "beneficiary_idtype_code")
    String? beneficiaryIdtypeCode,
    @JsonKey(name: "beneficiary_idtype_no")
    String? beneficiaryIdtypeNo,
    @JsonKey(name: "route_code")
    String? routeCode,
    @JsonKey(name: "other_info")
    String? otherInfo,
    @JsonKey(name: "ben_father_name")
    String? beneficiaryFatherName,
    @JsonKey(name: "beneficiary_bank_account_type")
    String? beneficiaryBankAccountType,
    @JsonKey(name: "beneficiary_bank_account_type_code")
    String? beneficiaryBankAccountTypeCode,
  }) = _BeneficiaryList;

  factory BeneficiaryList.fromJson(Map<String, dynamic> json) => _$BeneficiaryListFromJson(json);
}
