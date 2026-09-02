import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'branches_dto.freezed.dart';
part 'branches_dto.g.dart';

BranchesDto branchesDtoFromJson(String str) => BranchesDto.fromJson(json.decode(str));

String branchesDtoToJson(BranchesDto data) => json.encode(data.toJson());

@freezed
sealed class BranchesDto with _$BranchesDto {
  const factory BranchesDto({
    @JsonKey(name: "success")
    String? success,
    int? statusCode,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
  }) = _BranchesDto;

  factory BranchesDto.fromJson(Map<String, dynamic> json) => _$BranchesDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "branch_list")
    List<BranchList>? branchList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BranchList with _$BranchList {
  const factory BranchList({
    @JsonKey(name: "branch_name")
    String? branchName,
    @JsonKey(name: "address1")
    String? address1,
    @JsonKey(name: "address2")
    String? address2,
    @JsonKey(name: "address3")
    String? address3,
    @JsonKey(name: "phone")
    String? phone,
    @JsonKey(name: "email")
    String? email,
    @JsonKey(name: "latitude")
    String? latitude,
    @JsonKey(name: "longitude")
    String? longitude,
  }) = _BranchList;

  factory BranchList.fromJson(Map<String, dynamic> json) => _$BranchListFromJson(json);
}
