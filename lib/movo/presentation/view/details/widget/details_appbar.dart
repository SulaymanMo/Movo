import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:movo/movo/presentation/manager/details/details_cubit.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: true,
      floating: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Icon(
          Icons.navigate_before_rounded,
          size: context.theme.appBarTheme.iconTheme?.size,
          color: context.theme.appBarTheme.iconTheme?.color,
        ),
      ),
      title: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (_, state) {
          if (state is DetailsSuccessState) {
            return Text(state.details.name);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
