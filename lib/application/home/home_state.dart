part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool isUserLoading,
    @Default(true) bool isRecentBeneficiariesLoading,
    @Default(true) bool isSendMoneyFormLoading,
    @Default(false) bool isRefreshing,
    required bool isSubmitting,
    required bool isOtpSubmitting,
    required bool showErrorMessages,
    required bool showOtpErrorMessages,
    required bool isRateLoading,
    required bool isSourceAmountCalculating,
    required bool isDestinationAmountCalculating,
    required bool isBeneficiaryListLoading,
    required bool isDeletingBeneficiary,
    @Default('') String lastRawSourceAmount,
    @Default('') String lastRawDestinationAmount,
    @Default(true) bool isLastInputSource,
    HomeAdvertisementDto? homeAdvertisementDto,
    HomeUserDto? homeUserDto,
    HomeRecentBeneficiariesDto? homeRecentBeneficiariesDto,
    CommonSelectableDto? commonSourceSelectableDto,
    CommonSelectableItem? selectedCommonSourceItem,
    CommonSelectableDto? commonDestinationSelectableDto,
    CommonSelectableItem? selectedCommonDestinationItem,
    HomeTransferTypeDto? homeTransferTypeDto,
    CommonSelectableItem? selectedTransferTypeItem,
    HomeBankOrAgentListDto? homeBankOrAgentListDto,
    CommonSelectableItem? selectedBankOrAgentItem,
    HomePaymentMethodDto? homePaymentMethodDto,
    CommonSelectableItem? selectedPaymentMethodItem,
    required CommonSendMoneyDto commonSendMoneyDto,
    HomeBeneficiaryListDto? homeBeneficiaryListDto,
    required int selectedBeneficiaryIndex,
    required String currentEmailAddress,
    required EmailAddress emailAddress,
    required Otp emailOtp,
    required Option<Either<HomeFailure, HomeAdvertisementDto>>
    homeAdvertisementFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeUserDto>>
    homeUserFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeRecentBeneficiariesDto>>
    homeRecentBeneficiariesFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeSourceCurrencyListDto>>
    homeSourceCurrencyListFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeDestinationCurrencyListDto>>
    homeDestinationCurrencyListFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeTransferTypeDto>>
    homeTransferTypesFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeBankOrAgentListDto>>
    homeBankOrAgentListFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomePaymentMethodDto>>
    homePaymentMethodFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeCalculateAmountDto>>
    homeCalculatedSourceAmountFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeCalculateAmountDto>>
    homeCalculatedDestinationAmountFailureOrSuccessOption,
    required Option<Either<HomeFailure, HomeBeneficiaryListDto>>
    homeBeneficiaryListFailureOrSuccessOption,
    required Option<Either<HomeFailure, String>>
    homeDeleteBeneficiaryFailureOrSuccessOption,
    required Option<Either<HomeFailure, Unit>>
    homeRequestEmailOtpFailureOrSuccessOption,
    required Option<Either<HomeFailure, Unit>>
    homeVerifyEmailOtpFailureOrSuccessOption,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    isSubmitting: false,
    isOtpSubmitting: false,
    showErrorMessages: false,
    showOtpErrorMessages: false,
    isRateLoading: false,
    isSourceAmountCalculating: false,
    isDestinationAmountCalculating: false,
    isBeneficiaryListLoading: false,
    isDeletingBeneficiary: false,
    commonSendMoneyDto: CommonSendMoneyDto.empty(),
    selectedBeneficiaryIndex: -1,
    currentEmailAddress: '',
    emailAddress: EmailAddress(''),
    emailOtp: Otp(''),
    homeAdvertisementFailureOrSuccessOption: none(),
    homeUserFailureOrSuccessOption: none(),
    homeRecentBeneficiariesFailureOrSuccessOption: none(),
    homeSourceCurrencyListFailureOrSuccessOption: none(),
    homeDestinationCurrencyListFailureOrSuccessOption: none(),
    homeTransferTypesFailureOrSuccessOption: none(),
    homeBankOrAgentListFailureOrSuccessOption: none(),
    homePaymentMethodFailureOrSuccessOption: none(),
    homeCalculatedSourceAmountFailureOrSuccessOption: none(),
    homeCalculatedDestinationAmountFailureOrSuccessOption: none(),
    homeBeneficiaryListFailureOrSuccessOption: none(),
    homeDeleteBeneficiaryFailureOrSuccessOption: none(),
    homeRequestEmailOtpFailureOrSuccessOption: none(),
    homeVerifyEmailOtpFailureOrSuccessOption: none(),
  );
}
