import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_bar/app_app_bar.dart';
import '../button/app_button.dart';
import '../global/app_global.dart';
import '../scaffold/app_scaffold.dart';
import '../text_form_field/app_text_form_field.dart';
import 'widgets/app_otp_animation.dart';

class AppOtp extends HookWidget {
  final String? appBarTitle;
  final String? contentTitle;
  final String? contentSubtitle;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTapContinue;
  final VoidCallback? onResend;
  final bool isSubmitting;
  final bool isLoading;
  final int restartTrigger;

  const AppOtp({
    super.key,
    this.appBarTitle,
    this.contentTitle,
    this.contentSubtitle,
    this.autovalidateMode,
    this.validator,
    this.onChanged,
    this.onTapContinue,
    this.onResend,
    this.isSubmitting = false,
    this.isLoading = false,
    this.restartTrigger = 0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AppScaffold(
      isLoading: isLoading,
      onTapOutside: () => FocusScope.of(context).unfocus(),
      backgroundColor: colorScheme.secondary,
      appBar: AppAppBar(
        title: appBarTitle ?? 'core.otp.title'.tr(),
        titleColor: colorScheme.onPrimary,
      ),
      bottomSheet: Material(
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Form(
            autovalidateMode: autovalidateMode,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppOtpAnimation(filledDigits: isSubmitting ? 4 : 0),
                SizedBox(height: 100.h),
                Text(
                  contentTitle ?? '',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onPrimary,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  contentSubtitle ?? 'core.otp.description'.tr(),
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: colorScheme.onPrimary,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 100.h),
                AppTextFormField(
                  validator: validator,
                  onChanged: onChanged,
                  labelText: 'core.otp.verificationCode.label'.tr(),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  autocorrect: false,
                  enableSuggestions: false,
                  enableInteractiveSelection: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                  autofocus: true,
                  onFieldSubmitted: (_) => onTapContinue?.call(),
                  labelStyle: theme.textTheme.titleMedium?.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onPrimary,
                  ),
                ),
                SizedBox(height: 16.h),
                _CountdownRow(
                  restartTrigger: restartTrigger,
                  onResend: onResend,
                ),
                SizedBox(height: 20.h),
                AppButton(
                  text: 'buttons.continue'.tr(),
                  onTap: onTapContinue,
                  isLoading: isSubmitting,
                ),
                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Isolated widget so only the countdown row rebuilds every second,
// not the entire AppOtp tree.
class _CountdownRow extends HookWidget {
  final int restartTrigger;
  final VoidCallback? onResend;

  const _CountdownRow({required this.restartTrigger, this.onResend});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final seconds = useState(59);
    final isResendEnabled = useState(false);
    final timerRef = useRef<Timer?>(null);

    useEffect(() {
      timerRef.value?.cancel();
      seconds.value = 59;
      isResendEnabled.value = false;

      final timer = Timer.periodic(const Duration(seconds: 1), (t) {
        if (seconds.value <= 1) {
          seconds.value = 0;
          isResendEnabled.value = true;
          t.cancel();
        } else {
          seconds.value--;
        }
      });

      timerRef.value = timer;
      return () => timer.cancel();
    }, [restartTrigger]);

    final canResend = isResendEnabled.value && onResend != null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: canResend ? onResend : null,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'core.otp.resendOtp'.tr(),
            style: theme.textTheme.bodyMedium?.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: canResend
                  ? colorScheme.onPrimary
                  : colorScheme.onPrimary.withValues(alpha: 0.39),
            ),
          ),
        ),
        Text(
          AppGlobal.formatTime(seconds.value),
          style: theme.textTheme.bodyMedium?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
