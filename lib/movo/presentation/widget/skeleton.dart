import 'dart:math';
import 'package:sizer/sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';

class SkeletonHList extends StatelessWidget {
  const SkeletonHList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 3.h),
        itemCount: 4,
        itemBuilder: (_, index) {
          return SizedBox(
            width: 38.w,
            child: Card(
              color: Colors.white10,
              margin: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _SkeletonHListImg(),
                  SizedBox(height: 0.5.h),
                  const SkeletonRate(),
                  SkeletonCard(width: 14.w, height: 1.5.h),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(width: 2.w),
      ),
    );
  }
}

class SkeletonCard extends StatelessWidget {
  final double width, height;
  const SkeletonCard({required this.width, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    final int random = Random().nextInt(15);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: SizedBox(
          height: height,
          width: width + double.parse((random * 2).toString()),
          child: const Card(
            color: Colors.white70,
            margin: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}

class _SkeletonHListImg extends StatelessWidget {
  const _SkeletonHListImg();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: 29.h,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(13.sp),
            topRight: Radius.circular(13.sp),
          ),
        ),
      ),
    );
  }
}

class SkeletonRate extends StatelessWidget {
  const SkeletonRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
      child: Row(
        children: [
          Icon(
            Icons.star_half_rounded,
            size: context.theme.iconTheme.size,
            color: context.theme.iconTheme.color,
          ),
          // SizedBox(width: 0.5.w),
          SkeletonCard(width: 5.w, height: 1.5.h),
        ],
      ),
    );
  }
}
