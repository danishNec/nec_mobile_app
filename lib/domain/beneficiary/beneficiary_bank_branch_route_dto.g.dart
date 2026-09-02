// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_bank_branch_route_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryBankBranchRouteDto _$BeneficiaryBankBranchRouteDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryBankBranchRouteDto(
  success: json['success'] as String?,
  statusCode: (json['status_code'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
  timeStamp: json['time_stamp'] == null
      ? null
      : DateTime.parse(json['time_stamp'] as String),
  version: json['version'] as String?,
);

Map<String, dynamic> _$BeneficiaryBankBranchRouteDtoToJson(
  _BeneficiaryBankBranchRouteDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryBankDetails: json['beneficiary_bank_details'] == null
      ? null
      : BeneficiaryBDetails.fromJson(
          json['beneficiary_bank_details'] as Map<String, dynamic>,
        ),
  beneficiaryBranchDetails: json['beneficiary_branch_details'] == null
      ? null
      : BeneficiaryBDetails.fromJson(
          json['beneficiary_branch_details'] as Map<String, dynamic>,
        ),
  routeCode: json['route_code'] as String?,
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_bank_details': instance.beneficiaryBankDetails,
  'beneficiary_branch_details': instance.beneficiaryBranchDetails,
  'route_code': instance.routeCode,
};

_BeneficiaryBDetails _$BeneficiaryBDetailsFromJson(Map<String, dynamic> json) =>
    _BeneficiaryBDetails(
      code: json['code'] as String?,
      name: json['name'] as String?,
      isDefault: json['is_default'] as bool?,
    );

Map<String, dynamic> _$BeneficiaryBDetailsToJson(
  _BeneficiaryBDetails instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'is_default': instance.isDefault,
};
