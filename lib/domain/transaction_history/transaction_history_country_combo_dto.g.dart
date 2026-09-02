// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_country_combo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionHistoryCountryComboDto _$TransactionHistoryCountryComboDtoFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryCountryComboDto(
  success: json['success'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TransactionHistoryCountryComboDtoToJson(
  _TransactionHistoryCountryComboDto instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  countryList: (json['country_list'] as List<dynamic>?)
      ?.map((e) => CountryList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'country_list': instance.countryList,
};

_CountryList _$CountryListFromJson(Map<String, dynamic> json) =>
    _CountryList(code: json['code'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$CountryListToJson(_CountryList instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};
