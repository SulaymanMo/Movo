import 'package:movo/core/theme/extension.dart';
import 'package:movo/movo/presentation/view/details/widget/details_header.dart';
import 'package:sizer/sizer.dart';
import '../home/widget/movie_base.dart';
import 'widget/cast.dart';
import 'widget/details_appbar.dart';
import '../../widget/image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/details/details_cubit.dart';
import 'package:movo/movo/presentation/widget/loading.dart';

import 'widget/details_article.dart';
import 'widget/genre.dart';
import 'widget/storyline.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const DetailsAppBar(),
            BlocBuilder<DetailsCubit, DetailsState>(
              builder: (context, state) {
                if (state is DetailsSuccessState) {
                  return SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          shape: const RoundedRectangleBorder(),
                          margin: EdgeInsets.zero,
                          child: ImageItem(height: 28.h, state.details.img),
                        ),
                        DetailsHeader(state.details),
                        //               Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 3.w),
                        //   child: Wrap(
                        //     spacing: 2.w,
                        //     runSpacing: 2.w,
                        //     children: List.generate(
                        //       _entity.genres.length,
                        //       (index) => GenreItem(state.genres[index]["name"]),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 3.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Text(
                            'Storyline',
                            style: context.textTheme.headlineSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 3.w, right: 3.w, top: 0.5.h),
                          child: Storyline(state.details),
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  );
                } else if (state is DetailsErrorState) {
                  return SliverToBoxAdapter(child: Text(state.error));
                } else {
                  return const SliverToBoxAdapter();
                }
              },
            ),
            // DetailsArticle(state.entity),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const MovieBase<DetailsCubit, DetailsState>(
                    hasBtn: false,
                    baseTitle: 'Cast',
                    subTitle: 'Top billed cast',
                    blocBuilder: Cast(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
