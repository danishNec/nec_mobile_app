import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/notification/notification_bloc.dart';
import '../../domain/notification/notification_dto.dart';
import '../../domain/notification/notification_failure.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/app_states/app_state_view.dart';
import '../core/helper/app_date_formatter_helper.dart';
import '../core/notify/app_notify.dart';
import '../core/overlay_loading/app_overlay_loading.dart';
import '../core/scaffold/app_scaffold.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class NotificationPage extends HookWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final isFetching = useRef(false);

    useEffect(() {
      context.read<NotificationBloc>().add(
        const NotificationEvent.getNotifications(),
      );
      return null;
    }, []);

    useEffect(() {
      void listener() {
        final bloc = context.read<NotificationBloc>();
        final state = bloc.state;
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          if (state.isLoadingMore || state.hasReachedMax || isFetching.value) {
            return;
          }
          isFetching.value = true;
          bloc.add(const NotificationEvent.getNotifications(isLoadMore: true));
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    useEffect(() {
      final bloc = context.read<NotificationBloc>();
      final subscription = bloc.stream.listen((state) {
        if (!state.isLoadingMore) isFetching.value = false;
      });
      return subscription.cancel;
    }, []);

    return AppScaffold(
      appBar: AppAppBar(title: 'notifications.title'.tr()),
      body: BlocConsumer<NotificationBloc, NotificationState>(
        listener: (context, state) {
          state.notificationSuccessOrFailureOption.fold(
            () => null,
            (either) => either.fold((failure) {
              HapticFeedback.heavyImpact();
              DialogHelper.show(
                context,
                message: failure.maybeMap(
                  unableToGetNotifications: (_) =>
                      'notifications.errors.unableToGetNotifications'.tr(),
                  serverError: (_) => 'errors.serverError'.tr(),
                  orElse: () => 'errors.orElse'.tr(),
                ),
                type: AppDialogType.warning,
                barrierDismissible: false,
                buttonText: 'buttons.reTry'.tr(),
                onPressed: () {
                  context.router.pop();
                  context.read<NotificationBloc>().add(
                    const NotificationEvent.getNotifications(),
                  );
                },
              );
            }, (_) {}),
          );
        },
        builder: (context, state) {
          if (state.isLoading) return const AppOverlayLoading();

          // If the initial load failed (no data loaded at all), show error page.
          final hadLoadFailure = state.notificationSuccessOrFailureOption.fold(
            () => false,
            (either) => either.isLeft(),
          );
          if (hadLoadFailure && state.notificationDto == null) {
            return AppErrorView(
              onRetry: () => context.read<NotificationBloc>().add(
                const NotificationEvent.getNotifications(),
              ),
            );
          }

          final notifications =
              state.notificationDto?.data?.notificationList ?? [];

          if (notifications.isEmpty) {
            return AppEmptyView(
              icon: Icons.notifications_off_outlined,
              title: 'notifications.noNotifications'.tr(),
              subtitle: 'notifications.noNotificationsSubtitle'.tr(),
            );
          }

          return ListView.separated(
            controller: scrollController,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            itemCount: notifications.length + (state.isLoadingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index >= notifications.length) {
                return const _LoadMoreIndicator();
              }
              final notification = notifications[index];
              return _NotificationCard(
                key: ValueKey(notification.eId ?? index.toString()),
                notification: notification,
                index: index,
                onTap: () => context.router.push(
                  NotificationDetailView(notification: notification),
                ),
              );
            },
            separatorBuilder: (_, _) => SizedBox(height: 12.h),
          );
        },
      ),
    );
  }
}

class _NotificationCard extends HookWidget {
  final NotificationList notification;
  final int index;
  final VoidCallback onTap;

  const _NotificationCard({
    super.key,
    required this.notification,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isPressed = useState(false);

    final animController = useAnimationController(
      duration: const Duration(milliseconds: 380),
    );

    useEffect(() {
      var mounted = true;
      final delay = Duration(milliseconds: min(index, 5) * 70);
      Future.delayed(delay, () {
        if (mounted) animController.forward();
      });
      return () {
        mounted = false;
      };
    }, const []);

    final fade = CurvedAnimation(parent: animController, curve: Curves.easeOut);
    final slide = Tween<Offset>(begin: const Offset(0, 0.12), end: Offset.zero)
        .animate(
          CurvedAnimation(parent: animController, curve: Curves.easeOutCubic),
        );

    final title = notification.title ?? '';
    final message = notification.message ?? '';
    final dateTime = AppDateFormatterHelper.format(
      notification.createdOn,
      outputFormat: AppDateFormatterHelper.bankingDateTime,
    );
    final isUnread = notification.isRead != '1';

    return FadeTransition(
      opacity: fade,
      child: SlideTransition(
        position: slide,
        child: RepaintBoundary(
          child: GestureDetector(
            onTap: onTap,
            onTapDown: (_) => isPressed.value = true,
            onTapUp: (_) => isPressed.value = false,
            onTapCancel: () => isPressed.value = false,
            child: AnimatedScale(
              scale: isPressed.value ? 0.97 : 1.0,
              duration: const Duration(milliseconds: 100),
              child: Container(
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(14.r),
                  border: Border.all(color: colorScheme.scrim, width: 0.5),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withAlpha(15),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 44.w,
                        height: 44.w,
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer.withAlpha(28),
                          borderRadius: BorderRadius.circular(11.r),
                        ),
                        child: Icon(
                          Icons.notifications_outlined,
                          color: colorScheme.primary,
                          size: 22.w,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleSmall?.copyWith(
                                      fontSize: 13.sp,
                                      color: colorScheme.onTertiary,
                                      fontWeight: isUnread
                                          ? FontWeight.w700
                                          : FontWeight.w600,
                                    ),
                                  ),
                                ),
                                if (isUnread) ...[
                                  SizedBox(width: 8.w),
                                  Container(
                                    width: 8.w,
                                    height: 8.w,
                                    decoration: BoxDecoration(
                                      color: colorScheme.primary,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              message,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontSize: 12.5.sp,
                                color: colorScheme.onPrimary.withAlpha(175),
                                fontWeight: FontWeight.w400,
                                height: 1.45,
                              ),
                            ),
                            SizedBox(height: 9.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: 11.w,
                                  color: colorScheme.onSecondary,
                                ),
                                SizedBox(width: 4.w),
                                Expanded(
                                  child: Text(
                                    dateTime,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      fontSize: 11.sp,
                                      color: colorScheme.onSecondary,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Icon(
                          Icons.chevron_right_rounded,
                          size: 18.w,
                          color: colorScheme.onSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80.w,
            height: 80.w,
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withAlpha(55),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.notifications_off_outlined,
              size: 38.w,
              color: colorScheme.onSecondary,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'notifications.noNotifications'.tr(),
            style: theme.textTheme.bodyMedium?.copyWith(
              fontSize: 15.sp,
              color: colorScheme.onSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _LoadMoreIndicator extends StatelessWidget {
  const _LoadMoreIndicator();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Center(
        child: SizedBox(
          width: 22.w,
          height: 22.w,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            color: colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
