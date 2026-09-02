// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_advertisement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeAdvertisementDto _$HomeAdvertisementDtoFromJson(
  Map<String, dynamic> json,
) => _HomeAdvertisementDto(
  success: json['success'] as String?,
  statusCode: (json['status_code'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  timeStamp: json['time_stamp'] == null
      ? null
      : DateTime.parse(json['time_stamp'] as String),
  version: json['version'] as String?,
);

Map<String, dynamic> _$HomeAdvertisementDtoToJson(
  _HomeAdvertisementDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  appBanners: (json['app_banners'] as List<dynamic>?)
      ?.map((e) => AppBanner.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'app_banners': instance.appBanners,
};

_AppBanner _$AppBannerFromJson(Map<String, dynamic> json) => _AppBanner(
  id: (json['id'] as num?)?.toInt(),
  docName: json['doc_name'] as String?,
  link: json['link'] as String?,
);

Map<String, dynamic> _$AppBannerToJson(_AppBanner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doc_name': instance.docName,
      'link': instance.link,
    };
