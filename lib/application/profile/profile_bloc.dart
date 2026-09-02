import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/profile/i_profile_facade.dart';
import '../../domain/profile/profile_failure.dart';
import '../../domain/profile/profile_user_dto.dart';
import '../../domain/profile/value_validators.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileFacade _profileFacade;
  ProfileBloc(this._profileFacade) : super(ProfileState.initial()) {
    on<_GetUserInfo>(_onGetUserInfo);
    on<_CurrentEmailAddressChanged>(_onCurrentEmailAddressChanged);
    on<_UpdateEmailAddressChanged>(_onUpdateEmailAddressChanged);
    on<_RequestUpdateEmailAddressPressed>(_onRequestUpdateEmailAddressPressed);
    on<_EmailOtpChanged>(_onEmailOtpChanged);
    on<_ContinueOtpButtonPressed>(_onContinueOtpButtonPressed);
  }

  FutureOr<void> _onGetUserInfo(
    _GetUserInfo event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        showErrorMessages: false,
        showOtpErrorMessages: false,
        requestEmailOtpFailureOrSuccessOption: none(),
        verifyEmailOtpFailureOrSuccessOption: none(),
        profileUserInfoFailureOrSuccessOption: none(),
      ),
    );
    final failureOrSuccess = await _profileFacade.getUserInfo();

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          profileUserInfoFailureOrSuccessOption: some(left(failure)),
        ),
      ),
      (profileUserInfo) => emit(
        state.copyWith(
          isLoading: false,
          profileUserInfo: profileUserInfo,
          profileUserInfoFailureOrSuccessOption: some(right(profileUserInfo)),
        ),
      ),
    );
  }

  FutureOr<void> _onCurrentEmailAddressChanged(
    _CurrentEmailAddressChanged event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        currentEmailAddress: event.emailAddress.toLowerCase().trim(),
        requestEmailOtpFailureOrSuccessOption: none(),
      ),
    );
    add(
      ProfileEvent.updateEmailAddressChanged(emailAddress: event.emailAddress),
    );
  }

  FutureOr<void> _onUpdateEmailAddressChanged(
    _UpdateEmailAddressChanged event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailAddress),
        verifyEmailOtpFailureOrSuccessOption: none(),
        requestEmailOtpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onRequestUpdateEmailAddressPressed(
    _RequestUpdateEmailAddressPressed event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        verifyEmailOtpFailureOrSuccessOption: none(),
        requestEmailOtpFailureOrSuccessOption: none(),
      ),
    );
    final isEmailValid = state.emailAddress.isValid();
    if (isEmailValid) {
      if (state.currentEmailAddress.toLowerCase() ==
          state.emailAddress.getOrCrash().toLowerCase()) {
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            requestEmailOtpFailureOrSuccessOption: some(
              left(const ProfileFailure.emailNotChanged()),
            ),
          ),
        );
        return;
      }
      final failureOrSuccess = await _profileFacade.requestEmailOtp(
        email: state.emailAddress.getOrCrash(),
      );

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            isSubmitting: false,
            requestEmailOtpFailureOrSuccessOption: some(left(failure)),
          ),
        ),
        (_) => emit(
          state.copyWith(
            isSubmitting: false,
            requestEmailOtpFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          requestEmailOtpFailureOrSuccessOption: none(),
        ),
      );
    }
  }

  FutureOr<void> _onEmailOtpChanged(
    _EmailOtpChanged event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        emailOtp: Otp(event.emailOtp),
        requestEmailOtpFailureOrSuccessOption: none(),
        verifyEmailOtpFailureOrSuccessOption: none(),
      ),
    );
  }

  FutureOr<void> _onContinueOtpButtonPressed(
    _ContinueOtpButtonPressed event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        isOtpSubmitting: true,
        requestEmailOtpFailureOrSuccessOption: none(),
        verifyEmailOtpFailureOrSuccessOption: none(),
      ),
    );
    final isOtpValid = state.emailOtp.isValid();
    if (isOtpValid) {
      final failureOrSuccess = await _profileFacade.verifyEmailOtp(
        otp: state.emailOtp.getOrCrash(),
        email: state.emailAddress.getOrCrash(),
      );

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            isOtpSubmitting: false,
            verifyEmailOtpFailureOrSuccessOption: some(left(failure)),
          ),
        ),
        (_) => emit(
          state.copyWith(
            isOtpSubmitting: false,
            profileUserInfo: state.profileUserInfo?.copyWith(
              data: state.profileUserInfo?.data?.copyWith(
                user: state.profileUserInfo?.data?.user?.copyWith(
                  email: state.emailAddress.getOrCrash(),
                ),
              ),
            ),
            verifyEmailOtpFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          isOtpSubmitting: false,
          showOtpErrorMessages: true,
          verifyEmailOtpFailureOrSuccessOption: none(),
        ),
      );
    }
  }
}
