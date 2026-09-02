import 'package:flutter/material.dart';

/// Raw color primitives — internal use by app_theme.dart and app_semantic_colors.dart only.
/// Widgets must NOT import this file. Use context.colorScheme or context.appColors instead.
class AppColors {
  AppColors._();

  // ── Brand Palette ──────────────────────────────────────────────────────────
  static const Color brandBlack    = Color(0xFF000000); // scaffold background
  static const Color brandDark     = Color(0xFF1A1A1A); // cards, sheets
  static const Color brandSurface  = Color(0xFF242424); // inputs, elevated containers
  static const Color brandMid      = Color(0xFF333333); // dividers, outlines
  static const Color brandYellow   = Color(0xFFFFD503); // primary accent / CTA
  static const Color brandWhite    = Color(0xFFFFFFFF); // primary text on dark
  static const Color brandOffWhite = Color(0xFFE0E0E0); // secondary text
  static const Color brandMuted    = Color(0xFF8A8A8A); // muted / placeholder text

  // ── Semantic Status ────────────────────────────────────────────────────────
  static const Color success       = Color(0xFF36B37E);
  static const Color successDark   = Color(0xFF2E7D32);
  static const Color successLight  = Color(0xFF66BB6A);
  static const Color warning       = Color(0xFFFFAB00);
  static const Color warningLight  = Color(0xFFFFCA28);
  static const Color info          = Color(0xFF0065FF);
  static const Color infoLight     = Color(0xFF42A5F5);
  static const Color error         = Color(0xFFCF6679);
  static const Color errorDark     = Color(0xFFC62828);
  static const Color errorLight    = Color(0xFFEF5350);
}
