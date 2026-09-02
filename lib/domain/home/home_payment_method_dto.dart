import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_payment_method_dto.freezed.dart';
part 'home_payment_method_dto.g.dart';

HomePaymentMethodDto homePaymentMethodDtoFromJson(String str) => HomePaymentMethodDto.fromJson(json.decode(str));

String homePaymentMethodDtoToJson(HomePaymentMethodDto data) => json.encode(data.toJson());

@freezed
sealed class HomePaymentMethodDto with _$HomePaymentMethodDto {
  const factory HomePaymentMethodDto({
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
  }) = _HomePaymentMethodDto;

  factory HomePaymentMethodDto.fromJson(Map<String, dynamic> json) => _$HomePaymentMethodDtoFromJson(json);
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
