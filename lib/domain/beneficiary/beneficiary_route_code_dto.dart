import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_route_code_dto.freezed.dart';
part 'beneficiary_route_code_dto.g.dart';

BeneficiaryRouteCodeDto beneficiaryRouteCodeDtoFromJson(String str) => BeneficiaryRouteCodeDto.fromJson(json.decode(str));

String beneficiaryRouteCodeDtoToJson(BeneficiaryRouteCodeDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryRouteCodeDto with _$BeneficiaryRouteCodeDto {
  const factory BeneficiaryRouteCodeDto({
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
  }) = _BeneficiaryRouteCodeDto;

  factory BeneficiaryRouteCodeDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryRouteCodeDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_route_code_list")
    List<BeneficiaryRouteCodeList>? beneficiaryRouteCodeList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BeneficiaryRouteCodeList with _$BeneficiaryRouteCodeList {
  const factory BeneficiaryRouteCodeList({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _BeneficiaryRouteCodeList;

  factory BeneficiaryRouteCodeList.fromJson(Map<String, dynamic> json) => _$BeneficiaryRouteCodeListFromJson(json);
}
