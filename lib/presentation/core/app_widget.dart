import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nec_mobile_app/presentation/core/theme/app_theme.dart';
import '../../application/app_upgrade/app_upgrade_bloc.dart';
import '../../application/beneficiary/beneficiary_bloc.dart';
import '../../application/bio_metric/bio_metric_bloc.dart';
import '../../application/branches/branches_bloc.dart';
import '../../application/change_mpin/change_mpin_bloc.dart';
import '../../application/forgot_mpin/forgot_mpin_bloc.dart';
import '../../application/home/home_bloc.dart';
import '../../application/login/login_bloc.dart';
import '../../application/mpin/mpin_bloc.dart';
import '../../application/notification/notification_bloc.dart';
import '../../application/on_boarding/on_boarding_bloc.dart';
import '../../application/otp/otp_bloc.dart';
import '../../application/profile/profile_bloc.dart';
import '../../application/set_mpin/set_mpin_bloc.dart';
import '../../application/settings/settings_bloc.dart';
import '../../application/splash/splash_bloc.dart';
import '../../application/summary/summary_bloc.dart';
import '../../application/transaction_history/transaction_history_bloc.dart';
import '../../domain/core/di/injection.dart';
import '../routes/app_routes.dart';
import '../security/security_gate.dart';
import 'network/network_status_banner.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      enableScaleText: () => true,
      enableScaleWH: () => true,
      ensureScreenSize: true,
      fontSizeResolver: (fontSize, instance) => fontSize * 1,
      minTextAdapt: true,
      rebuildFactor: (old, data) => old != data,
      splitScreenMode: false,
      useInheritedMediaQuery: true,
      builder: (context, child) => SecurityGate(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<SplashBloc>(),
            ),
            BlocProvider(
              create: (context) =>
                  getIt<AppUpgradeBloc>()
                    ..add(const AppUpgradeEvent.checkForUpdate()),
            ),
            BlocProvider(create: (context) => getIt<OnBoardingBloc>()),
            BlocProvider(create: (context) => getIt<LoginBloc>()),
            BlocProvider(create: (context) => getIt<OtpBloc>()),
            BlocProvider(create: (context) => getIt<SetMpinBloc>()),
            BlocProvider(create: (context) => getIt<MpinBloc>()),
            BlocProvider(create: (context) => getIt<ForgotMpinBloc>()),
            BlocProvider(create: (context) => getIt<HomeBloc>()),
            BlocProvider(create: (context) => getIt<NotificationBloc>()),
            BlocProvider(create: (context) => getIt<BeneficiaryBloc>()),
            BlocProvider(create: (context) => getIt<BioMetricBloc>()),
            BlocProvider(create: (context) => getIt<SettingsBloc>()),
            BlocProvider(create: (context) => getIt<SummaryBloc>()),
            BlocProvider(create: (context) => getIt<ProfileBloc>()),
            BlocProvider(create: (context) => getIt<TransactionHistoryBloc>()),
            BlocProvider(create: (context) => getIt<BranchesBloc>()),
            BlocProvider(create: (context) => getIt<ChangeMpinBloc>()),
          ],
          child: MaterialApp.router(
            routerConfig: appRouter.config(),
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            theme: appThemeData[AppTheme.custom],
            builder: (_, child) =>
                NetworkStatusBanner(child: child ?? const SizedBox()),
          ),
        ),
      ),
    );
  }
}
