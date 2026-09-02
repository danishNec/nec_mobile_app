import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_theme_ext.dart';

/// Standardized size variants for [AppProgressIndicator].
enum AppIndicatorSize {
  /// 16 × 16 dp — use inside dense rows, chips, or small trailing areas.
  small,

  /// 24 × 24 dp — use inside list tiles, cards, or dialog buttons.
  medium,

  /// 36 × 36 dp — use as a page-level or section-level loader.
  large,
}

/// App-wide spinner that replaces bare [CircularProgressIndicator].
///
/// Defaults to the brand accent color ([ColorScheme.tertiary]) and
/// [AppIndicatorSize.medium]. Pass [color] to override for error / warning
/// contexts.
///
/// ```dart
/// // Page-level loader
/// const Center(child: AppProgressIndicator(size: AppIndicatorSize.large))
///
/// // Inside a list tile suffix
/// const AppProgressIndicator(size: AppIndicatorSize.small)
///
/// // Error-tinted spinner
/// AppProgressIndicator(color: context.appColors.errorDark)
/// ```
class AppProgressIndicator extends StatelessWidget {
  final AppIndicatorSize size;
  final Color? color;

  const AppProgressIndicator({
    super.key,
    this.size = AppIndicatorSize.medium,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final (dimension, strokeWidth) = switch (size) {
      AppIndicatorSize.small => (16.0, 1.5),
      AppIndicatorSize.medium => (24.0, 2.0),
      AppIndicatorSize.large => (36.0, 3.0),
    };

    return SizedBox.square(
      dimension: dimension.w,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        strokeCap: StrokeCap.round,
        color: color ?? context.colorScheme.tertiary,
      ),
    );
  }
}