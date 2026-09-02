import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/home_bloc.dart';
import '../../../domain/core/failures.dart';
import '../../../domain/home/home_failure.dart';
import '../../core/notify/app_notify.dart';
import '../../core/update_email_page/app_update_email_page.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class HomeEmailView extends StatelessWidget {
  const HomeEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.homeRequestEmailOtpFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              AppNotify.toast(
                failure.maybeMap(
                  emailNotChanged: (_) =>
                      'home.verifyEmail.errors.emailNotChanged'.tr(),
                  unableToUpdateEmailAddress: (value) => value.message,
                  orElse: () => 'errors.orElse'.tr(),
                  serverError: (_) => 'errors.serverError'.tr(),
                ),
                position: AppToastPosition.top,
                type: AppToastType.error,
              );
            },
            (success) {
              context.router.push(const HomeEmailOtpView());
            },
          ),
        );
      },
      builder: (context, state) {
        return AppUpdateEmailPage(
          title: 'home.verifyEmail.title'.tr(),
          description: 'home.verifyEmail.description'.tr(),
          isLoading: state.isSubmitting,
          currentEmailAddress: state.currentEmailAddress,
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (p0) =>
              context.read<HomeBloc>().state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  invalidEmailAddress: (_) =>
                      'home.verifyEmail.errors.invalidEmail'.tr(),
                  orElse: () => null,
                ),
                (r) => null,
              ),
          onChanged: (p0) => context.read<HomeBloc>().add(
            HomeEvent.updateEmailAddressChanged(emailAddress: p0),
          ),
          onTap: () {
            FocusScope.of(context).unfocus();
            context.read<HomeBloc>().add(
              const HomeEvent.requestUpdateEmailAddressPressed(),
            );
          },
        );
      },
    );
  }
}
