import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/summary/summary_bloc.dart';
import '../../../domain/common/common_selectable_dto.dart';
import '../../core/button/edit_stack_button.dart';
import '../../core/shimmer/app_shimmer.dart';
import '../../core/text_form_field/app_text_form_field.dart';
import '../../routes/app_routes.gr.dart';
import 'summary_section_error_view.dart';

class SummaryPaymentMethodView extends StatelessWidget {
  final SummaryState state;
  final TextEditingController controller;
  const SummaryPaymentMethodView({
    super.key,
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'summary.paymentMethod.title'.tr(),
          style: theme.textTheme.titleSmall?.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10.h),
        state.summaryPaymentMethodFailureOrSuccessOption.fold(
          // none() → still loading
          () => AppShimmer(
            height: 56.h,
            width: double.infinity,
            borderRadius: BorderRadius.circular(12.r),
          ),
          (either) => either.fold(
            // Left → section error with retry; page stays usable
            (failure) => SummarySectionErrorView(
              message: 'errors.networkError'.tr(),
              onRetry: () => context.read<SummaryBloc>().add(
                const SummaryEvent.retryPaymentMethod(),
              ),
            ),
            // Right → render selector
            (_) => Stack(
              clipBehavior: Clip.none,
              children: [
                AppTextFormField(
                  controller: controller,
                  isLabelVisible: false,
                  labelText: 'summary.paymentMethod.label'.tr(),
                  hintText: 'summary.paymentMethod.placeholder'.tr(),
                  readOnly: true,
                  showCursor: false,
                ),
                EditStackButton(
                  onEditTap: () {
                    final list =
                        state.summaryPaymentMethodDto?.data?.paymentModes ?? [];
                    if (list.isEmpty) return;
                    context.router.push(
                      AppSelectableRoute(
                        title: 'summary.paymentMethod.label'.tr(),
                        initialSelectedItem: state.selectedPaymentMethodItem,
                        commonSelectableDto: CommonSelectableDto(
                          data: CommonSelectableData(
                            list: list
                                .map(
                                  (e) => CommonSelectableItem(
                                    titleName: (e.name ?? '').toUpperCase(),
                                    titleCode: e.code,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        onSelected: (value) =>
                            context.read<SummaryBloc>().add(
                          SummaryEvent.paymentMethodChanged(value),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}