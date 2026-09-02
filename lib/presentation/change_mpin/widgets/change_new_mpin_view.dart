import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/change_mpin/change_mpin_bloc.dart';
import '../../../domain/core/failures.dart';
import '../../core/mpin/app_mpin.dart';
import '../../core/notify/app_notify.dart';
import '../../routes/app_routes.gr.dart';

@RoutePage()
class ChangeNewMpinView extends StatelessWidget {
  const ChangeNewMpinView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeMpinBloc, ChangeMpinState>(
      listener: (context, state) {
        state.changeNewMpinFailureOrSuccessOption.fold(
          () {
            context.read<ChangeMpinBloc>().state.newMpin.value.fold((failure) {
              HapticFeedback.heavyImpact();
              AppNotify.toast(
                failure.maybeMap(
                  sameAsCurrentMpin: (_) =>
                      'changeMpin.newMpin.errors.sameAsCurrentMpin'.tr(),
                  invalidMpin: (_) =>
                      'changeMpin.newMpin.errors.invalidMpin'.tr(),
                  repeatedDigits: (_) =>
                      'changeMpin.newMpin.errors.repeatedDigits'.tr(),
                  sequentialDigits: (_) =>
                      'changeMpin.newMpin.errors.sequentialDigits'.tr(),
                  orElse: () => 'errors.orElse'.tr(),
                ),
                type: AppToastType.error,
              );
            }, (_) {});
          },
          (either) => either.fold((failure) {}, (_) {
            context.router.push(const ChangeVerifyMpinView());
          }),
        );
      },
      builder: (context, state) {
        return AppMpin(
          title: 'changeMpin.newMpin.title'.tr(),
          isShowActionRow: false,
          isShowingBiometricOption: false,
          onLoginOrRegister: () {},
          onMpinCompleted: (mpin) async {
            context.read<ChangeMpinBloc>().add(
              ChangeMpinEvent.changeNewMpin(mpin: mpin),
            );
            final result = await context
                .read<ChangeMpinBloc>()
                .stream
                .firstWhere(
                  (s) => s.changeNewMpinFailureOrSuccessOption.isSome(),
                );
            return result.changeNewMpinFailureOrSuccessOption.fold(
              () => false,
              (either) => either.isRight(),
            );
          },
        );
      },
    );
  }
}
