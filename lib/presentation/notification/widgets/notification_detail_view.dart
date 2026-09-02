import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/notification/notification_dto.dart';
import '../../core/app_bar/app_app_bar.dart';
import '../../core/colors/app_colors.dart';
import '../../core/helper/app_date_formatter_helper.dart';
import '../../core/scaffold/app_scaffold.dart';

@RoutePage()
class NotificationDetailView extends HookWidget {
  final NotificationList? notification;

  const NotificationDetailView({super.key, this.notification});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final animController = useAnimationController(
      duration: const Duration(milliseconds: 480),
    );

    useEffect(() {
      animController.forward();
      return null;
    }, const []);

    final fade = CurvedAnimation(
      parent: animController,
      curve: const Interval(0.0, 0.75, curve: Curves.easeOut),
    );
    final slide = Tween<Offset>(
      begin: const Offset(0, 0.07),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animController,
        curve: const Interval(0.0, 0.85, curve: Curves.easeOutCubic),
      ),
    );
    final iconScale = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(
        parent: animController,
        curve: const Interval(0.1, 0.65, curve: Curves.easeOutBack),
      ),
    );
    final contentFade = CurvedAnimation(
      parent: animController,
      curve: const Interval(0.3, 1.0, curve: Curves.easeOut),
    );

    final title = notification?.title ?? '';
    final message = notification?.message ?? '';
    final dateTime = AppDateFormatterHelper.format(
      notification?.createdOn,
      outputFormat: AppDateFormatterHelper.bankingDateTime,
    );

    return AppScaffold(
      appBar: AppAppBar(title: 'notifications.appBarTitle'.tr()),
      body: FadeTransition(
        opacity: fade,
        child: SlideTransition(
          position: slide,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon header
                Center(
                  child: ScaleTransition(
                    scale: iconScale,
                    child: Container(
                      width: 68.w,
                      height: 68.w,
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: colorScheme.primary,
                        size: 34.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                // Main content card
                FadeTransition(
                  opacity: contentFade,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                        color: colorScheme.scrim,
                        width: 0.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.scrim.withAlpha(40),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title section
                        Padding(
                          padding: EdgeInsets.fromLTRB(18.w, 18.h, 18.w, 14.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 4.w,
                                height: 20.h,
                                margin: EdgeInsets.only(top: 1.h),
                                decoration: BoxDecoration(
                                  color: colorScheme.primary,
                                  borderRadius: BorderRadius.circular(2.r),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  title,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontSize: 16.sp,
                                    color: colorScheme.onTertiary,
                                    fontWeight: FontWeight.w700,
                                    height: 1.35,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: colorScheme.scrim.withAlpha(80),
                        ),
                        // Message body
                        Padding(
                          padding: EdgeInsets.fromLTRB(18.w, 18.h, 18.w, 18.h),
                          child: Text(
                            message,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontSize: 14.sp,
                              color: colorScheme.onPrimary.withAlpha(195),
                              fontWeight: FontWeight.w400,
                              height: 1.65,
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: colorScheme.scrim.withAlpha(80),
                        ),
                        // Date footer
                        Padding(
                          padding: EdgeInsets.fromLTRB(18.w, 12.h, 18.w, 14.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time_rounded,
                                size: 13.w,
                                color: colorScheme.onSecondary,
                              ),
                              SizedBox(width: 6.w),
                              Expanded(
                                child: Text(
                                  dateTime,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 12.sp,
                                    color: colorScheme.onSecondary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
