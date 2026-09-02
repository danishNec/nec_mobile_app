import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_purpose_of_transfer_dto.freezed.dart';
part 'beneficiary_purpose_of_transfer_dto.g.dart';

BeneficiaryPurposeOfTransferDto beneficiaryPurposeOfTransferDtoFromJson(String str) => BeneficiaryPurposeOfTransferDto.fromJson(json.decode(str));

String beneficiaryPurposeOfTransferDtoToJson(BeneficiaryPurposeOfTransferDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryPurposeOfTransferDto with _$BeneficiaryPurposeOfTransferDto {
  const factory BeneficiaryPurposeOfTransferDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "status_code")
    int? statusCode,
    @JsonKey(name: "data")
    Data? data,
    @JsonKey(name: "time_stamp")
    DateTime? timeStamp,
    @JsonKey(name: "version")
    String? version,
  }) = _BeneficiaryPurposeOfTransferDto;

  factory BeneficiaryPurposeOfTransferDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryPurposeOfTransferDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "purpose_list")
    List<PurposeList>? purposeList,
    @JsonKey(name: "app_transaction_reference")
    int? appTransactionReference,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class PurposeList with _$PurposeList {
  const factory PurposeList({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _PurposeList;

  factory PurposeList.fromJson(Map<String, dynamic> json) => _$PurposeListFromJson(json);
}
