import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as tr;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../application/mpin/mpin_bloc.dart';
import '../../domain/core/di/injection.dart';
import '../../domain/mpin/mpin_failure.dart';
import '../core/mpin/app_mpin.dart';
import '../core/notify/app_notify.dart';
import '../routes/app_routes.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class MpinPage extends HookWidget {
  const MpinPage({super.key, this.fromLogout = false});

  final bool fromLogout;

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();

    useEffect(() {
      final bloc = context.read<MpinBloc>();
      bloc.add(const MpinEvent.checkBiometricSupport());

      if (fromLogout || !Platform.isIOS) return null;

      // On iOS: auto-trigger biometric once the support check resolves.
      // One-shot subscription — cancels immediately after the first relevant state.
      late StreamSubscription<MpinState> sub;
      sub = bloc.stream.listen((state) {
        sub.cancel();
        if (state.isBiometricAvailable && state.isBiometricEnabled) {
          bloc.add(
            MpinEvent.verifyBiometric(
              localizedReason: 'core.mpin.biometricReason'.tr(),
            ),
          );
        }
      });
      return sub.cancel;
    }, const []);
    return BlocConsumer<MpinBloc, MpinState>(
      listenWhen: (previous, current) =>
          previous.mpinFailureOrSuccessOption !=
              current.mpinFailureOrSuccessOption ||
          previous.biometricFailureOrSuccessOption !=
              current.biometricFailureOrSuccessOption,
      listener: (context, state) {
        state.mpinFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              final msg = failure.maybeMap(
                invalidMpin: (value) => value.errorMessage,
                serverError: (value) => 'errors.serverError'.tr(),
                orElse: () => 'errors.orElse'.tr(),
              );
              AppNotify.toast(msg, type: AppToastType.error);
            },
            (_) {
              HapticFeedback.lightImpact();
              router.replaceAll([const MainRoute()]);
            },
          ),
        );
        state.biometricFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              final msg = failure.maybeMap(
                invalidBiometric: (value) => value.errorMessage,
                biometricNotEnrolled: (_) => 'errors.biometricNotEnrolled'.tr(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.orElse'.tr(),
              );
              AppNotify.toast(msg, type: AppToastType.error);
            },
            (_) {
              HapticFeedback.lightImpact();
              router.replaceAll([const MainRoute()]);
            },
          ),
        );
      },
      builder: (context, state) {
        return AppMpin(
          isShowingBiometricOption:
              !fromLogout &&
              state.isBiometricAvailable &&
              state.isBiometricEnabled,
          isBiometricAuthenticating: state.isAuthenticating,
          onBiometricPressed: () {
            context.read<MpinBloc>().add(
              MpinEvent.verifyBiometric(
                localizedReason: 'core.mpin.biometricReason'.tr(),
              ),
            );
          },
          onLoginOrRegister: () {
            context.router.push(const LoginRoute());
          },
          onForgotMpin: () {
            context.router.push(const ForgotMpinRoute());
          },
          onMpinCompleted: (mpin) async {
            context.read<MpinBloc>().add(MpinEvent.verifyMpin(mpin: mpin));
            final result = await context.read<MpinBloc>().stream.firstWhere(
              (state) => state.mpinFailureOrSuccessOption.isSome(),
            );
            return result.mpinFailureOrSuccessOption.fold(
              () => false,
              (a) => a.isRight(),
            );
          },
        );
      },
    );
  }
}
