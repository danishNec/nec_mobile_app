import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/branches/branches_bloc.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/overlay_loading/app_overlay_loading.dart';
import '../core/scaffold/app_scaffold.dart';
import '../core/text_form_field/app_text_form_field.dart';
import 'widgets/branches_item.dart';

@RoutePage()
class BranchesPage extends StatefulWidget {
  const BranchesPage({super.key});

  @override
  State<BranchesPage> createState() => _BranchesPageState();
}

class _BranchesPageState extends State<BranchesPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AppScaffold(
      onTapOutside: () => FocusScope.of(context).unfocus(),
      appBar: AppAppBar(title: 'ourBranches.title'.tr()),
      body: BlocBuilder<BranchesBloc, BranchesState>(
        builder: (context, state) {
          return state.branchesListFailureOrSuccessOption.fold(
            () => AppOverlayLoading(),
            (either) => either.fold(
              (failure) => SizedBox(
                height: 1.sh - 200.h,
                child: Center(child: Text('ourBranches.loadError'.tr())),
              ),
              (success) {
                final branches = success.data?.branchList ?? [];
                if (branches.isEmpty) {
                  return Center(child: Text('ourBranches.noBranches'.tr()));
                }
                final query = state.searchQuery.toLowerCase().trim();

                final filteredBranches = query.isEmpty
                    ? branches
                    : branches.where((branch) {
                        final name = branch.branchName?.toLowerCase() ?? '';

                        final address = [
                          branch.address1,
                          branch.address2,
                          branch.address3,
                        ].whereType<String>().join(' ').toLowerCase();

                        return name.contains(query) || address.contains(query);
                      }).toList();

                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: AppTextFormField(
                        controller: _searchController,
                        hintText: 'ourBranches.searchHint'.tr(),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20.sp,
                          color: colorScheme.tertiary,
                        ),
                        suffixIcon: state.searchQuery.isNotEmpty
                            ? GestureDetector(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  _searchController.clear();
                                  context.read<BranchesBloc>().add(
                                    const BranchesEvent.searchBranches(''),
                                  );
                                },
                                child: Icon(
                                  Icons.clear,
                                  size: 20.sp,
                                  color: colorScheme.tertiary,
                                ),
                              )
                            : null,
                        autocorrect: false,
                        onChanged: (value) {
                          context.read<BranchesBloc>().add(
                            BranchesEvent.searchBranches(value),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Stack(
                      children: [
                        Divider(color: colorScheme.outline, thickness: 1.h),
                        if (state.isSearching)
                          Center(
                            child: SizedBox(
                              width: 20.w,
                              height: 20.w,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.w,
                                color: colorScheme.tertiary,
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Expanded(
                      child: filteredBranches.isEmpty
                          ? Center(child: Text('ourBranches.noBranches'.tr()))
                          : ListView.separated(
                              itemCount: filteredBranches.length,
                              padding: EdgeInsets.fromLTRB(
                                16.w,
                                0,
                                16.w,
                                MediaQuery.of(context).padding.bottom + 8.h,
                              ),
                              itemBuilder: (context, index) {
                                final branch = filteredBranches[index];
                                return BranchesItem(branch: branch);
                              },
                              separatorBuilder: (_, _) =>
                                  SizedBox(height: 10.h),
                            ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
