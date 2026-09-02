import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'transaction_history_beneficiary_dto.freezed.dart';
part 'transaction_history_beneficiary_dto.g.dart';

TransactionHistoryBeneficiaryDto transactionHistoryDtoFromJson(String str) => TransactionHistoryBeneficiaryDto.fromJson(json.decode(str));

String transactionHistoryBeneficiaryDtoToJson(TransactionHistoryBeneficiaryDto data) => json.encode(data.toJson());

@freezed
sealed class TransactionHistoryBeneficiaryDto with _$TransactionHistoryBeneficiaryDto {
  const factory TransactionHistoryBeneficiaryDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
  }) = _TransactionHistoryBeneficiaryDto;

  factory TransactionHistoryBeneficiaryDto.fromJson(Map<String, dynamic> json) => _$TransactionHistoryBeneficiaryDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "beneficiary_list")
    List<BeneficiaryList>? beneficiaryList,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class BeneficiaryList with _$BeneficiaryList {
  const factory BeneficiaryList({
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "beneficiary_code")
    int? beneficiaryCode,
    @JsonKey(name: "beneficiary_first_name")
    String? beneficiaryFirstName,
    @JsonKey(name: "beneficiary_middle_name")
    String? beneficiaryMiddleName,
    @JsonKey(name: "beneficiary_last_name")
    String? beneficiaryLastName,
  }) = _BeneficiaryList;

  factory BeneficiaryList.fromJson(Map<String, dynamic> json) => _$BeneficiaryListFromJson(json);
}
