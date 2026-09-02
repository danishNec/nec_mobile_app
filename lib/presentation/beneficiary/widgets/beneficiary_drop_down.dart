import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:collection/collection.dart';

import '../../../application/beneficiary/beneficiary_bloc.dart';
import '../../../domain/beneficiary/beneficiary_product_field_settings_dto.dart';
import '../../../domain/common/common_selectable_dto.dart';
import '../../../domain/core/failures.dart';
import '../../core/global/app_global.dart';
import '../../core/text_form_field/app_text_form_field.dart';
import '../../routes/app_routes.gr.dart';
import 'beneficiary_animations.dart';

class BeneficiaryDropdown extends HookWidget {
  final Beneficiary field;
  final BeneficiaryState state;

  const BeneficiaryDropdown({
    super.key,
    required this.field,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final controller = useTextEditingController();

    /// -------------------------------
    /// 1. NORMALIZE SELECTED CODE
    /// -------------------------------
    String selectedCode =
        state.dynamicFieldValues[field.fieldName]?.value.getOrElse(() => '') ??
        '';

    // Fix backend broken format: "179481|065002" → "065002"
    if (field.fieldName?.toLowerCase() ==
        FieldNames.beneficiaryBranchCode.name.toLowerCase()) {
      selectedCode = selectedCode.split('|').last.trim();
    }

    final lowerFieldName = field.fieldName?.toLowerCase() ?? '';
    final isFieldLoading =
        (lowerFieldName == FieldNames.beneficiaryBranchCode.name.toLowerCase() &&
            state.isLoading) ||
        (lowerFieldName == FieldNames.routeCode.name.toLowerCase() &&
            state.isRouteCodeLoading);

    final comboList = AppGlobal.getProductComboList(
      fieldName: field.fieldName,
      comboData: state.commonComboDto,
    );

    /// -------------------------------
    /// 2. SAFE MATCHING
    /// -------------------------------
    final matchedItem = comboList.firstWhereOrNull(
      (item) => (item.code).trim() == selectedCode.trim(),
    );

    final displayName = matchedItem?.name ?? '';

    /// -------------------------------
    /// 3. KEEP CONTROLLER IN SYNC
    /// -------------------------------
    useEffect(() {
      final text = displayName.isNotEmpty ? displayName.toUpperCase() : '';

      if (controller.text != text) {
        controller.text = text;
      }

      return null;
    }, [displayName]);

    /// -------------------------------
    /// 4. VALIDATION FIX (IMPORTANT)
    /// -------------------------------
    final isValueValid = selectedCode.isNotEmpty && matchedItem != null;

    // Branch field requires a bank to be selected first.
    if (lowerFieldName == FieldNames.beneficiaryBranchCode.name.toLowerCase()) {
      final bankCode =
          state.dynamicFieldValues[FieldNames.beneficiaryBankCode.name]
              ?.value
              .getOrElse(() => '') ??
          '';
      if (bankCode.isEmpty) {
        return AppTextFormField(
          controller: TextEditingController(),
          labelText: field.displayFieldName,
          hintText: 'beneficiaries.beneficiaryForm.branchDisabled'.tr(),
          readOnly: true,
          showCursor: false,
          enabled: false,
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: colorScheme.onSurface.withValues(alpha: 0.3),
          ),
        );
      }
    }

    Widget fieldWidget = AppTextFormField(
      controller: controller,
      labelText: field.displayFieldName,
      hintText: 'core.actionTypes.select'.tr(
        namedArgs: {'fieldName': field.displayFieldName ?? ''},
      ),
      readOnly: true,
      showCursor: false,
      suffixIcon: AnimatedDropdownSuffix(
        isLoading: isFieldLoading,
        color: colorScheme.tertiary,
      ),

      /// -------------------------------
      /// FIXED ERROR LOGIC
      /// -------------------------------
      errorText: state.showErrorMessages
          ? (!isValueValid && (field.mandatory ?? false))
                ? 'core.validation.empty'.tr(
                    namedArgs: {'fieldName': field.displayFieldName ?? ''},
                  )
                : state.dynamicFieldValues[field.fieldName]?.value.fold(
                    (failure) => failure.maybeMap(
                      empty: (_) => 'core.validation.empty'.tr(
                        namedArgs: {'fieldName': field.displayFieldName ?? ''},
                      ),
                      tooShort: (_) => 'core.validation.tooShort'.tr(
                        namedArgs: {'fieldName': field.displayFieldName ?? ''},
                      ),
                      tooLong: (_) => 'core.validation.tooLong'.tr(
                        namedArgs: {'fieldName': field.displayFieldName ?? ''},
                      ),
                      invalidFormat: (_) => 'core.validation.invalidFormat'.tr(
                        namedArgs: {'fieldName': field.displayFieldName ?? ''},
                      ),
                      orElse: () => null,
                    ),
                    (_) => null,
                  )
          : null,

      onTap: () {
        if (isFieldLoading) return;
        if (comboList.isEmpty) return;

        final commonSelectableDto = CommonSelectableDto(
          data: CommonSelectableData(
            list: comboList
                .map(
                  (item) => CommonSelectableItem(
                    titleName: item.name.toUpperCase(),
                    titleCode: item.code,
                    trailingCode: item.code,
                  ),
                )
                .toList(),
          ),
        );

        final selectedItem = commonSelectableDto.data?.list?.firstWhereOrNull(
          (item) => item.titleCode == selectedCode,
        );

        final uiConfig = AppGlobal.getDropdownUiConfig(field.fieldName);

        context.router.push(
          AppSelectableRoute(
            title: field.displayFieldName ?? '',
            isShowLeading: uiConfig.isShowLeading,
            isShowTrailing: uiConfig.isShowTrailing,
            initialSelectedItem: selectedItem,
            commonSelectableDto: commonSelectableDto,
            onSelected: (value) {
              final selectedCode = value.titleCode ?? '';
              final selectedName = value.titleName ?? '';
              final lowerFieldName = field.fieldName?.toLowerCase();

              if (lowerFieldName ==
                  FieldNames.beneficiaryBranchCode.name.toLowerCase()) {
                // Branch selected: triggers route-code fetch for this branch.
                context.read<BeneficiaryBloc>().add(
                  BeneficiaryEvent.beneficiaryBranchComboChanged(
                    branchCode: selectedCode,
                    branchName: selectedName,
                  ),
                );
              } else if (lowerFieldName ==
                  FieldNames.routeCode.name.toLowerCase()) {
                // IFSC/route-code selected from dropdown: trigger immediate reverse
                // lookup to auto-fill the matching Bank and Branch dropdowns.
                // Uses beneficiaryRouteCodeSelected (no debounce) rather than the
                // text-field variant which is debounced for keystroke efficiency.
                context.read<BeneficiaryBloc>().add(
                  BeneficiaryEvent.beneficiaryRouteCodeSelected(selectedCode),
                );
              } else {
                context.read<BeneficiaryBloc>().add(
                  BeneficiaryEvent.beneficiaryProductFieldChanged(
                    backendField: field,
                    value: selectedCode,
                  ),
                );

                if (lowerFieldName ==
                    FieldNames.beneficiaryBankCode.name.toLowerCase()) {
                  // Bank changed: clear dependent branch and route-code fields,
                  // then fetch the branch list for the newly selected bank.
                  context.read<BeneficiaryBloc>().add(
                    BeneficiaryEvent.clearBeneficiaryProductFieldValue(
                      backendField: Beneficiary(
                        fieldName: FieldNames.beneficiaryBranchCode.name,
                      ),
                    ),
                  );
                  context.read<BeneficiaryBloc>().add(
                    BeneficiaryEvent.getBranchCombo(selectedCode),
                  );
                }
              }
            },
          ),
        );
      },
    );

    // Apply per-field animation wrappers.
    final isBankField =
        lowerFieldName == FieldNames.beneficiaryBankCode.name.toLowerCase();
    final isBranchField =
        lowerFieldName == FieldNames.beneficiaryBranchCode.name.toLowerCase();
    final isRouteField =
        lowerFieldName == FieldNames.routeCode.name.toLowerCase();

    if (isBankField || isBranchField) {
      fieldWidget = AutoFillGlow(observedValue: displayName, child: fieldWidget);
    } else if (isRouteField) {
      fieldWidget = LookupBorderPulse(
        isActive: state.isRouteLookupLoading,
        child: fieldWidget,
      );
    }

    return fieldWidget;
  }
}
