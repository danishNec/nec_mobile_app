import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum SideWidgetPosition { left, right }

class AppButton extends HookWidget {
  final String text;
  final Widget? sideWidget;
  final SideWidgetPosition sideWidgetPosition;
  final bool useSpaceBetween;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final bool isLoading;
  final bool showAcknowledgement;
  final ValueChanged<bool>? onAcknowledgementChanged;
  final Border? border;
  final VoidCallback? onPolicyTap;

  const AppButton({
    super.key,
    required this.text,
    this.sideWidget,
    this.sideWidgetPosition = SideWidgetPosition.left,
    this.useSpaceBetween = false,
    this.onTap,
    this.width,
    this.height,
    this.textStyle,
    this.backgroundColor,
    this.isLoading = false,
    this.showAcknowledgement = false,
    this.onAcknowledgementChanged,
    this.onPolicyTap,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final isAcknowledged = useState(false);

    final policyRecognizer = useMemoized(() => TapGestureRecognizer());

    useEffect(() {
      policyRecognizer.onTap = onPolicyTap;
      return policyRecognizer.dispose;
    }, [onPolicyTap]);

    final baseTextStyle = theme.textTheme.bodySmall?.copyWith(
      color: colorScheme.onSurface,
    );

    final linkStyle = baseTextStyle?.copyWith(
      color: colorScheme.onSecondary,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showAcknowledgement) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: isAcknowledged.value,
                onChanged: isLoading
                    ? null
                    : (value) {
                  if (value != null) {
                    isAcknowledged.value = value;
                    onAcknowledgementChanged?.call(value);
                  }
                },
                visualDensity: VisualDensity.compact,
                checkColor: colorScheme.onTertiary,
                activeColor: colorScheme.tertiary,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: BorderSide(color: colorScheme.onSurface, width: 1.5.w),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: RichText(
                    text: TextSpan(
                      style: baseTextStyle,
                      children: [
                        const TextSpan(text: 'I have read and accept the '),
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: linkStyle,
                          recognizer: policyRecognizer,
                        ),
                        const TextSpan(text: ', '),
                        TextSpan(
                          text: 'Key Facts Statement',
                          style: linkStyle,
                          recognizer: policyRecognizer,
                        ),
                        const TextSpan(text: ', and '),
                        TextSpan(
                          text: 'Data Privacy Policy',
                          style: linkStyle,
                          recognizer: policyRecognizer,
                        ),
                        const TextSpan(text: '.'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
        ],
        GestureDetector(
          onTap: isLoading || (showAcknowledgement && !isAcknowledged.value)
              ? null
              : onTap,
          behavior: HitTestBehavior.opaque,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            width: width ?? 1.sw,
            height: height ?? 55.w,
            decoration: BoxDecoration(
              color: (showAcknowledgement && !isAcknowledged.value)
                  ? colorScheme.onSurface.withAlpha(100)
                  : backgroundColor ?? colorScheme.tertiary,
              borderRadius: BorderRadius.circular(8.r),
              border: border,
            ),
            child: Center(
              child: isLoading
                  ? CupertinoActivityIndicator(
                radius: 12.r,
                color: colorScheme.surface,
              )
                  : Row(
                mainAxisSize: useSpaceBetween
                    ? MainAxisSize.max
                    : MainAxisSize.min,
                mainAxisAlignment: useSpaceBetween
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                children: [
                  if (sideWidget != null &&
                      sideWidgetPosition == SideWidgetPosition.left) ...[
                    sideWidget!,
                    if (!useSpaceBetween) SizedBox(width: 8.w),
                  ],
                  Flexible(
                    child: Text(
                      text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                      textStyle ??
                          theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: colorScheme.primary,
                          ),
                    ),
                  ),
                  if (sideWidget != null &&
                      sideWidgetPosition == SideWidgetPosition.right) ...[
                    if (!useSpaceBetween) SizedBox(width: 8.w),
                    sideWidget!,
                  ],
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
