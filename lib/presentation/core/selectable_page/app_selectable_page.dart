import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/common/common_selectable_dto.dart';
import '../app_bar/app_app_bar.dart';
import '../global/app_global.dart';
import '../scaffold/app_scaffold.dart';
import '../svg/app_svg.dart';
import '../text_form_field/app_text_form_field.dart';

// ─── Isolate helpers ──────────────────────────────────────────────────────────

// Top-level so compute() can send across isolates.
// CommonSelectableItem is all-nullable Strings — safely sendable.
class _FilterParams {
  final List<CommonSelectableItem> list;
  final String query; // already lowercased + trimmed by caller
  const _FilterParams(this.list, this.query);
}

List<CommonSelectableItem> _filterItemsIsolate(_FilterParams p) =>
    p.list.where((item) {
      final name = item.titleName?.toLowerCase() ?? '';
      final code = item.trailingCode?.toLowerCase() ?? '';
      return name.contains(p.query) || code.contains(p.query);
    }).toList();

// ─── Selection equality ───────────────────────────────────────────────────────

bool _itemMatches(
  CommonSelectableItem item,
  CommonSelectableItem? selected,
  bool checkTrailing,
) {
  if (selected == null) return false;
  if (item.titleCode != selected.titleCode) return false;
  return checkTrailing ? item.trailingCode == selected.trailingCode : true;
}

// ─── Row height (must match itemExtent in _SelectableList) ────────────────────

// Every item slot = tile + separator. Keeping this as a plain function (not
// extension) means it works outside of BuildContext (e.g., in useEffect).
// ScreenUtil must be initialised before calling — guaranteed because this is
// only ever called inside build() or addPostFrameCallback().
double _rowH(bool isShowTrailing) =>
    (isShowTrailing ? 50.h : 42.h) + 10.h; // tile_h + separator_h

// ─── Scroll helper ─────────────────────────────────────────────────────────────
//
// The previous approach:
//   jumpTo( (index / total) × maxScrollExtent )
//
// …caused a multi-second freeze on lists > 10 000 items because
// ListView.separated uses SliverList (variable-height sliver). SliverList has
// no way to know where item N starts without building items 0…N-1 first — so
// a jumpTo to a distant unbuilt offset triggers O(n) widget construction on
// the main thread (confirmed: flutter/flutter#52207).
//
// The fix: set itemExtent on ListView.builder, which switches the sliver to
// SliverFixedExtentList. That sliver computes any item's pixel offset as
//   item_index × itemExtent   →   O(1), no intermediate items built.
//
// _scrollToIndex uses the same formula, so the target offset is exact with
// no GlobalKey lookups or RenderBox traversals needed.
Future<void> _scrollToIndex(
  ScrollController controller,
  int index,
  double rowH,
) async {
  if (!controller.hasClients) return;

  // SliverFixedExtentList computes maxScrollExtent = itemCount × rowH during
  // the very first layout, so content dimensions are available immediately.
  // Wait one frame only as a safety net for edge cases (e.g. first build not
  // yet committed when the postFrameCallback fires on a cold start).
  if (!controller.position.hasContentDimensions) {
    await Future.delayed(const Duration(milliseconds: 16));
    if (!controller.hasClients) return;
  }

  final position = controller.position;

  // Place the item 20 % from the top of the viewport for comfortable reading.
  final targetOffset = (index * rowH - position.viewportDimension * 0.2).clamp(
    position.minScrollExtent,
    position.maxScrollExtent,
  );

  if ((controller.offset - targetOffset).abs() < 1.0) return;

  // Animate for short distances; jump for large ones. A 500 ms animation
  // scrolling across thousands of pixels would be disorienting — an instant
  // jump followed by the user seeing the item in-place is better UX.
  if ((controller.offset - targetOffset).abs() <
      position.viewportDimension * 3) {
    await controller.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeOutCubic,
    );
  } else {
    controller.jumpTo(targetOffset);
  }
}

// ─── Page ─────────────────────────────────────────────────────────────────────

@RoutePage()
class AppSelectablePage extends HookWidget {
  final bool isShowLeading;
  final bool isShowTrailing;
  final String? title;
  final CommonSelectableDto? commonSelectableDto;
  final ValueChanged<CommonSelectableItem>? onSelected;
  final CommonSelectableItem? initialSelectedItem;

  const AppSelectablePage({
    super.key,
    this.isShowLeading = false,
    this.isShowTrailing = false,
    this.title,
    this.commonSelectableDto,
    this.onSelected,
    this.initialSelectedItem,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final searchController = useTextEditingController();

    // Tracks the empty→non-empty transition only, so the full page does NOT
    // rebuild on every keystroke (the original useListenable(searchController)
    // rebuilt the entire widget tree — including the ListView — on every char).
    final hasQuery = useState(false);

    final scrollController = useScrollController();

    // Stabilise the list reference across rebuilds. Without useMemoized the
    // inline `?? []` creates a new List instance every build(), breaking
    // reference-equality checks in useEffect dependency arrays.
    final originalList = useMemoized<List<CommonSelectableItem>>(
      () => commonSelectableDto?.data?.list ?? const [],
      [commonSelectableDto],
    );

    final filteredList = useState<List<CommonSelectableItem>>(originalList);
    final selectedItem = useState<CommonSelectableItem?>(initialSelectedItem);
    final isSearching = useState(false);

    // Epoch key: stagger animation replays on filter changes but not on
    // unrelated rebuilds (isSearching toggle, etc.).
    final animationEpoch = useState(0);

    // Generation counter: guards against a slow isolate overwriting a newer
    // filter result when the user types faster than the isolate completes.
    final filterGeneration = useRef(0);
    final debounceTimer = useRef<Timer?>(null);

    // ── Validate initialSelectedItem (runs once on mount) ──────────────────
    useEffect(() {
      if (initialSelectedItem == null) return null;
      final exists = originalList.any(
        (e) => e.titleCode == initialSelectedItem!.titleCode,
      );
      if (exists) selectedItem.value = initialSelectedItem;
      return null;
    }, const []);

    // ── Scroll to pre-selected item (runs once on mount) ───────────────────
    //
    // const [] means this fires EXACTLY ONCE at page open to position an
    // existing selection. It intentionally does NOT re-fire on user taps.
    //
    // Why not [selectedItem.value]: when the user taps, selectedItem changes
    // and the page pops 180 ms later. Re-triggering a 450 ms animateTo here
    // fights the route-exit animation and causes the perceived "freeze".
    // Tapped items are always visible (the user touched them), so no scroll
    // is needed after a tap anyway.
    useEffect(() {
      final sel = selectedItem.value;
      if (sel == null) return null;

      final index = filteredList.value.indexWhere(
        (item) => _itemMatches(item, sel, isShowTrailing),
      );
      if (index == -1) return null;

      // rowH must match the itemExtent used by _SelectableList exactly.
      final rowH = _rowH(isShowTrailing);

      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (!context.mounted) return;
        await _scrollToIndex(scrollController, index, rowH);
      });

      return null;
    }, const []);

    // ── Search / filter ────────────────────────────────────────────────────
    useEffect(() {
      var prevText = searchController.text;

      void listener() {
        final query = searchController.text;
        if (query == prevText)
          return; // ignore focus / cursor-move notifications
        prevText = query;

        hasQuery.value = query.isNotEmpty;

        if (query.isEmpty) {
          debounceTimer.value?.cancel();
          isSearching.value = false;
          // Direct reference — no copy. originalList is never mutated.
          // ValueNotifier skips the rebuild if the reference is unchanged.
          filteredList.value = originalList;
          animationEpoch.value++;
          return;
        }

        debounceTimer.value?.cancel();
        isSearching.value = true;

        debounceTimer.value = Timer(
          const Duration(milliseconds: 300),
          () async {
            final generation = ++filterGeneration.value;
            final search = query.toLowerCase().trim();

            List<CommonSelectableItem> result;

            // Offload to background isolate for large lists to keep the main
            // thread free of frame drops. 500 items sync-filters in < 0.5 ms
            // (well within the 16 ms budget); beyond that point the cost grows
            // linearly and starts stealing frames.
            if (originalList.length > 500) {
              result = await compute(
                _filterItemsIsolate,
                _FilterParams(originalList, search),
              );
            } else {
              result = originalList.where((item) {
                final name = item.titleName?.toLowerCase() ?? '';
                final code = item.trailingCode?.toLowerCase() ?? '';
                return name.contains(search) || code.contains(search);
              }).toList();
            }

            // Discard stale results if a newer query completed first.
            if (generation != filterGeneration.value) return;
            if (!context.mounted) return;

            filteredList.value = result;
            animationEpoch.value++;
            isSearching.value = false;
          },
        );
      }

      searchController.addListener(listener);
      return () {
        debounceTimer.value?.cancel();
        searchController.removeListener(listener);
      };
    }, [searchController, originalList]);

    return AppScaffold(
      appBar: AppAppBar(
        title: 'core.selectablePage.title'.tr(
          namedArgs: {'title': title ?? ''},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppTextFormField(
              controller: searchController,
              hintText: 'core.selectablePage.searchPlaceholder'.tr(
                namedArgs: {'title': title ?? ''},
              ),
              prefixIcon: Icon(Icons.search, size: 20.sp),
              autocorrect: false,
              suffixIcon: hasQuery.value
                  ? TweenAnimationBuilder<double>(
                      key: const ValueKey('clear'),
                      tween: Tween(begin: 0.0, end: 1.0),
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOut,
                      builder: (_, value, child) => Opacity(
                        opacity: value,
                        child: Transform.scale(scale: value, child: child!),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.clear, size: 20.sp),
                        onPressed: () {
                          searchController.clear();
                          isSearching.value = false;
                        },
                      ),
                    )
                  : null,
            ),
          ),
          SizedBox(height: 12.h),
          Stack(
            alignment: Alignment.center,
            children: [
              Divider(color: colorScheme.outline, thickness: 1.h),
              AnimatedOpacity(
                opacity: isSearching.value ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
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
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 280),
              switchInCurve: Curves.easeOut,
              switchOutCurve: Curves.easeIn,
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut,
                ),
                child: child,
              ),
              child: filteredList.value.isEmpty
                  ? _EmptyState(
                      key: const ValueKey('empty'),
                      title: title ?? '',
                    )
                  : _SelectableList(
                      key: const ValueKey('list'),
                      scrollController: scrollController,
                      items: filteredList.value,
                      selectedItem: selectedItem.value,
                      isShowLeading: isShowLeading,
                      isShowTrailing: isShowTrailing,
                      animationEpoch: animationEpoch.value,
                      onItemTap: (item) {
                        selectedItem.value = item;
                        HapticFeedback.lightImpact();
                        Future.delayed(const Duration(milliseconds: 180), () {
                          if (!context.mounted) return;
                          onSelected?.call(item);
                          context.router.pop();
                        });
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── List widget ──────────────────────────────────────────────────────────────

// Extracted into its own StatelessWidget so that parent state changes that do
// not affect the list (isSearching, hasQuery, etc.) skip this subtree entirely
// during Flutter's element reconciliation.
class _SelectableList extends StatelessWidget {
  final ScrollController scrollController;
  final List<CommonSelectableItem> items;
  final CommonSelectableItem? selectedItem;
  final bool isShowLeading;
  final bool isShowTrailing;
  final int animationEpoch;
  final ValueChanged<CommonSelectableItem> onItemTap;

  const _SelectableList({
    super.key,
    required this.scrollController,
    required this.items,
    required this.selectedItem,
    required this.isShowLeading,
    required this.isShowTrailing,
    required this.animationEpoch,
    required this.onItemTap,
  });

  // Only the first N items receive the stagger-slide animation. The original
  // code created one TweenAnimationBuilder (= one AnimationController + Ticker)
  // per item, so a 10 000-item list spun up 10 000 animation objects on every
  // filter change — enough to stall the main thread for several seconds.
  static const int _maxAnimatedItems = 15;

  @override
  Widget build(BuildContext context) {
    // tile_h + separator_h = one row slot.
    // Must equal _rowH(isShowTrailing) used by _scrollToIndex so offsets match.
    final tileH = isShowTrailing ? 50.h : 42.h;
    final sepH = 10.h;
    final rowH = tileH + sepH;

    return ListView.builder(
      controller: scrollController,
      physics: const ClampingScrollPhysics(),
      // itemExtent switches the backing sliver from SliverList to
      // SliverFixedExtentList. SliverFixedExtentList stores item extents
      // analytically (offset = index × extent), so ScrollController.jumpTo()
      // to any unbuilt index is O(1) — no intermediate items are constructed.
      // Without itemExtent, SliverList must build every item from 0..target
      // to know their positions, making jumpTo O(n) and freezing the UI for
      // large lists (flutter/flutter#52207).
      itemExtent: rowH,
      // Pre-render items one full viewport ahead in each direction so fast
      // flings don't expose blank tiles. 500 lp covers most phone viewports.
      cacheExtent: 500,
      padding: EdgeInsets.only(bottom: 26.h, left: 16.w, right: 16.w),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        final isSelected = _itemMatches(item, selectedItem, isShowTrailing);

        // Each slot = SizedBox(tileH) + SizedBox(sepH) = rowH.
        // RepaintBoundary isolates repaints: a selection change on one tile
        // does not trigger repaint of all sibling tiles.
        final tile = Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: tileH,
              child: RepaintBoundary(
                child: AppSelectableTile(
                  item: item,
                  isSelected: isSelected,
                  isShowLeading: isShowLeading,
                  isShowTrailing: isShowTrailing,
                  onTap: () => onItemTap(item),
                ),
              ),
            ),
            SizedBox(height: sepH),
          ],
        );

        // Skip animation for off-screen items; they don't benefit visually
        // and the animation objects consume significant memory.
        if (index >= _maxAnimatedItems) return tile;

        return TweenAnimationBuilder<double>(
          key: ValueKey('${animationEpoch}_$index'),
          tween: Tween(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 260 + (index * 28)),
          curve: Curves.easeOutCubic,
          builder: (_, value, child) => Transform.translate(
            offset: Offset(0, 20.h * (1 - value)),
            child: Opacity(opacity: value.clamp(0.0, 1.0), child: child!),
          ),
          child: tile,
        );
      },
    );
  }
}

// ─── Tile ─────────────────────────────────────────────────────────────────────

class AppSelectableTile extends HookWidget {
  final CommonSelectableItem item;
  final bool isSelected;
  final bool isShowLeading;
  final bool isShowTrailing;
  final VoidCallback onTap;

  const AppSelectableTile({
    super.key,
    required this.item,
    required this.isSelected,
    required this.isShowLeading,
    required this.isShowTrailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final isPressed = useState(false);

    final scale = isPressed.value ? 0.97 : (isSelected ? 1.015 : 1.0);
    final scaleDuration = isPressed.value ? 80 : 220;
    final scaleCurve = isPressed.value
        ? Curves.easeIn
        : Curves.easeOutBack as Curve;

    return AnimatedScale(
      scale: scale,
      duration: Duration(milliseconds: scaleDuration),
      curve: scaleCurve,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: isSelected
              ? colorScheme.tertiary.withAlpha(20)
              : colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected
                ? colorScheme.tertiary.withAlpha(180)
                : colorScheme.outline,
            width: 1.w,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: colorScheme.tertiary.withAlpha(28),
                    blurRadius: 8.r,
                    spreadRadius: 0,
                    offset: const Offset(0, 2),
                  ),
                ]
              : const [],
        ),
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: InkWell(
            onTap: onTap,
            onHighlightChanged: (highlighted) => isPressed.value = highlighted,
            borderRadius: BorderRadius.circular(8.r),
            splashColor: colorScheme.tertiary.withAlpha(15),
            highlightColor: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Row(
                children: [
                  _buildLeading(colorScheme),
                  Expanded(child: _buildTitle(theme, colorScheme)),
                  if (isShowTrailing) ...[
                    SizedBox(width: 8.w),
                    _buildTrailing(theme, colorScheme),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeading(ColorScheme colorScheme) {
    if (isShowLeading) {
      return SizedBox(
        child: Row(
          children: [
            AppSvg(
              asset: AppGlobal.getFlagAsset(item.titleCode),
              width: 24.w,
              height: 20.w,
            ),
            SizedBox(width: 12.w),
          ],
        ),
      );
    }
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 220),
      transitionBuilder: (child, animation) => ScaleTransition(
        scale: CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
        child: FadeTransition(opacity: animation, child: child),
      ),
      child: isSelected
          ? Row(
              children: [
                Icon(
                  Icons.check_circle,
                  key: const ValueKey(true),
                  size: 20.sp,
                  color: colorScheme.tertiary,
                ),
                SizedBox(width: 12.w),
              ],
            )
          : SizedBox.shrink(key: const ValueKey(false)),
    );
  }

  Widget _buildTitle(ThemeData theme, ColorScheme colorScheme) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeInOut,
      style: (theme.textTheme.bodyMedium ?? const TextStyle()).copyWith(
        fontSize: 15.sp,
        fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
        color: isSelected ? colorScheme.tertiary : colorScheme.onPrimary,
      ),
      child: Text(
        item.titleName?.toUpperCase() ?? '',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildTrailing(ThemeData theme, ColorScheme colorScheme) {
    return Container(
      width: 50.w,
      height: 30.h,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        item.trailingCode?.toUpperCase() ?? '',
        style: theme.textTheme.bodySmall?.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          color: colorScheme.onTertiary.withAlpha(200),
        ),
      ),
    );
  }
}

// ─── Empty state ──────────────────────────────────────────────────────────────

class _EmptyState extends StatelessWidget {
  final String title;

  const _EmptyState({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 380),
      curve: Curves.easeOutCubic,
      builder: (_, value, child) => Transform.translate(
        offset: Offset(0, 16.h * (1 - value)),
        child: Opacity(opacity: value, child: child!),
      ),
      child: Center(
        child: Text(
          'core.selectablePage.noResults'.tr(namedArgs: {'title': title}),
          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
