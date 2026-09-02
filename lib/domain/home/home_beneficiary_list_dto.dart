import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_beneficiary_list_dto.freezed.dart';
part 'home_beneficiary_list_dto.g.dart';

HomeBeneficiaryListDto homeBeneficiaryListDtoFromJson(String str) => HomeBeneficiaryListDto.fromJson(json.decode(str));

String homeBeneficiaryListDtoToJson(HomeBeneficiaryListDto data) => json.encode(data.toJson());

@freezed
sealed class HomeBeneficiaryListDto with _$HomeBeneficiaryListDto {
  const factory HomeBeneficiaryListDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "status_code")
    int? statusCode,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
    @JsonKey(name: "time_stamp")
    DateTime? timeStamp,
    @JsonKey(name: "version")
    String? version,
  }) = _HomeBeneficiaryListDto;

  factory HomeBeneficiaryListDto.fromJson(Map<String, dynamic> json) => _$HomeBeneficiaryListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_list")
    List<BeneficiaryList>? beneficiaryList,
    @JsonKey(name: "total_record_count")
    int? totalRecordCount,
    @JsonKey(name: "total_page_count")
    int? totalPageCount,
    @JsonKey(name: "per_page_record_count")
    int? perPageRecordCount,
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
    @JsonKey(name: "beneficiary_first_name")
    String? beneficiaryFirstName,
    @JsonKey(name: "beneficiary_middle_name")
    String? beneficiaryMiddleName,
    @JsonKey(name: "beneficiary_last_name")
    String? beneficiaryLastName,
    @JsonKey(name: "beneficiary_first_name_unicode")
    String? beneficiaryFirstNameUnicode,
    @JsonKey(name: "beneficiary_middle_name_unicode")
    String? beneficiaryMiddleNameUnicode,
    @JsonKey(name: "beneficiary_last_name_unicode")
    String? beneficiaryLastNameUnicode,
    @JsonKey(name: "beneficiary_address1")
    String? beneficiaryAddress1,
    @JsonKey(name: "beneficiary_address2")
    String? beneficiaryAddress2,
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
    @JsonKey(name: "beneficiary_branch_code")
    String? beneficiaryBranchCode,
    @JsonKey(name: "beneficary_relation")
    String? beneficaryRelation,
    @JsonKey(name: "beneficary_relation_name")
    String? beneficaryRelationName,
    @JsonKey(name: "beneficiary_bank_account_number")
    String? beneficiaryBankAccountNumber,
    @JsonKey(name: "beneficiary_category_code")
    String? beneficiaryCategoryCode,
    @JsonKey(name: "product_code")
    int? productCode,
    @JsonKey(name: "product_name")
    String? productName,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "disbursal_mode_id")
    int? disbursalModeId,
    @JsonKey(name: "white_list_notes")
    String? whiteListNotes,
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
    @JsonKey(name: "beneficiary_category")
    String? beneficiaryCategory,
    @JsonKey(name: "flag_url")
    String? flagUrl,
    @JsonKey(name: "beneficiary_gender")
    String? beneficiaryGender,
    @JsonKey(name: "route_code")
    String? routeCode,
    @JsonKey(name: "route_type")
    String? routeType,
    @JsonKey(name: "beneficiary_state")
    String? beneficiaryState,
    @JsonKey(name: "beneficiary_city")
    String? beneficiaryCity,
    @JsonKey(name: "beneficiary_salutation")
    String? beneficiarySalutation,
  }) = _BeneficiaryList;

  factory BeneficiaryList.fromJson(Map<String, dynamic> json) => _$BeneficiaryListFromJson(json);
}
