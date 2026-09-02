import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'common_branches_dto.freezed.dart';
part 'common_branches_dto.g.dart';

CommonBranchesDto commonBranchesDtoFromJson(String str) =>
    CommonBranchesDto.fromJson(json.decode(str));

String commonBranchesDtoToJson(CommonBranchesDto data) =>
    json.encode(data.toJson());

@freezed
sealed class CommonBranchesDto with _$CommonBranchesDto {
  const factory CommonBranchesDto({
    String? success,
    int? statusCode,
    String? message,
    BranchesData? data,
  }) = _CommonBranchesDto;

  factory CommonBranchesDto.fromJson(Map<String, dynamic> json) =>
      _$CommonBranchesDtoFromJson(json);
}

@freezed
sealed class BranchesData with _$BranchesData {
  const factory BranchesData({
    List<BranchDto>? branchList,
  }) = _BranchesData;

  factory BranchesData.fromJson(Map<String, dynamic> json) =>
      _$BranchesDataFromJson(json);
}

@freezed
sealed class BranchDto with _$BranchDto {
  const factory BranchDto({
    String? branchCode,
    String? branchName,
    String? address1,
    String? address2,
    String? address3,
    String? phone,
    String? email,
    String? latitude,
    String? longitude,
    String? workingHours,
    String? appMessage1,
    String? appMessage2,
    String? validTimeLimit,
  }) = _BranchDto;

  factory BranchDto.fromJson(Map<String, dynamic> json) =>
      _$BranchDtoFromJson(json);
}