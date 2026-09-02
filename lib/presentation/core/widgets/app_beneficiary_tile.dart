import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/app_global.dart';
import '../svg/app_svg.dart';
import '../theme/app_theme_ext.dart';

/// Reusable beneficiary tile used on both the Home (selection flow) and the
/// Beneficiary Management screen (edit/delete flow).
///
/// [showRadio] — true renders a radio indicator as the leading widget;
/// false renders an initials avatar.
/// [onMoreTap] — when non-null the three-dot menu button is shown and calls
/// this callback when pressed. Pass null to hide the button entirely.
class AppBeneficiaryTile extends StatelessWidget {
  final String name;
  final String? rawAccountNumber;
  final String? disbursalMode;
  final String? bankName;
  final String? countryCode;
  final String? currencyCode;
  final VoidCallback? onTap;
  final VoidCallback? onMoreTap;
  final bool isSelected;
  final bool showRadio;

  const AppBeneficiaryTile({
    super.key,
    required this.name,
    this.onTap,
    this.rawAccountNumber,
    this.disbursalMode,
    this.bankName,
    this.countryCode,
    this.currencyCode,
    this.onMoreTap,
    this.isSelected = false,
    this.showRadio = false,
  });

  static String _masked(String raw) {
    final t = raw.trim();
    return t.length > 4 ? '•••• ${t.substring(t.length - 4)}' : t;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    final initial = name.trim().isNotEmpty
        ? name
              .trim()
              .split(' ')
              .where((e) => e.isNotEmpty)
              .take(2)
              .map((e) => e[0].toUpperCase())
              .join()
        : '?';
    final account = rawAccountNumber?.trim() ?? '';
    final masked = account.isNotEmpty ? _masked(account) : '';

    final borderColor = (showRadio && isSelected)
        ? cs.tertiary.withAlpha(150)
        : cs.outline;

    return Material(
      borderRadius: BorderRadius.circular(8.r),
      child: ListTile(
        onTap: onTap,
        tileColor: cs.secondaryContainer,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(color: borderColor, width: 0.75.w),
        ),
        horizontalTitleGap: 12.w,
        leading: showRadio
            ? _RadioIndicator(isSelected: isSelected)
            : _InitialsAvatar(initial: initial),
        title: Text(
          name.isNotEmpty ? name : '—',
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: _Subtitle(
          bankName: bankName,
          maskedAccount: masked,
          disbursalMode: disbursalMode,
        ),
        trailing: _Trailing(
          countryCode: countryCode,
          currencyCode: currencyCode,
          onMoreTap: onMoreTap,
        ),
      ),
    );
  }
}

// ─── Leading widgets ──────────────────────────────────────────────────────────

class _RadioIndicator extends StatelessWidget {
  final bool isSelected;

  const _RadioIndicator({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final appColors = context.appColors;
    return Container(
      width: 18.w,
      height: 18.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? cs.tertiary : appColors.muted,
          width: 2,
        ),
      ),
      child: Center(
        child: Container(
          width: 10.w,
          height: 10.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? cs.tertiary : Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class _InitialsAvatar extends StatelessWidget {
  final String initial;

  const _InitialsAvatar({required this.initial});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    return Container(
      width: 36.w,
      height: 36.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: cs.secondary,
        border: Border.all(color: cs.outline, width: 1.w),
      ),
      child: Center(
        child: Text(
          initial,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// ─── Subtitle ─────────────────────────────────────────────────────────────────

class _Subtitle extends StatelessWidget {
  final String? bankName;
  final String maskedAccount;
  final String? disbursalMode;

  const _Subtitle({
    required this.bankName,
    required this.maskedAccount,
    required this.disbursalMode,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodySmall?.copyWith(
      fontWeight: FontWeight.w500,
      color: context.appColors.muted,
    );

    final lines = <String>[
      if ((bankName ?? '').isNotEmpty) bankName!,
      if (maskedAccount.isNotEmpty) maskedAccount,
      if ((disbursalMode ?? '').isNotEmpty) disbursalMode!,
    ];

    if (lines.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: lines
            .map((l) => Text(l, style: style, overflow: TextOverflow.ellipsis))
            .toList(),
      ),
    );
  }
}

// ─── Trailing ─────────────────────────────────────────────────────────────────

class _Trailing extends StatelessWidget {
  final String? countryCode;
  final String? currencyCode;
  final VoidCallback? onMoreTap;

  const _Trailing({
    required this.countryCode,
    required this.currencyCode,
    required this.onMoreTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSvg(
          asset: AppGlobal.getFlagAsset(countryCode),
          width: 22.w,
          height: 16.w,
        ),
        SizedBox(width: 6.w),
        if ((currencyCode ?? '').isNotEmpty)
          SizedBox(
            width: 32.w,
            child: Text(
              currencyCode!,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        if (onMoreTap != null)
          IconButton(
            onPressed: onMoreTap,
            icon: Icon(Icons.more_vert_rounded, color: cs.onSurface),
            padding: EdgeInsets.all(4.w),
            style: IconButton.styleFrom(
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
      ],
    );
  }
}
