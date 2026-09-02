import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final String? initialValue;
  final String? labelText;
  final TextStyle? labelStyle;
  final bool autofocus;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final bool autocorrect;
  final FocusNode? focusNode;
  final bool enableInteractiveSelection;
  final bool showCursor;
  final bool isLabelVisible;
  final bool? enabled;
  final bool readOnly;
  final TextCapitalization textCapitalization;
  final String? errorText;
  final BoxConstraints? prefixIconConstraints;
  final TextInputAction? textInputAction;
  final bool enableSuggestions;
  final ValueChanged<String>? onFieldSubmitted;
  const AppTextFormField({
    super.key,
    this.controller,
    this.inputFormatters,
    this.onTap,
    this.keyboardType,
    this.initialValue,
    this.labelText,
    this.labelStyle,
    this.autofocus = false,
    this.hintText,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.onChanged,
    this.validator,
    this.autocorrect = true,
    this.focusNode,
    this.enableInteractiveSelection = true,
    this.showCursor = true,
    this.isLabelVisible = true,
    this.enabled,
    this.readOnly = false,
    this.textCapitalization = TextCapitalization.none,
    this.errorText,
    this.prefixIconConstraints,
    this.textInputAction,
    this.enableSuggestions = true,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isLabelVisible) ...[
          Text(
            labelText ?? '',
            style:
                labelStyle ??
                theme.textTheme.titleMedium?.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: colorScheme.onPrimary,
                ),
          ),
          SizedBox(height: 6.h),
        ],
        TextFormField(
          initialValue: initialValue,
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          inputFormatters: inputFormatters,
          cursorColor: colorScheme.tertiary,
          onTap: onTap,
          keyboardType: keyboardType,
          autofocus: autofocus,
          autocorrect: autocorrect,
          focusNode: focusNode,
          showCursor: showCursor,
          enableInteractiveSelection: enableInteractiveSelection,
          enabled: enabled,
          readOnly: readOnly,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          enableSuggestions: enableSuggestions,
          onFieldSubmitted: onFieldSubmitted,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: colorScheme.onPrimary,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefix: prefix,
            prefixIcon: prefixIcon,
            errorText: errorText,
            prefixIconConstraints: prefixIconConstraints,
          ),
        ),
      ],
    );
  }
}
