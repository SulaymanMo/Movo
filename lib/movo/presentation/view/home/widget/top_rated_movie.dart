import 'package:movo/movo/presentation/widget/skeleton.dart';
import 'package:flutter/material.dart';
import '../../../widget/horizontal_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/top_rated/top_rated_cubit.dart';

class TopRatedMovie extends StatelessWidget {
  const TopRatedMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedCubit, TopRatedState>(
      builder: (_, state) {
        if (state is TopRatedSuccessState) {
          return HorizontalList(state.movies);
        } else if (state is TopRatedErrorState) {
          return Text(state.error);
        } else if (state is TopRatedLoadingState) {
          return const SkeletonHList();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
