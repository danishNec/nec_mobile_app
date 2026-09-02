import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/forgot_mpin/forgot_mpin_bloc.dart';
import '../../domain/common/common_selectable_dto.dart';
import '../../domain/core/failures.dart';
import '../../domain/forgot_mpin/forgot_mpin_failure.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/button/app_button.dart';
import '../core/global/app_global.dart';
import '../core/input_formatter/app_masked_digit_controller.dart';
import '../core/input_formatter/app_western_digits_input_formatter.dart';
import '../core/notify/app_notify.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/text_form_field/app_text_form_field.dart';
import '../core/theme/app_theme_ext.dart';
import '../routes/app_routes.gr.dart';

@RoutePage()
class ForgotMpinPage extends HookWidget {
  const ForgotMpinPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    useEffect(() {
      context.read<ForgotMpinBloc>().add(
        const ForgotMpinEvent.getIdentityTypes(),
      );
      return null;
    }, const []);

    final idTypeController = useTextEditingController();

    final idController = useMemoized(
      () => MaskedDigitController(maskLength: 0),
    );
    useEffect(() => idController.dispose, const []);

    final mobileController = useMemoized(
      () => MaskedDigitController(maskLength: 8),
    );
    useEffect(() => mobileController.dispose, const []);

    final idFocusNode = useFocusNode();
    final mobileFocusNode = useFocusNode();

    // Tracks the previously synced identity type to guard against redundant
    // resetMask calls when the listener fires for unrelated state changes.
    final prevIdTypeRef = useRef<CommonSelectableItem?>(null);

    return BlocConsumer<ForgotMpinBloc, ForgotMpinState>(
      listenWhen: (prev, curr) =>
          prev.selectedIdentityType != curr.selectedIdentityType ||
          prev.requestOtpFailureOrSuccessOption !=
              curr.requestOtpFailureOrSuccessOption ||
          prev.identityTypeFailureOrSuccessOption !=
              curr.identityTypeFailureOrSuccessOption,
      buildWhen: (prev, curr) =>
          prev.isLoading != curr.isLoading ||
          prev.isSubmitting != curr.isSubmitting ||
          prev.selectedIdentityType != curr.selectedIdentityType ||
          prev.showErrorMessages != curr.showErrorMessages ||
          prev.forgotIdIdentityDto != curr.forgotIdIdentityDto,
      listener: (context, state) {
        // Sync controllers only when identity type actually changes
        if (state.selectedIdentityType != prevIdTypeRef.value) {
          prevIdTypeRef.value = state.selectedIdentityType;
          idTypeController.text = state.selectedIdentityType?.titleName ?? '';
          idController.resetMask(
            AppGlobal.idMaskLength(state.selectedIdentityType?.titleCode),
          );
        }

        // Show error if identity types failed to load
        state.identityTypeFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                unableToFetchIdentityTypes: (value) => value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.unknownError'.tr(),
              ),
              type: AppToastType.info,
              position: AppToastPosition.top,
            ),
            (_) {},
          ),
        );

        // Handle OTP request result
        state.requestOtpFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                invalidCredentials: (value) => value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.unknownError'.tr(),
              ),
              type: AppToastType.error,
              position: AppToastPosition.top,
            ),
            (_) {
              FocusScope.of(context).unfocus();
              context.router.push(const ForgotOtpView());
            },
          ),
        );
      },
      builder: (context, state) {
        final idMaskLen = AppGlobal.idMaskLength(
          state.selectedIdentityType?.titleCode,
        );
        return AppScaffold(
          isLoading: state.isLoading || state.isSubmitting,
          onTapOutside: () => FocusScope.of(context).unfocus(),
          appBar: AppAppBar(title: 'forgotMpin.title'.tr()),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                physics: constraints.maxHeight < 600
                    ? const ClampingScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 30.h),
                      Text(
                        'forgotMpin.title'.tr(),
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: colorScheme.onPrimary,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        'forgotMpin.subtitle'.tr(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 13.sp,
                          color: context.appColors.muted,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 24.h),

                      // ── Form card ─────────────────────────────────────────
                      Container(
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          color: colorScheme.secondary,
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(
                            color: colorScheme.outline,
                            width: 0.5.w,
                          ),
                        ),
                        child: Form(
                          autovalidateMode: state.showErrorMessages
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              AppTextFormField(
                                controller: idTypeController,
                                labelText: 'forgotMpin.idType.label'.tr(),
                                hintText: 'forgotMpin.idType.placeholder'.tr(),
                                readOnly: true,
                                showCursor: false,
                                suffixIcon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: colorScheme.tertiary,
                                ),
                                onTap: () {
                                  final list =
                                      state
                                          .forgotIdIdentityDto
                                          ?.data
                                          ?.identityTypesList ??
                                      [];
                                  if (list.isEmpty) return;
                                  if (list.length == 1) {
                                    AppNotify.toast(
                                      'forgotMpin.idType.error'.tr(
                                        namedArgs: {
                                          'idType':
                                              state
                                                  .selectedIdentityType
                                                  ?.titleName ??
                                              '',
                                        },
                                      ),
                                      type: AppToastType.info,
                                      position: AppToastPosition.top,
                                    );
                                    return;
                                  }
                                  context.router.push(
                                    AppSelectableRoute(
                                      title: 'forgotMpin.idType.label'.tr(),
                                      initialSelectedItem:
                                          state.selectedIdentityType,
                                      commonSelectableDto: CommonSelectableDto(
                                        data: CommonSelectableData(
                                          list: list
                                              .map(
                                                (e) => CommonSelectableItem(
                                                  titleName: (e.name ?? '')
                                                      .toUpperCase(),
                                                  titleCode: e.code,
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                      onSelected: (value) =>
                                          context.read<ForgotMpinBloc>().add(
                                            ForgotMpinEvent.identityTypeChanged(
                                              selectedIdentityType: value,
                                            ),
                                          ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 12.h),
                              AppTextFormField(
                                controller: idController,
                                focusNode: idFocusNode,
                                labelText: 'forgotMpin.idNumber.label'.tr(),
                                hintText: idMaskLen == 0
                                    ? 'forgotMpin.idNumber.placeholder'.tr()
                                    : null,
                                enabled: idMaskLen > 0,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                autocorrect: false,
                                enableSuggestions: false,
                                inputFormatters: [
                                  WesternDigitsInputFormatter(),
                                ],
                                onChanged: (_) =>
                                    context.read<ForgotMpinBloc>().add(
                                      ForgotMpinEvent.identityNumberChanged(
                                        idController.rawValue,
                                      ),
                                    ),
                                onFieldSubmitted: (_) =>
                                    mobileFocusNode.requestFocus(),
                                validator: (p0) => context
                                    .read<ForgotMpinBloc>()
                                    .state
                                    .identityNumber
                                    .value
                                    .fold(
                                      (failure) => switch (failure) {
                                        InvalidIdentityNumber() =>
                                          'forgotMpin.idNumber.validationError'
                                              .tr(),
                                        _ => null,
                                      },
                                      (_) => null,
                                    ),
                              ),
                              SizedBox(height: 12.h),
                              AppTextFormField(
                                controller: mobileController,
                                focusNode: mobileFocusNode,
                                labelText: 'forgotMpin.mobileNumber.label'.tr(),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                autocorrect: false,
                                enableSuggestions: false,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 12.w),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '+${AppGlobal.appCountryCode}',
                                        style: theme.textTheme.titleSmall
                                            ?.copyWith(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Container(
                                        width: 1,
                                        height: 20.h,
                                        color: colorScheme.onSurface.withValues(
                                          alpha: 0.3,
                                        ),
                                      ),
                                      SizedBox(width: 4.w),
                                    ],
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 0,
                                  minHeight: 0,
                                ),
                                inputFormatters: [
                                  WesternDigitsInputFormatter(),
                                ],
                                onChanged: (_) =>
                                    context.read<ForgotMpinBloc>().add(
                                      ForgotMpinEvent.mobileNumberChanged(
                                        mobileController.rawValue,
                                      ),
                                    ),
                                onFieldSubmitted: (_) =>
                                    context.read<ForgotMpinBloc>().add(
                                      const ForgotMpinEvent.requestOtpPressed(),
                                    ),
                                validator: (p0) => context
                                    .read<ForgotMpinBloc>()
                                    .state
                                    .mobileNumber
                                    .value
                                    .fold(
                                      (failure) => switch (failure) {
                                        InvalidMobileNumber() =>
                                          'forgotMpin.mobileNumber.validationError'
                                              .tr(),
                                        _ => null,
                                      },
                                      (_) => null,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // ── Security note ─────────────────────────────────────
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.shield_outlined,
                            size: 13.sp,
                            color: context.appColors.success,
                          ),
                          SizedBox(width: 5.w),
                          Flexible(
                            child: Text(
                              'core.securityNote'.tr(),
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 11.5.sp,
                                color: context.appColors.muted,
                              ),
                            ),
                          ),
                        ],
                      ),

                      // ── Continue button ───────────────────────────────────
                      SizedBox(height: 16.h),
                      AppButton(
                        isLoading: state.isSubmitting,
                        text: 'buttons.continue'.tr(),
                        onTap: () => context.read<ForgotMpinBloc>().add(
                          const ForgotMpinEvent.requestOtpPressed(),
                        ),
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
