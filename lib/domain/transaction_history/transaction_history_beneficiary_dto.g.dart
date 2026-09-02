// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_beneficiary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionHistoryBeneficiaryDto _$TransactionHistoryBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryBeneficiaryDto(
  success: json['success'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TransactionHistoryBeneficiaryDtoToJson(
  _TransactionHistoryBeneficiaryDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  beneficiaryList: (json['beneficiary_list'] as List<dynamic>?)
      ?.map((e) => BeneficiaryList.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'beneficiary_list': instance.beneficiaryList,
};

_BeneficiaryList _$BeneficiaryListFromJson(Map<String, dynamic> json) =>
    _BeneficiaryList(
      eId: json['e_id'] as String?,
      beneficiaryCode: (json['beneficiary_code'] as num?)?.toInt(),
      beneficiaryFirstName: json['beneficiary_first_name'] as String?,
      beneficiaryMiddleName: json['beneficiary_middle_name'] as String?,
      beneficiaryLastName: json['beneficiary_last_name'] as String?,
    );

Map<String, dynamic> _$BeneficiaryListToJson(_BeneficiaryList instance) =>
    <String, dynamic>{
      'e_id': instance.eId,
      'beneficiary_code': instance.beneficiaryCode,
      'beneficiary_first_name': instance.beneficiaryFirstName,
      'beneficiary_middle_name': instance.beneficiaryMiddleName,
      'beneficiary_last_name': instance.beneficiaryLastName,
    };
