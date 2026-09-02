import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/home_bloc.dart';
import '../../../domain/core/failures.dart';
import '../../../domain/home/home_failure.dart';
import '../../core/notify/app_notify.dart';
import '../../core/otp/app_otp.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class HomeEmailOtpView extends StatelessWidget {
  const HomeEmailOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.homeVerifyEmailOtpFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              DialogHelper.show(
                context,
                message: failure.maybeMap(
                  unableToVerifyEmailOtp: (value) => value.message,
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
                message: 'home.otpVerification.success.message'.tr(),
                type: AppDialogType.success,
                onPressed: () {
                  context.router.replaceAll([MainRoute()]);
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
          validator: (_) => context.read<HomeBloc>().state.emailOtp.value.fold(
            (f) => f.maybeMap(
              invalidOtp: (_) => 'home.otpVerification.errors.invalidOtp'.tr(),
              orElse: () => null,
            ),
            (_) => null,
          ),
          onChanged: (p0) {
            context.read<HomeBloc>().add(
              HomeEvent.emailOtpChanged(emailOtp: p0),
            );
          },
          isSubmitting: state.isOtpSubmitting,
          appBarTitle: 'home.otpVerification.title'.tr(),
          contentTitle: 'home.otpVerification.description'.tr(),
          contentSubtitle: 'home.otpVerification.sentTo'.tr(
            namedArgs: {
              'emailAddress': state.emailAddress.value.getOrElse(() => ''),
            },
          ),
          onTapContinue: () {
            FocusScope.of(context).unfocus();
            context.read<HomeBloc>().add(
              const HomeEvent.continueOtpButtonPressed(),
            );
          },
          onResend: () {
            context.read<HomeBloc>().add(
              const HomeEvent.requestUpdateEmailAddressPressed(),
            );
          },
        );
      },
    );
  }
}
