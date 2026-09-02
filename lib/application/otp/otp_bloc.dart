import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/otp/i_otp_facade.dart';
import '../../domain/otp/otp_dto.dart';
import '../../domain/otp/otp_failure.dart';
import '../../domain/otp/value_validators.dart';
import '../../presentation/core/global/app_global.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

@injectable
class OtpBloc extends Bloc<OtpEvent, OtpState> {
  final IOtpFacade _otpFacade;
  OtpBloc(this._otpFacade) : super(OtpState.initial()) {
    on<_Initial>(_onInitial);
    on<_ResendOtp>(_onResendOtp);
    on<_OtpChanged>(_onOtpChanged);
    on<_OtpSubmitted>(_onOtpSubmitted);
  }

  FutureOr<void> _onInitial(_Initial event, Emitter<OtpState> emit) async {
    emit(
      state.copyWith(
        identityType: event.idType,
        identityNumber: event.idNumber,
        mobileNumber: event.mobileNumber,
        resendOtpFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onResendOtp(_ResendOtp event, Emitter<OtpState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        otpFailureOrSuccessOption: none(),
        resendOtpFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _otpFacade.resendOtp(
      identityTypeCode: state.identityType,
      countryCode: AppGlobal.appCountryCode,
      identityNumber: state.identityNumber,
      phoneNumber: state.mobileNumber,
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

  FutureOr<void> _onOtpChanged(
    _OtpChanged event,
    Emitter<OtpState> emit,
  ) async {
    emit(
      state.copyWith(
        otp: Otp(event.otpStr),
        resendOtpFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onOtpSubmitted(
    _OtpSubmitted event,
    Emitter<OtpState> emit,
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
      final failureOrSuccess = await _otpFacade.verifyOtp(
        identityTypeCode: state.identityType,
        countryCode: AppGlobal.appCountryCode,
        identityNumber: state.identityNumber,
        phoneNumber: state.mobileNumber,
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
