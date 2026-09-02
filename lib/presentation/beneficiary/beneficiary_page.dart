import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/beneficiary/beneficiary_bloc.dart';
import '../../domain/beneficiary/beneficiary_failure.dart';
import '../../domain/beneficiary/beneficiary_list_dto.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/bottom_sheet/app_action_sheet.dart';
import '../core/button/app_button.dart';
import '../core/notify/app_notify.dart';
import '../core/app_states/app_state_view.dart';
import '../core/overlay_loading/app_overlay_loading.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/theme/app_theme_ext.dart';
import '../core/widgets/locale_bloc_builder.dart';
import '../routes/app_routes.gr.dart';
import 'widgets/beneficiary_tile.dart';

@RoutePage()
class BeneficiaryPage extends HookWidget {
  const BeneficiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final searchQuery = useState('');

    useEffect(() {
      context.read<BeneficiaryBloc>().add(
        const BeneficiaryEvent.getBeneficiaries(),
      );
      return null;
    }, const []);

    return LocaleBlocConsumer<BeneficiaryBloc, BeneficiaryState>(
      listenWhen: (prev, curr) =>
          curr.deleteBeneficiaryFailureOrSuccessOption !=
          prev.deleteBeneficiaryFailureOrSuccessOption,
      listener: (context, state) {
        state.deleteBeneficiaryFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              final msg = failure.maybeMap(
                unableToDeleteBeneficiary: (e) => e.message,
                serverError: (e) => e.message,
                orElse: () => 'beneficiaries.delete.error'.tr(),
              );
              DialogHelper.show(
                context,
                type: AppDialogType.error,
                title: 'beneficiaries.delete.errorTitle'.tr(),
                message: msg,
                onPressed: () => context.router.pop(),
              );
            },
            (_) {
              AppNotify.toast('beneficiaries.delete.success'.tr());
            },
          ),
        );
      },
      builder: (context, state) {
        final list = state.beneficiaryListDto?.data?.beneficiaryList ?? [];

        final query = searchQuery.value.trim().toLowerCase();
        final filteredList = query.isEmpty
            ? list
            : list.where((b) {
                final name =
                    '${b.beneficiaryFirstName ?? ''} ${b.beneficiaryLastName ?? ''}'
                        .toLowerCase();
                return name.contains(query) ||
                    (b.beneficiaryBankName ?? '').toLowerCase().contains(
                      query,
                    ) ||
                    (b.currencyCode ?? '').toLowerCase().contains(query) ||
                    (b.beneficiaryCountryName ?? '').toLowerCase().contains(
                      query,
                    );
              }).toList();

        final isInitialLoading = state.isLoading && list.isEmpty;

        return AppScaffold(
          appBar: AppAppBar(title: 'beneficiaries.title'.tr()),
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(height: 12.h),
                    AppButton(
                      text: 'buttons.addNewBeneficiary'.tr(),
                      onTap: () {
                        context.read<BeneficiaryBloc>().add(
                          const BeneficiaryEvent.getBeneficiaryCountries(),
                        );
                        context.router.push(const BeneficiaryAddForm());
                      },
                    ),
                    if (!isInitialLoading && list.isNotEmpty) ...[
                      Divider(height: 32.h),
                      _SearchField(
                        controller: searchController,
                        hasQuery: searchQuery.value.isNotEmpty,
                        onChanged: (v) => searchQuery.value = v,
                        onClear: () {
                          searchController.clear();
                          searchQuery.value = '';
                        },
                      ),
                    ],
                    SizedBox(height: 16.h),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 280),
                        switchInCurve: Curves.easeOut,
                        switchOutCurve: Curves.easeIn,
                        transitionBuilder: (child, animation) => FadeTransition(
                          opacity: animation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0, 0.03),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          ),
                        ),
                        child: list.isEmpty
                            ? AppEmptyView(
                                key: const ValueKey('empty'),
                                icon: Icons.people_outline_rounded,
                                title: 'beneficiaries.empty.title'.tr(),
                                subtitle: 'beneficiaries.empty.subtitle'.tr(),
                              )
                            : filteredList.isEmpty
                            ? AppEmptyView(
                                key: const ValueKey('no-results'),
                                icon: Icons.search_off_rounded,
                                title: 'beneficiaries.noSearchResults'.tr(),
                              )
                            : _BeneficiaryList(
                                key: const ValueKey('list'),
                                list: filteredList,
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              if (state.isDeleting) const AppOverlayLoading(),
            ],
          ),
        );
      },
    );
  }
}

// ─── Search field ─────────────────────────────────────────────────────────────

class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final bool hasQuery;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  const _SearchField({
    required this.controller,
    required this.hasQuery,
    required this.onChanged,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyMedium,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'beneficiaries.searchHint'.tr(),
        prefixIcon: Icon(
          Icons.search_rounded,
          size: 20.sp,
          color: appColors.muted,
        ),
        suffixIcon: hasQuery
            ? IconButton(
                icon: Icon(
                  Icons.close_rounded,
                  size: 18.sp,
                  color: appColors.muted,
                ),
                onPressed: onClear,
              )
            : null,
      ),
    );
  }
}

// ─── List ─────────────────────────────────────────────────────────────────────

class _BeneficiaryList extends StatelessWidget {
  final List<BeneficiaryList> list;

  const _BeneficiaryList({super.key, required this.list});

  void _showActions(BuildContext context, BeneficiaryList b) {
    final eId = b.eId ?? '';
    final appColors = context.appColors;
    final cs = Theme.of(context).colorScheme;

    AppActionSheet.show(
      context,
      title: 'beneficiaries.actions.title'.tr(),
      description: 'beneficiaries.actions.description'.tr(),
      items: [
        AppActionSheetItem(
          title: 'beneficiaries.actions.edit'.tr(),
          subtitle: 'beneficiaries.actions.editSubtitle'.tr(),
          icon: Icons.edit_outlined,
          color: appColors.statusInitiated,
          onTap: () {
            context.read<BeneficiaryBloc>().add(
              BeneficiaryEvent.getBeneficiaryById(eId),
            );
            context.router.push(const BeneficiaryEditForm());
          },
        ),
        AppActionSheetItem(
          title: 'beneficiaries.actions.delete'.tr(),
          subtitle: 'beneficiaries.actions.deleteSubtitle'.tr(),
          icon: Icons.delete_outline_rounded,
          color: appColors.errorDark,
          isDestructive: true,
          onTap: () {
            if (eId.isEmpty) return;
            _showDeleteConfirmation(context, eId, appColors, cs);
          },
        ),
      ],
    );
  }

  void _showDeleteConfirmation(
    BuildContext context,
    String eId,
    dynamic appColors,
    ColorScheme cs,
  ) {
    DialogHelper.show(
      context,
      type: AppDialogType.warning,
      title: 'beneficiaries.delete.confirmTitle'.tr(),
      message: 'beneficiaries.delete.confirmMessage'.tr(),
      showTwoButtons: true,
      primaryButton: AppButton(
        text: 'buttons.cancel'.tr(),
        backgroundColor: cs.secondaryContainer,
        textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: cs.onSurface,
        ),
        onTap: () => context.router.pop(),
      ),
      secondaryButton: AppButton(
        text: 'buttons.delete'.tr(),
        backgroundColor: appColors.errorDark,
        onTap: () {
          context.router.pop();
          context.read<BeneficiaryBloc>().add(
            BeneficiaryEvent.deleteBeneficiary(eId),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 20.h),
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: list.length,
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      itemBuilder: (context, i) {
        final b = list[i];
        return BeneficiaryTile(
          key: ValueKey(b.eId ?? i),
          beneficiary: b,
          onTap: () => _showActions(context, b),
          onMoreTap: () => _showActions(context, b),
        );
      },
    );
  }
}
