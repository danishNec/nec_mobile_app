import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/shimmer/app_shimmer.dart';

class HomeShimmerView extends StatelessWidget {
  const HomeShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Row(
              children: [
                AppShimmer(
                  width: 44.w,
                  height: 44.h,
                  borderRadius: BorderRadius.circular(22.r),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppShimmer(width: 120.w, height: 12.h),
                    SizedBox(height: 6.h),
                    AppShimmer(width: 170.w, height: 10.h),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 18.h),

          AppShimmer(
            width: 150.w,
            height: 14.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
          ),

          SizedBox(height: 12.h),

          SizedBox(
            height: 75.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              separatorBuilder: (_, __) => SizedBox(width: 10.w),
              itemBuilder: (_, __) {
                return AppShimmer(
                  borderRadius: BorderRadius.circular(14.r),
                  child: Container(
                    width: 220.w,
                    padding: EdgeInsets.all(10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppShimmer(width: 100.w, height: 12.h),
                        SizedBox(height: 8.h),
                        AppShimmer(width: 140.w, height: 10.h),
                        SizedBox(height: 8.h),
                        AppShimmer(width: 160.w, height: 10.h),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 18.h),

          AppShimmer(
            borderRadius: BorderRadius.circular(14.r),
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppShimmer(width: 100.w, height: 12.h),
                  SizedBox(height: 10.h),
                  AppShimmer(height: 36.h),
                  SizedBox(height: 10.h),
                  AppShimmer(width: 140.w, height: 10.h),
                  SizedBox(height: 10.h),
                  AppShimmer(height: 36.h),
                ],
              ),
            ),
          ),

          SizedBox(height: 18.h),

          AppShimmer(
            width: 120.w,
            height: 12.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
          ),
          SizedBox(height: 10.h),
          AppShimmer(
            height: 40.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            borderRadius: BorderRadius.circular(12.r),
          ),

          SizedBox(height: 16.h),

          AppShimmer(
            width: 120.w,
            height: 12.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
          ),
          SizedBox(height: 10.h),
          AppShimmer(
            height: 40.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            borderRadius: BorderRadius.circular(12.r),
          ),

          SizedBox(height: 16.h),

          AppShimmer(
            width: 120.w,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            height: 12.h,
          ),
          SizedBox(height: 10.h),
          AppShimmer(
            height: 40.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            borderRadius: BorderRadius.circular(12.r),
          ),

          SizedBox(height: 20.h),

          AppShimmer(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            borderRadius: BorderRadius.circular(12.r),
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                children: List.generate(
                  5,
                      (index) => Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppShimmer(width: 120.w, height: 10.h),
                        AppShimmer(width: 60.w, height: 10.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20.h),

          AppShimmer(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            borderRadius: BorderRadius.circular(14.r),
            child: Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Expanded(flex: 2, child: AppShimmer(height: 36.h)),
                  SizedBox(width: 10.w),
                  Expanded(flex: 3, child: AppShimmer(height: 36.h)),
                ],
              ),
            ),
          ),

          SizedBox(height: 20.h),

          AppShimmer(
            width: 150.w,
            height: 14.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
          ),

          SizedBox(height: 12.h),

          Column(
            children: List.generate(
              2,
                  (index) => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 10.h,
                ),
                child: Row(
                  children: [
                    AppShimmer(
                      width: 36.w,
                      height: 36.h,
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppShimmer(width: 120.w, height: 12.h),
                          SizedBox(height: 5.h),
                          AppShimmer(width: 160.w, height: 10.h),
                        ],
                      ),
                    ),
                    AppShimmer(width: 50.w, height: 12.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
