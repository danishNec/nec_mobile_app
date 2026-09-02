import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'common_payment_result_dto.freezed.dart';
part 'common_payment_result_dto.g.dart';

CommonPaymentResultDto commonPaymentResultDtoFromJson(String str) => CommonPaymentResultDto.fromJson(json.decode(str));

String commonPaymentResultDtoToJson(CommonPaymentResultDto data) => json.encode(data.toJson());

@freezed
sealed class CommonPaymentResultDto with _$CommonPaymentResultDto {
  const factory CommonPaymentResultDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    PaymentResultData? data,
  }) = _CommonPaymentResultDto;

  factory CommonPaymentResultDto.fromJson(Map<String, dynamic> json) => _$CommonPaymentResultDtoFromJson(json);
}

@freezed
sealed class PaymentResultData with _$PaymentResultData {
  const factory PaymentResultData({
    @JsonKey(name: "track_id")
    String? trackId,
    @JsonKey(name: "transaction_reference")
    String? transactionReference,
    @JsonKey(name: "amount")
    double? amount,
    @JsonKey(name: "beneficiary_name")
    String? beneficiaryName,
    @JsonKey(name: "payment_intent_id")
    String? paymentIntentId,
    @JsonKey(name: "payment_method")
    String? paymentMethod,
    @JsonKey(name: "transaction_date")
    DateTime? transactionDate,
    @JsonKey(name: "payment_status")
    String? paymentStatus,
    @JsonKey(name: "auth_response_code")
    String? authResponseCode,
    @JsonKey(name: "status_description")
    String? statusDescription,
    @JsonKey(name: "reference_no")
    String? referenceNo,
    @JsonKey(name: "p_g_transaction_id")
    String? pGTransactionId,
  }) = _PaymentResultData;

  factory PaymentResultData.fromJson(Map<String, dynamic> json) => _$PaymentResultDataFromJson(json);
}
