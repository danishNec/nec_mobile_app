import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nec_mobile_app/domain/summary/summary_beneficiary_by_id_dto.dart';
import 'package:nec_mobile_app/domain/summary/summary_currency_list_dto.dart';
import 'package:nec_mobile_app/domain/summary/summary_payment_method_dto.dart';
import 'package:nec_mobile_app/domain/summary/summary_status_enquiry_dto.dart';

import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/summary/i_summary_facade.dart';
import '../../domain/summary/summary_calculate_amount_dto.dart';
import '../../domain/summary/summary_failure.dart';
import '../../domain/summary/summary_temporary_session_dto.dart';

@LazySingleton(as: ISummaryFacade)
class SummaryRepository implements ISummaryFacade {
  final ApiServices _apiServices;
  final SharedPrefs _sharedPrefs;

  SummaryRepository(this._apiServices, this._sharedPrefs);

  @override
  Future<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> getBeneficiaryById(
    String beneficiaryId,
  ) async {
    try {
      final token = _sharedPrefs.getToken();
      final response = await _apiServices.getBeneficiaryById(
        token: token,
        beneficiaryId: beneficiaryId,
      );
      if (response.isSuccessful) {
        return right(SummaryBeneficiaryByIdDto.fromJson(response.body));
      }
      return left(const SummaryFailure.unableToGetBeneficiary());
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }

  @override
  Future<Either<SummaryFailure, SummaryCurrencyListDto>>
  getHomeSourceCurrencyList() async {
    try {
      final queryParams = {'is_base': true};
      final response = await _apiServices.getCurrencies(
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        return right(SummaryCurrencyListDto.fromJson(response.body));
      }
      return left(const SummaryFailure.unableToGetSourceCurrency());
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }

  @override
  Future<Either<SummaryFailure, SummaryCurrencyListDto>>
  getHomeDestinationCurrencyList() async {
    try {
      final queryParams = {'is_base': false};
      final response = await _apiServices.getCurrencies(
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        return right(SummaryCurrencyListDto.fromJson(response.body));
      }
      return left(const SummaryFailure.unableToGetDestinationCurrency());
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }

  @override
  Future<Either<SummaryFailure, SummaryPaymentMethodDto>>
  getSummaryPaymentMethod() async {
    try {
      final response = await _apiServices.getPaymentModes();
      if (response.isSuccessful) {
        return right(SummaryPaymentMethodDto.fromJson(response.body));
      }
      return left(const SummaryFailure.unableToGetPaymentMethod());
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }

  @override
  Future<Either<SummaryFailure, SummaryCalculateAmountDto>>
  getCalculatedSourceAmount({
    required String destinationCountryCode,
    required String destinationCurrencyCode,
    required String sourceCountryCode,
    required String sourceCurrencyCode,
    required String sourceAmount,
    required String productCode,
    required String transferTypeCode,
    required String paymentMethodCode,
  }) async {
    try {
      final response = await _apiServices.getCalculatedAmount({
        'DestinationCountryCode': destinationCountryCode,
        'DestinationCurrencyCode': destinationCurrencyCode,
        'SourceCountryCode': sourceCountryCode,
        'SourceCurrencyCode': sourceCurrencyCode,
        'SourceAmount': sourceAmount,
        'ProductCode': productCode,
        'TransferModeCode': transferTypeCode,
        'PaymentMode': paymentMethodCode,
      });
      if (response.isSuccessful) {
        return right(SummaryCalculateAmountDto.fromJson(response.body));
      }
      return left(const SummaryFailure.unableToCalculateSourceAmount());
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }

  @override
  Future<Either<SummaryFailure, SummaryCalculateAmountDto>>
  getCalculatedDestinationAmount({
    required String destinationCountryCode,
    required String destinationCurrencyCode,
    required String sourceCountryCode,
    required String sourceCurrencyCode,
    required String destinationAmount,
    required String productCode,
    required String transferTypeCode,
    required String paymentMethodCode,
  }) async {
    try {
      final response = await _apiServices.getCalculatedAmount({
        'DestinationCountryCode': destinationCountryCode,
        'DestinationCurrencyCode': destinationCurrencyCode,
        'SourceCountryCode': sourceCountryCode,
        'SourceCurrencyCode': sourceCurrencyCode,
        'DestinationAmount': destinationAmount,
        'ProductCode': productCode,
        'TransferModeCode': transferTypeCode,
        'PaymentMode': paymentMethodCode,
      });
      if (response.isSuccessful) {
        return right(SummaryCalculateAmountDto.fromJson(response.body));
      }
      return left(const SummaryFailure.unableToCalculateDestinationAmount());
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }

  @override
  Future<Either<SummaryFailure, SummaryTemporarySessionDto>>
  createTemporarySession({
    required double sourceAmount,
    required String sourceCurrencyCode,
    required String sourceCountryCode,
    required double destinationAmount,
    required String destinationCurrencyCode,
    required String destinationCountryCode,
    required double displayRate,
    required String rateOperator,
    required String transferTypeCode,
    required int productCode,
    required String serviceCode,
    required String purposeOfTransactionCode,
    required String purposeOfTransactionName,
    required String sourceOfFundsCode,
    required String sourceOfFundsName,
    required int beneficiaryCode,
    required String beneficiaryId,
    required double commission,
    required double paymentCommission,
    required double fcCommission,
    required double taxPercentage,
    required double taxCollected,
    required double netAmount,
    required String paymentMethodCode,
  }) async {
    try {
      final token = _sharedPrefs.getToken();
      final response = await _apiServices.createTemporarySession(
        token: token,
        body: {
          'source_amount': sourceAmount,
          'source_currency_code': sourceCurrencyCode,
          'source_country_code': sourceCountryCode,
          'destination_amount': destinationAmount,
          'destination_currency_code': destinationCurrencyCode,
          'destination_country_code': destinationCountryCode,
          'rate': displayRate,
          'rate_operator': rateOperator,
          'transfer_mode_code': transferTypeCode,
          'product_code': productCode,
          'service_code': serviceCode,
          'purpose_code': purposeOfTransactionCode,
          'purpose': purposeOfTransactionName,
          'income_source_code': sourceOfFundsCode,
          'income_source': sourceOfFundsName,
          'beneficiary_code': beneficiaryCode,
          'beneficiary_eid': beneficiaryId,
          'commission': commission,
          'payment_commission': paymentCommission,
          'f_c_commission': fcCommission,
          'tax_percentage': int.tryParse(taxPercentage.toStringAsFixed(0)) ?? 0,
          'tax_collected': taxCollected,
          'net_amount': netAmount,
          'remarks': null,
          'payment': {'payment_mode': paymentMethodCode},
        },
      );
      if (response.isSuccessful) {
        return right(SummaryTemporarySessionDto.fromJson(response.body));
      }
      final errorMap = response.error as Map<String, dynamic>?;
      final message = errorMap?['message']?.toString() ?? '';
      return left(SummaryFailure.unableToCreateTemporarySession(message));
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }

  @override
  Future<Either<SummaryFailure, SummaryStatusEnquiryDto>>
  getSummaryStatusEnquiry({required String temporarySessionId}) async {
    try {
      final token = _sharedPrefs.getToken();
      final response = await _apiServices.statusEnquiry(
        token: token,
        temporarySessionId: temporarySessionId,
      );
      if (response.isSuccessful) {
        return right(SummaryStatusEnquiryDto.fromJson(response.body));
      }
      final errorMap = response.error as Map<String, dynamic>?;
      final message = errorMap?['message']?.toString() ?? '';
      return left(SummaryFailure.unableToGetSummaryStatusEnquiry(message));
    } catch (e) {
      return left(const SummaryFailure.serverError());
    }
  }
}
