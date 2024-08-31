import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/movo/presentation/view/home/widget/movie_base.dart';
import 'package:movo/core/theme/extension.dart';
import '../../../../../generated/l10n.dart';
import '../../../../domain/entity/movie_details_entity.dart';
import '../../../manager/details/details_cubit.dart';
import '../../home/widget/follow_movo.dart';
import 'cast.dart';
import 'details_header.dart';
import 'genre.dart';
import 'similar_movie.dart';
import 'storyline.dart';

class DetailsArticle extends StatelessWidget {
  const DetailsArticle(this._entity, {super.key});
  final MovieDetailsEntity _entity;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Wrap(
              spacing: 2.w,
              runSpacing: 2.w,
              children: List.generate(
                _entity.genres.length,
                (index) => GenreItem(_entity.genres[index]["name"]),
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Text(
              'Storyline',
              style: context.textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 0.5.h),
            child: Storyline(_entity),
          ),
          SizedBox(height: 3.h),
        ],
      ),
    );
  }
}


// const MovieBase<DetailsCubit, DetailsState>(
          //   hasBtn: false,
          //   baseTitle: 'Cast',
          //   subTitle: 'Top rated cast',
          //   blocBuilder: Cast(),
          // ),
          // MovieBase<DetailsCubit, DetailsState>(
          //   subTitle: 'You might also like',
          //   baseTitle: S.current.recommended,
          //   blocBuilder: const SimilarMovie(),
          // ),
          // const MovieBase<DetailsCubit, DetailsState>(
          //   baseTitle: 'Photos',
          //   blocBuilder: Center(),
          // ),
          // const MovieBase(
          //   hasBtn: false,
          //   baseTitle: 'Follow Movo',
          //   blocBuilder: FollowMovo(),
          // ),