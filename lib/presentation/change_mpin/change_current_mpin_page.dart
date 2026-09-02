import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/change_mpin/change_mpin_bloc.dart';
import '../../domain/change_mpin/change_mpin_failure.dart';
import '../core/mpin/app_mpin.dart';
import '../core/notify/app_notify.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class ChangeCurrentMpinPage extends StatelessWidget {
  const ChangeCurrentMpinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeMpinBloc, ChangeMpinState>(
      listener: (context, state) {
        state.changeMpinFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              AppNotify.toast(
                failure.maybeMap(
                  invalidCurrentMpin: (value) => value.message,
                  serverError: (_) => 'errors.serverError'.tr(),
                  orElse: () => 'errors.orElse'.tr(),
                ),
                type: AppToastType.error,
              );
            },
            (_) {
              HapticFeedback.lightImpact();
              context.router.popAndPush(const ChangeNewMpinView());
            },
          ),
        );
      },
      builder: (context, state) {
        return AppMpin(
          title: 'changeMpin.currentMpin.title'.tr(),
          isShowActionRow: false,
          isShowingBiometricOption: false,
          onLoginOrRegister: () {},
          onMpinCompleted: (mpin) async {
            context.read<ChangeMpinBloc>().add(
              ChangeMpinEvent.changeCurrentMpin(mpin: mpin),
            );
            final result = await context
                .read<ChangeMpinBloc>()
                .stream
                .firstWhere((s) => s.changeMpinFailureOrSuccessOption.isSome());
            return result.changeMpinFailureOrSuccessOption.fold(
              () => false,
              (either) => either.isRight(),
            );
          },
        );
      },
    );
  }
}
