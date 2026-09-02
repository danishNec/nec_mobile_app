import 'package:dartz/dartz.dart';
import 'summary_beneficiary_by_id_dto.dart';
import 'summary_calculate_amount_dto.dart';
import 'summary_currency_list_dto.dart';
import 'summary_failure.dart';
import 'summary_payment_method_dto.dart';
import 'summary_status_enquiry_dto.dart';
import 'summary_temporary_session_dto.dart';

abstract class ISummaryFacade {
  Future<Either<SummaryFailure, SummaryBeneficiaryByIdDto>> getBeneficiaryById(
    String beneficiaryId,
  );
  Future<Either<SummaryFailure, SummaryCurrencyListDto>>
  getHomeSourceCurrencyList();
  Future<Either<SummaryFailure, SummaryCurrencyListDto>>
  getHomeDestinationCurrencyList();
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
  });
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
  });
  Future<Either<SummaryFailure, SummaryPaymentMethodDto>>
  getSummaryPaymentMethod();
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
  });
  Future<Either<SummaryFailure, SummaryStatusEnquiryDto>> getSummaryStatusEnquiry({
    required String temporarySessionId,
  });
}
