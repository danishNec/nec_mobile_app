import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nec_mobile_app/domain/common/common_selectable_dto.dart';
import '../../domain/login/i_login_facade.dart';
import '../../domain/login/login_failure.dart';
import '../../domain/login/login_id_identity_dto.dart';
import '../../domain/login/value_validators.dart';
import '../../presentation/core/global/app_global.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginFacade _loginFacade;
  LoginBloc(this._loginFacade) : super(LoginState.initial()) {
    on<_GetIdentityTypes>(_onGetIdentityTypes);
    on<_IdentityTypeChanged>(_onIdentityTypeChanged);
    on<_IdentityNumberChanged>(_onIdentityNumberChanged);
    on<_MobileNumberChanged>(_onMobileNumberChanged);
    on<_RequestOtpPressed>(_onRequestOtpPressed);
  }

  FutureOr<void> _onGetIdentityTypes(
    _GetIdentityTypes event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      LoginState.initial().copyWith(
        isLoading: true,
        identityTypesFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _loginFacade.getIdentityTypes();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          identityTypesFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (loginIdIdentityDto) {
        emit(
          state.copyWith(
            isLoading: false,
            loginIdIdentityDto: loginIdIdentityDto,
            identityTypesFailureOrSuccessOption: some(
              right(loginIdIdentityDto),
            ),
          ),
        );
        final list = loginIdIdentityDto.data?.identityTypesList ?? [];
        if (list.isNotEmpty && list.length == 1) {
          final identityType = list.first;
          add(
            LoginEvent.identityTypeChanged(
              selectedIdentityType: CommonSelectableItem(
                titleName: identityType.name?.toUpperCase() ?? '',
                titleCode: identityType.code,
              ),
            ),
          );
        }
      },
    );
  }

  FutureOr<void> _onIdentityTypeChanged(
    _IdentityTypeChanged event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedIdentityType: event.selectedIdentityType,
        loginFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onIdentityNumberChanged(
    _IdentityNumberChanged event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        identityNumber: IdentityNumber(
          event.identityNumberStr,
          state.selectedIdentityType?.titleCode ?? '',
        ),
        loginFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onMobileNumberChanged(
    _MobileNumberChanged event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        mobileNumber: MobileNumber(event.mobileNumberStr),
        loginFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onRequestOtpPressed(
    _RequestOtpPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(isSubmitting: true, loginFailureOrSuccessOption: none()),
    );
    final identityNumberIsValid = state.identityNumber.isValid();
    final mobileNumberIsValid = state.mobileNumber.isValid();
    if (identityNumberIsValid && mobileNumberIsValid) {
      final failureOrSuccess = await _loginFacade.requestOtp(
        identityTypeCode: state.selectedIdentityType?.titleCode ?? '',
        countryCode: AppGlobal.appCountryCode,
        mobileNumber: state.mobileNumber,
        identityNumber: state.identityNumber,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          loginFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          loginFailureOrSuccessOption: none(),
        ),
      );
    }
  }
}
