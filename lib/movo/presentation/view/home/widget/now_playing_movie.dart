import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/presentation/widget/skeleton.dart';
import '../../../manager/now_playing/now_playing_cubit.dart';
import '../../../widget/horizontal_list.dart';

class NowPlayingMovie extends StatelessWidget {
  const NowPlayingMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NowPlayingCubit, NowPlayingState>(
      builder: (_, state) {
        if (state is NowPlayingSuccessState) {
          return HorizontalList(state.movies);
        } else if (state is NowPlayingErrorState) {
          return Text(state.error);
        } else if (state is NowPlayingLoadingState) {
          return const SkeletonHList();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
