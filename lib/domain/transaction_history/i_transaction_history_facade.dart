import 'package:dartz/dartz.dart';
import 'transaction_history_beneficiary_dto.dart';
import 'transaction_history_country_combo_dto.dart';
import 'transaction_history_details_dto.dart';
import 'transaction_history_dto.dart';
import 'transaction_history_failure.dart';

abstract class ITransactionHistoryFacade {
  Future<Either<TransactionHistoryFailure, TransactionHistoryDto>>
  getTransactionHistory({
    required int page,
    String? sortBy,
    String? sortOrder,
    List<String>? countryCodes,
    List<String>? beneficiaryCodes,
    String? keyword,
  });
  Future<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>>
  getTransactionHistoryBeneficiary();
  Future<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>>
  getTransactionHistoryCountryCombo();
  Future<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>>
  getTransactionHistoryDetails({
    required String beneficiaryId,
    required int transactionReference,
  });
  Future<Either<TransactionHistoryFailure, String>> downloadOrShareTransactionReceipt({
    required int transactionReference,
  });
}
