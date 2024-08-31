import 'card_item.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List data;
  const HorizontalList(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 3.h),
        itemCount: data.length,
        itemBuilder: (_, index) => CardItem(data[index]),
        separatorBuilder: (_, index) => SizedBox(width: 2.w),
      ),
    );
  }
}
