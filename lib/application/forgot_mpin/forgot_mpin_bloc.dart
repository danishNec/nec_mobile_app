import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/common/common_selectable_dto.dart';
import '../../domain/forgot_mpin/forgot_id_identity_dto.dart';
import '../../domain/forgot_mpin/forgot_mpin_failure.dart';
import '../../domain/forgot_mpin/forgot_mpin_otp_dto.dart';
import '../../domain/forgot_mpin/i_forgot_mpin_facade.dart';
import '../../domain/forgot_mpin/value_validators.dart';
import '../../presentation/core/global/app_global.dart';

part 'forgot_mpin_event.dart';
part 'forgot_mpin_state.dart';
part 'forgot_mpin_bloc.freezed.dart';

@injectable
class ForgotMpinBloc extends Bloc<ForgotMpinEvent, ForgotMpinState> {
  final IForgotMpinFacade _forgotMpinFacade;
  ForgotMpinBloc(this._forgotMpinFacade) : super(ForgotMpinState.initial()) {
    on<_GetIdentityTypes>(_onGetIdentityTypesToState);
    on<_IdentityTypeChanged>(_onIdentityTypeChangedToState);
    on<_IdentityNumberChanged>(_onIdentityNumberChangedToState);
    on<_MobileNumberChanged>(_onMobileNumberChangedToState);
    on<_RequestOtpPressed>(_onRequestOtpPressedToState);
    on<_ResendOtp>(_onResendOtpToState);
    on<_OtpChanged>(_onOtpChangedToState);
    on<_OtpSubmitted>(_onOtpSubmittedToState);
  }

  FutureOr<void> _onGetIdentityTypesToState(
    _GetIdentityTypes event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(ForgotMpinState.initial().copyWith(isLoading: true));
    final failureOrSuccess = await _forgotMpinFacade.getIdentityTypes();
    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          identityTypeFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (forgotIdIdentityDto) {
        emit(
          state.copyWith(
            isLoading: false,
            forgotIdIdentityDto: forgotIdIdentityDto,
            identityTypeFailureOrSuccessOption: some(
              right(forgotIdIdentityDto),
            ),
          ),
        );
        final list = forgotIdIdentityDto.data?.identityTypesList ?? [];
        if (list.isNotEmpty && list.length == 1) {
          final identityType = list.first;
          add(
            ForgotMpinEvent.identityTypeChanged(
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

  FutureOr<void> _onIdentityTypeChangedToState(
    _IdentityTypeChanged event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedIdentityType: event.selectedIdentityType,
        requestOtpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onIdentityNumberChangedToState(
    _IdentityNumberChanged event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        identityNumber: IdentityNumber(
          event.identityNumberStr,
          state.selectedIdentityType?.titleCode ?? '',
        ),
        requestOtpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onMobileNumberChangedToState(
    _MobileNumberChanged event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        mobileNumber: MobileNumber(event.mobileNumberStr),
        requestOtpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onRequestOtpPressedToState(
    _RequestOtpPressed event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        requestOtpFailureOrSuccessOption: none(),
      ),
    );
    final identityNumberIsValid = state.identityNumber.isValid();
    final mobileNumberIsValid = state.mobileNumber.isValid();
    if (identityNumberIsValid && mobileNumberIsValid) {
      final failureOrSuccess = await _forgotMpinFacade.requestOtp(
        identityTypeCode: state.selectedIdentityType?.titleCode ?? '',
        countryCode: AppGlobal.appCountryCode,
        mobileNumber: state.mobileNumber,
        identityNumber: state.identityNumber,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          requestOtpFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          requestOtpFailureOrSuccessOption: none(),
        ),
      );
    }
  }

  FutureOr<void> _onResendOtpToState(
    _ResendOtp event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        requestOtpFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
        resendOtpFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _forgotMpinFacade.resendOtp(
      identityTypeCode: state.selectedIdentityType?.titleCode ?? '',
      countryCode: AppGlobal.appCountryCode,
      identityNumber: state.identityNumber.getOrCrash(),
      phoneNumber: state.mobileNumber.getOrCrash(),
    );
    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoading: false,
            resendOtpFailureOrSuccessOption: some(left(failure)),
          ),
        );
      },
      (success) {
        emit(
          state.copyWith(
            isLoading: false,
            resendOtpFailureOrSuccessOption: some(right(success)),
          ),
        );
      },
    );
  }

  FutureOr<void> _onOtpChangedToState(
    _OtpChanged event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        otp: Otp(event.otpStr),
        resendOtpFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onOtpSubmittedToState(
    _OtpSubmitted event,
    Emitter<ForgotMpinState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        resendOtpFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
      ),
    );
    final otpIsValid = state.otp.isValid();
    if (otpIsValid) {
      final failureOrSuccess = await _forgotMpinFacade.verifyOtp(
        identityTypeCode: state.selectedIdentityType?.titleCode ?? '',
        countryCode: AppGlobal.appCountryCode,
        identityNumber: state.identityNumber.getOrCrash(),
        phoneNumber: state.mobileNumber.getOrCrash(),
        otpCode: state.otp,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          otpFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          otpFailureOrSuccessOption: none(),
        ),
      );
    }
  }
}
