import 'package:flutter/material.dart';

import 'app_semantic_colors.dart';
import 'app_theme.dart';
import 'app_typography.dart';

/// BuildContext shortcuts for the theme system.
///
/// Typography:
///   context.textTheme                — full Material TextTheme
///   context.typography.secondary     — 13sp w400  secondary body content
///   context.typography.secondaryMedium — 13sp w500  secondary emphasized
///   context.typography.subheading    — 15sp w500  sub-headings / subtitles
///   context.typography.numeric       — 22sp w700  financial amounts
///
/// Colors:
///   context.colorScheme.tertiary    — brand yellow (CTA / accent)
///   context.colorScheme.onSurface   — primary text
///   context.appColors.success       — semantic status green
///   context.appColors.muted         — muted / hint text
///   context.appColors.onAccent      — text on yellow (always black)
///   context.appGradient?.background — brand gradient (null on light theme)
extension AppThemeExt on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  ThemeData get appTheme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  AppSemanticColors get appColors =>
      Theme.of(this).extension<AppSemanticColors>()!;
  AppGradient? get appGradient =>
      Theme.of(this).extension<AppGradient>();
  AppTypographyTokens get typography => AppTypographyTokens.instance;
}
