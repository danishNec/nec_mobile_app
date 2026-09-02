import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Gap typography tokens not covered by the standard Material [TextTheme].
///
/// Access via [BuildContext.typography] (defined in app_theme_ext.dart):
///   context.typography.secondary        — 13sp w400  secondary body content
///   context.typography.secondaryMedium  — 13sp w500  secondary emphasized
///   context.typography.subheading       — 15sp w500  sub-headings / subtitles
///   context.typography.numeric          — 22sp w700  financial amounts
///
/// Colors are intentionally omitted — apply via .copyWith(color: ...) at the
/// call site so styles remain reusable across light and dark themes.
class AppTypographyTokens {
  const AppTypographyTokens._();
  static const instance = AppTypographyTokens._();

  /// Secondary body content — list rows, detail labels, card secondary info.
  TextStyle get secondary =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400);

  /// Secondary emphasized — section labels, field values, chip text.
  TextStyle get secondaryMedium =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500);

  /// Sub-headings sitting between [TextTheme.bodyLarge] and [TextTheme.titleSmall].
  TextStyle get subheading =>
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500);

  /// Financial numeric display — medium transaction amounts.
  TextStyle get numeric =>
      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700);
}