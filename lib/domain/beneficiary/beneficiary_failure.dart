import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_failure.freezed.dart';

@freezed
sealed class BeneficiaryFailure with _$BeneficiaryFailure {
  const factory BeneficiaryFailure.unableToGetBeneficiaryList() =
  _UnableToGetBeneficiaryList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryById() =
  _UnableToGetBeneficiaryById;

  const factory BeneficiaryFailure.unableToGetBeneficiaryCountryList() =
  _UnableToGetBeneficiaryCountryList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryCurrencyListByCountry() =
  _UnableToGetBeneficiaryCurrencyListByCountry;

  const factory BeneficiaryFailure.unableToGetBeneficiaryTransferModeList() =
  _UnableToGetBeneficiaryTransferModeList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryBankOrAgentList() =
  _UnableToGetBeneficiaryBankOrAgentList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryProductFieldSettings() =
  _UnableToGetBeneficiaryProductFieldSettings;

  const factory BeneficiaryFailure.unableToGetBeneficiarySourceFundList() =
  _UnableToGetBeneficiarySourceFundList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryPurposeOfTransferList() =
  _UnableToGetBeneficiaryPurposeOfTransferList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryComboList() =
  _UnableToGetBeneficiaryComboList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryBankComboList() =
  _UnableToGetBeneficiaryBankComboList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryBankBranchComboList() =
  _UnableToGetBeneficiaryBankBranchComboList;

  const factory BeneficiaryFailure.unableToGetBeneficiaryRouteCode() =
  _UnableToGetBeneficiaryRouteCode;

  const factory BeneficiaryFailure.unableToSendBeneficiaryVerificationCode(
      String message,
      ) = _UnableToSendBeneficiaryVerificationCode;

  const factory BeneficiaryFailure.unableToVerifyBeneficiaryOtp(
      String message,
      ) = _UnableToVerifyBeneficiaryOtp;

  const factory BeneficiaryFailure.verifyWithoutOtp() = _VerifyWithoutOtp;

  const factory BeneficiaryFailure.unableToDeleteBeneficiary(String message) =
  _UnableToDeleteBeneficiary;

  const factory BeneficiaryFailure.unableToGetBeneficiaryBankBranchRoute(
      String message,
      ) = _UnableToGetBeneficiaryBankBranchRoute;

  const factory BeneficiaryFailure.serverError(String message) = _ServerError;
}
