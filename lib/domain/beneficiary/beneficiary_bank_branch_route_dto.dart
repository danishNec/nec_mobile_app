import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'beneficiary_bank_branch_route_dto.freezed.dart';
part 'beneficiary_bank_branch_route_dto.g.dart';

BeneficiaryBankBranchRouteDto beneficiaryBankBranchRouteDtoFromJson(String str) => BeneficiaryBankBranchRouteDto.fromJson(json.decode(str));

String beneficiaryBankBranchRouteDtoToJson(BeneficiaryBankBranchRouteDto data) => json.encode(data.toJson());

@freezed
sealed class BeneficiaryBankBranchRouteDto with _$BeneficiaryBankBranchRouteDto {
  const factory BeneficiaryBankBranchRouteDto({
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
  }) = _BeneficiaryBankBranchRouteDto;

  factory BeneficiaryBankBranchRouteDto.fromJson(Map<String, dynamic> json) => _$BeneficiaryBankBranchRouteDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_bank_details")
    BeneficiaryBDetails? beneficiaryBankDetails,
    @JsonKey(name: "beneficiary_branch_details")
    BeneficiaryBDetails? beneficiaryBranchDetails,
    @JsonKey(name: "route_code")
    String? routeCode,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BeneficiaryBDetails with _$BeneficiaryBDetails {
  const factory BeneficiaryBDetails({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "is_default")
    bool? isDefault,
  }) = _BeneficiaryBDetails;

  factory BeneficiaryBDetails.fromJson(Map<String, dynamic> json) => _$BeneficiaryBDetailsFromJson(json);
}
