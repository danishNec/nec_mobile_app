import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../theme/app_theme_ext.dart';

class AppShimmer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final Widget? child;

  const AppShimmer({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.borderRadius,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.colorScheme;
    final radius = borderRadius ?? BorderRadius.circular(8.r);

    return Shimmer.fromColors(
      baseColor: cs.secondary.withAlpha(160),
      highlightColor: cs.outline.withAlpha(80),
      child: Container(
        width: width?.w,
        height: child == null ? (height ?? 16).h : null,
        margin: margin,
        decoration: BoxDecoration(
          color: context.appColors.muted,
          borderRadius: radius,
        ),
        child: child != null
            ? ClipRRect(borderRadius: radius, child: child)
            : null,
      ),
    );
  }
}
