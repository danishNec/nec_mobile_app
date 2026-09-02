import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_bank_or_agent_list_dto.freezed.dart';
part 'beneficiary_bank_or_agent_list_dto.g.dart';

BeneficiaryBankOrAgentListDto beneficiaryBankOrAgentListDtoFromJson(String str) => BeneficiaryBankOrAgentListDto.fromJson(json.decode(str));

String beneficiaryBankOrAgentListDtoToJson(BeneficiaryBankOrAgentListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryBankOrAgentListDto with _$BeneficiaryBankOrAgentListDto {
  const factory BeneficiaryBankOrAgentListDto({
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
  }) = _BeneficiaryBankOrAgentListDto;

  factory BeneficiaryBankOrAgentListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryBankOrAgentListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "product_list")
    List<ProductList>? productList,
    @JsonKey(name: "economic_activity_id")
    int? economicActivityId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class ProductList with _$ProductList {
  const factory ProductList({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "code")
    int? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "routing_bank_code")
    int? routingBankCode,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);
}
