// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sizer/sizer.dart';
// import '../../../manager/similar_manager/similar_cubit.dart';

// class SearchGrid extends StatelessWidget {
//   const SearchGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SimilarCubit, SimilarState>(
//       builder: (_, state) {
//         if (state is SuccessState) {
//           return SliverGrid.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 2.h,
//               crossAxisSpacing: 2.w,
//               childAspectRatio: 0.75,
//             ),
//             itemCount: state.movies.length,
//             itemBuilder: (_, index) {
//               return;
//             },
//           );
//         } else if (state is ErrorState) {
//           return SliverToBoxAdapter(
//             child: Center(
//               child: Text(state.error),
//             ),
//           );
//         } else {
//           return const SliverToBoxAdapter();
//         }
//       },
//     );
//   }
// }
