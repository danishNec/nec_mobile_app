import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nec_mobile_app/domain/otp/otp_failure.dart';

import '../../application/otp/otp_bloc.dart';
import '../../domain/core/failures.dart';
import '../core/notify/app_notify.dart';
import '../core/otp/app_otp.dart';
import '../core/overlay_loading/app_overlay_loading.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class OtpPage extends HookWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final restartTrigger = useState(0);

    return BlocConsumer<OtpBloc, OtpState>(
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
              final user = success.data?.user;
              // A successful OTP verification is itself proof the user is
              // registered (some backend accounts still send
              // is_user_registered: false here even after verifying fine,
              // e.g. member_code 9015169) — treat reaching this success
              // callback as authoritative over that flag.
              const isUserRegistered = true;
              final isMpinSet = user?.isMPINCreated ?? false;
              if (isUserRegistered && isMpinSet) {
                context.router.replaceAll([const MainRoute()]);
              } else if (isUserRegistered && !isMpinSet) {
                context.router.replaceAll([const SetMpinRoute()]);
              } else {}
            },
          ),
        );
      },
      builder: (context, state) {
        final mobileNumber = state.mobileNumber;
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
              validator: (_) => context.read<OtpBloc>().state.otp.value.fold(
                (f) => f.maybeMap(
                  invalidOtp: (_) => 'otp.validationError'.tr(),
                  orElse: () => null,
                ),
                (_) => null,
              ),
              onChanged: (p0) {
                context.read<OtpBloc>().add(OtpEvent.otpChanged(p0));
              },
              contentTitle: 'otp.title'.tr(),
              contentSubtitle: 'otp.description'.tr(
                namedArgs: {'mobileNumber': '*****$last4Digits'},
              ),
              onResend: () {
                context.read<OtpBloc>().add(const OtpEvent.resendOtp());
              },
              onTapContinue: () {
                FocusScope.of(context).unfocus();
                context.read<OtpBloc>().add(const OtpEvent.otpSubmitted());
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
