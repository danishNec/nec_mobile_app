import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_bank_or_agent_list_dto.freezed.dart';
part 'home_bank_or_agent_list_dto.g.dart';

HomeBankOrAgentListDto homeBankOrAgentListDtoFromJson(String str) => HomeBankOrAgentListDto.fromJson(json.decode(str));

String homeBankOrAgentListDtoToJson(HomeBankOrAgentListDto data) => json.encode(data.toJson());

@freezed
sealed class HomeBankOrAgentListDto with _$HomeBankOrAgentListDto {
  const factory HomeBankOrAgentListDto({
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
  }) = _HomeBankOrAgentListDto;

  factory HomeBankOrAgentListDto.fromJson(Map<String, dynamic> json) => _$HomeBankOrAgentListDtoFromJson(json);
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
