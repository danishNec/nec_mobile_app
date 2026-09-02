import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/app_upgrade/app_upgrade_bloc.dart';
import '../../application/splash/splash_bloc.dart';
import '../../domain/app_upgrade/app_version_info.dart';
import '../../domain/core/di/injection.dart';
import '../core/app_upgrade/app_upgrade_manager.dart';
import '../core/images/app_image.dart';
import '../core/scaffold/app_scaffold.dart';
import '../routes/app_routes.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class SplashPage extends HookWidget {
  const SplashPage({super.key});

  // If the security checks don't resolve within this window something has gone
  // badly wrong (deadlock, unhandled exception swallowed before the bloc emits,
  // etc.). Force navigation to login so the user is never stranded.
  static const _kWatchdogDuration = Duration(seconds: 10);

  @override
  Widget build(BuildContext context) {
    final router = useMemoized(() => getIt<AppRouter>());

    final entrance = useAnimationController(
      duration: const Duration(milliseconds: 1600),
    );
    final exit = useAnimationController(
      duration: const Duration(milliseconds: 420),
    );

    // Stores the actual router call, executed once exit completes.
    final pendingRoute = useRef<VoidCallback?>(null);

    // Stores a navigation request that arrived before entrance finished.
    // Flushed when the entrance listener fires AnimationStatus.completed.
    final pendingNavigate = useRef<VoidCallback?>(null);

    // Disarmed by any terminal BLoC state. The watchdog reads this before
    // deciding whether to force-navigate.
    final watchdogDisarmed = useRef(false);

    // ── Entrance animation ────────────────────────────────────────────────
    useEffect(() {
      entrance.forward();
      return null;
    }, const []);

    // When entrance completes, flush any navigation that was queued while it
    // was still playing. This makes the entrance animation the natural dynamic
    // minimum display time — no Future.delayed needed anywhere.
    useEffect(() {
      void onEntranceComplete(AnimationStatus s) {
        if (s != AnimationStatus.completed) return;
        final queued = pendingNavigate.value;
        if (queued != null) {
          pendingNavigate.value = null;
          queued();
        }
      }

      entrance.addStatusListener(onEntranceComplete);
      return () => entrance.removeStatusListener(onEntranceComplete);
    }, const []);

    // ── Exit animation ────────────────────────────────────────────────────
    useEffect(() {
      void onExitComplete(AnimationStatus s) {
        if (s == AnimationStatus.completed) pendingRoute.value?.call();
      }

      exit.addStatusListener(onExitComplete);
      return () => exit.removeStatusListener(onExitComplete);
    }, const []);

    // ── Watchdog ──────────────────────────────────────────────────────────
    // Guards the orElse path: initial / loadingProgress are legitimately
    // transient and need no action, but if the bloc gets permanently stuck
    // there (extremely rare — uncaught exception before emit, deadlock, etc.)
    // the watchdog fires and sends the user to login after 10 seconds.
    useEffect(() {
      final timer = Timer(_kWatchdogDuration, () {
        if (!watchdogDisarmed.value) {
          _doNavigate(
            entrance: entrance,
            exit: exit,
            pendingRoute: pendingRoute,
            pendingNavigate: pendingNavigate,
            go: () => router.replaceAll([const LoginRoute()]),
          );
        }
      });
      return timer.cancel;
    }, const []);

    // ── Upgrade gate ──────────────────────────────────────────────────────
    // Prevents double-handling if the state changes between mount and the
    // post-frame useEffect below (both the listener and useEffect could fire).
    final upgradeHandled = useRef(false);

    void onUpgradeResult(AppVersionInfo info) {
      if (upgradeHandled.value) return;
      upgradeHandled.value = true;
      final splashBloc = context.read<SplashBloc>();
      if (info.upgradeType == AppUpgradeType.none) {
        splashBloc.add(const SplashEvent.checkAuthentication());
      } else {
        // Disarm the watchdog — we're intentionally holding on the splash
        // screen until the user acts on the upgrade dialog.
        watchdogDisarmed.value = true;
        // Capture the exact BLoC instance from the provider so the dialog's
        // loading spinner and the openStore event share the same stream.
        final upgradeBloc = context.read<AppUpgradeBloc>();
        AppUpgradeManager.show(
          versionInfo: info,
          upgradeBloc: upgradeBloc,
          onUpdatePressed: () =>
              upgradeBloc.add(AppUpgradeEvent.openStore(info.storeUrl)),
          onSkipped: () =>
              splashBloc.add(const SplashEvent.checkAuthentication()),
        );
      }
    }

    // Catches the case where the upgrade check resolved before this page
    // mounted (e.g. instant mock data) and the BlocListener missed the change.
    useEffect(() {
      context.read<AppUpgradeBloc>().state.checkFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          // Network/server error — don't block the user.
          (_) {
            if (upgradeHandled.value) return;
            upgradeHandled.value = true;
            context.read<SplashBloc>().add(
              const SplashEvent.checkAuthentication(),
            );
          },
          onUpgradeResult,
        ),
      );
      return null;
    }, const []);

    // ── Navigation helper ─────────────────────────────────────────────────
    void navigate(VoidCallback go) {
      _doNavigate(
        entrance: entrance,
        exit: exit,
        pendingRoute: pendingRoute,
        pendingNavigate: pendingNavigate,
        go: go,
      );
    }

    // ── Animations ────────────────────────────────────────────────────────
    final opacity = useMemoized(
      () => Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(parent: entrance, curve: Curves.easeIn)),
      const [],
    );
    final scale = useMemoized(
      () => Tween<double>(
        begin: 0.8,
        end: 1.0,
      ).animate(CurvedAnimation(parent: entrance, curve: Curves.easeOutExpo)),
      const [],
    );
    final slide = useMemoized(
      () => Tween<Offset>(
        begin: const Offset(0, 0.1),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: entrance, curve: Curves.easeOut)),
      const [],
    );
    final exitOpacity = useMemoized(
      () => Tween<double>(
        begin: 1.0,
        end: 0.0,
      ).animate(CurvedAnimation(parent: exit, curve: Curves.easeIn)),
      const [],
    );

    return MultiBlocListener(
      listeners: [
        BlocListener<AppUpgradeBloc, AppUpgradeState>(
          listenWhen: (prev, curr) =>
              prev.checkFailureOrSuccessOption !=
              curr.checkFailureOrSuccessOption,
          listener: (_, state) => state.checkFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((_) {
              if (upgradeHandled.value) return;
              upgradeHandled.value = true;
              context.read<SplashBloc>().add(
                const SplashEvent.checkAuthentication(),
              );
            }, onUpgradeResult),
          ),
        ),
        BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            state.maybeWhen(
              loadedSuccessOnBoarding: () {
                watchdogDisarmed.value = true;
                navigate(() => router.replaceAll([const OnBoardingRoute()]));
              },
              loadedSuccessLogin: () {
                watchdogDisarmed.value = true;
                navigate(() => router.replaceAll([const LoginRoute()]));
              },
              loadedSuccessSetMpin: () {
                watchdogDisarmed.value = true;
                navigate(() => router.replaceAll([const SetMpinRoute()]));
              },
              loadedSuccessMain: () {
                watchdogDisarmed.value = true;
                navigate(() => router.replaceAll([MpinRoute()]));
              },
              loadedFailure: (_) {
                watchdogDisarmed.value = true;
                navigate(() => router.replaceAll([const LoginRoute()]));
              },
              // initial / loadingProgress are expected transient states — watchdog
              // above handles the case where the bloc never leaves them.
              orElse: () {},
            );
          },
        ),
      ],
      child: FadeTransition(
        opacity: exitOpacity,
        child: AppScaffold(
          body: Center(
            child: FadeTransition(
              opacity: opacity,
              child: SlideTransition(
                position: slide,
                child: ScaleTransition(
                  scale: scale,
                  child: Image.asset(
                    AppImages.logo,
                    height: 140.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Starts the exit animation, gated on the entrance having completed.
/// If entrance is still playing, the request is queued and executed the moment
/// the entrance listener fires — making entrance duration the natural minimum.
void _doNavigate({
  required AnimationController entrance,
  required AnimationController exit,
  required ObjectRef<VoidCallback?> pendingRoute,
  required ObjectRef<VoidCallback?> pendingNavigate,
  required VoidCallback go,
}) {
  void startExit() {
    pendingRoute.value = go;
    exit.forward();
  }

  if (entrance.isCompleted) {
    startExit();
  } else {
    pendingNavigate.value = startExit;
  }
}
