// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsUserDto _$SettingsUserDtoFromJson(Map<String, dynamic> json) =>
    _SettingsUserDto(
      success: json['success'] as String?,
      data: json['data'] == null
          ? null
          : SettingsUserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingsUserDtoToJson(_SettingsUserDto instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_SettingsUserData _$SettingsUserDataFromJson(Map<String, dynamic> json) =>
    _SettingsUserData(
      user: json['user'] == null
          ? null
          : SettingsUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettingsUserDataToJson(_SettingsUserData instance) =>
    <String, dynamic>{'user': instance.user};

_SettingsUser _$SettingsUserFromJson(Map<String, dynamic> json) =>
    _SettingsUser(
      eId: json['e_id'] as String?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      mobileNumber: json['mobile_number'] as String?,
      email: json['email'] as String?,
      isEmailVerified: json['is_email_verified'] as bool?,
    );

Map<String, dynamic> _$SettingsUserToJson(_SettingsUser instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'name': instance.name,
      'status': instance.status,
      'mobile_number': instance.mobileNumber,
      'email': instance.email,
      'is_email_verified': instance.isEmailVerified,
    };
