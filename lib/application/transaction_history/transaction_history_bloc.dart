import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/common/common_transaction_details_dto.dart';
import '../../domain/common/common_transaction_dto.dart';
import '../../domain/transaction_history/i_transaction_history_facade.dart';
import '../../domain/transaction_history/transaction_history_beneficiary_dto.dart';
import '../../domain/transaction_history/transaction_history_country_combo_dto.dart';
import '../../domain/transaction_history/transaction_history_details_dto.dart';
import '../../domain/transaction_history/transaction_history_dto.dart';
import '../../domain/transaction_history/transaction_history_failure.dart';

part 'transaction_history_event.dart';
part 'transaction_history_state.dart';
part 'transaction_history_bloc.freezed.dart';

@injectable
class TransactionHistoryBloc
    extends Bloc<TransactionHistoryEvent, TransactionHistoryState> {
  final ITransactionHistoryFacade _transactionHistoryFacade;

  TransactionHistoryBloc(this._transactionHistoryFacade)
    : super(TransactionHistoryState.initial()) {
    on<_GetTransactionHistory>(_onGetTransactionHistory);
    on<_GetTransactionHistoryBeneficiary>(_onGetTransactionHistoryBeneficiary);
    on<_GetTransactionHistoryCountryCombo>(
      _onGetTransactionHistoryCountryCombo,
    );
    on<_GetTransactionHistoryDetails>(_onGetTransactionHistoryDetails);
    on<_DownloadOrShareTransactionReceipt>(
      _onDownloadOrShareTransactionReceipt,
    );
  }

  FutureOr<void> _onGetTransactionHistory(
    _GetTransactionHistory event,
    Emitter<TransactionHistoryState> emit,
  ) async {
    if (state.isLoading) return;

    final isSorting = event.sortBy != null && event.sortOrder != null;
    final isReset = event.resetSort;
    final isFirstLoad = !event.isLoadMore && !isSorting && !isReset;

    final resetList = isFirstLoad || isSorting || isReset;

    final page = resetList ? 1 : (state.page + (event.isLoadMore ? 1 : 0));

    final countries = event.countryCodes ?? state.countryCodes;
    final beneficiaries = event.beneficiaryCodes ?? state.beneficiaryCodes;

    final keyword = event.keyword ?? state.keyword;

    emit(
      state.copyWith(
        isLoading: true,
        isSorting: isSorting,
        page: page,
        hasMore: resetList ? true : state.hasMore,
        sortBy: isReset ? null : (event.sortBy ?? state.sortBy),
        sortOrder: isReset ? null : (event.sortOrder ?? state.sortOrder),
        countryCodes: isReset ? [] : countries,
        beneficiaryCodes: isReset ? [] : beneficiaries,
        keyword: isReset ? null : keyword,
        commonTransactionDto: resetList ? null : state.commonTransactionDto,
        transactionHistoryDetailsSuccessOrFailureOption: none(),
        downloadOrShareReceiptSuccessOrFailureOption: none(),
        transactionHistorySuccessOrFailureOption: resetList
            ? none()
            : state.transactionHistorySuccessOrFailureOption,
      ),
    );

    final failureOrSuccess = await _transactionHistoryFacade
        .getTransactionHistory(
          page: page,
          sortBy: isReset ? null : (event.sortBy ?? state.sortBy),
          sortOrder: isReset ? null : (event.sortOrder ?? state.sortOrder),
          countryCodes: isReset ? null : countries,
          beneficiaryCodes: isReset ? null : beneficiaries,
          keyword: isReset ? null : keyword,
        );

    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            isSorting: false,
            transactionHistorySuccessOrFailureOption: some(left(failure)),
          ),
        );
      },
      (success) {
        final newList = (success.data?.transactions ?? [])
            .map(
              (e) => CommonTransaction(
                transactionReference: e.transactionReference,
                beneficiaryName: e.beneficiaryName,
                eId: e.eId,
                sourceCurrencyCode: e.sourceCurrencyCode,
                destinationCurrencyCode: e.destinationCurrencyCode,
                sourceCountryCode: e.sourceCountryCode,
                destinationCountryCode: e.destinationCountryCode,
                payAmount: e.payAmount,
                receiveAmount: e.receiveAmount,
                transferModeCode: e.transferModeCode,
                transferMode: e.transferMode,
                paymentMode: e.paymentMode,
                status: e.status,
                appStatus: e.appStatus,
                createdOn: e.createdOn,
              ),
            )
            .toList();

        final combinedList = resetList
            ? newList
            : [...?state.commonTransactionDto?.data.transactions, ...newList];

        emit(
          state.copyWith(
            isLoading: false,
            isSorting: false,
            page: page,
            hasMore: newList.isNotEmpty,
            commonTransactionDto: CommonTransactionDto(
              success: success.success,
              message: success.message,
              data: CommonTransactionData(transactions: combinedList),
            ),
            transactionHistorySuccessOrFailureOption: some(right(success)),
          ),
        );
      },
    );
  }

  FutureOr<void> _onGetTransactionHistoryBeneficiary(
    _GetTransactionHistoryBeneficiary event,
    Emitter<TransactionHistoryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingBeneficiary: true,
        transactionHistoryDetailsSuccessOrFailureOption: none(),
        downloadOrShareReceiptSuccessOrFailureOption: none(),
        transactionHistoryBeneficiarySuccessOrFailureOption: none(),
      ),
    );
    final failureOrSuccess = await _transactionHistoryFacade
        .getTransactionHistoryBeneficiary();

    emit(
      state.copyWith(
        isLoadingBeneficiary: false,
        transactionHistoryBeneficiaryDto: failureOrSuccess.fold(
          (failure) => null,
          (success) => success,
        ),
        transactionHistoryBeneficiarySuccessOrFailureOption: some(
          failureOrSuccess,
        ),
      ),
    );
  }

  FutureOr<void> _onGetTransactionHistoryCountryCombo(
    _GetTransactionHistoryCountryCombo event,
    Emitter<TransactionHistoryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingCountryCombo: true,
        transactionHistoryDetailsSuccessOrFailureOption: none(),
        downloadOrShareReceiptSuccessOrFailureOption: none(),
        transactionHistoryCountryComboSuccessOrFailureOption: none(),
      ),
    );
    final failureOrSuccess = await _transactionHistoryFacade
        .getTransactionHistoryCountryCombo();

    emit(
      state.copyWith(
        isLoadingCountryCombo: false,
        transactionHistoryCountryComboDto: failureOrSuccess.fold(
          (failure) => null,
          (success) => success,
        ),
        transactionHistoryCountryComboSuccessOrFailureOption: some(
          failureOrSuccess,
        ),
      ),
    );
  }

  FutureOr<void> _onGetTransactionHistoryDetails(
    _GetTransactionHistoryDetails event,
    Emitter<TransactionHistoryState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoadingDetails: true,
        downloadOrShareReceiptSuccessOrFailureOption: none(),
        transactionHistoryDetailsSuccessOrFailureOption: none(),
      ),
    );
    final failureOrSuccess = await _transactionHistoryFacade
        .getTransactionHistoryDetails(
          beneficiaryId: event.beneficiaryId,
          transactionReference: event.transactionReference,
        );
    emit(
      state.copyWith(
        isLoadingDetails: false,
        transactionHistoryDetailsDto: failureOrSuccess.fold(
          (failure) => null,
          (success) => CommonTransactionDetailsDto(
            data: TransactionDetailData(
              transaction: TransactionDetail(
                appStatus: success.data?.transaction?.appStatus,
                payAmount: success.data?.transaction?.payAmount,
                receiveAmount: success.data?.transaction?.receiveAmount,
                destinationCurrencyCode:
                    success.data?.transaction?.destinationCurrencyCode,
                transactionDate: success.data?.transaction?.transactionDate,
                transactionReference:
                    success.data?.transaction?.transactionReference,
                paymentMode: success.data?.transaction?.paymentMode,
                beneficiaryName: success.data?.transaction?.beneficiaryName,
                transferMode: success.data?.transaction?.transferMode,
                iSDownload: success.data?.transaction?.iSDownload,
                beneficiaryById: BeneficiaryDetail(
                  beneficiaryBankAccountNumber: success
                      .data
                      ?.transaction
                      ?.beneficiaryById
                      ?.beneficiaryBankAccountNumber,
                  beneficiaryBankName: success
                      .data
                      ?.transaction
                      ?.beneficiaryById
                      ?.beneficiaryBankName,
                ),
              ),
            ),
          ),
        ),
        transactionHistoryDetailsSuccessOrFailureOption: some(failureOrSuccess),
      ),
    );
    emit(
      state.copyWith(
        transactionHistoryDetailsSuccessOrFailureOption: none(),
      ),
    );
  }

  FutureOr<void> _onDownloadOrShareTransactionReceipt(
    _DownloadOrShareTransactionReceipt event,
    Emitter<TransactionHistoryState> emit,
  ) async {
    emit(
      state.copyWith(
        isDownloadingOrSharingReceipt: true,
        isDownloadingReceipt: event.isDownload,
        transactionHistoryDetailsSuccessOrFailureOption: none(),
        downloadOrShareReceiptSuccessOrFailureOption: none(),
      ),
    );
    final failureOrSuccess = await _transactionHistoryFacade
        .downloadOrShareTransactionReceipt(
          transactionReference: event.transactionReference,
        );
    emit(
      state.copyWith(
        isDownloadingOrSharingReceipt: false,
        downloadOrShareReceiptSuccessOrFailureOption: some(failureOrSuccess),
      ),
    );
  }
}
