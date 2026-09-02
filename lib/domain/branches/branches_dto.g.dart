// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchesDto _$BranchesDtoFromJson(Map<String, dynamic> json) => _BranchesDto(
  success: json['success'] as String?,
  statusCode: (json['statusCode'] as num?)?.toInt(),
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BranchesDtoToJson(_BranchesDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  branchList: (json['branch_list'] as List<dynamic>?)
      ?.map((e) => BranchList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'branch_list': instance.branchList,
};

_BranchList _$BranchListFromJson(Map<String, dynamic> json) => _BranchList(
  branchName: json['branch_name'] as String?,
  address1: json['address1'] as String?,
  address2: json['address2'] as String?,
  address3: json['address3'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
);

Map<String, dynamic> _$BranchListToJson(_BranchList instance) =>
    <String, dynamic>{
      'branch_name': instance.branchName,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'phone': instance.phone,
      'email': instance.email,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
