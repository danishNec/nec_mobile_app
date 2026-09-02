import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/beneficiary/beneficiary_bloc.dart';
import '../../../domain/beneficiary/beneficiary_product_field_settings_dto.dart';
import '../../../domain/core/failures.dart';
import '../../core/country/app_country.dart';
import '../../core/global/app_global.dart';
import '../../core/text_form_field/app_text_form_field.dart';

class BeneficiaryTextField extends HookWidget {
  final Beneficiary field;
  final BeneficiaryState state;
  const BeneficiaryTextField({
    super.key,
    required this.field,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final controller = useTextEditingController();
    final initialValue = state.dynamicFieldValues[field.fieldName]?.value.fold(
      (failure) => controller.text,
      (value) => value,
    );
    final selectedCountry = CountryUtils.getCountryByCode(
      state.selectedBeneficiaryCountry?.titleCode ?? '',
    );
    useEffect(() {
      controller.text = initialValue ?? '';
      return null;
    }, [initialValue]);
    return AppTextFormField(
      controller: controller,
      labelText: field.displayFieldName,
      hintText: 'core.actionTypes.enter'.tr(
        namedArgs: {'fieldName': field.displayFieldName ?? ''},
      ),
      textCapitalization: TextCapitalization.characters,
      inputFormatters: [],
      prefixIcon:
          field.fieldName == AppGlobal.isMobileNumberField(field.fieldName) &&
              selectedCountry?.dialCode != null
          ? Container(
              padding: EdgeInsets.only(left: 12.w, right: 8.w),
              margin: EdgeInsets.only(right: 8.w),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: colorScheme.outline, width: 0.5.w),
                ),
              ),
              child: Text(
                '${selectedCountry?.dialCode}',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          : null,
      prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
      onChanged: (value) {
        context.read<BeneficiaryBloc>().add(
          BeneficiaryEvent.beneficiaryProductFieldChanged(
            backendField: field,
            value: value,
          ),
        );
      },
      errorText: state.showErrorMessages
          ? state.dynamicFieldValues[field.fieldName]?.value.fold(
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
                invalidMobileNumber: (_) => null,
                invalidOtp: (_) => null,
                orElse: () => null,
              ),
              (_) => null,
            )
          : null,
    );
  }
}
