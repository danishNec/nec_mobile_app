part of 'notification_bloc.dart';

@freezed
sealed class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications({
    int? pageIndex,
    bool? isLoadMore,
  }) = _GetNotifications;
}
