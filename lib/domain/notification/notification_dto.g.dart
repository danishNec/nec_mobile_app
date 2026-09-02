// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) =>
    _NotificationDto(
      success: json['success'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$NotificationDtoToJson(_NotificationDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'version': instance.version,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  notificationList: (json['notification_list'] as List<dynamic>?)
      ?.map((e) => NotificationList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'notification_list': instance.notificationList,
};

_NotificationList _$NotificationListFromJson(Map<String, dynamic> json) =>
    _NotificationList(
      eId: json['e_id'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      thumbnail: json['thumbnail'] as String?,
      isRead: json['is_read'] as String?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$NotificationListToJson(_NotificationList instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'title': instance.title,
      'message': instance.message,
      'thumbnail': instance.thumbnail,
      'is_read': instance.isRead,
      'created_on': instance.createdOn?.toIso8601String(),
    };
