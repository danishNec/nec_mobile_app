// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_bank_branch_combo_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryBankBranchComboListDto _$BeneficiaryBankBranchComboListDtoFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryBankBranchComboListDto(
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

Map<String, dynamic> _$BeneficiaryBankBranchComboListDtoToJson(
  _BeneficiaryBankBranchComboListDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'status_code': instance.statusCode,
  'data': instance.data,
  'time_stamp': instance.timeStamp?.toIso8601String(),
  'version': instance.version,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryBranchList: (json['beneficiary_branch_list'] as List<dynamic>?)
      ?.map((e) => BeneficiaryBranchList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_branch_list': instance.beneficiaryBranchList,
};

_BeneficiaryBranchList _$BeneficiaryBranchListFromJson(
  Map<String, dynamic> json,
) => _BeneficiaryBranchList(
  code: json['code'] as String?,
  name: json['name'] as String?,
  isDefault: json['is_default'] as bool?,
);

Map<String, dynamic> _$BeneficiaryBranchListToJson(
  _BeneficiaryBranchList instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'is_default': instance.isDefault,
};
