// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_current_mpin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeCurrentMpinDto _$ChangeCurrentMpinDtoFromJson(
  Map<String, dynamic> json,
) => _ChangeCurrentMpinDto(
  success: json['success'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChangeCurrentMpinDtoToJson(
  _ChangeCurrentMpinDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  jwtToken: json['jwt_token'] as String?,
  refreshToken: json['refresh_token'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'jwt_token': instance.jwtToken,
  'refresh_token': instance.refreshToken,
  'user': instance.user,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  eId: json['e_id'] as String?,
  mobileCode: (json['mobile_code'] as num?)?.toInt(),
  mobileNumber: json['mobile_number'] as String?,
  name: json['name'] as String?,
  idNumber: json['id_number'] as String?,
  status: json['status'] as String?,
  isUserRegistered: json['is_user_registered'] as bool?,
  isKYCRegistered: json['is_k_y_c_registered'] as bool?,
  isEmailVerified: json['is_email_verified'] as bool?,
  isApproved: json['is_approved'] as bool?,
  isBlockedUser: json['is_blocked_user'] as bool?,
  isMPINCreated: json['is_m_p_i_n_created'] as bool?,
  appMemberCode: (json['app_member_code'] as num?)?.toInt(),
  memberCode: (json['member_code'] as num?)?.toInt(),
  isBioMetricLoginEnabled: json['is_bio_metric_login_enabled'] as bool?,
  kYCStatus: json['k_y_c_status'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'e_id': instance.eId,
  'mobile_code': instance.mobileCode,
  'mobile_number': instance.mobileNumber,
  'name': instance.name,
  'id_number': instance.idNumber,
  'status': instance.status,
  'is_user_registered': instance.isUserRegistered,
  'is_k_y_c_registered': instance.isKYCRegistered,
  'is_email_verified': instance.isEmailVerified,
  'is_approved': instance.isApproved,
  'is_blocked_user': instance.isBlockedUser,
  'is_m_p_i_n_created': instance.isMPINCreated,
  'app_member_code': instance.appMemberCode,
  'member_code': instance.memberCode,
  'is_bio_metric_login_enabled': instance.isBioMetricLoginEnabled,
  'k_y_c_status': instance.kYCStatus,
};
