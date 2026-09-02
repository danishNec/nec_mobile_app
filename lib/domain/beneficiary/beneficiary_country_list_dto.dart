import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_country_list_dto.freezed.dart';
part 'beneficiary_country_list_dto.g.dart';

BeneficiaryCountryListDto beneficiaryCountryListDtoFromJson(String str) => BeneficiaryCountryListDto.fromJson(json.decode(str));

String beneficiaryCountryListDtoToJson(BeneficiaryCountryListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryCountryListDto with _$BeneficiaryCountryListDto {
  const factory BeneficiaryCountryListDto({
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
  }) = _BeneficiaryCountryListDto;

  factory BeneficiaryCountryListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryCountryListDtoFromJson(json);
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
