import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final Color? backgroundColor;
  final Color? bottomBorderColor;
  final Color? titleColor;
  final Color? foregroundColor;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;

  const AppAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.backgroundColor,
    this.bottomBorderColor,
    this.titleColor,
    this.foregroundColor,
    this.leading,
    this.actions,
    this.centerTitle = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final appBarTheme = theme.appBarTheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOutCubic,
      color: backgroundColor ?? appBarTheme.backgroundColor,
      child: AppBar(
        centerTitle: centerTitle,
        forceMaterialTransparency: true,
        leadingWidth: 68.w,
        leading: leading,
        title:
            titleWidget ??
            Text(
              title ?? '',
              maxLines: 1,
              style: theme.textTheme.titleLarge?.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
        actions: actions,
        foregroundColor: foregroundColor ?? colorScheme.onPrimary,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: appBarTheme.iconTheme,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: bottomBorderColor ?? colorScheme.outline,
            height: 0.5,
          ),
        ),
      ),
    );
  }
}
