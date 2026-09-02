import 'package:dartz/dartz.dart';
import 'beneficiary_bank_branch_combo_list_dto.dart';
import 'beneficiary_bank_branch_route_dto.dart';
import 'beneficiary_bank_combo_list_dto.dart';
import 'beneficiary_bank_or_agent_list_dto.dart';
import 'beneficiary_by_id_dto.dart';
import 'beneficiary_combo_list_dto.dart';
import 'beneficiary_country_list_dto.dart';
import 'beneficiary_currency_list_dto.dart';
import 'beneficiary_failure.dart';
import 'beneficiary_list_dto.dart';
import 'beneficiary_product_field_settings_dto.dart';
import 'beneficiary_purpose_of_transfer_dto.dart';
import 'beneficiary_route_code_dto.dart';
import 'beneficiary_source_of_fund_dto.dart';
import 'beneficiary_transfer_mode_list_dto.dart';
import 'value_validators.dart';

abstract class IBeneficiaryFacade {
  Future<Either<BeneficiaryFailure, BeneficiaryListDto>> getBeneficiaryList({
    String? transferTypeModeCode,
    String? destinationCountryCode,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryByIdDto>> getBeneficiaryById({
    required String beneficiaryId,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryCountryListDto>>
  getBeneficiaryCountryList();
  Future<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>>
  getBeneficiaryCurrencyListByCountry({required String beneficiaryCountryCode});
  Future<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>>
  getBeneficiaryTransferModeList({
    required String beneficiaryCountryCode,
    required String beneficiaryCurrencyCode,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>>
  getBeneficiaryBankOrAgentList({
    required String beneficiaryCountryCode,
    required String beneficiaryCurrencyCode,
    required String beneficiaryTransferTypeCode,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>>
  getBeneficiaryProductFieldSettings({
    required String beneficiaryCountryCode,
    required String beneficiaryCurrencyCode,
    required String beneficiaryTransferTypeCode,
    required String beneficiaryBankOrAgentCode,
  });

  Future<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>>
  getBeneficiarySourceFundList({required String beneficiaryBankOrAgentCode});
  Future<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>>
  getBeneficiaryPurposeOfTransferList({
    required String beneficiaryBankOrAgentCode,
    required String beneficiaryCountryCode,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryComboListDto>>
  getBeneficiaryComboList({
    required String beneficiaryCountryCode,
    required String beneficiaryBankOrAgentCode,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>>
  getBeneficiaryBankComboList({
    required String beneficiaryCountryCode,
    required String beneficiaryBankOrAgentCode,
    required String transferTypeModeCode,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>>
  getBeneficiaryBankBranchList({
    required String beneficiaryBankOrAgentCode,
    required String beneficiaryBankCode,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>>
  getBeneficiaryRouteCode({
    required String beneficiaryBankOrAgentCode,
    required String beneficiaryBankCode,
    required String beneficiaryBankBranchCode,
    required String transferTypeModeCode,
  });
  Future<Either<BeneficiaryFailure, int>> requestBeneficiaryOtp({
    required Map<String, dynamic>? beneficiary,
  });
  Future<Either<BeneficiaryFailure, String>> verifyBeneficiaryOtp({
    required BeneficiaryOtp otp,
    required Map<String, dynamic>? beneficiary,
  });
  Future<Either<BeneficiaryFailure, Unit>> deleteBeneficiary({
    required String beneficiaryId,
  });
  Future<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>>
  getBeneficiaryBankBranchRoute({required String beneficiaryRouteCode});
}
