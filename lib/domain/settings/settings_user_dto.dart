import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_user_dto.freezed.dart';
part 'settings_user_dto.g.dart';

SettingsUserDto settingsUserDtoFromJson(String str) =>
    SettingsUserDto.fromJson(json.decode(str));

@freezed
sealed class SettingsUserDto with _$SettingsUserDto {
  const factory SettingsUserDto({
    @JsonKey(name: 'success') String? success,
    @JsonKey(name: 'data') SettingsUserData? data,
  }) = _SettingsUserDto;

  factory SettingsUserDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsUserDtoFromJson(json);
}

@freezed
sealed class SettingsUserData with _$SettingsUserData {
  const factory SettingsUserData({
    @JsonKey(name: 'user') SettingsUser? user,
  }) = _SettingsUserData;

  factory SettingsUserData.fromJson(Map<String, dynamic> json) =>
      _$SettingsUserDataFromJson(json);
}

@freezed
sealed class SettingsUser with _$SettingsUser {
  const factory SettingsUser({
    @JsonKey(name: 'e_id') String? eId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'mobile_number') String? mobileNumber,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
  }) = _SettingsUser;

  factory SettingsUser.fromJson(Map<String, dynamic> json) =>
      _$SettingsUserFromJson(json);
}
