import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';

class LargeHeader extends StatelessWidget {
  const LargeHeader(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 2.h),
      child: Text(title, style: context.textTheme.headlineLarge),
    );
  }
}
