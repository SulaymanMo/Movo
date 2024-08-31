import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/generated/l10n.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({required this.controller, super.key});
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: TabBar(
        // isScrollable: true,
        controller: controller,
        tabAlignment: TabAlignment.fill,
        splashBorderRadius: BorderRadius.circular(30.h),
        // padding: EdgeInsets.symmetric(vertical: 0.5.h),
        // indicatorPadding: EdgeInsets.only(bottom: 0.5.h),
        // labelPadding: EdgeInsets.symmetric(horizontal: 6.w),
        tabs: [
          Tab(text: S.of(context).movie),
          Tab(text: S.of(context).tv_show),
          Tab(text: S.of(context).trailer),
        ],
      ),
    );
  }
}
