import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_bank_branch_combo_list_dto.freezed.dart';
part 'beneficiary_bank_branch_combo_list_dto.g.dart';

BeneficiaryBankBranchComboListDto beneficiaryBankBranchComboListDtoFromJson(String str) => BeneficiaryBankBranchComboListDto.fromJson(json.decode(str));

String beneficiaryBankBranchComboListDtoToJson(BeneficiaryBankBranchComboListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryBankBranchComboListDto with _$BeneficiaryBankBranchComboListDto {
  const factory BeneficiaryBankBranchComboListDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "status_code")
    int? statusCode,
    @JsonKey(name: "data")
    Data? data,
    @JsonKey(name: "time_stamp")
    DateTime? timeStamp,
    @JsonKey(name: "version")
    String? version,
  }) = _BeneficiaryBankBranchComboListDto;

  factory BeneficiaryBankBranchComboListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryBankBranchComboListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_branch_list")
    List<BeneficiaryBranchList>? beneficiaryBranchList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BeneficiaryBranchList with _$BeneficiaryBranchList {
  const factory BeneficiaryBranchList({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _BeneficiaryBranchList;

  factory BeneficiaryBranchList.fromJson(Map<String, dynamic> json) => _$BeneficiaryBranchListFromJson(json);
}
