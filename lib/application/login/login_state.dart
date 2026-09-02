part of 'login_bloc.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isSubmitting,
    required bool showErrorMessages,
    LoginIdIdentityDto? loginIdIdentityDto,
    CommonSelectableItem? selectedIdentityType,
    required IdentityNumber identityNumber,
    required MobileNumber mobileNumber,
    required Option<Either<LoginFailure, LoginIdIdentityDto>>
    identityTypesFailureOrSuccessOption,
    required Option<Either<LoginFailure, Unit>> loginFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
    isLoading: false,
    isSubmitting: false,
    showErrorMessages: false,
    identityNumber: IdentityNumber('', ''),
    mobileNumber: MobileNumber(''),
    identityTypesFailureOrSuccessOption: none(),
    loginFailureOrSuccessOption: none(),
  );
}
