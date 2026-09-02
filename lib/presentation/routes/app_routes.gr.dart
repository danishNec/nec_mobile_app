// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i34;
import 'package:flutter/foundation.dart' as _i37;
import 'package:flutter/material.dart' as _i35;
import 'package:nec_mobile_app/domain/common/common_payment_result_dto.dart'
    as _i36;
import 'package:nec_mobile_app/domain/common/common_selectable_dto.dart'
    as _i38;
import 'package:nec_mobile_app/domain/notification/notification_dto.dart'
    as _i39;
import 'package:nec_mobile_app/domain/summary/summary_temporary_session_dto.dart'
    as _i40;
import 'package:nec_mobile_app/presentation/beneficiary/beneficiary_page.dart'
    as _i6;
import 'package:nec_mobile_app/presentation/beneficiary/widgets/beneficiary_add_form.dart'
    as _i3;
import 'package:nec_mobile_app/presentation/beneficiary/widgets/beneficiary_edit_form.dart'
    as _i4;
import 'package:nec_mobile_app/presentation/beneficiary/widgets/beneficiary_otp_view.dart'
    as _i5;
import 'package:nec_mobile_app/presentation/bio_metric/bio_metric_page.dart'
    as _i7;
import 'package:nec_mobile_app/presentation/branches/branches_page.dart' as _i8;
import 'package:nec_mobile_app/presentation/change_mpin/change_current_mpin_page.dart'
    as _i9;
import 'package:nec_mobile_app/presentation/change_mpin/widgets/change_new_mpin_view.dart'
    as _i10;
import 'package:nec_mobile_app/presentation/change_mpin/widgets/change_verify_mpin_view.dart'
    as _i11;
import 'package:nec_mobile_app/presentation/core/result_page/app_payment_result_page.dart'
    as _i1;
import 'package:nec_mobile_app/presentation/core/selectable_page/app_selectable_page.dart'
    as _i2;
import 'package:nec_mobile_app/presentation/forgot_mpin/forgot_mpin_page.dart'
    as _i12;
import 'package:nec_mobile_app/presentation/forgot_mpin/widgets/forgot_otp_view.dart'
    as _i13;
import 'package:nec_mobile_app/presentation/home/widgets/home_beneficiary_view.dart'
    as _i14;
import 'package:nec_mobile_app/presentation/home/widgets/home_email_otp_view.dart'
    as _i15;
import 'package:nec_mobile_app/presentation/home/widgets/home_email_view.dart'
    as _i16;
import 'package:nec_mobile_app/presentation/login/login_page.dart' as _i17;
import 'package:nec_mobile_app/presentation/main/main_page.dart' as _i18;
import 'package:nec_mobile_app/presentation/mpin/mpin_page.dart' as _i19;
import 'package:nec_mobile_app/presentation/notification/notification_page.dart'
    as _i21;
import 'package:nec_mobile_app/presentation/notification/widgets/notification_detail_view.dart'
    as _i20;
import 'package:nec_mobile_app/presentation/on_boarding/on_boarding_page.dart'
    as _i22;
import 'package:nec_mobile_app/presentation/otp/otp_page.dart' as _i23;
import 'package:nec_mobile_app/presentation/profile/profile_page.dart' as _i26;
import 'package:nec_mobile_app/presentation/profile/widgets/profile_email_otp_view.dart'
    as _i24;
import 'package:nec_mobile_app/presentation/profile/widgets/profile_email_view.dart'
    as _i25;
import 'package:nec_mobile_app/presentation/set_mpin/set_mpin_page.dart'
    as _i27;
import 'package:nec_mobile_app/presentation/set_mpin/widgets/set_verify_mpin_view.dart'
    as _i28;
import 'package:nec_mobile_app/presentation/splash/splash_page.dart' as _i29;
import 'package:nec_mobile_app/presentation/summary/summary_page.dart' as _i30;
import 'package:nec_mobile_app/presentation/summary/widgets/summary_payment_web_view.dart'
    as _i31;
import 'package:nec_mobile_app/presentation/support/support_page.dart' as _i32;
import 'package:nec_mobile_app/presentation/transaction_history/transaction_history_page.dart'
    as _i33;

/// generated route for
/// [_i1.AppPaymentResultPage]
class AppPaymentResultRoute
    extends _i34.PageRouteInfo<AppPaymentResultRouteArgs> {
  AppPaymentResultRoute({
    _i35.Key? key,
    _i36.CommonPaymentResultDto? paymentResult,
    List<_i34.PageRouteInfo>? children,
  }) : super(
         AppPaymentResultRoute.name,
         args: AppPaymentResultRouteArgs(
           key: key,
           paymentResult: paymentResult,
         ),
         initialChildren: children,
       );

  static const String name = 'AppPaymentResultRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppPaymentResultRouteArgs>(
        orElse: () => const AppPaymentResultRouteArgs(),
      );
      return _i1.AppPaymentResultPage(
        key: args.key,
        paymentResult: args.paymentResult,
      );
    },
  );
}

class AppPaymentResultRouteArgs {
  const AppPaymentResultRouteArgs({this.key, this.paymentResult});

  final _i35.Key? key;

  final _i36.CommonPaymentResultDto? paymentResult;

  @override
  String toString() {
    return 'AppPaymentResultRouteArgs{key: $key, paymentResult: $paymentResult}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppPaymentResultRouteArgs) return false;
    return key == other.key && paymentResult == other.paymentResult;
  }

  @override
  int get hashCode => key.hashCode ^ paymentResult.hashCode;
}

/// generated route for
/// [_i2.AppSelectablePage]
class AppSelectableRoute extends _i34.PageRouteInfo<AppSelectableRouteArgs> {
  AppSelectableRoute({
    _i37.Key? key,
    bool isShowLeading = false,
    bool isShowTrailing = false,
    String? title,
    _i38.CommonSelectableDto? commonSelectableDto,
    _i37.ValueChanged<_i38.CommonSelectableItem>? onSelected,
    _i38.CommonSelectableItem? initialSelectedItem,
    List<_i34.PageRouteInfo>? children,
  }) : super(
         AppSelectableRoute.name,
         args: AppSelectableRouteArgs(
           key: key,
           isShowLeading: isShowLeading,
           isShowTrailing: isShowTrailing,
           title: title,
           commonSelectableDto: commonSelectableDto,
           onSelected: onSelected,
           initialSelectedItem: initialSelectedItem,
         ),
         initialChildren: children,
       );

  static const String name = 'AppSelectableRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppSelectableRouteArgs>(
        orElse: () => const AppSelectableRouteArgs(),
      );
      return _i2.AppSelectablePage(
        key: args.key,
        isShowLeading: args.isShowLeading,
        isShowTrailing: args.isShowTrailing,
        title: args.title,
        commonSelectableDto: args.commonSelectableDto,
        onSelected: args.onSelected,
        initialSelectedItem: args.initialSelectedItem,
      );
    },
  );
}

class AppSelectableRouteArgs {
  const AppSelectableRouteArgs({
    this.key,
    this.isShowLeading = false,
    this.isShowTrailing = false,
    this.title,
    this.commonSelectableDto,
    this.onSelected,
    this.initialSelectedItem,
  });

  final _i37.Key? key;

  final bool isShowLeading;

  final bool isShowTrailing;

  final String? title;

  final _i38.CommonSelectableDto? commonSelectableDto;

  final _i37.ValueChanged<_i38.CommonSelectableItem>? onSelected;

  final _i38.CommonSelectableItem? initialSelectedItem;

  @override
  String toString() {
    return 'AppSelectableRouteArgs{key: $key, isShowLeading: $isShowLeading, isShowTrailing: $isShowTrailing, title: $title, commonSelectableDto: $commonSelectableDto, onSelected: $onSelected, initialSelectedItem: $initialSelectedItem}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppSelectableRouteArgs) return false;
    return key == other.key &&
        isShowLeading == other.isShowLeading &&
        isShowTrailing == other.isShowTrailing &&
        title == other.title &&
        commonSelectableDto == other.commonSelectableDto &&
        onSelected == other.onSelected &&
        initialSelectedItem == other.initialSelectedItem;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      isShowLeading.hashCode ^
      isShowTrailing.hashCode ^
      title.hashCode ^
      commonSelectableDto.hashCode ^
      onSelected.hashCode ^
      initialSelectedItem.hashCode;
}

/// generated route for
/// [_i3.BeneficiaryAddForm]
class BeneficiaryAddForm extends _i34.PageRouteInfo<void> {
  const BeneficiaryAddForm({List<_i34.PageRouteInfo>? children})
    : super(BeneficiaryAddForm.name, initialChildren: children);

  static const String name = 'BeneficiaryAddForm';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i3.BeneficiaryAddForm();
    },
  );
}

/// generated route for
/// [_i4.BeneficiaryEditForm]
class BeneficiaryEditForm extends _i34.PageRouteInfo<void> {
  const BeneficiaryEditForm({List<_i34.PageRouteInfo>? children})
    : super(BeneficiaryEditForm.name, initialChildren: children);

  static const String name = 'BeneficiaryEditForm';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i4.BeneficiaryEditForm();
    },
  );
}

/// generated route for
/// [_i5.BeneficiaryOtpView]
class BeneficiaryOtpView extends _i34.PageRouteInfo<void> {
  const BeneficiaryOtpView({List<_i34.PageRouteInfo>? children})
    : super(BeneficiaryOtpView.name, initialChildren: children);

  static const String name = 'BeneficiaryOtpView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i5.BeneficiaryOtpView();
    },
  );
}

/// generated route for
/// [_i6.BeneficiaryPage]
class BeneficiaryRoute extends _i34.PageRouteInfo<void> {
  const BeneficiaryRoute({List<_i34.PageRouteInfo>? children})
    : super(BeneficiaryRoute.name, initialChildren: children);

  static const String name = 'BeneficiaryRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i6.BeneficiaryPage();
    },
  );
}

/// generated route for
/// [_i7.BioMetricPage]
class BioMetricRoute extends _i34.PageRouteInfo<void> {
  const BioMetricRoute({List<_i34.PageRouteInfo>? children})
    : super(BioMetricRoute.name, initialChildren: children);

  static const String name = 'BioMetricRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i7.BioMetricPage();
    },
  );
}

/// generated route for
/// [_i8.BranchesPage]
class BranchesRoute extends _i34.PageRouteInfo<void> {
  const BranchesRoute({List<_i34.PageRouteInfo>? children})
    : super(BranchesRoute.name, initialChildren: children);

  static const String name = 'BranchesRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i8.BranchesPage();
    },
  );
}

/// generated route for
/// [_i9.ChangeCurrentMpinPage]
class ChangeCurrentMpinRoute extends _i34.PageRouteInfo<void> {
  const ChangeCurrentMpinRoute({List<_i34.PageRouteInfo>? children})
    : super(ChangeCurrentMpinRoute.name, initialChildren: children);

  static const String name = 'ChangeCurrentMpinRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i9.ChangeCurrentMpinPage();
    },
  );
}

/// generated route for
/// [_i10.ChangeNewMpinView]
class ChangeNewMpinView extends _i34.PageRouteInfo<void> {
  const ChangeNewMpinView({List<_i34.PageRouteInfo>? children})
    : super(ChangeNewMpinView.name, initialChildren: children);

  static const String name = 'ChangeNewMpinView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i10.ChangeNewMpinView();
    },
  );
}

/// generated route for
/// [_i11.ChangeVerifyMpinView]
class ChangeVerifyMpinView extends _i34.PageRouteInfo<void> {
  const ChangeVerifyMpinView({List<_i34.PageRouteInfo>? children})
    : super(ChangeVerifyMpinView.name, initialChildren: children);

  static const String name = 'ChangeVerifyMpinView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i11.ChangeVerifyMpinView();
    },
  );
}

/// generated route for
/// [_i12.ForgotMpinPage]
class ForgotMpinRoute extends _i34.PageRouteInfo<void> {
  const ForgotMpinRoute({List<_i34.PageRouteInfo>? children})
    : super(ForgotMpinRoute.name, initialChildren: children);

  static const String name = 'ForgotMpinRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i12.ForgotMpinPage();
    },
  );
}

/// generated route for
/// [_i13.ForgotOtpView]
class ForgotOtpView extends _i34.PageRouteInfo<void> {
  const ForgotOtpView({List<_i34.PageRouteInfo>? children})
    : super(ForgotOtpView.name, initialChildren: children);

  static const String name = 'ForgotOtpView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i13.ForgotOtpView();
    },
  );
}

/// generated route for
/// [_i14.HomeBeneficiaryView]
class HomeBeneficiaryView extends _i34.PageRouteInfo<void> {
  const HomeBeneficiaryView({List<_i34.PageRouteInfo>? children})
    : super(HomeBeneficiaryView.name, initialChildren: children);

  static const String name = 'HomeBeneficiaryView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i14.HomeBeneficiaryView();
    },
  );
}

/// generated route for
/// [_i15.HomeEmailOtpView]
class HomeEmailOtpView extends _i34.PageRouteInfo<void> {
  const HomeEmailOtpView({List<_i34.PageRouteInfo>? children})
    : super(HomeEmailOtpView.name, initialChildren: children);

  static const String name = 'HomeEmailOtpView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i15.HomeEmailOtpView();
    },
  );
}

/// generated route for
/// [_i16.HomeEmailView]
class HomeEmailView extends _i34.PageRouteInfo<void> {
  const HomeEmailView({List<_i34.PageRouteInfo>? children})
    : super(HomeEmailView.name, initialChildren: children);

  static const String name = 'HomeEmailView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i16.HomeEmailView();
    },
  );
}

/// generated route for
/// [_i17.LoginPage]
class LoginRoute extends _i34.PageRouteInfo<void> {
  const LoginRoute({List<_i34.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i17.LoginPage();
    },
  );
}

/// generated route for
/// [_i18.MainPage]
class MainRoute extends _i34.PageRouteInfo<void> {
  const MainRoute({List<_i34.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i18.MainPage();
    },
  );
}

/// generated route for
/// [_i19.MpinPage]
class MpinRoute extends _i34.PageRouteInfo<MpinRouteArgs> {
  MpinRoute({
    _i35.Key? key,
    bool fromLogout = false,
    List<_i34.PageRouteInfo>? children,
  }) : super(
         MpinRoute.name,
         args: MpinRouteArgs(key: key, fromLogout: fromLogout),
         initialChildren: children,
       );

  static const String name = 'MpinRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MpinRouteArgs>(
        orElse: () => const MpinRouteArgs(),
      );
      return _i19.MpinPage(key: args.key, fromLogout: args.fromLogout);
    },
  );
}

class MpinRouteArgs {
  const MpinRouteArgs({this.key, this.fromLogout = false});

  final _i35.Key? key;

  final bool fromLogout;

  @override
  String toString() {
    return 'MpinRouteArgs{key: $key, fromLogout: $fromLogout}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MpinRouteArgs) return false;
    return key == other.key && fromLogout == other.fromLogout;
  }

  @override
  int get hashCode => key.hashCode ^ fromLogout.hashCode;
}

/// generated route for
/// [_i20.NotificationDetailView]
class NotificationDetailView
    extends _i34.PageRouteInfo<NotificationDetailViewArgs> {
  NotificationDetailView({
    _i35.Key? key,
    _i39.NotificationList? notification,
    List<_i34.PageRouteInfo>? children,
  }) : super(
         NotificationDetailView.name,
         args: NotificationDetailViewArgs(key: key, notification: notification),
         initialChildren: children,
       );

  static const String name = 'NotificationDetailView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationDetailViewArgs>(
        orElse: () => const NotificationDetailViewArgs(),
      );
      return _i20.NotificationDetailView(
        key: args.key,
        notification: args.notification,
      );
    },
  );
}

class NotificationDetailViewArgs {
  const NotificationDetailViewArgs({this.key, this.notification});

  final _i35.Key? key;

  final _i39.NotificationList? notification;

  @override
  String toString() {
    return 'NotificationDetailViewArgs{key: $key, notification: $notification}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NotificationDetailViewArgs) return false;
    return key == other.key && notification == other.notification;
  }

  @override
  int get hashCode => key.hashCode ^ notification.hashCode;
}

/// generated route for
/// [_i21.NotificationPage]
class NotificationRoute extends _i34.PageRouteInfo<void> {
  const NotificationRoute({List<_i34.PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i21.NotificationPage();
    },
  );
}

/// generated route for
/// [_i22.OnBoardingPage]
class OnBoardingRoute extends _i34.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i34.PageRouteInfo>? children})
    : super(OnBoardingRoute.name, initialChildren: children);

  static const String name = 'OnBoardingRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i22.OnBoardingPage();
    },
  );
}

/// generated route for
/// [_i23.OtpPage]
class OtpRoute extends _i34.PageRouteInfo<void> {
  const OtpRoute({List<_i34.PageRouteInfo>? children})
    : super(OtpRoute.name, initialChildren: children);

  static const String name = 'OtpRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i23.OtpPage();
    },
  );
}

/// generated route for
/// [_i24.ProfileEmailOtpView]
class ProfileEmailOtpView extends _i34.PageRouteInfo<void> {
  const ProfileEmailOtpView({List<_i34.PageRouteInfo>? children})
    : super(ProfileEmailOtpView.name, initialChildren: children);

  static const String name = 'ProfileEmailOtpView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i24.ProfileEmailOtpView();
    },
  );
}

/// generated route for
/// [_i25.ProfileEmailView]
class ProfileEmailView extends _i34.PageRouteInfo<void> {
  const ProfileEmailView({List<_i34.PageRouteInfo>? children})
    : super(ProfileEmailView.name, initialChildren: children);

  static const String name = 'ProfileEmailView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i25.ProfileEmailView();
    },
  );
}

/// generated route for
/// [_i26.ProfilePage]
class ProfileRoute extends _i34.PageRouteInfo<void> {
  const ProfileRoute({List<_i34.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i26.ProfilePage();
    },
  );
}

/// generated route for
/// [_i27.SetMpinPage]
class SetMpinRoute extends _i34.PageRouteInfo<void> {
  const SetMpinRoute({List<_i34.PageRouteInfo>? children})
    : super(SetMpinRoute.name, initialChildren: children);

  static const String name = 'SetMpinRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i27.SetMpinPage();
    },
  );
}

/// generated route for
/// [_i28.SetVerifyMpinView]
class SetVerifyMpinView extends _i34.PageRouteInfo<void> {
  const SetVerifyMpinView({List<_i34.PageRouteInfo>? children})
    : super(SetVerifyMpinView.name, initialChildren: children);

  static const String name = 'SetVerifyMpinView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i28.SetVerifyMpinView();
    },
  );
}

/// generated route for
/// [_i29.SplashPage]
class SplashRoute extends _i34.PageRouteInfo<void> {
  const SplashRoute({List<_i34.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i29.SplashPage();
    },
  );
}

/// generated route for
/// [_i30.SummaryPage]
class SummaryRoute extends _i34.PageRouteInfo<void> {
  const SummaryRoute({List<_i34.PageRouteInfo>? children})
    : super(SummaryRoute.name, initialChildren: children);

  static const String name = 'SummaryRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i30.SummaryPage();
    },
  );
}

/// generated route for
/// [_i31.SummaryPaymentWebView]
class SummaryPaymentWebView
    extends _i34.PageRouteInfo<SummaryPaymentWebViewArgs> {
  SummaryPaymentWebView({
    _i35.Key? key,
    _i40.SummaryTemporarySessionDto? summaryTemporarySessionDto,
    List<_i34.PageRouteInfo>? children,
  }) : super(
         SummaryPaymentWebView.name,
         args: SummaryPaymentWebViewArgs(
           key: key,
           summaryTemporarySessionDto: summaryTemporarySessionDto,
         ),
         initialChildren: children,
       );

  static const String name = 'SummaryPaymentWebView';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SummaryPaymentWebViewArgs>(
        orElse: () => const SummaryPaymentWebViewArgs(),
      );
      return _i31.SummaryPaymentWebView(
        key: args.key,
        summaryTemporarySessionDto: args.summaryTemporarySessionDto,
      );
    },
  );
}

class SummaryPaymentWebViewArgs {
  const SummaryPaymentWebViewArgs({this.key, this.summaryTemporarySessionDto});

  final _i35.Key? key;

  final _i40.SummaryTemporarySessionDto? summaryTemporarySessionDto;

  @override
  String toString() {
    return 'SummaryPaymentWebViewArgs{key: $key, summaryTemporarySessionDto: $summaryTemporarySessionDto}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SummaryPaymentWebViewArgs) return false;
    return key == other.key &&
        summaryTemporarySessionDto == other.summaryTemporarySessionDto;
  }

  @override
  int get hashCode => key.hashCode ^ summaryTemporarySessionDto.hashCode;
}

/// generated route for
/// [_i32.SupportPage]
class SupportRoute extends _i34.PageRouteInfo<void> {
  const SupportRoute({List<_i34.PageRouteInfo>? children})
    : super(SupportRoute.name, initialChildren: children);

  static const String name = 'SupportRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i32.SupportPage();
    },
  );
}

/// generated route for
/// [_i33.TransactionHistoryPage]
class TransactionHistoryRoute extends _i34.PageRouteInfo<void> {
  const TransactionHistoryRoute({List<_i34.PageRouteInfo>? children})
    : super(TransactionHistoryRoute.name, initialChildren: children);

  static const String name = 'TransactionHistoryRoute';

  static _i34.PageInfo page = _i34.PageInfo(
    name,
    builder: (data) {
      return const _i33.TransactionHistoryPage();
    },
  );
}
