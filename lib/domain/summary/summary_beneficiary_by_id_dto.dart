import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'summary_beneficiary_by_id_dto.freezed.dart';
part 'summary_beneficiary_by_id_dto.g.dart';

SummaryBeneficiaryByIdDto summaryBeneficiaryByIdDtoFromJson(String str) => SummaryBeneficiaryByIdDto.fromJson(json.decode(str));

String summaryBeneficiaryByIdDtoToJson(SummaryBeneficiaryByIdDto data) => json.encode(data.toJson());

@freezed
sealed class SummaryBeneficiaryByIdDto with _$SummaryBeneficiaryByIdDto {
  const factory SummaryBeneficiaryByIdDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "data")
    Data? data,
  }) = _SummaryBeneficiaryByIdDto;

  factory SummaryBeneficiaryByIdDto.fromJson(Map<String, dynamic> json) => _$SummaryBeneficiaryByIdDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_by_id")
    BeneficiaryById? beneficiaryById,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BeneficiaryById with _$BeneficiaryById {
  const factory BeneficiaryById({
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
    @JsonKey(name: "beneficiary_branch_address")
    String? beneficiaryBranchAddress,
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
    @JsonKey(name: "service_code")
    String? serviceCode,
    @JsonKey(name: "tran_list")
    List<TranList>? tranList,
  }) = _BeneficiaryById;

  factory BeneficiaryById.fromJson(Map<String, dynamic> json) => _$BeneficiaryByIdFromJson(json);
}

@freezed
sealed class TranList with _$TranList {
  const factory TranList({
    @JsonKey(name: "payment_mode")
    String? paymentModeName,
    @JsonKey(name: "payment_mode_code")
    String? paymentModeCode,
  }) = _TranList;

  factory TranList.fromJson(Map<String, dynamic> json) => _$TranListFromJson(json);
}
