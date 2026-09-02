import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_transfer_type_dto.freezed.dart';
part 'home_transfer_type_dto.g.dart';

HomeTransferTypeDto homeTransferTypeDtoFromJson(String str) => HomeTransferTypeDto.fromJson(json.decode(str));

String homeTransferTypeDtoToJson(HomeTransferTypeDto data) => json.encode(data.toJson());

@freezed
sealed class HomeTransferTypeDto with _$HomeTransferTypeDto {
  const factory HomeTransferTypeDto({
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
  }) = _HomeTransferTypeDto;

  factory HomeTransferTypeDto.fromJson(Map<String, dynamic> json) => _$HomeTransferTypeDtoFromJson(json);
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
