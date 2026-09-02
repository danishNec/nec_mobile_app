import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_bar/app_app_bar.dart';
import '../button/app_button.dart';
import '../scaffold/app_scaffold.dart';
import '../text_form_field/app_text_form_field.dart';

class AppUpdateEmailPage extends StatelessWidget {
  final String? title;
  final String? description;
  final AutovalidateMode autovalidateMode;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String currentEmailAddress;
  final bool isLoading;
  const AppUpdateEmailPage({
    super.key,
    this.title,
    this.description,
    required this.autovalidateMode,
    this.validator,
    this.onChanged,
    this.onTap,
    required this.currentEmailAddress,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return AppScaffold(
      onTapOutside: () => FocusScope.of(context).unfocus(),
      appBar: AppAppBar(title: title ?? 'core.updateEmail.title'.tr()),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Form(
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const _AnimatedEmailIcon(),
              SizedBox(height: 24.h),
              Text(
                description ?? 'core.updateEmail.description'.tr(),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: 20.h),
              AppTextFormField(
                validator: validator,
                onChanged: onChanged,
                initialValue: currentEmailAddress,
                autofocus: true,
                labelText: 'core.updateEmail.emailField.label'.tr(),
                hintText: 'core.updateEmail.emailField.hint'.tr(),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.h),
              AppButton(
                onTap: onTap,
                sideWidget: Icon(
                  Icons.arrow_forward,
                  color: colorScheme.surface,
                  size: 16.w,
                ),
                isLoading: isLoading,
                sideWidgetPosition: SideWidgetPosition.right,
                useSpaceBetween: true,
                text: 'buttons.next'.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Animated email icon ───────────────────────────────────────────────────────

class _AnimatedEmailIcon extends HookWidget {
  const _AnimatedEmailIcon();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final mountCtrl = useAnimationController(
      duration: const Duration(milliseconds: 750),
    );
    final floatCtrl = useAnimationController(
      duration: const Duration(milliseconds: 2200),
    );
    final pulseCtrl = useAnimationController(
      duration: const Duration(milliseconds: 1500),
    );

    useEffect(() {
      mountCtrl.forward();
      floatCtrl.repeat(reverse: true);
      pulseCtrl.repeat(reverse: true);
      return null;
    }, const []);

    final mountAnim = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: mountCtrl, curve: Curves.elasticOut),
      ),
      const [],
    );
    final floatAnim = useMemoized(
      () => Tween<double>(begin: -6.0, end: 6.0).animate(
        CurvedAnimation(parent: floatCtrl, curve: Curves.easeInOut),
      ),
      const [],
    );
    final pulseAnim = useMemoized(
      () => Tween<double>(begin: 0.82, end: 1.0).animate(
        CurvedAnimation(parent: pulseCtrl, curve: Curves.easeInOut),
      ),
      const [],
    );

    return ScaleTransition(
      scale: mountAnim,
      child: AnimatedBuilder(
        animation: Listenable.merge([floatCtrl, pulseCtrl]),
        builder: (_, child) => Transform.translate(
          offset: Offset(0, floatAnim.value),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Outer pulsing ring
              Transform.scale(
                scale: pulseAnim.value,
                child: Container(
                  width: 120.w,
                  height: 120.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: colorScheme.tertiary.withValues(alpha: 0.12),
                      width: 1.5.w,
                    ),
                  ),
                ),
              ),
              // Middle ring (static)
              Container(
                width: 104.w,
                height: 104.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primary.withValues(alpha: 0.10),
                  border: Border.all(
                    color: colorScheme.tertiary.withValues(alpha: 0.20),
                    width: 1.w,
                  ),
                ),
              ),
              // Icon container
              Container(
                width: 84.w,
                height: 84.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primary.withValues(alpha: 0.18),
                  border: Border.all(
                    color: colorScheme.tertiary.withValues(alpha: 0.35),
                    width: 1.5.w,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.mark_email_unread_rounded,
                    size: 38.sp,
                    color: colorScheme.tertiary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
