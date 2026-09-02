import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/profile/profile_bloc.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/dotted_border/app_dotted_border.dart';
import '../core/extension/common_string_format_extensions.dart';
import '../core/helper/app_date_formatter_helper.dart';
import '../core/overlay_loading/app_overlay_loading.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/theme/app_theme_ext.dart';
import '../core/user_box/app_user_box.dart';
import '../routes/app_routes.gr.dart';

// ── Tile data model ───────────────────────────────────────────────────────────

class _TileConf {
  final String label;
  final String value;
  final bool isEmail;
  final bool isVerified;
  final VoidCallback? onUpdate;

  const _TileConf({
    required this.label,
    required this.value,
    this.isEmail = false,
    this.isVerified = false,
    this.onUpdate,
  });
}

// Builds visible tiles with dividers between them. Tiles with empty values are
// dropped unless isEmail is true.
List<Widget> _buildTiles(List<_TileConf> configs, ColorScheme colorScheme) {
  final visible = configs
      .where((c) => c.isEmail || c.value.trim().isNotEmpty)
      .toList();
  final result = <Widget>[];
  for (var i = 0; i < visible.length; i++) {
    final c = visible[i];
    result.add(AppProfileTile(
      label: c.label,
      value: c.value,
      isEmail: c.isEmail,
      isVerified: c.isVerified,
      onUpdate: c.onUpdate,
    ));
    if (i < visible.length - 1) {
      result.add(AppDottedDivider(
        color: colorScheme.outline,
        dotSize: 0.75,
        dotLength: 3,
        space: 5,
        height: 4,
      ));
    }
  }
  return result;
}

// ── Page ──────────────────────────────────────────────────────────────────────

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AppScaffold(
      appBar: AppAppBar(title: 'profile.title'.tr()),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.profileUserInfoFailureOrSuccessOption.fold(
            () => const AppOverlayLoading(),
            (either) => either.fold((failure) => SizedBox.shrink(), (success) {
              final userInfo = state.profileUserInfo?.data?.user;

              // ── Contact Details ─────────────────────────────────────────────
              final contactTiles = _buildTiles([
                _TileConf(
                  label: 'profile.contactDetails.mobileNumber'.tr(),
                  value: userInfo?.mobileNumber ?? '',
                  isVerified: true,
                ),
                _TileConf(
                  label: 'profile.contactDetails.emailAddress'.tr(),
                  value: userInfo?.email ?? '',
                  isEmail: true,
                  isVerified: userInfo?.isEmailVerified ?? false,
                  onUpdate: () {
                    context.read<ProfileBloc>().add(
                      ProfileEvent.currentEmailAddressChanged(
                        emailAddress: userInfo?.email ?? '',
                      ),
                    );
                    context.router.push(ProfileEmailView());
                  },
                ),
              ], colorScheme);

              // ── KYC Details ─────────────────────────────────────────────────
              final genderValue =
                  (userInfo?.gender?.isNotEmpty == true)
                  ? (userInfo!.gender!.toUpperCase() == 'F'
                        ? 'profile.kycDetails.genderFemale'.tr()
                        : 'profile.kycDetails.genderMale'.tr())
                  : '';
              final addressValue =
                  ((userInfo?.address1?.isNotEmpty == true) ||
                      (userInfo?.state?.isNotEmpty == true))
                  ? '${userInfo?.address1 ?? ''},\n${userInfo?.state ?? ''}'
                  : '';
              final kycTiles = _buildTiles([
                _TileConf(
                  label: 'profile.kycDetails.gender'.tr(),
                  value: genderValue,
                ),
                _TileConf(
                  label: 'profile.kycDetails.nationality'.tr(),
                  value: userInfo?.nationality ?? '',
                ),
                _TileConf(
                  label: 'profile.kycDetails.dateOfBirth'.tr(),
                  value: AppDateFormatterHelper.format(
                    userInfo?.dateOfBirth,
                    outputFormat: AppDateFormatterHelper.bankingDate,
                  ),
                ),
                _TileConf(
                  label: 'profile.kycDetails.placeOfBirth'.tr(),
                  value: userInfo?.placeOfBirth ?? '',
                ),
                _TileConf(
                  label: 'profile.kycDetails.countryOfBirth'.tr(),
                  value: userInfo?.countryOfBirth ?? '',
                ),
                _TileConf(
                  label: 'profile.kycDetails.address'.tr(),
                  value: addressValue,
                ),
              ], colorScheme);

              // ── Emirates ID Details ─────────────────────────────────────────
              final emiratesTiles = _buildTiles([
                _TileConf(
                  label: 'profile.emiratesIdDetails.idNumber'.tr(),
                  value: userInfo?.idNumber ?? '',
                ),
                _TileConf(
                  label: 'profile.emiratesIdDetails.issueDate'.tr(),
                  value: AppDateFormatterHelper.format(
                    userInfo?.issueDate,
                    outputFormat: AppDateFormatterHelper.bankingDate,
                  ),
                ),
                _TileConf(
                  label: 'profile.emiratesIdDetails.expiryDate'.tr(),
                  value: AppDateFormatterHelper.format(
                    userInfo?.expiryDate,
                    outputFormat: AppDateFormatterHelper.bankingDate,
                  ),
                ),
              ], colorScheme);

              // ── Professional Details ────────────────────────────────────────
              final professionalTiles = _buildTiles([
                _TileConf(
                  label: 'profile.professionalDetails.companyName'.tr(),
                  value: userInfo?.employer ?? '',
                ),
                _TileConf(
                  label: 'profile.professionalDetails.professionOrOccupation'
                      .tr(),
                  value: userInfo?.profession ?? '',
                ),
                _TileConf(
                  label: 'profile.professionalDetails.expectedAnnualTransactionCount'
                      .tr(),
                  value: userInfo?.expectedTransactionCount?.toString() ?? '',
                ),
                _TileConf(
                  label: 'profile.professionalDetails.expectedAnnualTransactionAmount'
                      .tr(),
                  value: userInfo?.expectedTurnover.toString() ?? '',
                ),
              ], colorScheme);

              return SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Column(
                  children: [
                    AppUserBox(
                      userName: userInfo?.name ?? '',
                      userInitials:
                          (userInfo?.name != null &&
                              userInfo!.name!.trim().isNotEmpty)
                          ? userInfo.name!
                                .trim()
                                .split(RegExp(r'\s+'))
                                .where((e) => e.isNotEmpty)
                                .take(2)
                                .map((e) => e[0].toUpperCase())
                                .join()
                          : '',
                      userStatus: userInfo?.status ?? '',
                    ),

                    SizedBox(height: 12.h),

                    // Contact details: always visible (email is always shown)
                    AppProfileSection(
                      title: 'profile.contactDetails.title'.tr(),
                      children: contactTiles,
                    ),

                    if (kycTiles.isNotEmpty)
                      AppProfileSection(
                        title: 'profile.kycDetails.title'.tr(),
                        children: kycTiles,
                      ),

                    if (emiratesTiles.isNotEmpty)
                      AppProfileSection(
                        title: 'profile.emiratesIdDetails.title'.tr(),
                        children: emiratesTiles,
                      ),

                    if (professionalTiles.isNotEmpty)
                      AppProfileSection(
                        title: 'profile.professionalDetails.title'.tr(),
                        children: professionalTiles,
                      ),
                  ],
                ),
              );
            }),
          );
        },
      ),
    );
  }
}

// ── Section ───────────────────────────────────────────────────────────────────

class AppProfileSection extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final void Function()? onUpdate;

  const AppProfileSection({
    super.key,
    required this.title,
    required this.children,
    this.onUpdate,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: colorScheme.outline, width: 0.5.w),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withAlpha(80),
            offset: Offset(3, 3.h),
            blurRadius: 2.r,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              if (onUpdate != null) ...[
                SizedBox(width: 4.w),
                TextButton(
                  onPressed: onUpdate,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: theme.colorScheme.onPrimary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3).r,
                    ),
                  ),
                  child: Text(
                    'buttons.update'.tr().toUpperCase(),
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ],
          ),
          SizedBox(height: 8.h),
          ...children,
        ],
      ),
    );
  }
}

// ── Tile ──────────────────────────────────────────────────────────────────────

class AppProfileTile extends StatelessWidget {
  final String label;
  final String value;
  final bool isVerified;
  final void Function()? onUpdate;
  final bool isEmail;

  const AppProfileTile({
    super.key,
    required this.label,
    required this.value,
    this.isVerified = false,
    this.onUpdate,
    this.isEmail = false,
  });

  String _normalizeSpace(String text, {bool isEmail = false}) {
    if (isEmail) {
      return text.trim().toLowerCase();
    } else {
      return text.toCleanUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isEmpty = value.trim().isEmpty;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 13.sp,
                    color: theme.colorScheme.onSecondary.withAlpha(200),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              if (onUpdate != null) ...[
                SizedBox(width: 8.w),
                TextButton(
                  onPressed: onUpdate,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: theme.colorScheme.onPrimary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3).r,
                    ),
                  ),
                  child: Text(
                    'buttons.update'.tr().toUpperCase(),
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ],
          ),
          if (!isEmpty) ...[
            SizedBox(height: 3.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (isVerified) ...[
                  Icon(
                    Icons.verified,
                    size: 16.sp,
                    color: context.appColors.success,
                  ),
                  SizedBox(width: 4.w),
                ],
                Expanded(
                  child: Text(
                    _normalizeSpace(value, isEmail: isEmail),
                    softWrap: true,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}