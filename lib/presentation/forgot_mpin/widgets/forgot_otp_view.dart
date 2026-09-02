import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/forgot_mpin/forgot_mpin_bloc.dart';
import '../../../domain/core/failures.dart';
import '../../../domain/forgot_mpin/forgot_mpin_failure.dart';
import '../../core/notify/app_notify.dart';
import '../../core/otp/app_otp.dart';
import '../../core/overlay_loading/app_overlay_loading.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class ForgotOtpView extends HookWidget {
  const ForgotOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final restartTrigger = useState(0);

    return BlocConsumer<ForgotMpinBloc, ForgotMpinState>(
      listenWhen: (prev, curr) =>
          prev.resendOtpFailureOrSuccessOption !=
              curr.resendOtpFailureOrSuccessOption ||
          prev.otpFailureOrSuccessOption != curr.otpFailureOrSuccessOption,
      listener: (context, state) {
        state.resendOtpFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                unableToSendOtp: (value) => value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.orElse'.tr(),
              ),
              type: AppToastType.error,
            ),
            (_) {
              restartTrigger.value++;
            },
          ),
        );
        state.otpFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                invalidOtp: (value) => value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.unknownError'.tr(),
              ),
              type: AppToastType.error,
            ),
            (success) {
              context.router.replaceAll([const SetMpinRoute()]);
            },
          ),
        );
      },
      builder: (context, state) {
        final mobileNumber = state.mobileNumber.getOrCrash();
        final last4Digits = mobileNumber.length >= 4
            ? mobileNumber.substring(mobileNumber.length - 4)
            : mobileNumber;

        return Stack(
          children: [
            AppOtp(
              restartTrigger: restartTrigger.value,
              isSubmitting: state.isSubmitting,
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              validator: (_) => context.read<ForgotMpinBloc>().state.otp.value.fold(
                (f) => f.maybeMap(
                  invalidOtp: (_) => 'otp.validationError'.tr(),
                  orElse: () => null,
                ),
                (_) => null,
              ),
              onChanged: (p0) {
                context.read<ForgotMpinBloc>().add(ForgotMpinEvent.otpChanged(p0));
              },
              contentTitle: 'otp.title'.tr(),
              contentSubtitle: 'otp.description'.tr(
                namedArgs: {'mobileNumber': '*****$last4Digits'},
              ),
              onResend: () {
                context.read<ForgotMpinBloc>().add(const ForgotMpinEvent.resendOtp());
              },
              onTapContinue: () {
                FocusScope.of(context).unfocus();
                context.read<ForgotMpinBloc>().add(const ForgotMpinEvent.otpSubmitted());
              },
            ),
            if (state.isLoading || state.isSubmitting)
              const AppOverlayLoading(),
          ],
        );
      },
    );
  }
}
