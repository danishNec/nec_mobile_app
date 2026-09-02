import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/transaction_history/i_transaction_history_facade.dart';
import '../../domain/transaction_history/transaction_history_beneficiary_dto.dart';
import '../../domain/transaction_history/transaction_history_country_combo_dto.dart';
import '../../domain/transaction_history/transaction_history_details_dto.dart';
import '../../domain/transaction_history/transaction_history_dto.dart';
import '../../domain/transaction_history/transaction_history_failure.dart';

@LazySingleton(as: ITransactionHistoryFacade)
class TransactionHistoryRepository implements ITransactionHistoryFacade {
  final ApiServices _apiService;
  final SharedPrefs _appPrefs;
  TransactionHistoryRepository(this._apiService, this._appPrefs);
  @override
  Future<Either<TransactionHistoryFailure, TransactionHistoryDto>>
  getTransactionHistory({
    required int page,
    String? sortBy,
    String? sortOrder,
    List<String>? countryCodes,
    List<String>? beneficiaryCodes,
    String? keyword,
  }) async {
    try {
      final token = _appPrefs.getToken();
      final queryParams = <String, dynamic>{
        'page_index': page,
        'sort_order': ?sortOrder,
        'sort_by': ?sortBy,
        if ((beneficiaryCodes ?? []).isNotEmpty)
          'filter_beneficiary': beneficiaryCodes!.join(','),
        if ((countryCodes ?? []).isNotEmpty)
          'filter_country': countryCodes!.join(','),
        if (keyword != null && keyword.trim().isNotEmpty)
          'keyword': keyword.trim().toLowerCase(),
      };
      final response = await _apiService.getTransactionHistories(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final dto = TransactionHistoryDto.fromJson(response.body);
        return right(dto);
      } else {
        return left(
          const TransactionHistoryFailure.unableToGetTransactionHistory(),
        );
      }
    } catch (e) {
      return left(const TransactionHistoryFailure.serverError());
    }
  }

  @override
  Future<Either<TransactionHistoryFailure, TransactionHistoryBeneficiaryDto>>
  getTransactionHistoryBeneficiary() async {
    try {
      final token = _appPrefs.getToken();
      final appMemberCode = _appPrefs.getAppMemberCode();
      final queryParams = {'app_member_code': appMemberCode};
      final response = await _apiService.getBeneficiaries(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final dto = TransactionHistoryBeneficiaryDto.fromJson(response.body);
        return right(dto);
      } else {
        return left(
          const TransactionHistoryFailure.unableToGetTransactionHistoryBeneficiary(),
        );
      }
    } catch (e) {
      return left(const TransactionHistoryFailure.serverError());
    }
  }

  @override
  Future<Either<TransactionHistoryFailure, TransactionHistoryCountryComboDto>>
  getTransactionHistoryCountryCombo() async {
    try {
      final response = await _apiService.getCountryCombo();
      if (response.isSuccessful) {
        final dto = TransactionHistoryCountryComboDto.fromJson(response.body);
        return right(dto);
      } else {
        return left(
          const TransactionHistoryFailure.unableToGetTransactionHistoryCountryCombo(),
        );
      }
    } catch (e) {
      return left(const TransactionHistoryFailure.serverError());
    }
  }

  @override
  Future<Either<TransactionHistoryFailure, TransactionHistoryDetailsDto>>
  getTransactionHistoryDetails({
    required String beneficiaryId,
    required int transactionReference,
  }) async {
    try {
      final token = _appPrefs.getToken();
      final queryParams = {
        'eId': beneficiaryId,
        'transaction_reference': transactionReference,
      };
      final response = await _apiService.getTransactionDetails(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final dto = TransactionHistoryDetailsDto.fromJson(response.body);
        return right(dto);
      } else {
        return left(
          const TransactionHistoryFailure.unableToGetTransactionHistoryDetails(),
        );
      }
    } catch (e) {
      return left(const TransactionHistoryFailure.serverError());
    }
  }

  @override
  Future<Either<TransactionHistoryFailure, String>>
  downloadOrShareTransactionReceipt({required int transactionReference}) async {
    try {
      Directory? dir;
      if (Platform.isAndroid) {
        dir = Directory('/storage/emulated/0/Download');
      } else {
        dir = await getApplicationDocumentsDirectory();
      }

      final filePath = '${dir.path}/receipt_$transactionReference.pdf';
      final file = File(filePath);

      final exists = await file.exists();

      if (exists) {
        return right(filePath);
      }

      final token = _appPrefs.getToken();

      final response = await _apiService.downloadOrShareReceipt(
        token: token,
        queryParams: {'RefNo': transactionReference},
      );

      if (response.isSuccessful) {
        List<int>? bytes;

        if (response.body is List<int>) {
          bytes = response.body;
        } else {
          final bodyString = response.body.toString();
          bytes = utf8.encode(bodyString);
        }

        await file.writeAsBytes(bytes!);

        return right(filePath);
      } else {
        return left(
          const TransactionHistoryFailure.unableToDownloadOrShareTransactionHistoryReceipt(),
        );
      }
    } catch (e) {
      return left(const TransactionHistoryFailure.serverError());
    }
  }
}
