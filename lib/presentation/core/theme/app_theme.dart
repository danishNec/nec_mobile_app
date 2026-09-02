import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';
import 'app_semantic_colors.dart';

enum AppTheme { custom }

final appThemeData = {
  // ── Premium dark theme (active) ───────────────────────────────────────────
  AppTheme.custom: ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.brandBlack,
    extensions: const [
      AppSemanticColors.dark,
      AppGradient(
        background: LinearGradient(
          colors: [AppColors.brandBlack, AppColors.brandDark],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
    ],
    colorScheme: const ColorScheme.dark(
      primary: AppColors.brandBlack,
      onPrimary: AppColors.brandWhite,
      primaryContainer: AppColors.brandMid,
      onPrimaryContainer: AppColors.brandWhite,
      secondary: AppColors.brandDark,
      onSecondary: AppColors.brandWhite,
      secondaryContainer: AppColors.brandSurface,
      onSecondaryContainer: AppColors.brandWhite,
      tertiary: AppColors.brandYellow,
      onTertiary: AppColors.brandBlack,
      surface: AppColors.brandDark,
      onSurface: AppColors.brandWhite,
      surfaceContainerHighest: AppColors.brandSurface,
      error: AppColors.error,
      onError: AppColors.brandWhite,
      outline: AppColors.brandMid,
      outlineVariant: AppColors.brandMid,
      onSurfaceVariant: AppColors.brandMuted,
      inverseSurface: AppColors.brandWhite,
      onInverseSurface: AppColors.brandBlack,
      shadow: Color(0x33000000),
      scrim: Color(0x80000000),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.brandDark,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: AppColors.brandWhite),
      titleTextStyle: TextStyle(
        color: AppColors.brandWhite,
        fontFamily: 'Inter',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
      ),
    ),
    cardTheme: const CardThemeData(
      color: AppColors.brandDark,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(color: AppColors.brandMid, width: 0.5),
      ),
    ),
    dividerColor: AppColors.brandMid,
    dividerTheme: const DividerThemeData(
      color: AppColors.brandMid,
      thickness: 0.5,
    ),
    shadowColor: Color(0x33000000),
    hintColor: AppColors.brandMuted,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.brandWhite,
        letterSpacing: -0.5,
      ),
      displayMedium: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.brandWhite,
      ),
      displaySmall: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.brandWhite,
      ),
      headlineLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.brandWhite,
      ),
      headlineMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.brandWhite,
      ),
      headlineSmall: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.brandWhite,
      ),
      titleLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.brandWhite,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.brandWhite,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.brandWhite,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.brandWhite,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.brandOffWhite,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.brandMuted,
      ),
      labelLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.brandWhite,
      ),
      labelMedium: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.brandOffWhite,
      ),
      labelSmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.brandMuted,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconSize: WidgetStateProperty.all(24.sp),
        iconColor: WidgetStateProperty.all(AppColors.brandWhite),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) return AppColors.brandMid;
          return AppColors.brandYellow;
        }),
        foregroundColor: WidgetStateProperty.all(AppColors.brandBlack),
        overlayColor: WidgetStateProperty.all(
          AppColors.brandBlack.withValues(alpha: 0.08),
        ),
        textStyle: WidgetStateProperty.all(
          TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        ),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppColors.brandYellow),
        side: WidgetStateProperty.all(
          const BorderSide(color: AppColors.brandYellow, width: 1),
        ),
        textStyle: WidgetStateProperty.all(
          TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppColors.brandYellow),
        textStyle: WidgetStateProperty.all(
          TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.brandYellow;
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(AppColors.brandBlack),
      side: const BorderSide(color: AppColors.brandMid, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.brandBlack;
        return AppColors.brandMuted;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.brandYellow;
        return AppColors.brandMid;
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.brandSurface,
      contentPadding: EdgeInsets.all(16.h),
      hintStyle: TextStyle(
        color: AppColors.brandMuted,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      errorStyle: TextStyle(color: AppColors.error, fontSize: 12.sp),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: AppColors.brandMid, width: 0.5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: AppColors.brandYellow, width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: AppColors.brandMid, width: 0.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: AppColors.error, width: 0.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: AppColors.error, width: 0.5),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.brandYellow,
      selectionColor: Color(0x33FFD503),
      selectionHandleColor: AppColors.brandYellow,
    ),
    tabBarTheme: TabBarThemeData(
      indicatorColor: AppColors.brandYellow,
      labelColor: AppColors.brandYellow,
      unselectedLabelColor: AppColors.brandMuted,
      dividerColor: AppColors.brandMid,
      labelStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.brandDark,
      selectedItemColor: AppColors.brandYellow,
      unselectedItemColor: AppColors.brandMuted,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 11.sp,
      ),
      unselectedLabelStyle: TextStyle(fontSize: 10.sp),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.brandYellow,
      linearTrackColor: AppColors.brandMid,
      circularTrackColor: AppColors.brandMid,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: AppColors.brandYellow,
      inactiveTrackColor: AppColors.brandMid,
      thumbColor: AppColors.brandYellow,
      overlayColor: Color(0x33FFD503),
    ),
  ),
};

// ── Theme extensions ──────────────────────────────────────────────────────────

@immutable
class AppGradient extends ThemeExtension<AppGradient> {
  final Gradient background;

  const AppGradient({required this.background});

  @override
  AppGradient copyWith({Gradient? background}) =>
      AppGradient(background: background ?? this.background);

  @override
  AppGradient lerp(ThemeExtension<AppGradient>? other, double t) {
    if (other is! AppGradient) return this;
    return AppGradient(
      background: Gradient.lerp(background, other.background, t)!,
    );
  }
}
