import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_failure.freezed.dart';

@freezed
sealed class HomeFailure with _$HomeFailure {
  const factory HomeFailure.unableToFetchAdvertisement() =
      _UnableToFetchAdvertisement;
  const factory HomeFailure.unableToFetchUserData() = _UnableToFetchUserData;
  const factory HomeFailure.unableToFetchBeneficiaries() =
      _UnableToFetchBeneficiaries;
  const factory HomeFailure.unableToFetchSourceCurrencyList() =
      _UnableToFetchSourceCurrencyList;
  const factory HomeFailure.unableToFetchDestinationCurrencyList() =
      _UnableToFetchDestinationCurrencyList;
  const factory HomeFailure.unableToFetchTransferTypes() =
      _UnableToFetchTransferTypes;
  const factory HomeFailure.unableToFetchBankOrAgentList() =
      _UnableToFetchBankOrAgentList;
  const factory HomeFailure.unableToFetchPaymentMethod() =
      _UnableToFetchPaymentMethod;
  const factory HomeFailure.unableToCalculateExchangeRate() =
      _UnableToCalculateExchangeRate;
  const factory HomeFailure.unableToFetchBeneficiaryList() =
      _UnableToFetchBeneficiaryList;
  const factory HomeFailure.unableToDeleteBeneficiary(String message) =
      _UnableToDeleteBeneficiary;
  const factory HomeFailure.emailNotChanged() = _EmailNotChanged;
  const factory HomeFailure.unableToUpdateEmailAddress(String message) =
  _UnableToUpdateEmailAddress;
  const factory HomeFailure.unableToVerifyEmailOtp(String message) = _UnableToVerifyEmailOtp;
  const factory HomeFailure.serverError() = _ServerError;
}
