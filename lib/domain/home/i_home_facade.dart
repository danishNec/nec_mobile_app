import 'package:dartz/dartz.dart';
import 'home_advertisement_dto.dart';
import 'home_bank_or_agent_list_dto.dart';
import 'home_beneficiary_list_dto.dart';
import 'home_calculate_amount_dto.dart';
import 'home_destination_currency_list_dto.dart';
import 'home_failure.dart';
import 'home_payment_method_dto.dart';
import 'home_recent_beneficiaries_dto.dart';
import 'home_source_currency_list_dto.dart';
import 'home_transfer_type_dto.dart';
import 'home_user_dto.dart';

abstract class IHomeFacade {
  Future<Either<HomeFailure, HomeAdvertisementDto>> getHomeAdvertisement();
  Future<Either<HomeFailure, HomeUserDto>> getHomeUserData();
  Future<Either<HomeFailure, HomeRecentBeneficiariesDto>>
  getHomeBeneficiaries();
  Future<Either<HomeFailure, HomeSourceCurrencyListDto>>
  getHomeSourceCurrencyList();
  Future<Either<HomeFailure, HomeDestinationCurrencyListDto>>
  getHomeDestinationCurrencyList();
  Future<Either<HomeFailure, HomeTransferTypeDto>> getHomeTransferTypes({
    required String destinationCurrencyCode,
    required String destinationCountryCode,
  });
  Future<Either<HomeFailure, HomeBankOrAgentListDto>> getHomeBankOrAgentList({
    required String destinationCountryCode,
    required String destinationCurrencyCode,
    required String transferTypeCode,
  });
  Future<Either<HomeFailure, HomePaymentMethodDto>> getHomePaymentMethod();
  Future<Either<HomeFailure, HomeCalculateAmountDto>>
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
  Future<Either<HomeFailure, HomeCalculateAmountDto>>
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
  Future<Either<HomeFailure, HomeBeneficiaryListDto>> getHomeBeneficiaryList({
    required String transferTypeCode,
    required String destinationCountryCode,
  });
  Future<Either<HomeFailure, String>> deleteBeneficiary({
    required String eId,
  });
  Future<Either<HomeFailure, Unit>> requestEmailOtp({required String email});
  Future<Either<HomeFailure, Unit>> verifyEmailOtp({
    required String otp,
    required String email,
  });
}
