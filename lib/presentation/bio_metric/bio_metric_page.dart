import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/bio_metric/bio_metric_bloc.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/button/app_button.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/theme/app_theme_ext.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class BioMetricPage extends HookWidget {
  const BioMetricPage({super.key});

  @override
  Widget build(BuildContext context) {
    final hasChecked = useState(false);

    useEffect(() {
      context.read<BioMetricBloc>().add(const BioMetricEvent.checkSupport());
      return null;
    }, const []);

    return BlocConsumer<BioMetricBloc, BioMetricState>(
      listener: (context, state) {
        if (!hasChecked.value) hasChecked.value = true;
        if (state.isBiometricEnabled) {
          context.router.replaceAll([const MainRoute()]);
        }
      },
      builder: (context, state) {
        final theme = Theme.of(context);
        final colorScheme = theme.colorScheme;
        final isUnavailable = hasChecked.value && !state.isBiometricAvailable;

        return AppScaffold(
          appBar: AppAppBar(title: 'bioMetric.title'.tr()),
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          SizedBox(height: 32.h),
                          Container(
                            height: 220.r,
                            width: 220.r,
                            decoration: BoxDecoration(
                              color: colorScheme.secondary,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Container(
                                height: 160.r,
                                width: 160.r,
                                decoration: BoxDecoration(
                                  color: colorScheme.primary,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorScheme.primary.withAlpha(20),
                                      blurRadius: 30.r,
                                      spreadRadius: 5.r,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.fingerprint_rounded,
                                  size: 90.sp,
                                  color: colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          Text(
                            'bioMetric.heading'.tr(),
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineMedium?.copyWith(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            'bioMetric.description'.tr(),
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 14.sp,
                              height: 1.5,
                              color: context.appColors.muted,
                            ),
                          ),
                          if (isUnavailable) ...[
                            SizedBox(height: 12.h),
                            Text(
                              'bioMetric.unavailable'.tr(),
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 12.sp,
                                color: context.appColors.error,
                              ),
                            ),
                          ],
                          const Spacer(),
                          AppButton(
                            onTap: isUnavailable || state.isAuthenticating
                                ? null
                                : () => context.read<BioMetricBloc>().add(
                                      const BioMetricEvent.enable(),
                                    ),
                            isLoading: state.isAuthenticating,
                            text: 'bioMetric.enableNow'.tr(),
                            useSpaceBetween: true,
                            sideWidgetPosition: SideWidgetPosition.right,
                            sideWidget: state.isAuthenticating
                                ? null
                                : Icon(
                                    Icons.fingerprint_rounded,
                                    size: 26.sp,
                                    color: colorScheme.primary,
                                  ),
                            textStyle: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: colorScheme.primary,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          AppButton(
                            onTap: () {
                              context.router.replaceAll([const MainRoute()]);
                            },
                            backgroundColor: colorScheme.primary,
                            border: Border.all(
                              color: colorScheme.tertiary,
                              width: .75.w,
                            ),
                            text: 'bioMetric.maybeLater'.tr(),
                            textStyle: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.tertiary,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 24.h),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}