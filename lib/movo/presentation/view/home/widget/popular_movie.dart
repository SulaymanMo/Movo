import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/presentation/widget/skeleton.dart';
import '../../../manager/popular/popular_cubit.dart';
import '../../../widget/horizontal_list.dart';

class PopularMovie extends StatelessWidget {
  const PopularMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularCubit, PopularState>(
      builder: (_, state) {
        if (state is PopularSuccessState) {
          return HorizontalList(state.movies);
        } else if (state is PopularErrorState) {
          return Text(state.error);
        } else if (state is PopularLoadingState) {
          return const SkeletonHList();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
