import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/branches/branches_bloc.dart';
import '../../../application/home/home_bloc.dart';
import '../../../application/profile/profile_bloc.dart';
import '../../../application/transaction_history/transaction_history_bloc.dart';
import '../../core/button/app_button.dart';
import '../../core/notify/app_notify.dart';
import '../../core/theme/app_theme_ext.dart';
import '../../routes/app_routes.gr.dart';

class HomeDrawer extends StatelessWidget {
  final HomeState state;
  const HomeDrawer({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    return Drawer(
      width: 0.82.sw,
      backgroundColor: cs.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.r),
          bottomRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        children: [
          _DrawerHeader(state: state),
          Divider(color: cs.onPrimary.withValues(alpha: 0.12), thickness: 1),
          SizedBox(height: 8.h),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  _DrawerItem(
                    icon: Icons.home_outlined,
                    label: 'home.drawer.home'.tr(),
                    isActive: true,
                    onTap: () {},
                  ),
                  _DrawerItem(
                    icon: Icons.person_outline_rounded,
                    label: 'home.drawer.profile'.tr(),
                    onTap: () {
                      context.read<ProfileBloc>().add(
                        const ProfileEvent.getUserInfo(),
                      );
                      context.router.push(const ProfileRoute());
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.history_rounded,
                    label: 'home.drawer.transactionHistory'.tr(),
                    onTap: () {
                      context.read<TransactionHistoryBloc>().add(
                        const TransactionHistoryEvent.getTransactionHistory(
                          resetSort: true,
                        ),
                      );
                      context.router.push(const TransactionHistoryRoute());
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.location_on_outlined,
                    label: 'home.drawer.ourBranches'.tr(),
                    onTap: () {
                      context.read<BranchesBloc>().add(
                        const BranchesEvent.getBranchesList(),
                      );
                      context.router.push(const BranchesRoute());
                    },
                  ),
                  // _DrawerItem(
                  //   icon: Icons.language_outlined,
                  //   label: 'home.drawer.language'.tr(),
                  //   onTap: () {},
                  // ),
                  _DrawerItem(
                    icon: Icons.headset_mic_outlined,
                    label: 'home.drawer.contactUs'.tr(),
                    onTap: () {
                      AppNotify.toast(
                        'Coming soon...',
                        type: AppToastType.info,
                      );
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.description_outlined,
                    label: 'home.drawer.termsAndConditions'.tr(),
                    onTap: () {
                      AppNotify.toast(
                        'Coming soon...',
                        type: AppToastType.info,
                      );
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.privacy_tip_outlined,
                    label: 'home.drawer.privacyPolicy'.tr(),
                    onTap: () {
                      AppNotify.toast(
                        'Coming soon...',
                        type: AppToastType.info,
                      );
                    },
                  ),
                  _DrawerItem(
                    icon: Icons.info_outline_rounded,
                    label: 'home.drawer.aboutUs'.tr(),
                    onTap: () {
                      AppNotify.toast(
                        'Coming soon...',
                        type: AppToastType.info,
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppButton(
              text: 'buttons.logout'.tr(),
              onTap: () {
                context.router.replaceAll([MpinRoute(fromLogout: true)]);
              },
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}

// ── Header ────────────────────────────────────────────────────────────────

class _DrawerHeader extends StatelessWidget {
  final HomeState state;
  const _DrawerHeader({required this.state});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    final topPadding = ScreenUtil().statusBarHeight;
    final userDto = state.homeUserDto;
    final user = userDto?.data?.user;
    final userName = user?.firstName ?? '';
    final userFullName = user?.name ?? '';
    final userInitials = userFullName
        .trim()
        .split(RegExp(r'\s+'))
        .where((e) => e.isNotEmpty)
        .map((e) => e[0])
        .take(2)
        .join();
    final isUserActive = user?.status?.toLowerCase() == 'active';
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 24.h + topPadding, 20.w, 20.h),
      child: Row(
        children: [
          Container(
            width: 42.w,
            height: 42.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: cs.tertiary.withValues(alpha: 0.15),
              border: Border.all(color: cs.tertiary, width: 1.5),
            ),
            child: Center(
              child: Text(
                userInitials,
                style: TextStyle(
                  color: cs.tertiary,
                  fontWeight: FontWeight.w800,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'home.drawer.hi'.tr(namedArgs: {'userName': userName}),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: cs.onPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: isUserActive
                        ? context.appColors.success.withValues(alpha: 0.15)
                        : context.appColors.error.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    isUserActive
                        ? 'home.drawer.active'.tr()
                        : 'home.drawer.inactive'.tr(),
                    style: TextStyle(
                      color: isUserActive
                          ? context.appColors.success
                          : context.appColors.error,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Drawer Item ───────────────────────────────────────────────────────────

class _DrawerItem extends HookWidget {
  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isActive = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final theme = Theme.of(context);

    final pressController = useAnimationController(
      duration: const Duration(milliseconds: 60),
      reverseDuration: const Duration(milliseconds: 180),
    );

    final scale = useAnimation(
      Tween<double>(begin: 1.0, end: 0.97).animate(
        CurvedAnimation(parent: pressController, curve: Curves.easeOut),
      ),
    );

    final p = pressController.value;

    final iconBg = isActive
        ? cs.tertiary.withValues(alpha: 0.15)
        : Color.lerp(
            cs.onPrimary.withValues(alpha: 0.06),
            cs.onPrimary.withValues(alpha: 0.12),
            p,
          )!;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) {
        pressController.forward();
        HapticFeedback.selectionClick();
      },
      onTapUp: (_) {
        pressController.reverse();
        context.router.pop();
        onTap();
      },
      onTapCancel: () => pressController.reverse(),
      child: Transform.scale(
        scale: scale,
        child: Container(
          margin: EdgeInsets.only(bottom: 4.h),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
          decoration: BoxDecoration(
            color: isActive
                ? cs.tertiary.withValues(alpha: 0.07)
                : cs.onPrimary.withValues(alpha: p * 0.04),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Container(
                width: 36.w,
                height: 36.w,
                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(
                  icon,
                  size: 18.sp,
                  color: isActive ? cs.tertiary : cs.onPrimary,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: isActive
                        ? cs.tertiary
                        : cs.onPrimary.withValues(alpha: 0.90),
                  ),
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                size: 18.sp,
                color: cs.onPrimary.withValues(alpha: 0.25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
