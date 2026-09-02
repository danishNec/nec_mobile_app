import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/set_mpin/set_mpin_bloc.dart';
import '../../../domain/core/di/injection.dart';
import '../../../domain/core/prefs/app_prefs.dart';
import '../../../domain/set_mpin/set_mpin_failure.dart';
import '../../core/mpin/app_mpin.dart';
import '../../core/notify/app_notify.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class SetVerifyMpinView extends StatelessWidget {
  const SetVerifyMpinView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SetMpinBloc, SetMpinState>(
      listener: (context, state) {
        state.setVerifyMpinFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              final msg = failure.maybeMap(
                mismatchVerifyNewMpin: (value) =>
                    'setMpin.verifyMpin.errors.mismatchVerifyMpin'.tr(),
                invalidVerifyNewMpin: (value) => value.message,
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.orElse'.tr(),
              );
              AppNotify.toast(msg, type: AppToastType.error);
              context.router.pop();
            },
            (success) {
              HapticFeedback.lightImpact();
              DialogHelper.show(
                context,
                type: AppDialogType.success,
                title: 'setMpin.verifyMpin.success.title'.tr(),
                message: 'setMpin.verifyMpin.success.message'.tr(),
                onPressed: () {
                  final isBiometricEnabled = getIt<SharedPrefs>()
                      .getIsBiometricAuthenticated();
                  if (isBiometricEnabled) {
                    context.router.replaceAll([const MainRoute()]);
                  } else {
                    context.router.replaceAll([const BioMetricRoute()]);
                  }
                },
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return AppMpin(
          title: 'setMpin.verifyMpin.title'.tr(),
          isShowActionRow: false,
          isShowingBiometricOption: false,
          onMpinCompleted: (mpin) async {
            context.read<SetMpinBloc>().add(
              SetMpinEvent.setVerifyNewMpin(mpin: mpin),
            );
            final result = await context.read<SetMpinBloc>().stream.firstWhere(
              (s) => s.setVerifyMpinFailureOrSuccessOption.isSome(),
            );
            return result.setVerifyMpinFailureOrSuccessOption.fold(
              () => false,
              (either) => either.isRight(),
            );
          },
        );
      },
    );
  }
}
