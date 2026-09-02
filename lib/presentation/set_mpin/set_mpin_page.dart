import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/set_mpin/set_mpin_bloc.dart';
import '../../domain/core/failures.dart';
import '../core/mpin/app_mpin.dart';
import '../core/notify/app_notify.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class SetMpinPage extends StatelessWidget {
  const SetMpinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SetMpinBloc, SetMpinState>(
      listener: (context, state) {
        state.setNewMpinFailureOrSuccessOption.fold(
          () {
            context.read<SetMpinBloc>().state.newMpin.value.fold((failure) {
              HapticFeedback.heavyImpact();
              AppNotify.toast(
                failure.maybeMap(
                  sameAsCurrentMpin: (_) =>
                      'setMpin.newMpin.errors.sameAsCurrentMpin'.tr(),
                  invalidMpin: (_) =>
                      'setMpin.newMpin.errors.invalidMpin'.tr(),
                  repeatedDigits: (_) =>
                      'setMpin.newMpin.errors.repeatedDigits'.tr(),
                  sequentialDigits: (_) =>
                      'setMpin.newMpin.errors.sequentialDigits'.tr(),
                  orElse: () => 'errors.orElse'.tr(),
                ),
                type: AppToastType.error,
              );
            }, (_) {});
          },
          (either) => either.fold((failure) {}, (_) {
            context.router.push(const SetVerifyMpinView());
          }),
        );
      },
      builder: (context, state) {
        return AppMpin(
          title: 'setMpin.newMpin.title'.tr(),
          isShowActionRow: false,
          isShowingBiometricOption: false,
          onLoginOrRegister: () {},
          onMpinCompleted: (mpin) async {
            context.read<SetMpinBloc>().add(
              SetMpinEvent.setNewMpin(mpin: mpin),
            );
            final result = await context.read<SetMpinBloc>().stream.firstWhere(
              (s) => s.setNewMpinFailureOrSuccessOption.isSome(),
            );
            return result.setNewMpinFailureOrSuccessOption.fold(
              () => false,
              (either) => either.isRight(),
            );
          },
        );
      },
    );
  }
}
