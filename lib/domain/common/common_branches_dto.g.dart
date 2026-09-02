// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_branches_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonBranchesDto _$CommonBranchesDtoFromJson(Map<String, dynamic> json) =>
    _CommonBranchesDto(
      success: json['success'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BranchesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommonBranchesDtoToJson(_CommonBranchesDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_BranchesData _$BranchesDataFromJson(Map<String, dynamic> json) =>
    _BranchesData(
      branchList: (json['branchList'] as List<dynamic>?)
          ?.map((e) => BranchDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BranchesDataToJson(_BranchesData instance) =>
    <String, dynamic>{'branchList': instance.branchList};

_BranchDto _$BranchDtoFromJson(Map<String, dynamic> json) => _BranchDto(
  branchCode: json['branchCode'] as String?,
  branchName: json['branchName'] as String?,
  address1: json['address1'] as String?,
  address2: json['address2'] as String?,
  address3: json['address3'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  workingHours: json['workingHours'] as String?,
  appMessage1: json['appMessage1'] as String?,
  appMessage2: json['appMessage2'] as String?,
  validTimeLimit: json['validTimeLimit'] as String?,
);

Map<String, dynamic> _$BranchDtoToJson(_BranchDto instance) =>
    <String, dynamic>{
      'branchCode': instance.branchCode,
      'branchName': instance.branchName,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'phone': instance.phone,
      'email': instance.email,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'workingHours': instance.workingHours,
      'appMessage1': instance.appMessage1,
      'appMessage2': instance.appMessage2,
      'validTimeLimit': instance.validTimeLimit,
    };
