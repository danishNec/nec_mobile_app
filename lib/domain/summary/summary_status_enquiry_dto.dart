import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'summary_status_enquiry_dto.freezed.dart';
part 'summary_status_enquiry_dto.g.dart';

SummaryStatusEnquiryDto summaryStatusEnquiryDtoFromJson(String str) => SummaryStatusEnquiryDto.fromJson(json.decode(str));

String summaryStatusEnquiryDtoToJson(SummaryStatusEnquiryDto data) => json.encode(data.toJson());

@freezed
sealed class SummaryStatusEnquiryDto with _$SummaryStatusEnquiryDto {
  const factory SummaryStatusEnquiryDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
  }) = _SummaryStatusEnquiryDto;

  factory SummaryStatusEnquiryDto.fromJson(Map<String, dynamic> json) => _$SummaryStatusEnquiryDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
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
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
