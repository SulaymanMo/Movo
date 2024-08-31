import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';

class GenreItem extends StatelessWidget {
  const GenreItem(this._genre, {super.key});
  final String _genre;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.8.h),
        child: Text(
          _genre,
          style: context.textTheme.labelSmall,
        ),
      ),
    );
  }
}
