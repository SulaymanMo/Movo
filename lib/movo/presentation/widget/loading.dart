import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/helper/colory.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(
          strokeWidth: 1.w,
          strokeAlign: 1.w,
          color: Colory.yellow.color,
          backgroundColor: Colory.greyLight.color,
        ),
      );
}
