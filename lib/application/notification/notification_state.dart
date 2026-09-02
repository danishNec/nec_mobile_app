part of 'notification_bloc.dart';

@freezed
sealed class NotificationState with _$NotificationState {
  const factory NotificationState({
    required bool isLoading,
    required bool isLoadingMore,
    required int pageIndex,
    required bool hasReachedMax,
    NotificationDto? notificationDto,
    required Option<Either<NotificationFailure, NotificationDto>>
    notificationSuccessOrFailureOption,
  }) = _NotificationState;

  factory NotificationState.initial() => NotificationState(
    isLoading: false,
    isLoadingMore: false,
    pageIndex: 1,
    hasReachedMax: false,
    notificationSuccessOrFailureOption: none(),
  );
}
