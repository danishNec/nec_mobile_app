import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/home/home_bloc.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/shimmer/app_shimmer.dart';
import '../core/extension/common_send_money_dto_extentions.dart';
import '../core/images/app_image.dart';
import '../core/notify/app_notify.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/widgets/locale_bloc_builder.dart';
import '../routes/app_routes.gr.dart';
import 'widgets/home_carousel_dialog.dart';
import 'widgets/home_drawer.dart';
import 'widgets/home_pay_now_button.dart';
import 'widgets/home_payment_details_view.dart';
import 'widgets/home_payment_method_view.dart';
import 'widgets/home_recent_beneficiary_view.dart';
import 'widgets/home_send_money_view.dart';
import 'widgets/home_transfer_type_view.dart';
import 'widgets/home_user_view.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>());
    final sourceAmountFocusNode = useFocusNode();
    final destinationAmountFocusNode = useFocusNode();
    final sourceAmountController = useTextEditingController();
    final destinationAmountController = useTextEditingController();
    final transferTypeController = useTextEditingController();
    final paymentMethodController = useTextEditingController();

    useEffect(() {
      context.read<HomeBloc>().add(const HomeEvent.initialize());
      return null;
    }, const []);
    return LocaleBlocConsumer<HomeBloc, HomeState>(
      listenWhen: (prev, curr) =>
          prev.homeAdvertisementFailureOrSuccessOption !=
              curr.homeAdvertisementFailureOrSuccessOption ||
          prev.homeUserFailureOrSuccessOption !=
              curr.homeUserFailureOrSuccessOption ||
          prev.homeCalculatedSourceAmountFailureOrSuccessOption !=
              curr.homeCalculatedSourceAmountFailureOrSuccessOption ||
          prev.homeCalculatedDestinationAmountFailureOrSuccessOption !=
              curr.homeCalculatedDestinationAmountFailureOrSuccessOption ||
          prev.selectedTransferTypeItem != curr.selectedTransferTypeItem ||
          prev.selectedPaymentMethodItem != curr.selectedPaymentMethodItem,
      listener: (context, state) {
        // One-shot: advertisement carousel — BLoC resets to none() immediately after.
        state.homeAdvertisementFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((_) {}, (_) {
            HomeCarouselDialog.show(
              context: context,
              dto: state.homeAdvertisementDto,
            );
          });
        });

        // One-shot: email verification — BLoC resets to none() immediately after.
        state.homeUserFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((_) => null, (success) {
            final user = success.data?.user;
            final userEmail = user?.email;
            final isUserEmailVerified = user?.isEmailVerified ?? false;
            if (userEmail == null ||
                userEmail.isEmpty ||
                !isUserEmailVerified) {
              HapticFeedback.heavyImpact();
              AppNotify.dialog(
                title: 'home.emailNotVerified.title'.tr(),
                message: 'home.emailNotVerified.message'.tr(),
                buttonText: 'buttons.verifyEmail'.tr(),
                type: AppDialogType.warning,
                onPressed: () {
                  context.router.pop();
                  context.router.replace(const HomeEmailView());
                },
              );
            }
          });
        });

        // On failure: clear only the calculated field — keep what the user typed.
        // On success: guard against overwriting the field the user is typing in.
        // If lastRawSourceAmount is empty (e.g. cleared by clearAmounts reset),
        // also clear the source controller since there is no user value to preserve.
        state.homeCalculatedSourceAmountFailureOrSuccessOption.fold(() {}, (
          either,
        ) {
          either.fold((_) => destinationAmountController.text = '', (success) {
            if (destinationAmountFocusNode.hasFocus) return;
            if (state.lastRawSourceAmount.isEmpty) {
              sourceAmountController.text = '';
            }
            if (state.commonSendMoneyDto.destinationAmount == 0.0) {
              destinationAmountController.text = '';
              return;
            }
            destinationAmountController.text =
                state.commonSendMoneyDto.formattedDestinationAmount;
          });
        });

        state.homeCalculatedDestinationAmountFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold((_) => sourceAmountController.text = '', (success) {
              if (sourceAmountFocusNode.hasFocus) return;
              if (state.lastRawDestinationAmount.isEmpty) {
                destinationAmountController.text = '';
              }
              if (state.commonSendMoneyDto.sourceAmount == 0.0) {
                sourceAmountController.text = '';
                return;
              }
              sourceAmountController.text =
                  state.commonSendMoneyDto.formattedSourceAmount;
            });
          },
        );

        transferTypeController.text =
            state.selectedTransferTypeItem?.titleName ?? '';
        paymentMethodController.text =
            state.selectedPaymentMethodItem?.titleName ?? '';
      },
      builder: (context, state) {
        return AppScaffold(
          scaffoldKey: scaffoldKey,
          drawer: HomeDrawer(state: state),
          appBar: AppAppBar(
            centerTitle: false,
            titleWidget: Column(
              children: [
                Image.asset(AppImages.logo, width: 140.w, fit: BoxFit.contain),
                SizedBox(height: 8.h),
              ],
            ),
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              child: _HomeActionButton(
                iconData: Icons.menu_rounded,
                onTap: () => scaffoldKey.currentState?.openDrawer(),
              ),
            ),
            actions: [
              _HomeActionButton(
                iconData: Icons.notifications_outlined,
                onTap: () {
                  context.router.push(const NotificationRoute());
                },
              ),
              SizedBox(width: 8.w),
              _HomeActionButton(
                iconData: Icons.logout_rounded,
                iconColor: colorScheme.error,
                onTap: () {
                  context.router.replaceAll([MpinRoute(fromLogout: true)]);
                },
              ),
              SizedBox(width: 12.w),
            ],
          ),
          body: RefreshIndicator(
            color: colorScheme.tertiary,
            onRefresh: () {
              final bloc = context.read<HomeBloc>();
              final completer = Completer<void>();
              late StreamSubscription<HomeState> sub;
              sub = bloc.stream.listen((s) {
                if (!s.isRefreshing) {
                  if (!completer.isCompleted) completer.complete();
                  sub.cancel();
                }
              });
              bloc.add(const HomeEvent.initialize(isRefresh: true));
              return completer.future;
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state.isUserLoading)
                    const _HomeUserSectionShimmer()
                  else
                    HomeUserView(state: state),
                  if (state.isRecentBeneficiariesLoading)
                    const _HomeRecentBeneficiariesSectionShimmer()
                  else
                    HomeRecentBeneficiaryView(state: state),
                  if (state.isSendMoneyFormLoading)
                    const _HomeSendMoneyFormSectionShimmer()
                  else ...[
                    HomeSendMoneyView(
                      state: state,
                      sourceAmountFocusNode: sourceAmountFocusNode,
                      destinationAmountFocusNode: destinationAmountFocusNode,
                      sourceAmountController: sourceAmountController,
                      destinationAmountController: destinationAmountController,
                    ),
                    HomeTransferTypeView(
                      state: state,
                      controller: transferTypeController,
                    ),
                    HomePaymentMethodView(
                      state: state,
                      controller: paymentMethodController,
                    ),
                    HomePaymentDetailsView(state: state),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                      ).add(EdgeInsets.only(top: 16.h, bottom: 16.h)),
                      child: HomePayNowButton(
                        isCalculating:
                            state.isSourceAmountCalculating ||
                            state.isDestinationAmountCalculating,
                        isReady:
                            (state.commonSendMoneyDto.sourceAmount ?? 0) > 0 &&
                            !state.isSourceAmountCalculating &&
                            !state.isDestinationAmountCalculating &&
                            state.selectedTransferTypeItem != null &&
                            state.selectedPaymentMethodItem != null,
                        onTap: () {
                          context.read<HomeBloc>().add(
                            const HomeEvent.getBeneficiaryList(),
                          );
                          context.router.push(const HomeBeneficiaryView());
                        },
                        onIdleTap: () {
                          final dto = state.commonSendMoneyDto;
                          final String msg;
                          if ((dto.sourceAmount ?? 0) == 0) {
                            msg = 'validation.home.amountRequired'.tr();
                          } else if (state.selectedTransferTypeItem == null) {
                            msg = 'validation.home.transferTypeRequired'.tr();
                          } else if (state.selectedPaymentMethodItem == null) {
                            msg = 'validation.home.paymentMethodRequired'.tr();
                          } else {
                            return;
                          }
                          AppNotify.toast(
                            msg,
                            type: AppToastType.error,
                            position: AppToastPosition.top,
                          );
                        },
                      ),
                    ),
                    const _HomeTrustBadgesSection(),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// ── Trust badges ─────────────────────────────────────────────────────────────

class _HomeTrustBadgesSection extends StatelessWidget {
  const _HomeTrustBadgesSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    final badges = [
      (
        icon: Icons.shield_outlined,
        title: 'home.trust.secure.title'.tr(),
        subtitle: 'home.trust.secure.subtitle'.tr(),
      ),
      (
        icon: Icons.bolt_outlined,
        title: 'home.trust.fast.title'.tr(),
        subtitle: 'home.trust.fast.subtitle'.tr(),
      ),
      (
        icon: Icons.lock_outline_rounded,
        title: 'home.trust.encrypted.title'.tr(),
        subtitle: 'home.trust.encrypted.subtitle'.tr(),
      ),
    ];

    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 28.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: cs.outline, width: 0.35.w),
        ),
        child: Row(
          children: badges.map((badge) {
            return Expanded(
              child: Column(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      color: cs.tertiary.withAlpha(28),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(badge.icon, color: cs.tertiary, size: 20.sp),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    badge.title,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    badge.subtitle,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 9.sp,
                      color: cs.onSurface.withAlpha(130),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// ── Section shimmer widgets ───────────────────────────────────────────────────

class _HomeUserSectionShimmer extends StatelessWidget {
  const _HomeUserSectionShimmer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Row(
        children: [
          AppShimmer(
            width: 44.w,
            height: 44.h,
            borderRadius: BorderRadius.circular(22.r),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppShimmer(width: 120.w, height: 12.h),
              SizedBox(height: 6.h),
              AppShimmer(width: 170.w, height: 10.h),
            ],
          ),
        ],
      ),
    );
  }
}

class _HomeRecentBeneficiariesSectionShimmer extends StatelessWidget {
  const _HomeRecentBeneficiariesSectionShimmer();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppShimmer(
          width: 150.w,
          height: 14.h,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 75.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            separatorBuilder: (context, i) => SizedBox(width: 10.w),
            itemBuilder: (context, i) => AppShimmer(
              borderRadius: BorderRadius.circular(14.r),
              child: Container(
                width: 220.w,
                padding: EdgeInsets.all(10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppShimmer(width: 100.w, height: 12.h),
                    SizedBox(height: 8.h),
                    AppShimmer(width: 140.w, height: 10.h),
                    SizedBox(height: 8.h),
                    AppShimmer(width: 160.w, height: 10.h),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 18.h),
      ],
    );
  }
}

class _HomeSendMoneyFormSectionShimmer extends StatelessWidget {
  const _HomeSendMoneyFormSectionShimmer();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppShimmer(
          borderRadius: BorderRadius.circular(14.r),
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppShimmer(width: 100.w, height: 12.h),
                SizedBox(height: 10.h),
                AppShimmer(height: 36.h),
                SizedBox(height: 10.h),
                AppShimmer(width: 140.w, height: 10.h),
                SizedBox(height: 10.h),
                AppShimmer(height: 36.h),
              ],
            ),
          ),
        ),
        SizedBox(height: 18.h),
        AppShimmer(
          width: 120.w,
          height: 12.h,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
        ),
        SizedBox(height: 10.h),
        AppShimmer(
          height: 40.h,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        SizedBox(height: 16.h),
        AppShimmer(
          width: 120.w,
          height: 12.h,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
        ),
        SizedBox(height: 10.h),
        AppShimmer(
          height: 40.h,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        SizedBox(height: 16.h),
        AppShimmer(
          width: 120.w,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          height: 12.h,
        ),
        SizedBox(height: 10.h),
        AppShimmer(
          height: 40.h,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          borderRadius: BorderRadius.circular(12.r),
        ),
        SizedBox(height: 20.h),
        AppShimmer(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              children: List.generate(
                5,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppShimmer(width: 120.w, height: 10.h),
                      AppShimmer(width: 60.w, height: 10.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        AppShimmer(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          borderRadius: BorderRadius.circular(14.r),
          child: Container(
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Expanded(flex: 2, child: AppShimmer(height: 36.h)),
                SizedBox(width: 10.w),
                Expanded(flex: 3, child: AppShimmer(height: 36.h)),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}

// ── App bar action button ─────────────────────────────────────────────────────

class _HomeActionButton extends HookWidget {
  const _HomeActionButton({required this.iconData, this.onTap, this.iconColor});

  final IconData iconData;
  final VoidCallback? onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final pressController = useAnimationController(
      duration: const Duration(milliseconds: 60),
      reverseDuration: const Duration(milliseconds: 200),
    );

    final scale = useAnimation(
      Tween<double>(begin: 1.0, end: 0.86).animate(
        CurvedAnimation(parent: pressController, curve: Curves.easeOut),
      ),
    );

    final p = pressController.value;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) {
        pressController.forward();
        HapticFeedback.lightImpact();
      },
      onTapUp: (_) {
        pressController.reverse();
        onTap?.call();
      },
      onTapCancel: () => pressController.reverse(),
      child: Transform.scale(
        scale: scale,
        child: Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            color: Color.lerp(
              colors.onPrimary.withValues(alpha: 0.08),
              colors.onPrimary.withValues(alpha: 0.18),
              p,
            ),
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: Color.lerp(
                colors.onPrimary.withValues(alpha: 0.14),
                colors.onPrimary.withValues(alpha: 0.30),
                p,
              )!,
              width: 0.6,
            ),
          ),
          child: Center(
            child: Icon(
              iconData,
              size: 20.sp,
              color: iconColor ?? colors.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
