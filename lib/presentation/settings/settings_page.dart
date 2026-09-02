import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/branches/branches_bloc.dart';
import '../../application/profile/profile_bloc.dart';
import '../../application/settings/settings_bloc.dart';
import '../../application/transaction_history/transaction_history_bloc.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/dialog/app_language_dialog.dart';
import '../core/notify/app_notify.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/shimmer/app_shimmer.dart';
import '../core/user_box/app_user_box.dart';
import '../core/widgets/locale_bloc_builder.dart';
import '../routes/app_routes.gr.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<SettingsBloc>().add(const SettingsEvent.getUserInfo());
      context.read<SettingsBloc>().add(
        const SettingsEvent.checkBiometricSupport(),
      );
      return null;
    }, const []);

    return LocaleBlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final user = state.settingsUserInfo?.data?.user;
        final userName = user?.name ?? '';
        final userInitials = userName
            .split(' ')
            .where((n) => n.isNotEmpty)
            .take(2)
            .map((n) => n[0])
            .join();
        final isUserActive = user?.status?.toLowerCase() == 'active';

        return AppScaffold(
          appBar: AppAppBar(title: 'settings.title'.tr()),
          body: SingleChildScrollView(
            child: Column(
              spacing: 16.h,
              children: [
                state.isUserLoading
                    ? AppShimmer(
                        width: 1.sw,
                        height: 60.h,
                        borderRadius: BorderRadius.circular(8.r),
                      )
                    : AppUserBox(
                        userName: userName,
                        userInitials: userInitials,
                        userStatus: isUserActive
                            ? 'settings.active'.tr()
                            : 'settings.inactive'.tr(),
                      ),
                SettingsTile(
                  title: 'settings.profile.title'.tr(),
                  icon: Icons.person,
                  onTap: () {
                    context.read<ProfileBloc>().add(
                      const ProfileEvent.getUserInfo(),
                    );
                    context.router.push(const ProfileRoute());
                  },
                ),
                SettingsTile(
                  title: 'settings.transactionHistory.title'.tr(),
                  icon: Icons.history,
                  onTap: () {
                    context.read<TransactionHistoryBloc>().add(
                      const TransactionHistoryEvent.getTransactionHistory(
                        resetSort: true,
                      ),
                    );
                    context.router.push(const TransactionHistoryRoute());
                  },
                ),
                SettingsTile(
                  title: 'settings.ourBranches.title'.tr(),
                  icon: Icons.location_on,
                  onTap: () {
                    context.read<BranchesBloc>().add(
                      const BranchesEvent.getBranchesList(),
                    );
                    context.router.push(const BranchesRoute());
                  },
                ),
                if (state.isBiometricAvailable)
                  SettingsTile(
                    title: 'settings.biometricAuthentication.title'.tr(),
                    icon: Icons.fingerprint,
                    value: state.isBiometricEnabled,
                    onChanged: (_) => context.read<SettingsBloc>().add(
                      SettingsEvent.toggleBiometricAuth(),
                    ),
                  ),
                SettingsTile(
                  title: 'settings.language.title'.tr(),
                  icon: Icons.language,
                  onTap: () => AppLanguageDialog.show(context),
                ),
                SettingsTile(
                  title: 'settings.changeMpin.title'.tr(),
                  icon: Icons.lock,
                  onTap: () =>
                      context.router.push(const ChangeCurrentMpinRoute()),
                ),
                SettingsTile(
                  title: 'settings.contactUs.title'.tr(),
                  icon: Icons.support_agent,
                  onTap: () => AppNotify.toast(
                    'Coming soon...',
                    type: AppToastType.info,
                  ),
                ),
                SettingsTile(
                  title: 'settings.termsAndConditions.title'.tr(),
                  icon: Icons.description,
                  onTap: () => AppNotify.toast(
                    'Coming soon...',
                    type: AppToastType.info,
                  ),
                ),
                SettingsTile(
                  title: 'settings.privacyPolicy.title'.tr(),
                  icon: Icons.privacy_tip,
                  onTap: () => AppNotify.toast(
                    'Coming soon...',
                    type: AppToastType.info,
                  ),
                ),
                SettingsTile(
                  title: 'settings.aboutUs.title'.tr(),
                  icon: Icons.info,
                  onTap: () => AppNotify.toast(
                    'Coming soon...',
                    type: AppToastType.info,
                  ),
                ),
                SizedBox(height: 4.h),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool? value;
  final ValueChanged<bool>? onChanged;
  final VoidCallback? onTap;

  const SettingsTile({
    super.key,
    required this.title,
    required this.icon,
    this.value,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GestureDetector(
      onTap: onTap == null
          ? null
          : () {
              HapticFeedback.lightImpact();
              onTap!();
            },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: colorScheme.outline, width: 0.5.w),
          boxShadow: [
            BoxShadow(
              color: colorScheme.shadow.withAlpha(50),
              offset: Offset(1.w, 1.h),
              blurRadius: 6.r,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [colorScheme.secondary, colorScheme.primary],
                ),
                border: Border.all(color: colorScheme.outline, width: 0.5.w),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(icon, size: 24.sp),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (value != null)
              Transform.scale(
                scale: 0.85,
                child: Switch.adaptive(
                  value: value!,
                  onChanged: (v) {
                    HapticFeedback.lightImpact();
                    onChanged?.call(v);
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              )
            else
              Icon(
                Icons.arrow_forward_ios,
                size: 16.sp,
                color: colorScheme.onPrimary.withAlpha(150),
              ),
          ],
        ),
      ),
    );
  }
}
