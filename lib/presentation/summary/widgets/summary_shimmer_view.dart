import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/shimmer/app_shimmer.dart';

class SummaryShimmerView extends StatelessWidget {
  const SummaryShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _stepItem(),
              Expanded(child: AppShimmer(height: 4.h)),
              _stepItem(),
              Expanded(child: AppShimmer(height: 4.h)),
              _stepItem(isLast: true),
            ],
          ),

          SizedBox(height: 20.h),
          AppShimmer(width: 140.w, height: 12.h),
          SizedBox(height: 20.h),

          AppShimmer(
            borderRadius: BorderRadius.circular(16.r),
            child: Container(
              padding: EdgeInsets.all(14.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppShimmer(
                        width: 40.w,
                        height: 28.h,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      SizedBox(width: 10.w),
                      AppShimmer(width: 100.w, height: 10.h),
                    ],
                  ),

                  SizedBox(height: 14.h),

                  AppShimmer(width: 200.w, height: 12.h),
                  SizedBox(height: 10.h),

                  AppShimmer(width: 160.w, height: 10.h),
                  SizedBox(height: 10.h),

                  AppShimmer(width: 220.w, height: 10.h),
                  SizedBox(height: 10.h),

                  AppShimmer(width: 180.w, height: 10.h),

                  SizedBox(height: 16.h),

                  AppShimmer(width: 150.w, height: 10.h),
                  SizedBox(height: 10.h),

                  AppShimmer(width: 180.w, height: 10.h),
                ],
              ),
            ),
          ),

          SizedBox(height: 20.h),
          AppShimmer(width: 140.w, height: 12.h),
          SizedBox(height: 20.h),

          AppShimmer(
            borderRadius: BorderRadius.circular(16.r),
            child: Container(
              padding: EdgeInsets.all(14.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppShimmer(width: 100.w, height: 12.h),
                      AppShimmer(
                        width: 36.w,
                        height: 24.h,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  AppShimmer(width: 120.w, height: 18.h),

                  SizedBox(height: 16.h),

                  Center(
                    child: AppShimmer(width: 140.w, height: 20.h),
                  ),

                  SizedBox(height: 16.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppShimmer(width: 120.w, height: 12.h),
                      AppShimmer(
                        width: 36.w,
                        height: 24.h,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  AppShimmer(width: 120.w, height: 18.h),
                ],
              ),
            ),
          ),

          SizedBox(height: 20.h),

          AppShimmer(width: 140.w, height: 12.h),
          SizedBox(height: 10.h),
          AppShimmer(height: 44.h, borderRadius: BorderRadius.circular(12.r)),

          SizedBox(height: 20.h),

          AppShimmer(width: 120.w, height: 12.h),
          SizedBox(height: 10.h),
          AppShimmer(
            borderRadius: BorderRadius.circular(12.r),
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppShimmer(width: 140.w, height: 10.h),
                        AppShimmer(width: 60.w, height: 10.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _stepItem({bool isLast = false}) {
    return Column(
      children: [
        AppShimmer(
          width: 40.w,
          height: 40.h,
          borderRadius: BorderRadius.circular(20.r),
        ),
        SizedBox(height: 6.h),
        if (!isLast) AppShimmer(width: 70.w, height: 8.h),
      ],
    );
  }
}
