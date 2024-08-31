import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/core/helper/colory.dart';
import 'package:sizer/sizer.dart';
import '../../../widget/list_header.dart';

class MovieBase<C extends Cubit<T>, T> extends StatelessWidget {
  const MovieBase({
    this.subTitle,
    this.hasBtn,
    required this.baseTitle,
    required this.blocBuilder,
    super.key,
  });
  final bool? hasBtn;
  final String baseTitle;
  final String? subTitle;
  final Widget blocBuilder;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colory.yellow.color.withOpacity(0.06),
      shape: const BeveledRectangleBorder(),
      margin: EdgeInsets.symmetric(vertical: 2.h),
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.h),
        child: Column(
          children: [
            ListHeader<C, T>(
              title: baseTitle,
              subTitle: subTitle,
              hasBtn: hasBtn ?? true,
            ),
            blocBuilder,
          ],
        ),
      ),
    );
  }
}
