import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_by_id_dto.freezed.dart';
part 'beneficiary_by_id_dto.g.dart';

BeneficiaryByIdDto beneficiaryByIdDtoFromJson(String str) => BeneficiaryByIdDto.fromJson(json.decode(str));

String beneficiaryByIdDtoToJson(BeneficiaryByIdDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryByIdDto with _$BeneficiaryByIdDto {
  const factory BeneficiaryByIdDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "data")
    Data? data,
  }) = _BeneficiaryByIdDto;

  factory BeneficiaryByIdDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryByIdDtoFromJson(json);
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
    @JsonKey(name: "beneficiary_gender")
    String? beneficiaryGender,
    @JsonKey(name: "beneficiary_first_name")
    String? beneficiaryFirstName,
    @JsonKey(name: "beneficiary_last_name")
    String? beneficiaryLastName,
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
    @JsonKey(name: "route_code")
    String? routeCode,
    @JsonKey(name: "product_code")
    int? productCode,
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
  }) = _BeneficiaryById;

  factory BeneficiaryById.fromJson(Map<String, dynamic> json) => _$BeneficiaryByIdFromJson(json);
}
