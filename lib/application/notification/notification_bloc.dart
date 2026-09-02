import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/notification/i_notification_facade.dart';
import '../../domain/notification/notification_dto.dart';
import '../../domain/notification/notification_failure.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationFacade _notificationFacade;
  NotificationBloc(this._notificationFacade)
    : super(NotificationState.initial()) {
    on<_GetNotifications>(_onGetNotifications);
  }

  FutureOr<void> _onGetNotifications(
    _GetNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    final isLoadMore = event.isLoadMore ?? false;

    // Only block pagination once the last page is exhausted.
    // A fresh fetch (isLoadMore == false) must always proceed.
    if (isLoadMore && state.hasReachedMax) return;

    if (isLoadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(
        state.copyWith(
          isLoading: true,
          hasReachedMax: false,
          notificationSuccessOrFailureOption: none(),
          pageIndex: 1,
          notificationDto: state.notificationDto?.copyWith(
            data: state.notificationDto?.data?.copyWith(notificationList: []),
          ),
        ),
      );
    }

    final page = isLoadMore ? state.pageIndex + 1 : 1;

    final failureOrNotifications = await _notificationFacade.getNotifications(
      pageIndex: page,
    );

    failureOrNotifications.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          notificationSuccessOrFailureOption: some(left(failure)),
        ),
      ),
      (dto) {
        final newList = dto.data?.notificationList ?? [];

        emit(
          state.copyWith(
            isLoading: false,
            isLoadingMore: false,
            pageIndex: page,
            hasReachedMax: newList.isEmpty,
            notificationDto: isLoadMore
                ? state.notificationDto?.copyWith(
                    data: state.notificationDto?.data?.copyWith(
                      notificationList: [
                        ...?state.notificationDto?.data?.notificationList,
                        ...newList,
                      ],
                    ),
                  )
                : dto,
            notificationSuccessOrFailureOption: some(right(dto)),
          ),
        );
      },
    );
  }
}
