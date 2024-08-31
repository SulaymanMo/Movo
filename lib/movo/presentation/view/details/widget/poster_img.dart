import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/core/helper/colory.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/presentation/widget/image_item.dart';
import 'package:movo/movo/presentation/manager/preference_manger/lang_cubit.dart';

class PosterImg extends StatelessWidget {
  final MovieEntity _entity;
  const PosterImg(this._entity, {super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 2.h,
      left: context.read<LangCubit>().isEn() ? null : 3.w,
      right: context.read<LangCubit>().isEn() ? 3.w : null,
      child: Container(
        width: 35.w,
        height: 25.h,
        padding: EdgeInsets.all(0.8.w),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.sp,
            color: Colory.yellow.color,
          ),
          borderRadius: BorderRadius.circular(3.w),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.w),
          child: ImageItem(_entity.img),
        ),
      ),
    );
  }
}
