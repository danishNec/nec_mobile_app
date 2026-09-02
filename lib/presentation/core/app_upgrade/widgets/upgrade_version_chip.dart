import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Displays the current → latest version transition in a pill chip.
class UpgradeVersionChip extends StatelessWidget {
  final String currentVersion;
  final String latestVersion;

  const UpgradeVersionChip({
    super.key,
    required this.currentVersion,
    required this.latestVersion,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: cs.secondaryContainer,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: cs.onPrimary.withAlpha(30), width: 0.5.w),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _VersionLabel(version: currentVersion, color: cs.onSurfaceVariant),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Icon(
              Icons.arrow_forward_rounded,
              size: 13.w,
              color: cs.tertiary,
            ),
          ),
          _VersionLabel(version: latestVersion, color: cs.tertiary),
        ],
      ),
    );
  }
}

class _VersionLabel extends StatelessWidget {
  final String version;
  final Color color;

  const _VersionLabel({required this.version, required this.color});

  @override
  Widget build(BuildContext context) => Text(
        'v$version',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              color: color,
              letterSpacing: 0.5,
            ),
      );
}