// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppVersionDto _$AppVersionDtoFromJson(Map<String, dynamic> json) =>
    _AppVersionDto(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AppVersionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppVersionDtoToJson(_AppVersionDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_AppVersionData _$AppVersionDataFromJson(Map<String, dynamic> json) =>
    _AppVersionData(
      latestVersion: json['latestVersion'] as String,
      minimumVersion: json['minimumVersion'] as String,
      isForceUpdate: json['isForceUpdate'] as bool? ?? false,
      updateTitle: json['updateTitle'] as String?,
      updateMessage: json['updateMessage'] as String?,
      changelogItems:
          (json['changelogItems'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      androidStoreUrl: json['androidStoreUrl'] as String?,
      iosStoreUrl: json['iosStoreUrl'] as String?,
    );

Map<String, dynamic> _$AppVersionDataToJson(_AppVersionData instance) =>
    <String, dynamic>{
      'latestVersion': instance.latestVersion,
      'minimumVersion': instance.minimumVersion,
      'isForceUpdate': instance.isForceUpdate,
      'updateTitle': instance.updateTitle,
      'updateMessage': instance.updateMessage,
      'changelogItems': instance.changelogItems,
      'androidStoreUrl': instance.androidStoreUrl,
      'iosStoreUrl': instance.iosStoreUrl,
    };
