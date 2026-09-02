import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nec_mobile_app/domain/summary/summary_failure.dart';

import '../../application/summary/summary_bloc.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/button/app_slide_button.dart';
import '../core/extension/common_send_money_dto_extentions.dart';
import '../core/notify/app_notify.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/send_money_card/widgets/app_payment_details_view.dart';
import '../core/stepper/app_stepper.dart';
import '../routes/app_routes.gr.dart';
import 'widgets/summary_beneficiary_details_view.dart';
import 'widgets/summary_payment_method_view.dart';
import 'widgets/summary_transfer_details_view.dart';

@RoutePage()
class SummaryPage extends HookWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sourceAmountFocusNode = useFocusNode();
    final destinationAmountFocusNode = useFocusNode();
    final sourceAmountController = useTextEditingController();
    final destinationAmountController = useTextEditingController();
    final paymentMethodController = useTextEditingController();

    useEffect(() {
      final summaryBloc = context.read<SummaryBloc>();
      final useDestination =
          !summaryBloc.state.isLastInputSource &&
          summaryBloc.state.lastRawDestinationAmount.isNotEmpty;
      if (useDestination) {
        destinationAmountController.text =
            summaryBloc.state.lastRawDestinationAmount;
      } else {
        sourceAmountController.text = summaryBloc.state.lastRawSourceAmount;
      }
      return null;
    }, const []);

    return BlocConsumer<SummaryBloc, SummaryState>(
      listenWhen: (previous, current) =>
          previous.summaryCalculatedSourceAmountFailureOrSuccessOption !=
              current.summaryCalculatedSourceAmountFailureOrSuccessOption ||
          previous.summaryCalculatedDestinationAmountFailureOrSuccessOption !=
              current
                  .summaryCalculatedDestinationAmountFailureOrSuccessOption ||
          previous.selectedPaymentMethodItem !=
              current.selectedPaymentMethodItem ||
          previous.summaryTemporarySessionFailureOrSuccessOption !=
              current.summaryTemporarySessionFailureOrSuccessOption,
      listener: (context, state) {
        state.summaryCalculatedSourceAmountFailureOrSuccessOption.fold(() {}, (
          either,
        ) {
          either.fold((_) => destinationAmountController.text = '', (success) {
            if (destinationAmountFocusNode.hasFocus) return;
            if (state.commonSendMoneyDto.destinationAmount == 0.0) {
              destinationAmountController.text = '';
              return;
            }
            destinationAmountController.text =
                state.commonSendMoneyDto.formattedDestinationAmount;
          });
        });

        state.summaryCalculatedDestinationAmountFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold((_) => sourceAmountController.text = '', (success) {
              if (sourceAmountFocusNode.hasFocus) return;
              if (state.commonSendMoneyDto.sourceAmount == 0.0) {
                sourceAmountController.text = '';
                return;
              }
              sourceAmountController.text =
                  state.commonSendMoneyDto.formattedSourceAmount;
            });
          },
        );
        paymentMethodController.text =
            state.selectedPaymentMethodItem?.titleName ?? '';

        state.summaryTemporarySessionFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              final msg = failure.maybeMap(
                unableToCreateTemporarySession: (value) => value.message,
                orElse: () => 'errors.orElse'.tr(),
              );
              AppNotify.toast(
                msg,
                type: AppToastType.error,
                position: AppToastPosition.top,
              );
            },
            (dto) {
              context.router.push(
                SummaryPaymentWebView(summaryTemporarySessionDto: dto),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        final isCalculating =
            state.isSourceAmountCalculating ||
            state.isDestinationAmountCalculating ||
            state.isRateLoading;

        final canConfirm =
            state.summaryBeneficiaryByIdDto != null &&
            (state.commonSendMoneyDto.sourceAmount ?? 0) > 0 &&
            state.selectedPaymentMethodItem != null &&
            !isCalculating &&
            !state.isSubmitting;

        String validationMessage() {
          if (state.summaryBeneficiaryByIdDto == null) {
            return 'validation.summary.beneficiaryNotReady'.tr();
          }
          if ((state.commonSendMoneyDto.sourceAmount ?? 0) == 0) {
            return 'validation.summary.amountRequired'.tr();
          }
          if (state.selectedPaymentMethodItem == null) {
            return 'validation.summary.paymentMethodRequired'.tr();
          }
          return 'errors.unknownError'.tr();
        }

        return AppScaffold(
          isLoading: state.isSubmitting,
          appBar: AppAppBar(title: 'summary.title'.tr()),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      AppStepper(
                        steps: [
                          'core.stepper.step1'.tr(),
                          'core.stepper.step2'.tr(),
                          'core.stepper.step3'.tr(),
                        ],
                        currentStep: 2,
                      ),
                      SizedBox(height: 15.h),
                      SummaryBeneficiaryDetailsView(state: state),
                      SizedBox(height: 15.h),
                      SummaryTransferDetailsView(
                        state: state,
                        sourceAmountFocusNode: sourceAmountFocusNode,
                        destinationAmountFocusNode: destinationAmountFocusNode,
                        sourceAmountController: sourceAmountController,
                        destinationAmountController:
                            destinationAmountController,
                      ),
                      SizedBox(height: 15.h),
                      SummaryPaymentMethodView(
                        state: state,
                        controller: paymentMethodController,
                      ),
                      SizedBox(height: 15.h),
                      AppPaymentDetailsView(
                        dto: state.commonSendMoneyDto,
                        isCalculating: isCalculating,
                        srcCode:
                            state.selectedCommonSourceItem?.trailingCode
                                ?.toUpperCase() ??
                            '',
                        dstCode:
                            state.selectedCommonDestinationItem?.trailingCode
                                ?.toUpperCase() ??
                            '',
                        margin: EdgeInsets.only(top: 12.h),
                      ),
                      SizedBox(height: 15.h),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h),
                child: SafeArea(
                  child: AppSlideButton(
                    showAcknowledgement: true,
                    onTncTap: () {
                      AppNotify.toast(
                        'Coming Soon: Terms and Conditions',
                        type: AppToastType.info,
                        position: AppToastPosition.top,
                      );
                    },
                    amount: state.commonSendMoneyDto.netLcAmount ?? 0.000,
                    canConfirm: canConfirm,
                    onValidationFailed: () => AppNotify.toast(
                      validationMessage(),
                      type: AppToastType.error,
                      position: AppToastPosition.top,
                    ),
                    onConfirm: () {
                      context.read<SummaryBloc>().add(
                        const SummaryEvent.postCreateTemporarySession(),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
