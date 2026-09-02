import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/home/home_bloc.dart';
import '../../core/send_money_card/app_send_money_card.dart';
import '../../core/theme/app_theme_ext.dart';

class HomeSendMoneyView extends StatelessWidget {
  final HomeState state;
  final FocusNode? sourceAmountFocusNode;
  final FocusNode? destinationAmountFocusNode;
  final TextEditingController? sourceAmountController;
  final TextEditingController? destinationAmountController;
  const HomeSendMoneyView({
    super.key,
    required this.state,
    this.sourceAmountFocusNode,
    this.destinationAmountFocusNode,
    this.sourceAmountController,
    this.destinationAmountController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ).add(EdgeInsets.only(top: 5.h)),
          child: Text(
            'home.sendMoney.title'.tr(),
            style: context.typography.subheading.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ).add(EdgeInsets.only(top: 12.h)),
          child: AppSendMoneyCard(
            isRateLoading: state.isRateLoading,
            isSourceAmountCalculating: state.isSourceAmountCalculating,
            isDestinationAmountCalculating:
                state.isDestinationAmountCalculating,
            commonSourceSelectableDto: state.commonSourceSelectableDto,
            selectedCommonSourceItem: state.selectedCommonSourceItem,
            commonDestinationSelectableDto:
                state.commonDestinationSelectableDto,
            selectedCommonDestinationItem: state.selectedCommonDestinationItem,
            sourceAmountChanged: (p0) => context.read<HomeBloc>().add(
              HomeEvent.sourceAmountChanged(sourceAmount: p0),
            ),
            destinationAmountChanged: (p0) => context.read<HomeBloc>().add(
              HomeEvent.destinationAmountChanged(destinationAmount: p0),
            ),
            sourceAmountFocusNode: sourceAmountFocusNode,
            destinationAmountFocusNode: destinationAmountFocusNode,
            sourceAmountController: sourceAmountController,
            destinationAmountController: destinationAmountController,
            commonSendMoneyDto: state.commonSendMoneyDto,
            onSelectedDestinationCurrency: (p0) => context.read<HomeBloc>().add(
              HomeEvent.destinationCountrySelected(
                selectedCommonDestinationItem: p0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
