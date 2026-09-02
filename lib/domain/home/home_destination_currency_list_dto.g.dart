// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_destination_currency_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDestinationCurrencyListDto _$HomeDestinationCurrencyListDtoFromJson(
  Map<String, dynamic> json,
) => _HomeDestinationCurrencyListDto(
  success: json['success'] as String?,
  statusCode: (json['status_code'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  timeStamp: json['time_stamp'] == null
      ? null
      : DateTime.parse(json['time_stamp'] as String),
  version: json['version'] as String?,
);

Map<String, dynamic> _$HomeDestinationCurrencyListDtoToJson(
  _HomeDestinationCurrencyListDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  currencyList: (json['currency_list'] as List<dynamic>?)
      ?.map((e) => CurrencyList.fromJson(e as Map<String, dynamic>))
      .toList(),
  economicActivityId: (json['economic_activity_id'] as num?)?.toInt(),
  totalRecordCount: (json['total_record_count'] as num?)?.toInt(),
  totalPageCount: (json['total_page_count'] as num?)?.toInt(),
  perPageRecordCount: (json['per_page_record_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'currency_list': instance.currencyList,
  'economic_activity_id': instance.economicActivityId,
  'total_record_count': instance.totalRecordCount,
  'total_page_count': instance.totalPageCount,
  'per_page_record_count': instance.perPageRecordCount,
};

_CurrencyList _$CurrencyListFromJson(Map<String, dynamic> json) =>
    _CurrencyList(
      eId: json['e_id'] as String?,
      currencyCode: json['currency_code'] as String?,
      currencyName: json['currency_name'] as String?,
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
      flagUrl: json['flag_url'] as String?,
      rate: (json['rate'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      decimalPlaces: (json['decimal_places'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CurrencyListToJson(_CurrencyList instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'currency_code': instance.currencyCode,
      'currency_name': instance.currencyName,
      'country_code': instance.countryCode,
      'country_name': instance.countryName,
      'flag_url': instance.flagUrl,
      'rate': instance.rate,
      'status': _$StatusEnumMap[instance.status],
      'decimal_places': instance.decimalPlaces,
    };

const _$StatusEnumMap = {Status.ACTIVE: 'active'};
