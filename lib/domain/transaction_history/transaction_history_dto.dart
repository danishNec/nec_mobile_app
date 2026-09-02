import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'transaction_history_dto.freezed.dart';
part 'transaction_history_dto.g.dart';

TransactionHistoryDto homeRecentTransactionDtoFromJson(String str) => TransactionHistoryDto.fromJson(json.decode(str));

String transactionHistoryDtoToJson(TransactionHistoryDto data) => json.encode(data.toJson());

@freezed
sealed class TransactionHistoryDto with _$TransactionHistoryDto {
  const factory TransactionHistoryDto({
    @JsonKey(name: "success")
    String? success,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
  }) = _TransactionHistoryDto;

  factory TransactionHistoryDto.fromJson(Map<String, dynamic> json) => _$TransactionHistoryDtoFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const factory Data({
    @JsonKey(name: "transactions")
    List<Transaction>? transactions,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class Transaction with _$Transaction {
  const factory Transaction({
    @JsonKey(name: "transaction_reference")
    int? transactionReference,
    @JsonKey(name: "beneficiary_name")
    String? beneficiaryName,
    @JsonKey(name: "e_id")
    String? eId,
    @JsonKey(name: "source_currency_code")
    String? sourceCurrencyCode,
    @JsonKey(name: "destination_currency_code")
    String? destinationCurrencyCode,
    @JsonKey(name: "source_country_code")
    String? sourceCountryCode,
    @JsonKey(name: "destination_country_code")
    String? destinationCountryCode,
    @JsonKey(name: "pay_amount")
    int? payAmount,
    @JsonKey(name: "receive_amount")
    double? receiveAmount,
    @JsonKey(name: "transfer_mode_code")
    String? transferModeCode,
    @JsonKey(name: "transfer_mode")
    String? transferMode,
    @JsonKey(name: "payment_mode")
    String? paymentMode,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "app_status")
    String? appStatus,
    @JsonKey(name: "created_on")
    DateTime? createdOn,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
