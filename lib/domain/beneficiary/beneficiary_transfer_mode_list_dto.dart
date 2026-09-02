import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_transfer_mode_list_dto.freezed.dart';
part 'beneficiary_transfer_mode_list_dto.g.dart';

BeneficiaryTransferModeListDto beneficiaryTransferModeListDtoFromJson(String str) => BeneficiaryTransferModeListDto.fromJson(json.decode(str));

String beneficiaryTransferModeListDtoToJson(BeneficiaryTransferModeListDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryTransferModeListDto with _$BeneficiaryTransferModeListDto {
  const factory BeneficiaryTransferModeListDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "status_code")
    int? statusCode,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
    @JsonKey(name: "time_stamp")
    DateTime? timeStamp,
    @JsonKey(name: "version")
    String? version,
  }) = _BeneficiaryTransferModeListDto;

  factory BeneficiaryTransferModeListDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryTransferModeListDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "transfer_mode_list")
    List<TransferModeList>? transferModeList,
    @JsonKey(name: "economic_activity_id")
    int? economicActivityId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class TransferModeList with _$TransferModeList {
  const factory TransferModeList({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
  }) = _TransferModeList;

  factory TransferModeList.fromJson(Map<String, dynamic> json) => _$TransferModeListFromJson(json);
}
