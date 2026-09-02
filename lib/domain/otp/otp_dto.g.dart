// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpDto _$OtpDtoFromJson(Map<String, dynamic> json) => _OtpDto(
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

Map<String, dynamic> _$OtpDtoToJson(_OtpDto instance) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  jwtToken: json['jwt_token'] as String?,
  jwtTokenExp: json['jwt_token_exp'] == null
      ? null
      : DateTime.parse(json['jwt_token_exp'] as String),
  refreshToken: json['refresh_token'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'jwt_token': instance.jwtToken,
  'jwt_token_exp': instance.jwtTokenExp?.toIso8601String(),
  'refresh_token': instance.refreshToken,
  'user': instance.user,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  eId: json['e_id'] as String?,
  mobileCode: (json['mobile_code'] as num?)?.toInt(),
  mobileNumber: json['mobile_number'] as String?,
  name: json['name'] as String?,
  firstName: json['first_name'] as String?,
  middleName: json['middle_name'] as String?,
  lastName: json['last_name'] as String?,
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  gender: json['gender'] as String?,
  genderCode: json['gender_code'] as String?,
  countryCode: json['country_code'] as String?,
  idNumber: json['id_number'] as String?,
  country: json['country'] as String?,
  stateCode: json['state_code'] as String?,
  state: json['state'] as String?,
  cityId: json['city_id'] as String?,
  city: json['city'] as String?,
  address1: json['address1'] as String?,
  address2: json['address2'] as String?,
  nationalityCode: json['nationality_code'] as String?,
  nationality: json['nationality'] as String?,
  countryOfBirthCode: json['country_of_birth_code'] as String?,
  countryOfBirth: json['country_of_birth'] as String?,
  email: json['email'] as String?,
  residencyType: json['residency_type'] as String?,
  status: json['status'] as String?,
  statusDescription: json['status_description'] as String?,
  isUserRegistered: json['is_user_registered'] as bool?,
  isKYCRegistered: json['is_k_y_c_registered'] as bool?,
  isApproved: json['is_approved'] as bool?,
  isMPINCreated: json['is_m_p_i_n_created'] as bool?,
  appMemberCode: (json['app_member_code'] as num?)?.toInt(),
  memberCode: (json['member_code'] as num?)?.toInt(),
  isBioMetricLoginEnabled: json['is_bio_metric_login_enabled'] as bool?,
  expectedTurnover: (json['expected_turnover'] as num?)?.toInt(),
  expectedTransactionCount: (json['expected_transaction_count'] as num?)
      ?.toInt(),
  expectedTransactionCountRange:
      json['expected_transaction_count_range'] as String?,
  mobileNumberWithOutCode: json['mobile_number_with_out_code'] as String?,
  salutation: json['salutation'] as String?,
  employer: json['employer'] as String?,
  placeOfBirth: json['place_of_birth'] as String?,
  economicActivityCode: json['economic_activity_code'] as String?,
  memberGroupId: (json['member_group_id'] as num?)?.toInt(),
  presentAddress2: json['present_address2'] as String?,
  riskTypeCode: json['risk_type_code'] as String?,
  memberGroup: json['member_group'] as String?,
  accountNumber: json['account_number'] as String?,
  bank: json['bank'] as String?,
  bankName: json['bank_name'] as String?,
  riskTypeName: json['risk_type_name'] as String?,
  salutationName: json['salutation_name'] as String?,
  landMark: json['land_mark'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'e_id': instance.eId,
  'mobile_code': instance.mobileCode,
  'mobile_number': instance.mobileNumber,
  'name': instance.name,
  'first_name': instance.firstName,
  'middle_name': instance.middleName,
  'last_name': instance.lastName,
  'date_of_birth': instance.dateOfBirth?.toIso8601String(),
  'gender': instance.gender,
  'gender_code': instance.genderCode,
  'country_code': instance.countryCode,
  'id_number': instance.idNumber,
  'country': instance.country,
  'state_code': instance.stateCode,
  'state': instance.state,
  'city_id': instance.cityId,
  'city': instance.city,
  'address1': instance.address1,
  'address2': instance.address2,
  'nationality_code': instance.nationalityCode,
  'nationality': instance.nationality,
  'country_of_birth_code': instance.countryOfBirthCode,
  'country_of_birth': instance.countryOfBirth,
  'email': instance.email,
  'residency_type': instance.residencyType,
  'status': instance.status,
  'status_description': instance.statusDescription,
  'is_user_registered': instance.isUserRegistered,
  'is_k_y_c_registered': instance.isKYCRegistered,
  'is_approved': instance.isApproved,
  'is_m_p_i_n_created': instance.isMPINCreated,
  'app_member_code': instance.appMemberCode,
  'member_code': instance.memberCode,
  'is_bio_metric_login_enabled': instance.isBioMetricLoginEnabled,
  'expected_turnover': instance.expectedTurnover,
  'expected_transaction_count': instance.expectedTransactionCount,
  'expected_transaction_count_range': instance.expectedTransactionCountRange,
  'mobile_number_with_out_code': instance.mobileNumberWithOutCode,
  'salutation': instance.salutation,
  'employer': instance.employer,
  'place_of_birth': instance.placeOfBirth,
  'economic_activity_code': instance.economicActivityCode,
  'member_group_id': instance.memberGroupId,
  'present_address2': instance.presentAddress2,
  'risk_type_code': instance.riskTypeCode,
  'member_group': instance.memberGroup,
  'account_number': instance.accountNumber,
  'bank': instance.bank,
  'bank_name': instance.bankName,
  'risk_type_name': instance.riskTypeName,
  'salutation_name': instance.salutationName,
  'land_mark': instance.landMark,
};
