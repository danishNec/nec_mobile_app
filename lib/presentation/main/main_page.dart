import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../beneficiary/beneficiary_page.dart';
import '../home/home_page.dart';
import '../settings/settings_page.dart';
import '../support/support_page.dart';

@RoutePage()
class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final selectedIndex = useState(0);

    final pages = const [
      HomePage(),
      BeneficiaryPage(),
      SettingsPage(),
      SupportPage(),
    ];

    void onTap(int index) {
      if (selectedIndex.value == index) return;
      selectedIndex.value = index;
      HapticFeedback.lightImpact();
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        if (selectedIndex.value != 0) {
          selectedIndex.value = 0;
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: IndexedStack(index: selectedIndex.value, children: pages),
        bottomNavigationBar: _PremiumBottomNav(
          selectedIndex: selectedIndex.value,
          onTap: onTap,
          colorScheme: colorScheme,
          theme: theme,
        ),
      ),
    );
  }
}

class _PremiumBottomNav extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTap;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _PremiumBottomNav({
    required this.selectedIndex,
    required this.onTap,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    // Reading context.locale registers this StatelessWidget as a direct
    // dependent of EasyLocalizationProvider. When the locale changes,
    // Flutter calls markNeedsBuild() here, so build() fires and the
    // .tr() calls below return the correct translated tab labels.
    context.locale;
    final items = [
      _NavItem(
        icon: Icons.home_outlined,
        activeIcon: Icons.home_rounded,
        label: 'main.tabs.home'.tr(),
      ),
      _NavItem(
        icon: Icons.account_balance_wallet_outlined,
        activeIcon: Icons.account_balance_wallet_rounded,
        label: 'main.tabs.beneficiaries'.tr(),
      ),
      _NavItem(
        icon: Icons.settings_outlined,
        activeIcon: Icons.settings_rounded,
        label: 'main.tabs.settings'.tr(),
      ),
      _NavItem(
        icon: Icons.headset_mic_outlined,
        activeIcon: Icons.headset_mic_rounded,
        label: 'main.tabs.support'.tr(),
      ),
    ];

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        border: Border(top: BorderSide(color: colorScheme.outline, width: 0.5)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 60.h,
          child: Row(
            children: List.generate(items.length, (i) {
              final item = items[i];
              final isSelected = i == selectedIndex;

              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => onTap(i),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeOut,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 180),
                          transitionBuilder: (child, anim) =>
                              ScaleTransition(scale: anim, child: child),
                          child: Icon(
                            isSelected ? item.activeIcon : item.icon,
                            key: ValueKey(isSelected),
                            size: 22.sp,
                            color: isSelected
                                ? colorScheme.tertiary
                                : colorScheme.onSurface.withAlpha(100),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 200),
                          style: theme.textTheme.labelSmall!.copyWith(
                            fontSize: 10.sp,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: isSelected
                                ? colorScheme.tertiary
                                : colorScheme.onSurface.withAlpha(100),
                          ),
                          child: Text(
                            item.label,
                            maxLines: 1,
                            style: theme.textTheme.labelSmall!.copyWith(
                              fontSize: 10.sp,
                              overflow: TextOverflow.ellipsis,
                              color: isSelected
                                  ? colorScheme.tertiary
                                  : colorScheme.onSurface.withAlpha(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;

  const _NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
