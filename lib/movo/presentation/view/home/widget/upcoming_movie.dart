import 'package:movo/movo/presentation/widget/skeleton.dart';
import 'package:flutter/material.dart';
import '../../../widget/horizontal_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/upcoming/upcoming_cubit.dart';

class UpcomingMovie extends StatelessWidget {
  const UpcomingMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingCubit, UpcomingState>(
      builder: (_, state) {
        if (state is UpcomingSuccessState) {
          return HorizontalList(state.movies);
        } else if (state is UpcomingErrorState) {
          return Text(state.error);
        } else if (state is UpcomingLoadingState) {
          return const SkeletonHList();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
