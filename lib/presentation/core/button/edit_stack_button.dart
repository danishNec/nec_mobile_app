import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EditStackButton extends StatelessWidget {
  final void Function()? onEditTap;
  const EditStackButton({super.key, this.onEditTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Positioned.directional(
      textDirection: Directionality.of(context),
      top: -5.h,
      end: -5.w,
      child: GestureDetector(
        onTap: onEditTap,
        child: Container(
          width: 40.w,
          height: 40.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: colorScheme.secondary,
            border: Border.all(color: colorScheme.outline, width: 0.5.w),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(Icons.edit, size: 18.w, color: colorScheme.tertiary),
        ),
      ),
    );
  }
}
