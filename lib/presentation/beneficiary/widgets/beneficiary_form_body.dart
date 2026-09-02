import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/beneficiary/beneficiary_bloc.dart';
import '../../../application/home/home_bloc.dart';
import '../../../application/summary/summary_bloc.dart';
import '../../../domain/beneficiary/beneficiary_failure.dart';
import '../../../domain/common/common_selectable_dto.dart';
import '../../core/app_bar/app_app_bar.dart';
import '../../core/button/app_button.dart';
import '../../core/custom/app_beneficiary_header.dart';
import '../../core/global/app_global.dart';
import '../../core/notify/app_notify.dart';
import '../../core/scaffold/app_scaffold.dart';
import '../../core/shimmer/app_shimmer.dart';
import '../../core/text_form_field/app_text_form_field.dart';
import '../../routes/app_routes.gr.dart';
import 'beneficiary_animations.dart';
import 'beneficiary_drop_down.dart';
import 'beneficiary_text_field.dart';

/// Shared form body for both add and edit beneficiary flows.
/// Mode is derived from [BeneficiaryState.isEditing] — no extra flag needed.
class BeneficiaryFormBody extends HookWidget {
  const BeneficiaryFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final showValidation = useState(false);

    // GlobalKeys for Scrollable.ensureVisible — each key anchors one form section.
    final addSectionKey = useMemoized(() => GlobalKey(), const []);
    final productFieldsKey = useMemoized(() => GlobalKey(), const []);
    final purposeSourceKey = useMemoized(() => GlobalKey(), const []);

    final countryController = useTextEditingController();
    final currencyController = useTextEditingController();
    final transferTypeController = useTextEditingController();
    final bankOrAgentController = useTextEditingController();
    final purposeController = useTextEditingController();
    final sourceController = useTextEditingController();

    return BlocConsumer<BeneficiaryBloc, BeneficiaryState>(
      listenWhen: (p, c) =>
          p.selectedBeneficiaryCountry != c.selectedBeneficiaryCountry ||
          p.selectedBeneficiaryCurrency != c.selectedBeneficiaryCurrency ||
          p.selectedBeneficiaryTransferType !=
              c.selectedBeneficiaryTransferType ||
          p.selectedBeneficiaryBankOrAgent !=
              c.selectedBeneficiaryBankOrAgent ||
          p.selectedBeneficiaryPurposeOfTransaction !=
              c.selectedBeneficiaryPurposeOfTransaction ||
          p.selectedBeneficiarySourceOfFund !=
              c.selectedBeneficiarySourceOfFund ||
          p.saveBeneficiaryFailureOrSuccessOption !=
              c.saveBeneficiaryFailureOrSuccessOption ||
          p.beneficiaryPurposeOfTransactionFailureOrSuccessOption !=
              c.beneficiaryPurposeOfTransactionFailureOrSuccessOption ||
          p.beneficiarySourceOfFundFailureOrSuccessOption !=
              c.beneficiarySourceOfFundFailureOrSuccessOption,
      listener: (context, state) {
        // Add-mode dropdown controllers — safe to update in edit mode too since
        // those fields are hidden; updating hidden controllers has no visible effect.
        countryController.text =
            state.selectedBeneficiaryCountry?.titleName ?? '';
        currencyController.text =
            state.selectedBeneficiaryCurrency?.titleName ?? '';
        transferTypeController.text =
            state.selectedBeneficiaryTransferType?.titleName ?? '';
        bankOrAgentController.text =
            state.selectedBeneficiaryBankOrAgent?.titleName ?? '';

        // Resolve purpose display name from the loaded list.
        // In add mode the selected item already carries titleName; in edit mode
        // the item is pre-seeded with only titleCode, so we look up the name.
        final purposeList =
            state.beneficiaryPurposeOfTransferDto?.data?.purposeList ?? [];
        final selectedPurpose = state.selectedBeneficiaryPurposeOfTransaction;
        if (selectedPurpose != null) {
          final matched = purposeList.firstWhereOrNull(
            (e) => e.code == selectedPurpose.titleCode,
          );
          purposeController.text =
              matched?.name?.toUpperCase() ?? selectedPurpose.titleName ?? '';
        }

        // Same pattern for source of funds.
        final sourceList =
            state.beneficiarySourceOfFundDto?.data?.incomeSourceList ?? [];
        final selectedSource = state.selectedBeneficiarySourceOfFund;
        if (selectedSource != null) {
          final matched = sourceList.firstWhereOrNull(
            (e) => e.code == selectedSource.titleCode,
          );
          sourceController.text =
              matched?.name?.toUpperCase() ?? selectedSource.titleName ?? '';
        }

        // Save / update result — identical for both modes.
        state.saveBeneficiaryFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => AppNotify.toast(
              failure.maybeMap(
                unableToSendBeneficiaryVerificationCode: (value) =>
                    value.message.toString(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.unknownError'.tr(),
              ),
            ),
            (success) {
              if (success == 200) {
                context.router.replace(BeneficiaryOtpView());
              } else {
                context.router.pop();
                final beneficiary = state.selectedBeneficiary;
                context.read<HomeBloc>().add(
                  HomeEvent.addOrEditBeneficiaryChanged(
                    eId: beneficiary?.eId,
                    beneficiaryFirstName: beneficiary?.beneficiaryFirstName,
                    beneficiaryLastName: beneficiary?.beneficiaryLastName,
                    beneficiaryCountryCode:
                        state.selectedBeneficiaryCountry?.titleCode,
                    beneficiaryBankName:
                        state.selectedBeneficiaryBankOrAgent?.titleName,
                    disbursalMode:
                        state.selectedBeneficiaryTransferType?.titleCode,
                    currencyCode:
                        state.selectedBeneficiaryCurrency?.trailingCode,
                    purposeName: state
                        .selectedBeneficiaryPurposeOfTransaction
                        ?.titleName,
                    incomeSourceName:
                        state.selectedBeneficiarySourceOfFund?.titleName,
                    purposeOfTransaction: state
                        .selectedBeneficiaryPurposeOfTransaction
                        ?.titleCode,
                    sourceOfFund:
                        state.selectedBeneficiarySourceOfFund?.titleCode,
                  ),
                );
                context.read<SummaryBloc>().add(
                  SummaryEvent.beneficiaryUpdatedChanged(
                    eId: beneficiary?.eId,
                    beneficiaryFirstName: beneficiary?.beneficiaryFirstName,
                    beneficiaryLastName: beneficiary?.beneficiaryLastName,
                    beneficiaryCountryCode:
                        state.selectedBeneficiaryCountry?.titleCode,
                    beneficiaryBankName:
                        state.selectedBeneficiaryBankOrAgent?.titleName,
                    disbursalMode:
                        state.selectedBeneficiaryTransferType?.titleCode,
                    currencyCode:
                        state.selectedBeneficiaryCurrency?.trailingCode,
                    purposeName: state
                        .selectedBeneficiaryPurposeOfTransaction
                        ?.titleName,
                    incomeSourceName:
                        state.selectedBeneficiarySourceOfFund?.titleName,
                    purposeOfTransaction: state
                        .selectedBeneficiaryPurposeOfTransaction
                        ?.titleCode,
                    sourceOfFund:
                        state.selectedBeneficiarySourceOfFund?.titleCode,
                  ),
                );
                context.read<HomeBloc>().add(
                  HomeEvent.addOrEditBeneficiaryChanged(
                    eId: beneficiary?.eId,
                    beneficiaryFirstName: beneficiary?.beneficiaryFirstName,
                    beneficiaryLastName: beneficiary?.beneficiaryLastName,
                    beneficiaryBankName: beneficiary?.beneficiaryBankName,
                    disbursalMode: beneficiary?.disbursalMode,
                    beneficiaryCountryCode: beneficiary?.beneficiaryCountryCode,
                    currencyCode: beneficiary?.currencyCode,
                  ),
                );
              }
            },
          ),
        );
      },
      builder: (context, state) {
        final isEditMode = state.isEditing;

        void scrollTo(GlobalKey key) {
          final ctx = key.currentContext;
          if (ctx == null) return;
          Scrollable.ensureVisible(
            ctx,
            alignment: 0.0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutCubic,
          );
        }

        void handleSave() {
          if (state.isSubmitting) return;
          showValidation.value = true;

          // 1. Static add-section (top of form, add mode only).
          if (!isEditMode && !state.isAddingFromHome) {
            final countryEmpty =
                state.selectedBeneficiaryCountry?.titleCode?.isEmpty ?? true;
            final currencyEmpty =
                state.selectedBeneficiaryCurrency?.trailingCode?.isEmpty ??
                true;
            final transferTypeEmpty =
                state.selectedBeneficiaryTransferType?.titleCode?.isEmpty ??
                true;
            final bankOrAgentEmpty =
                state.selectedBeneficiaryBankOrAgent?.titleCode?.isEmpty ??
                true;

            if (countryEmpty ||
                currencyEmpty ||
                transferTypeEmpty ||
                bankOrAgentEmpty) {
              WidgetsBinding.instance
                  .addPostFrameCallback((_) => scrollTo(addSectionKey));
              return;
            }
          }

          // 2. Dynamic product fields (middle of form).
          final hasDynamicErrors = state.dynamicFieldValues.values.any(
            (f) => f.value.isLeft(),
          );

          // 3. Purpose and source (bottom of form).
          final purposeEmpty =
              state.selectedBeneficiaryPurposeOfTransaction?.titleCode
                  ?.isEmpty ??
              true;
          final sourceEmpty =
              state.selectedBeneficiarySourceOfFund?.titleCode?.isEmpty ?? true;
          final purposeSourceError = purposeEmpty || sourceEmpty;

          // Dispatch to trigger BLoC showErrorMessages for dynamic field inline
          // errors. Guard: skip dispatch when purpose/source is empty but dynamic
          // fields are valid — otherwise the BLoC would proceed to the API call
          // with missing purpose/source data.
          if (!purposeSourceError || hasDynamicErrors) {
            context.read<BeneficiaryBloc>().add(
              const BeneficiaryEvent.saveOrUpdateBeneficiaryPressed(),
            );
          }

          // Scroll to the topmost invalid section (visual top-to-bottom order).
          if (hasDynamicErrors) {
            WidgetsBinding.instance
                .addPostFrameCallback((_) => scrollTo(productFieldsKey));
            return;
          }
          if (purposeSourceError) {
            WidgetsBinding.instance
                .addPostFrameCallback((_) => scrollTo(purposeSourceKey));
          }
        }

        return AppScaffold(
          isLoading: state.isInitialLoading || state.isSubmitting,
          loadingMessage: state.isInitialLoading
              ? 'beneficiaries.loading.preparingForm'.tr()
              : 'beneficiaries.loading.processing'.tr(),
          appBar: AppAppBar(
            title: isEditMode
                ? 'beneficiaries.beneficiaryForm.editBeneficiary'.tr()
                : 'beneficiaries.beneficiaryForm.addBeneficiary'.tr(),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 20.h,
                  ),
                  children: [
                    if (isEditMode || state.isAddingFromHome)
                      _AnimatedFieldWrapper(
                        child: _BeneficiaryHeaderSection(state: state),
                      ),
                    if (!isEditMode && !state.isAddingFromHome) ...[
                      _AnimatedFieldWrapper(
                        key: addSectionKey,
                        child: _BeneficiaryCountryField(
                          state: state,
                          controller: countryController,
                          showValidation: showValidation.value,
                        ),
                      ),
                      _AnimatedFieldWrapper(
                        child: _BeneficiaryCurrencyField(
                          state: state,
                          controller: currencyController,
                          showValidation: showValidation.value,
                        ),
                      ),
                      _AnimatedFieldWrapper(
                        child: _BeneficiaryTransferTypeField(
                          state: state,
                          controller: transferTypeController,
                          showValidation: showValidation.value,
                        ),
                      ),
                      _AnimatedFieldWrapper(
                        child: _BeneficiaryBankOrAgentField(
                          state: state,
                          controller: bankOrAgentController,
                          showValidation: showValidation.value,
                        ),
                      ),
                    ],
                    _AnimatedFieldWrapper(
                      key: productFieldsKey,
                      child: _BeneficiaryProductFields(state: state),
                    ),
                    _AnimatedFieldWrapper(
                      key: purposeSourceKey,
                      child: _BeneficiaryPurposeSourceSection(
                        state: state,
                        colorScheme: colorScheme,
                        purposeController: purposeController,
                        sourceController: sourceController,
                        showValidation: showValidation.value,
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0.w,
                  ).add(EdgeInsets.only(top: 12.h)),
                  child: _BeneficiarySaveButton(
                    isLoading: state.isSubmitting,
                    onTap: handleSave,
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

// ─── Private sub-widgets ────────────────────────────────────────────────────

class _AnimatedFieldWrapper extends StatelessWidget {
  final Widget child;

  const _AnimatedFieldWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isVisible = child is! SizedBox;

    return AnimatedSize(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      alignment: Alignment.topCenter,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: isVisible ? 1 : 0,
        child: isVisible ? child : const SizedBox.shrink(),
      ),
    );
  }
}

class _BeneficiaryHeaderSection extends StatelessWidget {
  final BeneficiaryState state;

  const _BeneficiaryHeaderSection({required this.state});

  @override
  Widget build(BuildContext context) {
    return state.isEditing
        ? state.beneficiaryByIdFailureOrSuccessOption.fold(
            () => AppShimmer(height: 90.h, width: 1.sw),
            (either) => either.fold((_) => const SizedBox.shrink(), (success) {
              final beneficiary = success.data?.beneficiaryById;
              if (beneficiary == null) return const SizedBox.shrink();
              return AppBeneficiaryHeader(
                beneficiaryCountryCode: beneficiary.beneficiaryCountryCode,
                beneficiaryCountryName: beneficiary.beneficiaryCountryName,
                transferTypeName: beneficiary.disbursalMode,
                bankOrAgentName: beneficiary.beneficiaryBankName,
              );
            }),
          )
        : state.isAddingFromHome
        ? AppBeneficiaryHeader(
            beneficiaryCountryCode: state.selectedBeneficiaryCountry?.titleCode,
            beneficiaryCountryName: state.selectedBeneficiaryCountry?.titleName,
            transferTypeName: state.selectedBeneficiaryTransferType?.titleName,
            bankOrAgentName: state.selectedBeneficiaryBankOrAgent?.titleName,
          )
        : const SizedBox.shrink();
  }
}

class _BeneficiaryCountryField extends StatelessWidget {
  final BeneficiaryState state;
  final TextEditingController controller;
  final bool showValidation;

  const _BeneficiaryCountryField({
    required this.state,
    required this.controller,
    required this.showValidation,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return state.beneficiaryCountryListFailureOrSuccessOption.fold(
      () => AppShimmer(width: 1.sw, height: 45.h),
      (either) => either.fold((_) => AppShimmer(width: 1.sw, height: 45.h), (
        success,
      ) {
        final list = success.data?.currencyList ?? [];
        if (list.isEmpty) return AppShimmer(width: 1.sw, height: 45.h);

        final isEmpty =
            state.selectedBeneficiaryCountry?.titleCode?.isEmpty ?? true;

        return FormFieldEntrance(
          child: Padding(
            padding: EdgeInsets.only(top: 16.h),
            child: AppTextFormField(
              controller: controller,
              labelText: 'beneficiaries.beneficiaryForm.country.label'.tr(),
              hintText: 'beneficiaries.beneficiaryForm.country.placeholder'
                  .tr(),
              readOnly: true,
              showCursor: false,
              errorText: showValidation && isEmpty
                  ? 'beneficiaries.errors.countryRequired'.tr()
                  : null,
              suffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: colorScheme.tertiary,
              ),
              onTap: () {
                if (list.length == 1) {
                  AppNotify.toast(
                    'beneficiaries.beneficiaryForm.country.onlyOneOption'.tr(
                      namedArgs: {'country': list.first.countryName ?? ''},
                    ),
                    type: AppToastType.info,
                  );
                  return;
                }
                context.router.push(
                  AppSelectableRoute(
                    isShowLeading: true,
                    isShowTrailing: true,
                    title: 'beneficiaries.beneficiaryForm.country.label'.tr(),
                    initialSelectedItem: state.selectedBeneficiaryCountry,
                    commonSelectableDto: CommonSelectableDto(
                      data: CommonSelectableData(
                        list: list.map((e) {
                          return CommonSelectableItem(
                            titleName: e.countryName?.toUpperCase() ?? '',
                            titleCode: e.countryCode,
                            trailingCode: e.currencyCode,
                          );
                        }).toList(),
                      ),
                    ),
                    onSelected: (value) {
                      if (value.titleCode ==
                          state.selectedBeneficiaryCountry?.titleCode) {
                        return;
                      }
                      context.read<BeneficiaryBloc>().add(
                        BeneficiaryEvent.beneficiaryCountrySelected(value),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

class _BeneficiaryCurrencyField extends StatelessWidget {
  final BeneficiaryState state;
  final TextEditingController controller;
  final bool showValidation;

  const _BeneficiaryCurrencyField({
    required this.state,
    required this.controller,
    required this.showValidation,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return state.beneficiaryCurrenciesFailureOrSuccessOption.fold(
      () => const SizedBox.shrink(),
      (either) => either.fold(
        (_) => AppShimmer(
          width: 1.sw,
          height: 45.h,
          margin: EdgeInsets.only(top: 16.h),
        ),
        (success) {
          final list = success.data?.currencyList ?? [];
          if (list.isEmpty || list.length == 1) return const SizedBox.shrink();

          final isEmpty =
              state.selectedBeneficiaryCurrency?.trailingCode?.isEmpty ?? true;

          return FormFieldEntrance(
            child: Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: AppTextFormField(
                controller: controller,
                labelText: 'beneficiaries.beneficiaryForm.currency.label'.tr(),
                hintText: 'beneficiaries.beneficiaryForm.currency.placeholder'
                    .tr(),
                readOnly: true,
                showCursor: false,
                errorText: showValidation && isEmpty
                    ? 'beneficiaries.errors.currencyRequired'.tr()
                    : null,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: colorScheme.tertiary,
                ),
                onTap: () {
                  if (list.length == 1) {
                    AppNotify.toast(
                      'beneficiaries.beneficiaryForm.currency.onlyOneOption'.tr(
                        namedArgs: {'currency': list.first.currencyName ?? ''},
                      ),
                      type: AppToastType.info,
                    );
                    return;
                  }
                  context.router.push(
                    AppSelectableRoute(
                      title: 'beneficiaries.beneficiaryForm.currency.label'
                          .tr(),
                      isShowLeading: true,
                      isShowTrailing: true,
                      initialSelectedItem: state.selectedBeneficiaryCurrency,
                      commonSelectableDto: CommonSelectableDto(
                        data: CommonSelectableData(
                          list: list.map((e) {
                            return CommonSelectableItem(
                              titleName: e.currencyName?.toUpperCase() ?? '',
                              titleCode: e.countryCode,
                              trailingCode: e.currencyCode,
                            );
                          }).toList(),
                        ),
                      ),
                      onSelected: (value) {
                        if (value.titleCode ==
                            state.selectedBeneficiaryCurrency?.titleCode) {
                          return;
                        }
                        context.read<BeneficiaryBloc>().add(
                          BeneficiaryEvent.beneficiaryCurrencySelected(value),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BeneficiaryTransferTypeField extends StatelessWidget {
  final BeneficiaryState state;
  final TextEditingController controller;
  final bool showValidation;

  const _BeneficiaryTransferTypeField({
    required this.state,
    required this.controller,
    required this.showValidation,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return state.beneficiaryTransferTypesFailureOrSuccessOption.fold(
      () => const SizedBox.shrink(),
      (either) => either.fold(
        (_) => AppShimmer(
          width: 1.sw,
          height: 45.h,
          margin: EdgeInsets.only(top: 16.h),
        ),
        (success) {
          final list = success.data?.transferModeList ?? [];
          if (list.isEmpty) {
            return AppShimmer(
              width: 1.sw,
              height: 45.h,
              margin: EdgeInsets.only(top: 16.h),
            );
          }

          final isEmpty =
              state.selectedBeneficiaryTransferType?.titleCode?.isEmpty ?? true;

          return FormFieldEntrance(
            child: Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: AppTextFormField(
                controller: controller,
                labelText: 'beneficiaries.beneficiaryForm.transferType.label'
                    .tr(),
                hintText:
                    'beneficiaries.beneficiaryForm.transferType.placeholder'
                        .tr(),
                readOnly: true,
                showCursor: false,
                errorText: showValidation && isEmpty
                    ? 'beneficiaries.errors.transferTypeRequired'.tr()
                    : null,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: colorScheme.tertiary,
                ),
                onTap: () {
                  if (list.length == 1) {
                    AppNotify.toast(
                      'beneficiaries.beneficiaryForm.transferType.onlyOneOption'
                          .tr(
                            namedArgs: {'transferType': list.first.name ?? ''},
                          ),
                      type: AppToastType.info,
                    );
                    return;
                  }
                  context.router.push(
                    AppSelectableRoute(
                      title: 'beneficiaries.beneficiaryForm.transferType.label'
                          .tr(),
                      initialSelectedItem:
                          state.selectedBeneficiaryTransferType,
                      commonSelectableDto: CommonSelectableDto(
                        data: CommonSelectableData(
                          list: list.map((e) {
                            return CommonSelectableItem(
                              titleName: e.name?.toUpperCase() ?? '',
                              titleCode: e.code,
                            );
                          }).toList(),
                        ),
                      ),
                      onSelected: (value) {
                        if (value.titleCode ==
                            state.selectedBeneficiaryTransferType?.titleCode) {
                          return;
                        }
                        context.read<BeneficiaryBloc>().add(
                          BeneficiaryEvent.beneficiaryTransferTypeSelected(
                            value,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BeneficiaryBankOrAgentField extends StatelessWidget {
  final BeneficiaryState state;
  final TextEditingController controller;
  final bool showValidation;

  const _BeneficiaryBankOrAgentField({
    required this.state,
    required this.controller,
    required this.showValidation,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return state.beneficiaryBankOrAgentListFailureOrSuccessOption.fold(
      () => const SizedBox.shrink(),
      (either) => either.fold(
        (_) => AppShimmer(
          width: 1.sw,
          height: 45.h,
          margin: EdgeInsets.only(top: 16.h),
        ),
        (success) {
          final list = success.data?.productList ?? [];
          if (list.isEmpty || list.length == 1) return const SizedBox.shrink();

          final isEmpty =
              state.selectedBeneficiaryBankOrAgent?.titleCode?.isEmpty ?? true;

          return FormFieldEntrance(
            child: Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: AppTextFormField(
                controller: controller,
                labelText: 'beneficiaries.beneficiaryForm.bankOrAgent.label'
                    .tr(),
                hintText:
                    'beneficiaries.beneficiaryForm.bankOrAgent.placeholder'
                        .tr(),
                readOnly: true,
                showCursor: false,
                errorText: showValidation && isEmpty
                    ? 'beneficiaries.errors.bankOrAgentRequired'.tr()
                    : null,
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: colorScheme.tertiary,
                ),
                onTap: () {
                  if (list.length == 1) {
                    AppNotify.toast(
                      'beneficiaries.beneficiaryForm.bankOrAgent.onlyOneOption'
                          .tr(
                            namedArgs: {'bankOrAgent': list.first.name ?? ''},
                          ),
                      type: AppToastType.info,
                    );
                    return;
                  }
                  context.router.push(
                    AppSelectableRoute(
                      title: 'beneficiaries.beneficiaryForm.bankOrAgent.label'
                          .tr(),
                      initialSelectedItem: state.selectedBeneficiaryBankOrAgent,
                      commonSelectableDto: CommonSelectableDto(
                        data: CommonSelectableData(
                          list: list.map((e) {
                            return CommonSelectableItem(
                              titleName: e.name?.toUpperCase() ?? '',
                              titleCode: e.code.toString(),
                            );
                          }).toList(),
                        ),
                      ),
                      onSelected: (value) {
                        if (value.titleCode ==
                            state.selectedBeneficiaryBankOrAgent?.titleCode) {
                          return;
                        }
                        context.read<BeneficiaryBloc>().add(
                          BeneficiaryEvent.beneficiaryBankOrAgentSelected(
                            value,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BeneficiaryProductFields extends StatelessWidget {
  final BeneficiaryState state;

  const _BeneficiaryProductFields({required this.state});

  @override
  Widget build(BuildContext context) {
    return state.beneficiaryProductSettingsFailureOrSuccessOption.fold(
      () => const SizedBox.shrink(),
      (either) => either.fold((_) => const SizedBox.shrink(), (success) {
        final fields =
            success.data?.allProductFieldSettingList?.beneficiary ?? [];
        if (fields.isEmpty) return const SizedBox.shrink();

        return Column(
          children: fields.mapIndexed((index, e) {
            final fieldType = AppGlobal.mapFieldType(e.type);
            final Widget field = switch (fieldType) {
              BeneficiaryFieldType.text => BeneficiaryTextField(
                field: e,
                state: state,
              ),
              BeneficiaryFieldType.dropdown => BeneficiaryDropdown(
                field: e,
                state: state,
              ),
              _ => const SizedBox.shrink(),
            };
            return FormFieldEntrance(
              delay: Duration(milliseconds: index * 60),
              child: Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: field,
              ),
            );
          }).toList(),
        );
      }),
    );
  }
}

class _BeneficiaryPurposeSourceSection extends StatelessWidget {
  final BeneficiaryState state;
  final ColorScheme colorScheme;
  final TextEditingController purposeController;
  final TextEditingController sourceController;
  final bool showValidation;

  const _BeneficiaryPurposeSourceSection({
    required this.state,
    required this.colorScheme,
    required this.purposeController,
    required this.sourceController,
    required this.showValidation,
  });

  @override
  Widget build(BuildContext context) {
    final productSettingsReady = state
        .beneficiaryProductSettingsFailureOrSuccessOption
        .isSome();
    if (!productSettingsReady) return const SizedBox.shrink();

    final purposeLoading = state
        .beneficiaryPurposeOfTransactionFailureOrSuccessOption
        .isNone();
    if (purposeLoading) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 28.h),
        child: AppShimmer(height: 130.h, width: 1.sw),
      );
    }

    final purposeEmpty =
        showValidation &&
        (state.selectedBeneficiaryPurposeOfTransaction?.titleCode?.isEmpty ??
            true);
    final sourceEmpty =
        showValidation &&
        (state.selectedBeneficiarySourceOfFund?.titleCode?.isEmpty ?? true);
    final hasError = purposeEmpty || sourceEmpty;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Container(
        key: const ValueKey('purposeSourceContainer'),
        width: 1.sw,
        margin: EdgeInsets.symmetric(vertical: 28.h),
        decoration: BoxDecoration(
          color: colorScheme.secondary,
          border: Border.all(
            color: hasError ? colorScheme.error : colorScheme.outline,
            width: hasError ? 0.25.w : 0.5.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          children: [
            _BeneficiaryPurposeField(
              state: state,
              controller: purposeController,
              showValidation: showValidation,
            ),
            _BeneficiarySourceField(
              state: state,
              controller: sourceController,
              showValidation: showValidation,
            ),
          ],
        ),
      ),
    );
  }
}

class _BeneficiaryPurposeField extends StatelessWidget {
  final BeneficiaryState state;
  final TextEditingController controller;
  final bool showValidation;

  const _BeneficiaryPurposeField({
    required this.state,
    required this.controller,
    required this.showValidation,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return state.beneficiaryPurposeOfTransactionFailureOrSuccessOption.fold(
      () => const SizedBox.shrink(),
      (either) => either.fold((_) => const SizedBox.shrink(), (success) {
        final list = success.data?.purposeList ?? [];
        if (list.isEmpty) return const SizedBox.shrink();

        final isEmpty =
            state.selectedBeneficiaryPurposeOfTransaction?.titleCode?.isEmpty ??
            true;

        return FormFieldEntrance(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ).r.add(EdgeInsets.only(top: 16, bottom: 20).h),
            child: AppTextFormField(
              controller: controller,
              labelText:
                  'beneficiaries.beneficiaryForm.purposeOfTransaction.label'
                      .tr(),
              hintText:
                  'beneficiaries.beneficiaryForm.purposeOfTransaction.placeholder'
                      .tr(),
              readOnly: true,
              showCursor: false,
              errorText: showValidation && isEmpty
                  ? 'beneficiaries.errors.purposeOfTransactionRequired'.tr()
                  : null,
              suffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: colorScheme.tertiary,
              ),
              onTap: () {
                if (list.length == 1) {
                  AppNotify.toast(
                    'beneficiaries.beneficiaryForm.purposeOfTransaction.onlyOneOption'
                        .tr(namedArgs: {'purpose': list.first.name ?? ''}),
                    type: AppToastType.info,
                  );
                  return;
                }
                context.router.push(
                  AppSelectableRoute(
                    title:
                        'beneficiaries.beneficiaryForm.purposeOfTransaction.label'
                            .tr(),
                    initialSelectedItem:
                        state.selectedBeneficiaryPurposeOfTransaction,
                    commonSelectableDto: CommonSelectableDto(
                      data: CommonSelectableData(
                        list: list.map((e) {
                          return CommonSelectableItem(
                            titleName: e.name?.toUpperCase() ?? '',
                            titleCode: e.code,
                          );
                        }).toList(),
                      ),
                    ),
                    onSelected: (value) {
                      if (value.titleCode ==
                          state
                              .selectedBeneficiaryPurposeOfTransaction
                              ?.titleCode) {
                        return;
                      }
                      context.read<BeneficiaryBloc>().add(
                        BeneficiaryEvent.beneficiaryPurposeOfTransactionSelected(
                          value,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

class _BeneficiarySourceField extends StatelessWidget {
  final BeneficiaryState state;
  final TextEditingController controller;
  final bool showValidation;

  const _BeneficiarySourceField({
    required this.state,
    required this.controller,
    required this.showValidation,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return state.beneficiarySourceOfFundFailureOrSuccessOption.fold(
      () => const SizedBox.shrink(),
      (either) => either.fold((_) => const SizedBox.shrink(), (success) {
        final list = success.data?.incomeSourceList ?? [];
        if (list.isEmpty) return const SizedBox.shrink();

        final isEmpty =
            state.selectedBeneficiarySourceOfFund?.titleCode?.isEmpty ?? true;

        return FormFieldEntrance(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ).r.add(EdgeInsets.only(bottom: 20).h),
            child: AppTextFormField(
              controller: controller,
              labelText: 'beneficiaries.beneficiaryForm.sourceOfFunds.label'
                  .tr(),
              hintText:
                  'beneficiaries.beneficiaryForm.sourceOfFunds.placeholder'
                      .tr(),
              readOnly: true,
              showCursor: false,
              errorText: showValidation && isEmpty
                  ? 'beneficiaries.errors.sourceOfFundsRequired'.tr()
                  : null,
              suffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: colorScheme.tertiary,
              ),
              onTap: () {
                context.router.push(
                  AppSelectableRoute(
                    title: 'beneficiaries.beneficiaryForm.sourceOfFunds.label'
                        .tr(),
                    initialSelectedItem: state.selectedBeneficiarySourceOfFund,
                    commonSelectableDto: CommonSelectableDto(
                      data: CommonSelectableData(
                        list: list.map((e) {
                          return CommonSelectableItem(
                            titleName: e.name?.toUpperCase() ?? '',
                            titleCode: e.code,
                          );
                        }).toList(),
                      ),
                    ),
                    onSelected: (value) {
                      if (value.titleCode ==
                          state.selectedBeneficiarySourceOfFund?.titleCode) {
                        return;
                      }
                      context.read<BeneficiaryBloc>().add(
                        BeneficiaryEvent.beneficiarySourceOfFundSelected(value),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

class _BeneficiarySaveButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onTap;

  const _BeneficiarySaveButton({this.isLoading = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      isLoading: isLoading,
      text: 'buttons.save'.tr(),
      onTap: onTap,
    );
  }
}