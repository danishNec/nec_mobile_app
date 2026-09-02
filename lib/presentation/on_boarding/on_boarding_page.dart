import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/on_boarding/on_boarding_bloc.dart';
import '../../domain/core/di/injection.dart';
import '../core/app_bar/app_app_bar.dart';
import '../core/button/app_button.dart';
import '../core/dialog/app_language_dialog.dart';
import '../core/images/app_image.dart';
import '../core/scaffold/app_scaffold.dart';
import '../routes/app_routes.dart';
import '../routes/app_routes.gr.dart';
import 'widgets/on_boarding_content.dart';

@RoutePage()
class OnBoardingPage extends HookWidget {
  const OnBoardingPage({super.key});

  static const _pageCount = 2;

  static const _pages = [
    OnBoardingData(
      title: 'onboarding.slides.first.title',
      description: 'onboarding.slides.first.description',
    ),
    OnBoardingData(
      title: 'onboarding.slides.second.title',
      description: 'onboarding.slides.second.description',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final router = useMemoized(() => getIt<AppRouter>());

    final pageController = usePageController();

    // useState returns a ValueNotifier<int> — pass directly to AppPageIndicator.
    final currentPage = useState(0);

    final entrance = useAnimationController(
      duration: const Duration(milliseconds: 680),
    );

    // Reset + replay entrance animation on every page change (and on first render).
    useEffect(() {
      entrance.reset();
      entrance.forward();
      return null;
    }, [currentPage.value]);

    void onNext() {
      if (currentPage.value == _pageCount - 1) {
        context.read<OnBoardingBloc>().add(
          const OnBoardingEvent.loadOnBoarding(),
        );
      } else {
        pageController.nextPage(
          duration: const Duration(milliseconds: 380),
          curve: Curves.easeInOut,
        );
      }
    }

    return BlocConsumer<OnBoardingBloc, OnBoardingState>(
      listener: (context, state) {
        state.maybeWhen(
          loadSuccessOnBoarding: () => router.replaceAll([const LoginRoute()]),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Stack(
          children: [
            AppScaffold(
              appBar: AppAppBar(
                centerTitle: true,
                titleWidget: Image.asset(AppImages.logo, width: 140.w),
                actions: [
                  InkWell(
                    onTap: () {
                      AppLanguageDialog.show(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 6.h,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            size: 20.sp,
                            color: colorScheme.onPrimary,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            context.locale.languageCode.toUpperCase(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  // ── Pages ────────────────────────────────────────────
                  Expanded(
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: _pageCount,
                      onPageChanged: (i) => currentPage.value = i,
                      itemBuilder: (_, i) => OnBoardingContent(
                        data: _pages[i],
                        pageIndex: i,
                        entrance: entrance,
                      ),
                    ),
                  ),

                  // ── Page dots ─────────────────────────────────────────
                  _PageDots(count: _pageCount, currentPage: currentPage),

                  // ── CTA button ────────────────────────────────────────
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24.w, 4.h, 24.w, 0),
                      child: AppButton(
                        onTap: onNext,
                        text: currentPage.value == _pageCount - 1
                            ? 'buttons.getStarted'.tr()
                            : 'buttons.next'.tr(),
                        sideWidgetPosition: SideWidgetPosition.right,
                        useSpaceBetween: true,
                        sideWidget: Icon(
                          Icons.arrow_forward,
                          size: 20.r,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

// ── Inline page indicator ──────────────────────────────────────────────────

class _PageDots extends StatelessWidget {
  const _PageDots({required this.count, required this.currentPage});

  final int count;
  final ValueNotifier<int> currentPage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ValueListenableBuilder<int>(
      valueListenable: currentPage,
      builder: (context0, page, child0) => Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(count, (i) {
            final active = i == page;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 320),
              curve: Curves.easeInOut,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              height: 6.h,
              width: active ? 28.w : 6.w,
              decoration: BoxDecoration(
                color: active
                    ? theme.colorScheme.tertiary
                    : theme.colorScheme.onSurface.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(3.r),
              ),
            );
          }),
        ),
      ),
    );
  }
}

// ── Data model ─────────────────────────────────────────────────────────────

class OnBoardingData {
  final String title;
  final String description;

  const OnBoardingData({required this.title, required this.description});
}
