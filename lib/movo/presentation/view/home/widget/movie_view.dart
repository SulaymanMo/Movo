import 'package:movo/movo/presentation/manager/popular/popular_cubit.dart';
import 'package:movo/movo/presentation/view/home/widget/follow_movo.dart';
import 'package:movo/movo/presentation/view/home/widget/popular_movie.dart';
import 'package:movo/movo/presentation/widget/large_header.dart';
import 'movie_base.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import 'upcoming_movie.dart';

class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // const Carousel(),
        LargeHeader(S.current.what_to_watch),
        // MovieBase(
        //   hasBtn: false,
        //   baseTitle: S.current.watchlist,
        //   blocBuilder: const WhatToWatch(),
        // ),
        MovieBase<PopularCubit, PopularState>(
          baseTitle: S.current.popular,
          subTitle: S.current.popular_sub,
          blocBuilder: const PopularMovie(),
        ),
        // MovieBase(
        //   baseTitle: S.current.top_rated,
        //   subTitle: S.current.tob_rated_sub,
        //   blocBuilder: const TopRatedMovie(),
        // ),
        LargeHeader(S.of(context).behind_scense),
        MovieBase(
          baseTitle: S.current.upcoming,
          blocBuilder: const UpcomingMovie(),
        ),
        const MovieBase(
          hasBtn: false,
          baseTitle: 'Follow Movo',
          subTitle: 'Stay in touch with us',
          blocBuilder: FollowMovo(),
        ),
      ],
    );
  }
}
