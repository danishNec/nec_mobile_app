import 'package:easy_localization/easy_localization.dart';

import '../../../domain/common/common_send_money_dto.dart';

extension CommonSendMoneyDtoExtensions on CommonSendMoneyDto {
  /// Returns sourceAmount formatted as "1,000.00"
  String get formattedSourceAmount {
    if (sourceAmount == null) return '0.000';
    return NumberFormat('#,##0.000').format(sourceAmount);
  }

  /// Returns destinationAmount formatted as "1,000.00"
  String get formattedDestinationAmount {
    if (destinationAmount == null) return '0.000';
    return NumberFormat('#,##0.000').format(destinationAmount);
  }
}
