import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'common_transaction_dto.freezed.dart';
part 'common_transaction_dto.g.dart';

CommonTransactionDto commonTransactionDtoFromJson(String str) =>
    CommonTransactionDto.fromJson(json.decode(str));

String commonTransactionDtoToJson(CommonTransactionDto data) =>
    json.encode(data.toJson());

@freezed
sealed class CommonTransactionDto with _$CommonTransactionDto {
  const factory CommonTransactionDto({
    @JsonKey(name: "success") String? success,
    @JsonKey(name: "message") String? message,

    @JsonKey(name: "data")
    @Default(CommonTransactionData())
    CommonTransactionData data,
  }) = _CommonTransactionDto;

  factory CommonTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$CommonTransactionDtoFromJson(json);
}

@freezed
sealed class CommonTransactionData with _$CommonTransactionData {
  const factory CommonTransactionData({
    @JsonKey(name: "transactions")
    @Default([])
    List<CommonTransaction> transactions,
  }) = _CommonTransactionData;

  factory CommonTransactionData.fromJson(Map<String, dynamic> json) =>
      _$CommonTransactionDataFromJson(json);
}

@freezed
sealed class CommonTransaction with _$CommonTransaction {
  const factory CommonTransaction({
    @JsonKey(name: "transaction_reference") int? transactionReference,
    @JsonKey(name: "beneficiary_name") String? beneficiaryName,
    @JsonKey(name: "e_id") String? eId,

    @JsonKey(name: "source_currency_code") String? sourceCurrencyCode,
    @JsonKey(name: "destination_currency_code") String? destinationCurrencyCode,

    @JsonKey(name: "source_country_code") String? sourceCountryCode,
    @JsonKey(name: "destination_country_code") String? destinationCountryCode,

    @JsonKey(name: "pay_amount") int? payAmount,
    @JsonKey(name: "receive_amount") double? receiveAmount,

    @JsonKey(name: "transfer_mode_code") String? transferModeCode,
    @JsonKey(name: "transfer_mode") String? transferMode,
    @JsonKey(name: "payment_mode") String? paymentMode,

    @JsonKey(name: "status") String? status,
    @JsonKey(name: "app_status") String? appStatus,

    @JsonKey(name: "created_on") DateTime? createdOn,
  }) = _CommonTransaction;

  factory CommonTransaction.fromJson(Map<String, dynamic> json) =>
      _$CommonTransactionFromJson(json);
}
