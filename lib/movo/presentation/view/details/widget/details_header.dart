import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:sizer/sizer.dart';
import '../../../../domain/entity/movie_details_entity.dart';
import '../../../widget/image_item.dart';
import 'row_details.dart';

class DetailsHeader extends StatelessWidget {
  final MovieDetailsEntity _entity;
  const DetailsHeader(this._entity, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.zero,
            clipBehavior: Clip.hardEdge,
            child: ImageItem(_entity.poster, height: 20.h, width: 30.w),
          ),
          SizedBox(width: 3.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  _entity.name,
                  style: context.textTheme.headlineMedium,
                ),
                RowDetails(entity: _entity),
                SizedBox(height: 3.h),
                ElevatedButton(
                  onPressed: () {},
                  style: context.theme.elevatedButtonTheme.style,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bookmark_add_outlined,
                        size: 20.sp,
                      ),
                      SizedBox(width: 1.w),
                      const Text('Add to Watchlist'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
