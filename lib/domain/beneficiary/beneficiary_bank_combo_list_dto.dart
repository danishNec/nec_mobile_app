import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_bank_combo_list_dto.freezed.dart';
part 'beneficiary_bank_combo_list_dto.g.dart';

BeneficiaryBankComboListDto beneficiaryBankComboListDtoFromJson(String str) => BeneficiaryBankComboListDto.fromJson(json.decode(str));

String beneficiaryBankComboListDtoToJson(BeneficiaryBankComboListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryBankComboListDto with _$BeneficiaryBankComboListDto {
  const factory BeneficiaryBankComboListDto({
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
  }) = _BeneficiaryBankComboListDto;

  factory BeneficiaryBankComboListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryBankComboListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_bank_list")
    List<BeneficiaryBankList>? beneficiaryBankList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BeneficiaryBankList with _$BeneficiaryBankList {
  const factory BeneficiaryBankList({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _BeneficiaryBankList;

  factory BeneficiaryBankList.fromJson(Map<String, dynamic> json) => _$BeneficiaryBankListFromJson(json);
}
