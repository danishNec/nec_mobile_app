part of 'transaction_history_bloc.dart';

@freezed
sealed class TransactionHistoryState with _$TransactionHistoryState {
  const factory TransactionHistoryState({
    required bool isLoading,
    required bool isLoadingBeneficiary,
    required bool isLoadingCountryCombo,
    required bool isLoadingDetails,
    required bool isDownloadingOrSharingReceipt,
    required bool isDownloadingReceipt,
    required bool hasMore,
    required bool isSorting,
    required int page,
    String? sortBy,
    String? sortOrder,
    required List<String> countryCodes,
    required List<String> beneficiaryCodes,
    String? keyword,
    CommonTransactionDto? commonTransactionDto,
    TransactionHistoryBeneficiaryDto? transactionHistoryBeneficiaryDto,
    TransactionHistoryCountryComboDto? transactionHistoryCountryComboDto,
    CommonTransactionDetailsDto? transactionHistoryDetailsDto,
    required Option<Either<TransactionHistoryFailure, TransactionHistoryDto>>
    transactionHistorySuccessOrFailureOption,
    required Option<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>>
    transactionHistoryBeneficiarySuccessOrFailureOption,
    required Option<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>>
    transactionHistoryCountryComboSuccessOrFailureOption,
    required Option<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>>
    transactionHistoryDetailsSuccessOrFailureOption,
    required Option<Either<TransactionHistoryFailure, String>>
    downloadOrShareReceiptSuccessOrFailureOption,
  }) = _TransactionHistoryState;

  factory TransactionHistoryState.initial() => TransactionHistoryState(
    isLoading: false,
    isLoadingBeneficiary: false,
    isLoadingCountryCombo: false,
    isLoadingDetails: false,
    isDownloadingOrSharingReceipt: false,
    isDownloadingReceipt: false,
    hasMore: true,
    isSorting: false,
    page: 1,
    countryCodes: [],
    beneficiaryCodes: [],
    transactionHistorySuccessOrFailureOption: none(),
    transactionHistoryBeneficiarySuccessOrFailureOption: none(),
    transactionHistoryCountryComboSuccessOrFailureOption: none(),
    transactionHistoryDetailsSuccessOrFailureOption: none(),
    downloadOrShareReceiptSuccessOrFailureOption: none(),
  );
}
