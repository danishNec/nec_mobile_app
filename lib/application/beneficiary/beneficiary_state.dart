part of 'beneficiary_bloc.dart';

@freezed
sealed class BeneficiaryState with _$BeneficiaryState {
  const factory BeneficiaryState({
    required bool isEditing,
    required bool isAddingFromHome,
    required bool isLoading,
    @Default(false) bool isInitialLoading,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isOtpSubmitting,
    @Default(false) bool isResendingOtp,
    required bool showOtpErrorMessages,
    required BeneficiaryOtp beneficiaryOtp,
    DateTime? otpResendCooldownUntil,
    @Default(false) bool isRouteCodeLoading,
    @Default(false) bool isRouteLookupLoading,
    @Default(false) bool isRouteCodeAutoFilled,
    @Default('') String selectedBankComboCode,
    BeneficiaryRouteCodeDto? beneficiaryRouteCodeDto,
    BeneficiaryBankBranchRouteDto? beneficiaryBankBranchRouteDto,
    BeneficiaryListDto? beneficiaryListDto,
    BeneficiaryList? selectedBeneficiary,
    BeneficiaryByIdDto? beneficiaryByIdDto,
    BeneficiaryCountryListDto? beneficiaryCountryListDto,
    CommonSelectableItem? selectedBeneficiaryCountry,
    BeneficiaryCurrencyListDto? beneficiaryCurrencyListDto,
    CommonSelectableItem? selectedBeneficiaryCurrency,
    BeneficiaryTransferModeListDto? beneficiaryTransferModeListDto,
    CommonSelectableItem? selectedBeneficiaryTransferType,
    BeneficiaryBankOrAgentListDto? beneficiaryBankOrAgentListDto,
    CommonSelectableItem? selectedBeneficiaryBankOrAgent,
    BeneficiaryProductFieldSettingsDto? beneficiaryProductFieldSettingsDto,
    required Map<String, BeneficiaryDynamicInput> dynamicFieldValues,
    required Map<String, BeneficiaryDynamicInput> initialDynamicFieldValues,
    BeneficiaryPurposeOfTransferDto? beneficiaryPurposeOfTransferDto,
    CommonSelectableItem? selectedBeneficiaryPurposeOfTransaction,
    BeneficiarySourceOfFundDto? beneficiarySourceOfFundDto,
    CommonSelectableItem? selectedBeneficiarySourceOfFund,
    CommonComboDto? commonComboDto,
    required Option<Either<BeneficiaryFailure, BeneficiaryListDto>>
    beneficiaryFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryByIdDto>>
    beneficiaryByIdFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryCountryListDto>>
    beneficiaryCountryListFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryCurrencyListDto>>
    beneficiaryCurrenciesFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryTransferModeListDto>>
    beneficiaryTransferTypesFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryBankOrAgentListDto>>
    beneficiaryBankOrAgentListFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryProductFieldSettingsDto>>
    beneficiaryProductSettingsFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryComboListDto>>
    beneficiaryComboListFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryBankComboListDto>>
    beneficiaryBankComboListFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryBankBranchComboListDto>>
    beneficiaryBankBranchComboListFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryPurposeOfTransferDto>>
    beneficiaryPurposeOfTransactionFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiarySourceOfFundDto>>
    beneficiarySourceOfFundFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, int>> saveBeneficiaryFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, String>> beneficiaryOtpFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryRouteCodeDto>>
    beneficiaryRouteCodeFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, BeneficiaryBankBranchRouteDto>>
    beneficiaryBankBranchRouteFailureOrSuccessOption,
    required Option<Either<BeneficiaryFailure, int>> resendBeneficiaryOtpFailureOrSuccessOption,
    @Default(false) bool isDeleting,
    required Option<Either<BeneficiaryFailure, Unit>> deleteBeneficiaryFailureOrSuccessOption,
  }) = _BeneficiaryState;

  factory BeneficiaryState.initial() => BeneficiaryState(
    isEditing: false,
    isAddingFromHome: false,
    isLoading: false,
    showErrorMessages: false,
    isSubmitting: false,
    isOtpSubmitting: false,
    showOtpErrorMessages: false,
    dynamicFieldValues: {},
    initialDynamicFieldValues: {},
    beneficiaryOtp: BeneficiaryOtp(''),
    beneficiaryFailureOrSuccessOption: none(),
    beneficiaryByIdFailureOrSuccessOption: none(),
    beneficiaryCountryListFailureOrSuccessOption: none(),
    beneficiaryCurrenciesFailureOrSuccessOption: none(),
    beneficiaryTransferTypesFailureOrSuccessOption: none(),
    beneficiaryBankOrAgentListFailureOrSuccessOption: none(),
    beneficiaryProductSettingsFailureOrSuccessOption: none(),
    beneficiaryComboListFailureOrSuccessOption: none(),
    beneficiaryBankComboListFailureOrSuccessOption: none(),
    beneficiaryBankBranchComboListFailureOrSuccessOption: none(),
    beneficiaryPurposeOfTransactionFailureOrSuccessOption: none(),
    beneficiarySourceOfFundFailureOrSuccessOption: none(),
    saveBeneficiaryFailureOrSuccessOption: none(),
    beneficiaryOtpFailureOrSuccessOption: none(),
    beneficiaryRouteCodeFailureOrSuccessOption: none(),
    beneficiaryBankBranchRouteFailureOrSuccessOption: none(),
    resendBeneficiaryOtpFailureOrSuccessOption: none(),
    deleteBeneficiaryFailureOrSuccessOption: none(),
  );
}
