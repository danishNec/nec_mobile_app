// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:local_auth/local_auth.dart' as _i152;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../application/app_upgrade/app_upgrade_bloc.dart' as _i609;
import '../../../application/beneficiary/beneficiary_bloc.dart' as _i589;
import '../../../application/bio_metric/bio_metric_bloc.dart' as _i162;
import '../../../application/branches/branches_bloc.dart' as _i1061;
import '../../../application/change_mpin/change_mpin_bloc.dart' as _i883;
import '../../../application/forgot_mpin/forgot_mpin_bloc.dart' as _i740;
import '../../../application/home/home_bloc.dart' as _i485;
import '../../../application/login/login_bloc.dart' as _i779;
import '../../../application/mpin/mpin_bloc.dart' as _i527;
import '../../../application/notification/notification_bloc.dart' as _i547;
import '../../../application/on_boarding/on_boarding_bloc.dart' as _i808;
import '../../../application/otp/otp_bloc.dart' as _i698;
import '../../../application/profile/profile_bloc.dart' as _i694;
import '../../../application/set_mpin/set_mpin_bloc.dart' as _i566;
import '../../../application/settings/settings_bloc.dart' as _i682;
import '../../../application/splash/splash_bloc.dart' as _i623;
import '../../../application/summary/summary_bloc.dart' as _i1000;
import '../../../application/transaction_history/transaction_history_bloc.dart'
    as _i1061;
import '../../../infrastructure/app_upgrade/app_upgrade_repository.dart'
    as _i740;
import '../../../infrastructure/beneficiary/beneficiary_repository.dart'
    as _i562;
import '../../../infrastructure/branches/branches_repository.dart' as _i1071;
import '../../../infrastructure/change_mpin/change_mpin_repository.dart' as _i6;
import '../../../infrastructure/core/app_injectable/app_injectable.dart'
    as _i697;
import '../../../infrastructure/forgot_mpin/forgot_mpin_repository.dart'
    as _i584;
import '../../../infrastructure/home/home_repository.dart' as _i1019;
import '../../../infrastructure/login/login_repository.dart' as _i1060;
import '../../../infrastructure/mpin/mpin_repository.dart' as _i1046;
import '../../../infrastructure/notification/notification_repository.dart'
    as _i142;
import '../../../infrastructure/otp/otp_repository.dart' as _i236;
import '../../../infrastructure/profile/profile_repository.dart' as _i539;
import '../../../infrastructure/security/security_service.dart' as _i952;
import '../../../infrastructure/set_mpin/set_mpin_repository.dart' as _i611;
import '../../../infrastructure/settings/settings_repository.dart' as _i965;
import '../../../infrastructure/summary/summary_repository.dart' as _i441;
import '../../../infrastructure/transaction_history/transaction_history_repository.dart'
    as _i925;
import '../../../presentation/routes/app_routes.dart' as _i139;
import '../../app_upgrade/i_app_upgrade_facade.dart' as _i182;
import '../../beneficiary/i_beneficiary_facade.dart' as _i452;
import '../../branches/i_branches_facade.dart' as _i20;
import '../../change_mpin/i_change_mpin_facade.dart' as _i43;
import '../../forgot_mpin/i_forgot_mpin_facade.dart' as _i1012;
import '../../home/i_home_facade.dart' as _i490;
import '../../login/i_login_facade.dart' as _i772;
import '../../mpin/i_mpin_facade.dart' as _i157;
import '../../notification/i_notification_facade.dart' as _i636;
import '../../otp/i_otp_facade.dart' as _i797;
import '../../profile/i_profile_facade.dart' as _i108;
import '../../set_mpin/i_set_mpin_facade.dart' as _i232;
import '../../settings/i_settings_facade.dart' as _i744;
import '../../summary/i_summary_facade.dart' as _i975;
import '../../transaction_history/i_transaction_history_facade.dart' as _i990;
import '../device_helper/app_device_helper.dart' as _i528;
import '../encryption_helper/app_encryption_helper.dart' as _i834;
import '../network/connectivity_service.dart' as _i491;
import '../permission_handler/app_permission_handler.dart' as _i615;
import '../prefs/app_prefs.dart' as _i469;
import '../services/api_services.dart' as _i500;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final appInjectableModule = _$AppInjectableModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appInjectableModule.sharedPreferences,
    preResolve: true,
  );
  gh.lazySingleton<_i834.AppEncryptionHelper>(
    () => _i834.AppEncryptionHelper(),
  );
  gh.lazySingleton<_i491.ConnectivityService>(
    () => _i491.ConnectivityService(),
  );
  gh.lazySingleton<_i615.AppPermissionHandler>(
    () => _i615.AppPermissionHandler(),
  );
  gh.lazySingleton<_i558.FlutterSecureStorage>(
    () => appInjectableModule.secureStorage,
  );
  gh.lazySingleton<_i500.ApiServices>(() => appInjectableModule.apiServices);
  gh.lazySingleton<_i152.LocalAuthentication>(
    () => appInjectableModule.localAuthentication,
  );
  gh.lazySingleton<_i952.SecurityService>(() => _i952.SecurityService());
  gh.lazySingleton<_i182.IAppUpgradeFacade>(
    () => _i740.AppUpgradeRepository(gh<_i500.ApiServices>()),
  );
  gh.lazySingleton<_i528.AppDeviceHelper>(
    () => _i528.AppDeviceHelper(gh<_i558.FlutterSecureStorage>()),
  );
  gh.factory<_i609.AppUpgradeBloc>(
    () => _i609.AppUpgradeBloc(gh<_i182.IAppUpgradeFacade>()),
  );
  gh.lazySingleton<_i20.IBranchesFacade>(
    () => _i1071.BranchesRepository(gh<_i500.ApiServices>()),
  );
  gh.factory<_i1061.BranchesBloc>(
    () => _i1061.BranchesBloc(gh<_i20.IBranchesFacade>()),
  );
  gh.lazySingleton<_i469.SharedPrefs>(
    () => _i469.SharedPrefs(
      gh<_i460.SharedPreferences>(),
      gh<_i834.AppEncryptionHelper>(),
    ),
  );
  gh.lazySingleton<_i43.IChangeMpinFacade>(
    () => _i6.ChangeMpinRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  gh.lazySingleton<_i990.ITransactionHistoryFacade>(
    () => _i925.TransactionHistoryRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  gh.lazySingleton<_i975.ISummaryFacade>(
    () => _i441.SummaryRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  gh.lazySingleton<_i772.ILoginFacade>(
    () => _i1060.LoginRepository(
      gh<_i500.ApiServices>(),
      gh<_i528.AppDeviceHelper>(),
    ),
  );
  gh.lazySingleton<_i1012.IForgotMpinFacade>(
    () => _i584.ForgotMpinRepository(
      gh<_i500.ApiServices>(),
      gh<_i528.AppDeviceHelper>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  gh.factory<_i779.LoginBloc>(() => _i779.LoginBloc(gh<_i772.ILoginFacade>()));
  gh.factory<_i883.ChangeMpinBloc>(
    () => _i883.ChangeMpinBloc(gh<_i43.IChangeMpinFacade>()),
  );
  gh.factory<_i808.OnBoardingBloc>(
    () => _i808.OnBoardingBloc(gh<_i469.SharedPrefs>()),
  );
  gh.factory<_i623.SplashBloc>(() => _i623.SplashBloc(gh<_i469.SharedPrefs>()));
  gh.lazySingleton<_i744.ISettingsFacade>(
    () => _i965.SettingsRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
      gh<_i152.LocalAuthentication>(),
    ),
  );
  gh.factory<_i682.SettingsBloc>(
    () => _i682.SettingsBloc(gh<_i744.ISettingsFacade>()),
  );
  gh.lazySingleton<_i452.IBeneficiaryFacade>(
    () => _i562.BeneficiaryRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
      gh<_i139.AppRouter>(),
    ),
  );
  gh.factory<_i589.BeneficiaryBloc>(
    () => _i589.BeneficiaryBloc(gh<_i452.IBeneficiaryFacade>()),
  );
  gh.lazySingleton<_i797.IOtpFacade>(
    () => _i236.OtpRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
      gh<_i528.AppDeviceHelper>(),
    ),
  );
  gh.lazySingleton<_i232.ISetMpinFacade>(
    () => _i611.SetMpinRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  gh.factory<_i1061.TransactionHistoryBloc>(
    () => _i1061.TransactionHistoryBloc(gh<_i990.ITransactionHistoryFacade>()),
  );
  gh.lazySingleton<_i636.INotificationFacade>(
    () => _i142.NotificationRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  gh.lazySingleton<_i157.IMpinFacade>(
    () => _i1046.MpinRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
      gh<_i528.AppDeviceHelper>(),
    ),
  );
  gh.lazySingleton<_i490.IHomeFacade>(
    () =>
        _i1019.HomeRepository(gh<_i500.ApiServices>(), gh<_i469.SharedPrefs>()),
  );
  gh.factory<_i162.BioMetricBloc>(
    () => _i162.BioMetricBloc(
      gh<_i469.SharedPrefs>(),
      gh<_i152.LocalAuthentication>(),
    ),
  );
  gh.lazySingleton<_i108.IProfileFacade>(
    () => _i539.ProfileRepository(
      gh<_i500.ApiServices>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  gh.factory<_i566.SetMpinBloc>(
    () => _i566.SetMpinBloc(gh<_i232.ISetMpinFacade>()),
  );
  gh.factory<_i740.ForgotMpinBloc>(
    () => _i740.ForgotMpinBloc(gh<_i1012.IForgotMpinFacade>()),
  );
  gh.factory<_i1000.SummaryBloc>(
    () => _i1000.SummaryBloc(gh<_i975.ISummaryFacade>()),
  );
  gh.factory<_i485.HomeBloc>(() => _i485.HomeBloc(gh<_i490.IHomeFacade>()));
  gh.factory<_i694.ProfileBloc>(
    () => _i694.ProfileBloc(gh<_i108.IProfileFacade>()),
  );
  gh.factory<_i547.NotificationBloc>(
    () => _i547.NotificationBloc(gh<_i636.INotificationFacade>()),
  );
  gh.factory<_i698.OtpBloc>(() => _i698.OtpBloc(gh<_i797.IOtpFacade>()));
  gh.factory<_i527.MpinBloc>(
    () => _i527.MpinBloc(
      gh<_i157.IMpinFacade>(),
      gh<_i152.LocalAuthentication>(),
      gh<_i469.SharedPrefs>(),
    ),
  );
  return getIt;
}

class _$AppInjectableModule extends _i697.AppInjectableModule {}
