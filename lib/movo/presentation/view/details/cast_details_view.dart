import 'package:flutter/material.dart';

class CastDetailsView extends StatelessWidget {
  const CastDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          // child: BlocBuilder<CastCubit, CastState>(
          //   builder: (context, state) {
          //     if (state is SuccessState) {
          //       return Text('${state.cast.length}');
          //     } else if (state is LoadingState) {
          //       return const Loading();
          //     } else if (state is ErrorState) {
          //       return Text(state.error);
          //     } else {
          //       return const Text('Unhandeled State... Please try later!');
          //     }
          //   },
          // ),
          ),
    );
  }
}
