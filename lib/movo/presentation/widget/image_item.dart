import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/movo/domain/entity/cast_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageItem<T> extends StatelessWidget {
  const ImageItem(this._img, {this.width, this.height, super.key});
  final String _img;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: 'https://image.tmdb.org/t/p/w500$_img',
          fit: BoxFit.fill,
          width: width ?? double.infinity,
          height: height ?? double.infinity,
          placeholder: (context, _) => const SizedBox(),
          errorWidget: (context, _, error) => Center(
            child: Icon(Icons.error, size: 28.sp),
          ),
        ),
        if (T == CastEntity)
          Positioned(
            left: 1.w,
            bottom: 1.w,
            child: const HeartBtn(),
          ),
      ],
    );
  }
}

class HeartBtn extends StatelessWidget {
  const HeartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.2.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black54, width: 1.5.sp),
        color: Colors.black26,
      ),
      child: Icon(
        Icons.favorite_outline_rounded,
        size: 19.sp,
        color: Colors.white,
      ),
    );
  }
}
