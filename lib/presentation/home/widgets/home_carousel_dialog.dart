import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/home/home_advertisement_dto.dart';
import '../../core/cached_network_img/app_cached_network_img.dart';

class HomeCarouselDialog extends HookWidget {
  final HomeAdvertisementDto? dto;

  const HomeCarouselDialog({super.key, this.dto});

  static void show({required BuildContext context, HomeAdvertisementDto? dto}) {
    showGeneralDialog(
      context: context,
      barrierLabel: 'Advertisement',
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(
        alpha: 0.35,
      ), // lighter since we blur
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) => HomeCarouselDialog(dto: dto),
      transitionBuilder: (_, animation, __, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        );

        return FadeTransition(
          opacity: curved,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.92, end: 1).animate(curved),
              child: child,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final controller = usePageController();
    final currentPage = useState(0);

    final ads = dto?.data?.appBanners ?? [];

    final banners = ads.isNotEmpty
        ? ads.map((e) => e.link ?? '').toList()
        : [
            'https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?q=80&w=1200&auto=format&fit=crop',
            'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?q=80&w=1200&auto=format&fit=crop',
            'https://images.unsplash.com/photo-1506744038136-46273834b3fb?q=80&w=1200&auto=format&fit=crop',
          ];

    useEffect(() {
      if (banners.length <= 1) return null;

      final timer = Timer.periodic(const Duration(seconds: 3), (_) {
        if (!controller.hasClients) return;

        final next = (currentPage.value + 1) % banners.length;

        controller.animateToPage(
          next,
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeInOut,
        );
      });

      return timer.cancel;
    }, [banners.length]);

    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 220.h,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: controller,
                            itemCount: banners.length,
                            onPageChanged: (i) => currentPage.value = i,
                            itemBuilder: (_, i) => AppCachedNetworkImg(
                              imageUrl: banners[i],
                              fit: BoxFit.cover,
                            ),
                          ),

                          Positioned(
                            bottom: 10.h,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(banners.length, (i) {
                                final active = currentPage.value == i;

                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 250),
                                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                                  width: active ? 24.w : 8.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                    color: active
                                        ? colorScheme.tertiary
                                        : colorScheme.onSurface.withAlpha(120),
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Positioned(
                  top: -10.h,
                  right: -10.w,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 34.w,
                      width: 34.w,
                      decoration: BoxDecoration(
                        color: colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(
                        Icons.close_rounded,
                        color: colorScheme.primary,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
