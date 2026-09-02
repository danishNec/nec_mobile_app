import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_send_money_dto.freezed.dart';
part 'common_send_money_dto.g.dart';

CommonSendMoneyDto commonSendMoneyDtoFromJson(String str) =>
    CommonSendMoneyDto.fromJson(json.decode(str));

String commonSendMoneyDtoToJson(CommonSendMoneyDto data) =>
    json.encode(data.toJson());

@freezed
sealed class CommonSendMoneyDto with _$CommonSendMoneyDto {
  const factory CommonSendMoneyDto({
    double? sourceAmount,
    double? destinationAmount,
    double? displayRate,
    double? rate,
    String? rateOperator,
    double? benePay,
    double? fCCommission,
    double? netLcAmount,
    double? commission,
    double? fee,
    double? tax,
    double? taxPercentage,
    double? payAmount,
    double? totalPayableAmount,
  }) = _CommonSendMoneyDto;

  factory CommonSendMoneyDto.empty() =>
      const CommonSendMoneyDto(sourceAmount: 0.0, destinationAmount: 0.0);

  factory CommonSendMoneyDto.fromJson(Map<String, dynamic> json) =>
      _$CommonSendMoneyDtoFromJson(json);
}
