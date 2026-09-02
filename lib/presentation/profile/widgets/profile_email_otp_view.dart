import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../domain/core/failures.dart';
import '../../../domain/profile/profile_failure.dart';
import '../../core/dialog/app_dialog.dart';
import '../../core/notify/app_notify.dart';
import '../../core/otp/app_otp.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class ProfileEmailOtpView extends StatelessWidget {
  const ProfileEmailOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.verifyEmailOtpFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              DialogHelper.show(
                context,
                message: failure.maybeMap(
                  unableToVerifyEmailOtp: (_) =>
                      'profile.otpVerification.errors.unableToVerifyEmailOtp'
                          .tr(),
                  serverError: (_) => 'errors.serverError'.tr(),
                  orElse: () => 'errors.orElse'.tr(),
                ),
                type: AppDialogType.warning,
              );
            },
            (success) {
              HapticFeedback.lightImpact();
              DialogHelper.show(
                context,
                message: 'profile.otpVerification.success.message'.tr(),
                type: AppDialogType.success,
                onPressed: () {
                  context.router.popUntilRouteWithName(ProfileRoute.name);
                },
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return AppOtp(
          autovalidateMode: state.showOtpErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) =>
              context.read<ProfileBloc>().state.emailOtp.value.fold(
                (f) => f.maybeMap(
                  invalidOtp: (_) => 'profile.otpVerification.invalidOtp'.tr(),
                  orElse: () => null,
                ),
                (_) => null,
              ),
          onChanged: (p0) {
            context.read<ProfileBloc>().add(
              ProfileEvent.emailOtpChanged(emailOtp: p0),
            );
          },
          isSubmitting: state.isOtpSubmitting,
          appBarTitle: 'profile.otpVerification.title'.tr(),
          contentTitle: 'profile.otpVerification.description'.tr(),
          contentSubtitle: 'profile.otpVerification.sentTo'.tr(
            namedArgs: {
              'emailAddress': state.emailAddress.value.getOrElse(() => ''),
            },
          ),
          onTapContinue: () {
            FocusScope.of(context).unfocus();
            context.read<ProfileBloc>().add(
              const ProfileEvent.continueOtpButtonPressed(),
            );
          },
          onResend: () {
            context.read<ProfileBloc>().add(
              const ProfileEvent.requestUpdateEmailAddressPressed(),
            );
          },
        );
      },
    );
  }
}
