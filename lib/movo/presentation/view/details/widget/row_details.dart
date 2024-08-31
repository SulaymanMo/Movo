import 'package:movo/movo/domain/entity/entity_base.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import '../../../widget/card_item.dart';
import '../../../../../core/helper/colory.dart';
import 'package:movo/core/theme/extension.dart';

class RowDetails extends StatelessWidget {
  final Entity entity;
  const RowDetails({required this.entity, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Rate(entity.rate),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Text(
            '|',
            style: TextStyle(color: Colory.yellow.color),
          ),
        ),
        Text(
          entity.runTime == null ? '${entity.lang}' : '${entity.runTime} min',
          style: context.textTheme.labelSmall,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Text(
            '|',
            style: TextStyle(color: Colory.yellow.color),
          ),
        ),
        Text(
          entity.status ?? entity.releaseDate,
          style: context.textTheme.labelSmall,
        ),
      ],
    );
  }
}
