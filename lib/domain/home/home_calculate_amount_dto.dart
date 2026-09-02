import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_calculate_amount_dto.freezed.dart';
part 'home_calculate_amount_dto.g.dart';

HomeCalculateAmountDto homeCalculateAmountDtoFromJson(String str) =>
    HomeCalculateAmountDto.fromJson(json.decode(str));

String homeCalculateAmountDtoToJson(HomeCalculateAmountDto data) =>
    json.encode(data.toJson());

@freezed
sealed class HomeCalculateAmountDto with _$HomeCalculateAmountDto {
  const factory HomeCalculateAmountDto({
    @JsonKey(name: "success") String? success,
    @JsonKey(name: "status_code") int? statusCode,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "time_stamp") DateTime? timeStamp,
    @JsonKey(name: "version") String? version,
  }) = _HomeCalculateAmountDto;

  factory HomeCalculateAmountDto.fromJson(Map<String, dynamic> json) =>
      _$HomeCalculateAmountDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "amount") Amount? amount,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class Amount with _$Amount {
  const factory Amount({
    @JsonKey(name: "pay_amount") double? payAmount,
    @JsonKey(name: "commission") double? commission,
    @JsonKey(name: "tax_percentage") double? taxPercentage,
    @JsonKey(name: "tax") double? tax,
    @JsonKey(name: "fee") double? fee,
    @JsonKey(name: "ho_rate") double? hoRate,
    @JsonKey(name: "net_pay_amount") double? netPayAmount,
    @JsonKey(name: "f_c_commission") double? fcCommission,
    @JsonKey(name: "rate") double? rate,
    @JsonKey(name: "display_rate") double? displayRate,
    @JsonKey(name: "net_receive_amount") double? netReceiveAmount,
    @JsonKey(name: "rate_operator") String? rateOperator,
    @JsonKey(name: "mobile_rate_operator") String? mobileRateOperator,
    @JsonKey(name: "agent_name") String? agentName,
    @JsonKey(name: "agent_code") String? agentCode,
    @JsonKey(name: "branch_name") String? branchName,
    @JsonKey(name: "branch_code") String? branchCode,
  }) = _Amount;

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);
}
