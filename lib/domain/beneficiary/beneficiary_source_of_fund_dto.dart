import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_source_of_fund_dto.freezed.dart';
part 'beneficiary_source_of_fund_dto.g.dart';

BeneficiarySourceOfFundDto beneficiarySourceOfFundDtoFromJson(String str) => BeneficiarySourceOfFundDto.fromJson(json.decode(str));

String beneficiarySourceOfFundDtoToJson(BeneficiarySourceOfFundDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiarySourceOfFundDto with _$BeneficiarySourceOfFundDto {
  const factory BeneficiarySourceOfFundDto({
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
  }) = _BeneficiarySourceOfFundDto;

  factory BeneficiarySourceOfFundDto.fromJson(Map<String, dynamic> json) => _$BeneficiarySourceOfFundDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "income_source_list")
    List<IncomeSourceList>? incomeSourceList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class IncomeSourceList with _$IncomeSourceList {
  const factory IncomeSourceList({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _IncomeSourceList;

  factory IncomeSourceList.fromJson(Map<String, dynamic> json) => _$IncomeSourceListFromJson(json);
}
