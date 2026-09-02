import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

NotificationDto notificationDtoFromJson(String str) => NotificationDto.fromJson(json.decode(str));

String notificationDtoToJson(NotificationDto data) => json.encode(data.toJson());

@freezed
sealed class NotificationDto with _$NotificationDto {
  const factory NotificationDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
    String? version,
  }) = _NotificationDto;

  factory NotificationDto.fromJson(Map<String, dynamic> json) => _$NotificationDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "notification_list")
    List<NotificationList>? notificationList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class NotificationList with _$NotificationList {
  const factory NotificationList({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "thumbnail")
    String? thumbnail,
    @JsonKey(name: "is_read")
    String? isRead,
    @JsonKey(name: "created_on")
    DateTime? createdOn,
  }) = _NotificationList;

  factory NotificationList.fromJson(Map<String, dynamic> json) => _$NotificationListFromJson(json);
}
