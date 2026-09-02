import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_file/open_file.dart';
import 'package:share_plus/share_plus.dart';

import '../../application/transaction_history/transaction_history_bloc.dart';
import '../../domain/transaction_history/transaction_history_failure.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/bottom_sheet/app_filter_bottom_sheet.dart';
import '../core/bottom_sheet/app_sort_bottom_sheet.dart';
import '../core/bottom_sheet/app_transaction_bottom_sheet .dart';
import '../core/overlay_loading/app_overlay_loading.dart';
import '../core/text_form_field/app_text_form_field.dart';
import '../core/theme/app_theme_ext.dart';
import '../core/notify/app_notify.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/transaction_tile/app_transaction_tile.dart';

@RoutePage()
class TransactionHistoryPage extends HookWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final scrollController = useScrollController();

    final isLoadMoreTriggered = useState(false);

    final searchController = useTextEditingController();
    final debounce = useRef<Timer?>(null);

    useEffect(() {
      final bloc = context.read<TransactionHistoryBloc>();
      final currentState = bloc.state;

      final shouldLoadBeneficiaries =
          currentState.transactionHistoryBeneficiaryDto == null &&
          !currentState.isLoadingBeneficiary;

      final shouldLoadCountryCombo =
          currentState.transactionHistoryCountryComboDto == null &&
          !currentState.isLoadingCountryCombo;

      if (shouldLoadBeneficiaries) {
        bloc.add(
          const TransactionHistoryEvent.getTransactionHistoryBeneficiary(),
        );
      }

      if (shouldLoadCountryCombo) {
        bloc.add(
          const TransactionHistoryEvent.getTransactionHistoryCountryCombo(),
        );
      }

      return null;
    }, const []);

    useEffect(() {
      return () {
        debounce.value?.cancel();
      };
    }, []);

    useEffect(() {
      void listener() {
        if (!scrollController.hasClients) return;

        final maxScroll = scrollController.position.maxScrollExtent;
        final currentScroll = scrollController.position.pixels;

        final bloc = context.read<TransactionHistoryBloc>();

        if (currentScroll >= maxScroll - 200 &&
            !bloc.state.isLoading &&
            bloc.state.hasMore &&
            !isLoadMoreTriggered.value) {
          isLoadMoreTriggered.value = true;

          bloc.add(
            const TransactionHistoryEvent.getTransactionHistory(
              isLoadMore: true,
            ),
          );

          Future.delayed(const Duration(milliseconds: 300), () {
            isLoadMoreTriggered.value = false;
          });
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController, isLoadMoreTriggered]);

    return BlocConsumer<TransactionHistoryBloc, TransactionHistoryState>(
      listenWhen: (previous, current) =>
          previous.transactionHistorySuccessOrFailureOption !=
              current.transactionHistorySuccessOrFailureOption ||
          previous.transactionHistoryBeneficiarySuccessOrFailureOption !=
              current.transactionHistoryBeneficiarySuccessOrFailureOption ||
          previous.transactionHistoryCountryComboSuccessOrFailureOption !=
              current.transactionHistoryCountryComboSuccessOrFailureOption ||
          (previous.transactionHistoryDetailsSuccessOrFailureOption !=
              current.transactionHistoryDetailsSuccessOrFailureOption &&
              current.transactionHistoryDetailsSuccessOrFailureOption.isSome()) ||
          previous.downloadOrShareReceiptSuccessOrFailureOption !=
              current.downloadOrShareReceiptSuccessOrFailureOption,
      listener: (context, state) {
        state.transactionHistorySuccessOrFailureOption.fold(
          () {},
          (either) => either.fold((failure) {
            HapticFeedback.heavyImpact();
            DialogHelper.show(
              context,
              message: failure.maybeMap(
                unableToGetTransactionHistory: (_) =>
                    'transactionHistory.errors.unableToGetTransactionHistory'
                        .tr(),
                serverError: (_) => 'errors.serverError'.tr(),
                orElse: () => 'errors.orElse'.tr(),
              ),
              type: AppDialogType.warning,
              barrierDismissible: false,
              showTwoButtons: true,
              secondButtonText: 'buttons.cancel'.tr(),
              buttonText: 'buttons.retry'.tr(),
              onPressed: () {
                context.router.pop();
                context.read<TransactionHistoryBloc>().add(
                  const TransactionHistoryEvent.getTransactionHistory(
                    resetSort: true,
                  ),
                );
              },
            );
          }, (_) {}),
        );
        state.transactionHistoryDetailsSuccessOrFailureOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              DialogHelper.show(
                context,
                message: failure.maybeMap(
                  unableToGetTransactionHistoryDetails: (_) =>
                      'transactionHistory.errors.unableToGetTransactionHistoryDetails'
                          .tr(),
                  serverError: (_) => 'errors.serverError'.tr(),
                  orElse: () => 'errors.orElse'.tr(),
                ),
                type: AppDialogType.warning,
                barrierDismissible: false,
                buttonText: 'buttons.retry'.tr(),
                onPressed: () {
                  context.router.pop();
                },
              );
            },
            (success) {
              AppTransactionBottomSheet.show(
                context,
                transaction: state.transactionHistoryDetailsDto,
                downloadOnTap: () {
                  final transactionReference = state
                      .transactionHistoryDetailsDto
                      ?.data
                      ?.transaction
                      ?.transactionReference;
                  if (transactionReference == null) {
                    AppNotify.toast(
                      'transactionHistory.errors.transactionReferenceNotFound'
                          .tr(),
                      type: AppToastType.error,
                    );
                    return;
                  }
                  context.router.pop();
                  context.read<TransactionHistoryBloc>().add(
                    TransactionHistoryEvent.downloadOrShareTransactionReceipt(
                      transactionReference: transactionReference,
                      isDownload: true,
                    ),
                  );
                },
                shareOnTap: () {
                  final transactionReference = state
                      .transactionHistoryDetailsDto
                      ?.data
                      ?.transaction
                      ?.transactionReference;
                  if (transactionReference == null) {
                    AppNotify.toast(
                      'transactionHistory.errors.transactionReferenceNotFound'
                          .tr(),
                      type: AppToastType.error,
                    );
                    return;
                  }
                  context.router.pop();
                  context.read<TransactionHistoryBloc>().add(
                    TransactionHistoryEvent.downloadOrShareTransactionReceipt(
                      transactionReference: transactionReference,
                      isDownload: false,
                    ),
                  );
                },
              );
            },
          ),
        );
        state.downloadOrShareReceiptSuccessOrFailureOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              HapticFeedback.heavyImpact();
              DialogHelper.show(
                context,
                message: failure.maybeMap(
                  unableToDownloadOrShareTransactionHistoryReceipt: (_) =>
                      'transactionHistory.errors.unableToDownloadOrShareTransactionHistoryReceipt'
                          .tr(),
                  serverError: (_) => 'errors.serverError'.tr(),
                  orElse: () => 'errors.orElse'.tr(),
                ),
                type: AppDialogType.warning,
                barrierDismissible: false,
                buttonText: 'buttons.retry'.tr(),
                onPressed: () {
                  context.router.pop();
                },
              );
            },
            (filePath) async {
              if (state.isDownloadingReceipt) {
                await OpenFile.open(filePath);
              } else {
                await SharePlus.instance.share(
                  ShareParams(
                    files: [XFile(filePath)],
                    text: 'transactionHistory.shareReceiptText'.tr(),
                  ),
                );
              }
            },
          ),
        );
      },

      builder: (context, state) {
        final transactions =
            state.commonTransactionDto?.data.transactions ?? [];

        final beneficiaries =
            state.transactionHistoryBeneficiaryDto?.data?.beneficiaryList ?? [];

        final countries =
            state.transactionHistoryCountryComboDto?.data?.countryList ?? [];

        String selectedSortValue = '';
        if (state.sortBy == 'pay_amount' && state.sortOrder == 'desc') {
          selectedSortValue = 'pay_amount_desc';
        } else if (state.sortBy == 'pay_amount' && state.sortOrder == 'asc') {
          selectedSortValue = 'pay_amount_asc';
        } else if (state.sortBy == 'created_on' && state.sortOrder == 'desc') {
          selectedSortValue = 'created_on_desc';
        } else if (state.sortBy == 'created_on' && state.sortOrder == 'asc') {
          selectedSortValue = 'created_on_asc';
        }

        return AppScaffold(
          appBar: AppAppBar(title: 'transactionHistory.title'.tr()),
          body: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: AppTextFormField(
                      controller: searchController,
                      hintText: 'transactionHistory.searchHint'.tr(),
                      prefixIcon: Icon(Icons.search, size: 20.sp),
                      onChanged: (value) {
                        debounce.value?.cancel();
                        debounce.value = Timer(
                          const Duration(milliseconds: 500),
                          () {
                            context.read<TransactionHistoryBloc>().add(
                              TransactionHistoryEvent.getTransactionHistory(
                                keyword: value,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ActionPillButton(
                            icon: Icons.swap_vert,
                            label: 'transactionHistory.sort.label'.tr(),
                            onTap: () {
                              if (state.isLoading ||
                                  state.isLoadingBeneficiary ||
                                  state.isLoadingCountryCombo) {
                                return;
                              }
                              AppSortBottomSheet.show(
                                context,
                                selectedValue: selectedSortValue,
                                title: 'transactionHistory.sort.title'.tr(),
                                options: [
                                  BottomSheetSortOption(
                                    title: 'transactionHistory.sort.highToLow'
                                        .tr(),
                                    value: 'pay_amount_desc',
                                    onTap: () {
                                      context.read<TransactionHistoryBloc>().add(
                                        const TransactionHistoryEvent.getTransactionHistory(
                                          sortBy: 'pay_amount',
                                          sortOrder: 'desc',
                                        ),
                                      );
                                    },
                                  ),
                                  BottomSheetSortOption(
                                    title: 'transactionHistory.sort.lowToHigh'
                                        .tr(),
                                    value: 'pay_amount_asc',
                                    onTap: () {
                                      context.read<TransactionHistoryBloc>().add(
                                        const TransactionHistoryEvent.getTransactionHistory(
                                          sortBy: 'pay_amount',
                                          sortOrder: 'asc',
                                        ),
                                      );
                                    },
                                  ),
                                  BottomSheetSortOption(
                                    title: 'transactionHistory.sort.newestFirst'
                                        .tr(),
                                    value: 'created_on_desc',
                                    onTap: () {
                                      context.read<TransactionHistoryBloc>().add(
                                        const TransactionHistoryEvent.getTransactionHistory(
                                          sortBy: 'created_on',
                                          sortOrder: 'desc',
                                        ),
                                      );
                                    },
                                  ),
                                  BottomSheetSortOption(
                                    title: 'transactionHistory.sort.oldestFirst'
                                        .tr(),
                                    value: 'created_on_asc',
                                    onTap: () {
                                      context.read<TransactionHistoryBloc>().add(
                                        const TransactionHistoryEvent.getTransactionHistory(
                                          sortBy: 'created_on',
                                          sortOrder: 'asc',
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ),

                        SizedBox(width: 12.w),

                        Expanded(
                          child: ActionPillButton(
                            icon: Icons.tune,
                            label: 'transactionHistory.filter.label'.tr(),
                            onTap: () {
                              if (state.isLoading ||
                                  state.isLoadingBeneficiary ||
                                  state.isLoadingCountryCombo) {
                                return;
                              }
                              if (beneficiaries.isEmpty || countries.isEmpty) {
                                AppNotify.toast(
                                  'transactionHistory.filter.noFilterOptions'
                                      .tr(),
                                  type: AppToastType.error,
                                );
                                return;
                              }
                              AppFilterBottomSheet.show(
                                context,
                                title: 'transactionHistory.filter.title'.tr(),
                                countryOptions: countries
                                    .map(
                                      (c) => FilterOption(
                                        title: c.name?.toUpperCase() ?? '',
                                        value: c.code.toString(),
                                      ),
                                    )
                                    .toList(),
                                beneficiaryOptions: beneficiaries
                                    .map(
                                      (b) => FilterOption(
                                        title:
                                            '${b.beneficiaryFirstName?.toUpperCase() ?? ''} '
                                            '${b.beneficiaryMiddleName?.toUpperCase() ?? ''} '
                                            '${b.beneficiaryLastName?.toUpperCase() ?? ''}',
                                        value: b.beneficiaryCode.toString(),
                                      ),
                                    )
                                    .toList(),
                                selectedCountries: state.countryCodes,
                                selectedBeneficiaries: state.beneficiaryCodes,
                                onApply: (countries, beneficiaries) {
                                  context.read<TransactionHistoryBloc>().add(
                                    TransactionHistoryEvent.getTransactionHistory(
                                      countryCodes: countries,
                                      beneficiaryCodes: beneficiaries,
                                    ),
                                  );
                                },
                                onReset: () {
                                  context.read<TransactionHistoryBloc>().add(
                                    const TransactionHistoryEvent.getTransactionHistory(
                                      countryCodes: [],
                                      beneficiaryCodes: [],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16.h),

                  Expanded(
                    child: transactions.isEmpty && !state.isLoading
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 72.w,
                                  height: 72.w,
                                  decoration: BoxDecoration(
                                    color: colorScheme.outline.withAlpha(30),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.receipt_long_outlined,
                                    size: 34.w,
                                    color: context.appColors.muted,
                                  ),
                                ),
                                SizedBox(height: 14.h),
                                Text(
                                  'transactionHistory.noTransactions'.tr(),
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    color: colorScheme.onSurface,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  'transactionHistory.noTransactionsSubtitle'
                                      .tr(),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: context.appColors.muted,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        : ListView.separated(
                            controller: scrollController,
                            itemCount:
                                transactions.length +
                                (state.isLoading && transactions.isNotEmpty
                                    ? 1
                                    : 0),
                            itemBuilder: (context, index) {
                              if (index >= transactions.length) {
                                return const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              }
                              return AppTransactionTile(
                                onTap: () {
                                  final transaction = transactions[index];
                                  context.read<TransactionHistoryBloc>().add(
                                    TransactionHistoryEvent.getTransactionHistoryDetails(
                                      beneficiaryId: transaction.eId ?? '',
                                      transactionReference:
                                          transaction.transactionReference ?? 0,
                                    ),
                                  );
                                },
                                commonTransaction: transactions[index],
                              );
                            },
                            separatorBuilder: (context, index) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Divider(
                                color: colorScheme.outline.withAlpha(60),
                                height: 4.h,
                                thickness: 0.5,
                              ),
                            ),
                          ),
                  ),
                ],
              ),

              if (state.isSorting) AppOverlayLoading(),
              if ((state.isLoading && transactions.isEmpty) ||
                  state.isLoadingBeneficiary ||
                  state.isLoadingCountryCombo ||
                  state.isLoadingDetails ||
                  state.isDownloadingOrSharingReceipt)
                AppOverlayLoading(),
            ],
          ),
        );
      },
    );
  }
}

class ActionPillButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final double borderRadius;

  const ActionPillButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Material(
      color: colorScheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(borderRadius.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius.r),
        onTap: onTap,
        child: Ink(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius.r),
            border: Border.all(
              color: colorScheme.outline.withAlpha(80),
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: colorScheme.onSurface, size: 18.sp),
              SizedBox(width: 6.w),
              Text(
                label,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
