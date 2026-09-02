import 'package:flutter/material.dart';

import '../../../application/home/home_bloc.dart';
import '../../core/send_money_card/widgets/app_payment_details_view.dart';

class HomePaymentDetailsView extends StatelessWidget {
  final HomeState state;

  const HomePaymentDetailsView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return AppPaymentDetailsView(
      dto: state.commonSendMoneyDto,
      isCalculating:
          state.isSourceAmountCalculating ||
          state.isDestinationAmountCalculating ||
          state.isRateLoading,
      srcCode:
          state.selectedCommonSourceItem?.trailingCode?.toUpperCase() ?? '',
      dstCode:
          state.selectedCommonDestinationItem?.trailingCode?.toUpperCase() ??
          '',
    );
  }
}
