import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'summary_payment_method_dto.freezed.dart';
part 'summary_payment_method_dto.g.dart';

SummaryPaymentMethodDto summaryPaymentMethodDtoFromJson(String str) => SummaryPaymentMethodDto.fromJson(json.decode(str));

String summaryPaymentMethodDtoToJson(SummaryPaymentMethodDto data) => json.encode(data.toJson());

@freezed
sealed class SummaryPaymentMethodDto with _$SummaryPaymentMethodDto {
  const factory SummaryPaymentMethodDto({
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
  }) = _SummaryPaymentMethodDto;

  factory SummaryPaymentMethodDto.fromJson(Map<String, dynamic> json) => _$SummaryPaymentMethodDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "payment_modes")
    List<PaymentMode>? paymentModes,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class PaymentMode with _$PaymentMode {
  const factory PaymentMode({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "name")
    String? name,
  }) = _PaymentMode;

  factory PaymentMode.fromJson(Map<String, dynamic> json) => _$PaymentModeFromJson(json);
}
