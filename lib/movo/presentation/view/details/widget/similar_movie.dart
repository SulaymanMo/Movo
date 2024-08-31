import 'package:flutter/material.dart';
import 'package:movo/movo/presentation/manager/details/details_cubit.dart';
import '../../../widget/horizontal_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/presentation/widget/skeleton.dart';

class SimilarMovie extends StatelessWidget {
  const SimilarMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (_, state) {
        if (state is SimilarSuccessState) {
          return HorizontalList(state.entity);
        } else if (state is SimilarErrorState) {
          return Text(state.error);
        } else if (state is SimilarLoadingState) {
          return const SkeletonHList();
        } else {
          return const SkeletonHList();
        }
      },
    );
  }
}
