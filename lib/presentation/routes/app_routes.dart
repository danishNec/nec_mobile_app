import 'package:auto_route/auto_route.dart';
import 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: SplashRoute.page),

    AutoRoute(page: OnBoardingRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: OtpRoute.page),
    
    AutoRoute(page: SetMpinRoute.page),
    AutoRoute(page: SetVerifyMpinView.page),

    AutoRoute(page: BioMetricRoute.page),

    AutoRoute(page: HomeBeneficiaryView.page),

    AutoRoute(page: MainRoute.page),

    AutoRoute(page: ForgotMpinRoute.page),
    AutoRoute(page: ForgotOtpView.page),

    AutoRoute(page: HomeEmailView.page),
    AutoRoute(page: HomeEmailOtpView.page),

    AutoRoute(page: SupportRoute.page),

    AutoRoute(page: SummaryRoute.page),
    AutoRoute(page: SummaryPaymentWebView.page),

    AutoRoute(page: TransactionHistoryRoute.page),
    AutoRoute(page: BranchesRoute.page),

    AutoRoute(page: BeneficiaryRoute.page),
    AutoRoute(page: BeneficiaryAddForm.page),
    AutoRoute(page: BeneficiaryEditForm.page),
    AutoRoute(page: BeneficiaryOtpView.page),

    AutoRoute(page: MpinRoute.page),

    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: ProfileEmailView.page),
    AutoRoute(page: ProfileEmailOtpView.page),

    AutoRoute(page: NotificationRoute.page),
    AutoRoute(page: NotificationDetailView.page),

    AutoRoute(page: ChangeCurrentMpinRoute.page),
    AutoRoute(page: ChangeNewMpinView.page),
    AutoRoute(page: ChangeVerifyMpinView.page),

    AutoRoute(page: AppSelectableRoute.page, fullscreenDialog: true),
    AutoRoute(page: AppPaymentResultRoute.page, fullscreenDialog: true),
  ];

  @override
  List<AutoRouteGuard> get guards => [];
}
