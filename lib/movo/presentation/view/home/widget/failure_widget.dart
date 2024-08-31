import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:sizer/sizer.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 70.w,
        child: Column(
          children: [
            const Spacer(flex: 1),
            CircleAvatar(
              radius: 25.w,
              backgroundImage: const AssetImage(
                'assets/images/yellow_face.jpg',
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              '"Inconceivable!"',
              style: context.textTheme.headlineMedium?.copyWith(
                fontSize: 25.sp,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              'Unfortunately, something went wrong. Our engineers are working hard to get everything back in shape.',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
            SizedBox(height: 1.h),
            Text(
              'Please verify your network & try later',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
