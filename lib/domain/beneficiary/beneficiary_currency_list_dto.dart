import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_currency_list_dto.freezed.dart';
part 'beneficiary_currency_list_dto.g.dart';

BeneficiaryCurrencyListDto beneficiaryCurrencyListDtoFromJson(String str) => BeneficiaryCurrencyListDto.fromJson(json.decode(str));

String beneficiaryCurrencyListDtoToJson(BeneficiaryCurrencyListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryCurrencyListDto with _$BeneficiaryCurrencyListDto {
  const factory BeneficiaryCurrencyListDto({
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
  }) = _BeneficiaryCurrencyListDto;

  factory BeneficiaryCurrencyListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryCurrencyListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "currency_list")
    List<CurrencyList>? currencyList,
    @JsonKey(name: "economic_activity_id")
    int? economicActivityId,
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
sealed class CurrencyList with _$CurrencyList {
  const factory CurrencyList({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "currency_code")
    String? currencyCode,
    @JsonKey(name: "currency_name")
    String? currencyName,
    @JsonKey(name: "country_code")
    String? countryCode,
    @JsonKey(name: "country_name")
    String? countryName,
    @JsonKey(name: "flag_url")
    String? flagUrl,
    @JsonKey(name: "currency_symbol")
    String? currencySymbol,
    @JsonKey(name: "rate")
    int? rate,
    @JsonKey(name: "status")
    String? status,
  }) = _CurrencyList;

  factory CurrencyList.fromJson(Map<String, dynamic> json) => _$CurrencyListFromJson(json);
}
