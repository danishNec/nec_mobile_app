import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/home/home_bloc.dart';
import '../../../domain/common/common_selectable_dto.dart';
import '../../core/notify/app_notify.dart';
import '../../core/text_form_field/app_text_form_field.dart';
import '../../routes/app_routes.gr.dart';

class HomeTransferTypeView extends StatelessWidget {
  final HomeState state;
  final TextEditingController controller;
  const HomeTransferTypeView({
    super.key,
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ).add(EdgeInsets.only(top: 10.h, bottom: 12.h)),
      child: AppTextFormField(
        controller: controller,
        labelText: 'home.transferType.label'.tr(),
        hintText: 'home.transferType.placeholder'.tr(),
        readOnly: true,
        showCursor: false,
        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded, color: cs.tertiary),
        onTap: () {
          final list = state.homeTransferTypeDto?.data?.transferModeList ?? [];
          if (list.isEmpty) return;
          if (list.length == 1) {
            AppNotify.toast(
              'home.transferType.onlyOneOption'.tr(
                namedArgs: {
                  'transferType': list.first.name ?? '',
                },
              ),
              type: AppToastType.info,
            );
            return;
          }
          context.router.push(
            AppSelectableRoute(
              title: 'home.transferType.label'.tr(),
              initialSelectedItem: state.selectedTransferTypeItem,
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
              onSelected: (value) => context.read<HomeBloc>().add(
                HomeEvent.transferTypeSelected(
                  selectedTransferTypeItem: value,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
