import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_bar/app_app_bar.dart';
import '../scaffold/app_scaffold.dart';
import 'widgets/app_mpin_action_row.dart';
import 'widgets/app_mpin_dots.dart';
import 'widgets/app_mpin_header_text.dart';
import 'widgets/app_mpin_key_pad.dart';
import 'widgets/app_mpin_title_text.dart';

class AppMpin extends HookWidget {
  const AppMpin({
    super.key,
    this.title,
    required this.onMpinCompleted,
    this.onBiometricPressed,
    this.onForgotMpin,
    this.onLoginOrRegister,
    this.isShowingBiometricOption = true,
    this.isShowActionRow = true,
    this.isBiometricAuthenticating = false,
  });

  final String? title;
  final Future<bool> Function(String mpin) onMpinCompleted;
  final VoidCallback? onBiometricPressed;
  final VoidCallback? onForgotMpin;
  final VoidCallback? onLoginOrRegister;
  static const int mpinLength = 6;
  final bool isShowingBiometricOption;
  final bool isShowActionRow;
  final bool isBiometricAuthenticating;

  static const keys = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['face', '0', 'back'],
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final mpin = useState<String>('');
    final isValidating = useState<bool>(false);
    final isError = useState<bool>(false);
    final errorCount = useState<int>(0);

    Future<void> onDigitPressed(String digit) async {
      if (isValidating.value) return;
      if (isError.value) isError.value = false;

      if (mpin.value.length < mpinLength) {
        mpin.value = mpin.value + digit;

        if (mpin.value.length == mpinLength) {
          isValidating.value = true;
          final isValid = await onMpinCompleted(mpin.value);
          if (!context.mounted) return;
          isValidating.value = false;

          if (isValid) {
            mpin.value = '';
            HapticFeedback.mediumImpact();
          } else {
            errorCount.value++;
            isError.value = true;
            HapticFeedback.heavyImpact();
            mpin.value = '';
            Timer(const Duration(milliseconds: 700), () {
              if (context.mounted) isError.value = false;
            });
          }
        }
      }
    }

    void onBackspace() {
      if (isValidating.value || mpin.value.isEmpty) return;
      mpin.value = mpin.value.substring(0, mpin.value.length - 1);
    }

    return AppScaffold(
      isLoading: isBiometricAuthenticating,
      appBar: AppAppBar(
        title: title,
        titleColor: colorScheme.onPrimary,
        backgroundColor: Colors.transparent,
        bottomBorderColor: Colors.transparent,
        foregroundColor: colorScheme.onPrimary,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 12.h),
                    AppMpinHeaderText(theme: theme, colors: colorScheme),
                    SizedBox(height: 6.h),
                    AppMpinTitleText(theme, colorScheme),
                    SizedBox(height: 16.h),

                    AppMpinDots(
                      mpin: mpin.value,
                      theme: theme,
                      colors: colorScheme,
                      errorCount: errorCount.value,
                      isError: isError.value,
                      isSuccess: false,
                      isValidating: isValidating.value,
                    ),

                    if (isShowActionRow)
                      AppMpinActionRow(
                        onLoginOrRegister: onLoginOrRegister,
                        onForgotMpin: onForgotMpin,
                        theme: theme,
                        colors: colorScheme,
                      )
                    else
                      SizedBox(height: 20.h),

                    AbsorbPointer(
                      absorbing: isValidating.value,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: AppMpinKeyPad(
                              onDigitPressed: onDigitPressed,
                              onBackspace: onBackspace,
                              onBiometricPressed: onBiometricPressed,
                              theme: theme,
                              colors: colorScheme,
                              isShowingBiometricOption:
                                  isShowingBiometricOption,
                            ),
                          ),
                          if (isShowingBiometricOption)
                            _BottomBiometricSection(
                              onBiometricPressed: onBiometricPressed,
                              theme: theme,
                              colors: colorScheme,
                            )
                          else
                            SizedBox(height: 16.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BottomBiometricSection extends StatelessWidget {
  final VoidCallback? onBiometricPressed;
  final ThemeData theme;
  final ColorScheme colors;

  const _BottomBiometricSection({
    required this.onBiometricPressed,
    required this.theme,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBiometricPressed,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.only(top: 12.h, bottom: 16.h),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Text(
              'core.mpin.biometricLogin'.tr(),
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: colors.onPrimary,
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              'core.mpin.biometricSubtitle'.tr(),
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 12.sp,
                color: colors.onSurface.withValues(alpha: 0.45),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
