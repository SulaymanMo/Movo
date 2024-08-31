import 'package:movo/movo/presentation/widget/skeleton.dart';
import 'package:flutter/material.dart';
import '../../../manager/details/details_cubit.dart';
import '../../../widget/horizontal_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cast extends StatelessWidget {
  const Cast({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        if (state is CastSuccessState) {
          return HorizontalList(state.cast);
        } else if (state is CastErrorState) {
          return Text(state.error);
        } else if (state is CastLoadingState) {
          return const SkeletonHList();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
