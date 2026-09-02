part of 'transaction_history_bloc.dart';

@freezed
sealed class TransactionHistoryEvent with _$TransactionHistoryEvent {
  const factory TransactionHistoryEvent.getTransactionHistory({
    @Default(false) bool isLoadMore,
    String? sortBy,
    String? sortOrder,
    List<String>? countryCodes,
    List<String>? beneficiaryCodes,
    String? keyword,
    @Default(false) bool resetSort,
  }) = _GetTransactionHistory;
  const factory TransactionHistoryEvent.getTransactionHistoryBeneficiary() =
      _GetTransactionHistoryBeneficiary;
  const factory TransactionHistoryEvent.getTransactionHistoryCountryCombo() =
      _GetTransactionHistoryCountryCombo;
  const factory TransactionHistoryEvent.getTransactionHistoryDetails({
    required String beneficiaryId,
    required int transactionReference,
  }) = _GetTransactionHistoryDetails;
  const factory TransactionHistoryEvent.downloadOrShareTransactionReceipt({
    required int transactionReference,
    required bool isDownload,
  }) = _DownloadOrShareTransactionReceipt;
}
