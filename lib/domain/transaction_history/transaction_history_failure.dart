import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_history_failure.freezed.dart';

@freezed
abstract class TransactionHistoryFailure with _$TransactionHistoryFailure {
  const factory TransactionHistoryFailure.unableToGetTransactionHistory() =_UnableToGetTransactionHistory;
  const factory TransactionHistoryFailure.unableToGetTransactionHistoryBeneficiary() = _UnableToGetTransactionHistoryBeneficiary;
  const factory TransactionHistoryFailure.unableToGetTransactionHistoryCountryCombo() = _UnableToGetTransactionHistoryCountryCombo;
  const factory TransactionHistoryFailure.unableToGetTransactionHistoryDetails() = _UnableToGetTransactionHistoryDetails;
  const factory TransactionHistoryFailure.unableToDownloadOrShareTransactionHistoryReceipt() = _UnableToDownloadOrShareTransactionHistoryReceipt;
  const factory TransactionHistoryFailure.serverError() = _ServerError;
}
