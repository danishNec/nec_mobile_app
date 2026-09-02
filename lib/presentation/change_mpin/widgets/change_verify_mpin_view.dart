import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/change_mpin/change_mpin_bloc.dart';
import '../../../domain/change_mpin/change_mpin_failure.dart';
import '../../core/mpin/app_mpin.dart';
import '../../core/notify/app_notify.dart';

@RoutePage()
class ChangeVerifyMpinView extends StatelessWidget {
  const ChangeVerifyMpinView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeMpinBloc, ChangeMpinState>(
      listener: (context, state) {
        state.changeVerifyMpinFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              final msg = failure.maybeMap(
                mismatchVerifyMpin: (value) =>
                    'changeMpin.verifyMpin.errors.mismatchVerifyMpin'.tr(),
                invalidVerifyMpin: (value) => value.message,
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
                title: 'changeMpin.verifyMpin.success.title'.tr(),
                message: 'changeMpin.verifyMpin.success.message'.tr(),
                onPressed: () {
                  context.router.popUntilRoot();
                },
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return AppMpin(
          title: 'changeMpin.verifyMpin.title'.tr(),
          isShowActionRow: false,
          isShowingBiometricOption: false,
          onMpinCompleted: (mpin) async {
            context.read<ChangeMpinBloc>().add(
              ChangeMpinEvent.changeVerifyMpin(mpin: mpin),
            );
            final result = await context
                .read<ChangeMpinBloc>()
                .stream
                .firstWhere(
                  (s) => s.changeVerifyMpinFailureOrSuccessOption.isSome(),
                );
            return result.changeVerifyMpinFailureOrSuccessOption.fold(
              () => false,
              (either) => either.isRight(),
            );
          },
        );
      },
    );
  }
}
