import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:movo/movo/domain/entity/cast_entity.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/presentation/view/see_all.dart/widget/vertical_item.dart';
import 'package:sizer/sizer.dart';
import '../../../core/utils/navigate.dart';
import '../../domain/entity/entity_base.dart';
import 'image_item.dart';

class CardItem extends StatelessWidget {
  final bool isList;
  final Entity _entity;
  final double? height;
  const CardItem(this._entity, {this.height, this.isList = false, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigate(context, entity: _entity),
      child: SizedBox(
        width: 38.w,
        child: Card(
          margin: EdgeInsets.zero,
          color: Colors.white10,
          // semanticContainer: false,
          clipBehavior: Clip.hardEdge,
          child: isList
              ? VerticalItem(_entity)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _entity is CastEntity
                        ? ImageItem<CastEntity>(
                            _entity.img,
                            height: height ?? 29.h,
                          )
                        : ImageItem<MovieEntity>(
                            _entity.img,
                            height: height ?? 29.h,
                          ),
                    Expanded(
                      flex: 1,
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          vertical: 0.5.h,
                          horizontal: 2.w,
                        ),
                        children: [
                          if (_entity is MovieEntity) Rate(_entity.rate),
                          SizedBox(height: 0.5.h),
                          CardItemTitle(_entity.name),
                          Text(
                            _entity.character ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class CardItemFooter<T> extends StatelessWidget {
  const CardItemFooter(this._entity, {super.key});
  final T _entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$_entity',
          style: context.textTheme.labelSmall,
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.info_outline,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

class CardItemTitle<T> extends StatelessWidget {
  const CardItemTitle(this._entity, {super.key});
  final T _entity;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      '$_entity',
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.titleSmall,
    );
  }
}

class Rate extends StatelessWidget {
  const Rate(this._entity, {super.key});
  final double _entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star_half_rounded,
          size: context.theme.iconTheme.size,
          color: context.theme.iconTheme.color,
        ),
        SizedBox(width: 1.5.w),
        Text(
          _entity.toStringAsFixed(1),
          style: context.textTheme.labelSmall,
        ),
      ],
    );
  }
}
