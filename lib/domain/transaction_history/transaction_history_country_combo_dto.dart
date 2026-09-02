import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'transaction_history_country_combo_dto.freezed.dart';
part 'transaction_history_country_combo_dto.g.dart';

TransactionHistoryCountryComboDto transactionHistoryCountryComboDtoFromJson(String str) => TransactionHistoryCountryComboDto.fromJson(json.decode(str));

String transactionHistoryCountryComboDtoToJson(TransactionHistoryCountryComboDto data) => json.encode(data.toJson());

@freezed
sealed class TransactionHistoryCountryComboDto with _$TransactionHistoryCountryComboDto {
  const factory TransactionHistoryCountryComboDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "data")
    Data? data,
  }) = _TransactionHistoryCountryComboDto;

  factory TransactionHistoryCountryComboDto.fromJson(Map<String, dynamic> json) => _$TransactionHistoryCountryComboDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "country_list")
    List<CountryList>? countryList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class CountryList with _$CountryList {
  const factory CountryList({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
  }) = _CountryList;

  factory CountryList.fromJson(Map<String, dynamic> json) => _$CountryListFromJson(json);
}
