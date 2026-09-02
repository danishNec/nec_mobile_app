import 'package:dartz/dartz.dart';

import 'notification_dto.dart';
import 'notification_failure.dart';

abstract class INotificationFacade {
  Future<Either<NotificationFailure, NotificationDto>> getNotifications({
    required int pageIndex,
  });
}
