import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/core/prefs/app_prefs.dart';
import '../../domain/core/services/api_services.dart';
import '../../domain/home/home_advertisement_dto.dart';
import '../../domain/home/home_bank_or_agent_list_dto.dart';
import '../../domain/home/home_beneficiary_list_dto.dart';
import '../../domain/home/home_calculate_amount_dto.dart';
import '../../domain/home/home_destination_currency_list_dto.dart';
import '../../domain/home/home_failure.dart';
import '../../domain/home/home_payment_method_dto.dart';
import '../../domain/home/home_recent_beneficiaries_dto.dart';
import '../../domain/home/home_source_currency_list_dto.dart';
import '../../domain/home/home_transfer_type_dto.dart';
import '../../domain/home/home_user_dto.dart';
import '../../domain/home/i_home_facade.dart';

@LazySingleton(as: IHomeFacade)
class HomeRepository implements IHomeFacade {
  final ApiServices _apiServices;
  final SharedPrefs _sharedPrefs;
  HomeRepository(this._apiServices, this._sharedPrefs);

  @override
  Future<Either<HomeFailure, HomeAdvertisementDto>>
  getHomeAdvertisement() async {
    try {
      final response = await _apiServices.getAdvertisement();
      if (response.isSuccessful) {
        final advertisementDto = HomeAdvertisementDto.fromJson(response.body);
        return right(advertisementDto);
      } else {
        return left(const HomeFailure.unableToFetchAdvertisement());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomeUserDto>> getHomeUserData() async {
    try {
      final token = _sharedPrefs.getToken();
      final response = await _apiServices.getUserInfo(token: token);
      if (response.isSuccessful) {
        final homeUserDto = HomeUserDto.fromJson(response.body);
        return right(homeUserDto);
      } else {
        return left(const HomeFailure.unableToFetchUserData());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomeRecentBeneficiariesDto>>
  getHomeBeneficiaries() async {
    try {
      final token = _sharedPrefs.getToken();
      final appMemberCode = _sharedPrefs.getAppMemberCode();
      final queryParams = {'app_member_code': appMemberCode};
      final response = await _apiServices.getRecentBeneficiaries(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final beneficiariesDto = HomeRecentBeneficiariesDto.fromJson(
          response.body,
        );
        return right(beneficiariesDto);
      } else {
        return left(const HomeFailure.unableToFetchSourceCurrencyList());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomeSourceCurrencyListDto>>
  getHomeSourceCurrencyList() async {
    try {
      final queryParams = {'is_base': true};
      final response = await _apiServices.getCurrencies(
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final currencyListDto = HomeSourceCurrencyListDto.fromJson(
          response.body,
        );
        return right(currencyListDto);
      } else {
        return left(const HomeFailure.unableToFetchSourceCurrencyList());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomeDestinationCurrencyListDto>>
  getHomeDestinationCurrencyList() async {
    try {
      final queryParams = {'is_base': false};
      final response = await _apiServices.getCurrencies(
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final destinationCurrencyListDto =
            HomeDestinationCurrencyListDto.fromJson(response.body);
        return right(destinationCurrencyListDto);
      } else {
        return left(const HomeFailure.unableToFetchDestinationCurrencyList());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomeTransferTypeDto>> getHomeTransferTypes({
    required String destinationCurrencyCode,
    required String destinationCountryCode,
  }) async {
    try {
      final queryParams = {
        'country_code': destinationCountryCode,
        'currency_code': destinationCurrencyCode,
      };
      final response = await _apiServices.getTransferTypes(
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final transferTypeDto = HomeTransferTypeDto.fromJson(response.body);
        return right(transferTypeDto);
      } else {
        return left(const HomeFailure.unableToFetchTransferTypes());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomeBankOrAgentListDto>> getHomeBankOrAgentList({
    required String destinationCountryCode,
    required String destinationCurrencyCode,
    required String transferTypeCode,
  }) async {
    try {
      final token = _sharedPrefs.getToken();
      final queryParams = {
        'country_code': destinationCountryCode,
        'currency_code': destinationCurrencyCode,
        'disbursal_mode': transferTypeCode,
      };
      final response = await _apiServices.getBankOrAgents(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final bankOrAgentDto = HomeBankOrAgentListDto.fromJson(response.body);
        return right(bankOrAgentDto);
      } else {
        return left(const HomeFailure.unableToFetchBankOrAgentList());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomePaymentMethodDto>>
  getHomePaymentMethod() async {
    try {
      final response = await _apiServices.getPaymentModes();
      if (response.isSuccessful) {
        final paymentMethodDto = HomePaymentMethodDto.fromJson(response.body);
        return right(paymentMethodDto);
      } else {
        return left(const HomeFailure.unableToFetchPaymentMethod());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
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
  }) async {
    try {
      final queryParams = {
        'DestinationCountryCode': destinationCountryCode,
        'DestinationCurrencyCode': destinationCurrencyCode,
        'SourceCountryCode': sourceCountryCode,
        'SourceCurrencyCode': sourceCurrencyCode,
        'SourceAmount': sourceAmount,
        'ProductCode': productCode,
        'TransferModeCode': transferTypeCode,
        'PaymentMode': paymentMethodCode,
      };
      final response = await _apiServices.getCalculatedAmount(queryParams);
      if (response.isSuccessful) {
        final calculateAmountDto = HomeCalculateAmountDto.fromJson(
          response.body,
        );
        return right(calculateAmountDto);
      } else {
        return left(const HomeFailure.unableToCalculateExchangeRate());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
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
  }) async {
    try {
      final queryParams = {
        'DestinationCountryCode': destinationCountryCode,
        'DestinationCurrencyCode': destinationCurrencyCode,
        'SourceCountryCode': sourceCountryCode,
        'SourceCurrencyCode': sourceCurrencyCode,
        'DestinationAmount': destinationAmount,
        'ProductCode': productCode,
        'TransferModeCode': transferTypeCode,
        'PaymentMode': paymentMethodCode,
      };
      final response = await _apiServices.getCalculatedAmount(queryParams);
      if (response.isSuccessful) {
        final calculateAmountDto = HomeCalculateAmountDto.fromJson(
          response.body,
        );
        return right(calculateAmountDto);
      } else {
        return left(const HomeFailure.unableToCalculateExchangeRate());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, HomeBeneficiaryListDto>> getHomeBeneficiaryList({
    required String transferTypeCode,
    required String destinationCountryCode,
  }) async {
    try {
      final token = _sharedPrefs.getToken();
      final appMemberCode = _sharedPrefs.getAppMemberCode();
      final queryParams = {'app_member_code': appMemberCode};
      final response = await _apiServices.getBeneficiaries(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        final beneficiaryListDto = HomeBeneficiaryListDto.fromJson(
          response.body,
        );
        // TEMPORARY: /beneficiary/get-beneficiary-list does not actually
        // filter server-side — verified live that sending country_code /
        // transfer_mode_code returns zero rows regardless of value, while
        // the field-matching names (beneficiary_country_code / disbursal_mode)
        // are silently ignored and return the full unfiltered list either
        // way. Filter client-side by country/transfer-mode here until the
        // backend implements real filtering on this endpoint.
        final data = beneficiaryListDto.data;
        if (data == null) return right(beneficiaryListDto);
        final filtered = (data.beneficiaryList ?? []).where((b) {
          final matchesCountry =
              destinationCountryCode.isEmpty ||
              b.beneficiaryCountryCode == destinationCountryCode;
          final matchesTransferType =
              transferTypeCode.isEmpty || b.disbursalMode == transferTypeCode;
          return matchesCountry && matchesTransferType;
        }).toList();
        final filteredDto = beneficiaryListDto.copyWith(
          data: data.copyWith(
            beneficiaryList: filtered,
            totalRecordCount: filtered.length,
          ),
        );
        return right(filteredDto);
      } else {
        return left(const HomeFailure.unableToFetchBeneficiaryList());
      }
    } catch (e) {
      return left(const HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, String>> deleteBeneficiary({
    required String eId,
  }) async {
    try {
      final token = _sharedPrefs.getToken();
      final queryParams = {'eId': eId};
      final response = await _apiServices.deleteBeneficiary(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        return right(eId);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(HomeFailure.unableToDeleteBeneficiary(message));
      }
    } catch (e) {
      return left(HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, Unit>> requestEmailOtp({
    required String email,
  }) async {
    try {
      final token = _sharedPrefs.getToken();
      final memberCode = _sharedPrefs.getMemberCode();
      final queryParams = {'member_code': memberCode, 'email': email};
      final response = await _apiServices.postRequestEmailOtp(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        return right(unit);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(HomeFailure.unableToUpdateEmailAddress(message));
      }
    } catch (e) {
      return left(HomeFailure.serverError());
    }
  }

  @override
  Future<Either<HomeFailure, Unit>> verifyEmailOtp({
    required String otp,
    required String email,
  }) async {
    try {
      final token = _sharedPrefs.getToken();
      final memberCode = _sharedPrefs.getAppMemberCode();
      final queryParams = {
        'member_code': memberCode,
        'otp': otp,
        'email': email,
      };
      final response = await _apiServices.postVerifyEmailOtp(
        token: token,
        queryParams: queryParams,
      );
      if (response.isSuccessful) {
        return right(unit);
      } else {
        final errorMap = response.error as Map<String, dynamic>?;
        final message = errorMap?['message']?.toString() ?? '';
        return left(HomeFailure.unableToVerifyEmailOtp(message));
      }
    } catch (e) {
      return left(HomeFailure.serverError());
    }
  }
}
