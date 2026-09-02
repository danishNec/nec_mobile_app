// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileUserDto _$ProfileUserDtoFromJson(Map<String, dynamic> json) =>
    _ProfileUserDto(
      success: json['success'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileUserDtoToJson(_ProfileUserDto instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'user': instance.user,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  eId: json['e_id'] as String?,
  name: json['name'] as String?,
  status: json['status'] as String?,
  mobileNumber: json['mobile_number'] as String?,
  email: json['email'] as String?,
  isEmailVerified: json['is_email_verified'] as bool?,
  gender: json['gender'] as String?,
  nationality: json['nationality'] as String?,
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  placeOfBirth: json['place_of_birth'] as String?,
  countryOfBirth: json['country_of_birth'] as String?,
  address1: json['address1'] as String?,
  state: json['state'] as String?,
  idNumber: json['id_number'] as String?,
  issueDate: json['issue_date'] == null
      ? null
      : DateTime.parse(json['issue_date'] as String),
  expiryDate: json['expiry_date'] == null
      ? null
      : DateTime.parse(json['expiry_date'] as String),
  employer: json['employer'] as String?,
  profession: json['profession'] as String?,
  expectedTransactionCount: (json['expected_transaction_count'] as num?)
      ?.toInt(),
  expectedTurnover: (json['expected_turnover'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'e_id': instance.eId,
  'name': instance.name,
  'status': instance.status,
  'mobile_number': instance.mobileNumber,
  'email': instance.email,
  'is_email_verified': instance.isEmailVerified,
  'gender': instance.gender,
  'nationality': instance.nationality,
  'date_of_birth': instance.dateOfBirth?.toIso8601String(),
  'place_of_birth': instance.placeOfBirth,
  'country_of_birth': instance.countryOfBirth,
  'address1': instance.address1,
  'state': instance.state,
  'id_number': instance.idNumber,
  'issue_date': instance.issueDate?.toIso8601String(),
  'expiry_date': instance.expiryDate?.toIso8601String(),
  'employer': instance.employer,
  'profession': instance.profession,
  'expected_transaction_count': instance.expectedTransactionCount,
  'expected_turnover': instance.expectedTurnover,
};
