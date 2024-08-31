import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:movo/movo/domain/entity/entity_base.dart';
import 'package:movo/movo/presentation/view/details/widget/row_details.dart';
import 'package:sizer/sizer.dart';
import '../../../widget/image_item.dart';

class VerticalItem extends StatelessWidget {
  const VerticalItem(this._entity, {super.key});
  final Entity _entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageItem(_entity.img, width: 30.w),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(_entity.name, style: context.textTheme.titleMedium),
                SizedBox(height: 0.5.h),
                RowDetails(entity: _entity),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
