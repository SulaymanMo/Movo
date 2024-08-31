// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movo/movo/domain/entity/movie_entity.dart';
// import 'package:movo/movo/domain/usecase/get_similar.dart';
// import 'package:movo/movo/presentation/manager/similar_manager/similar_cubit.dart';
// import 'package:movo/movo/presentation/widget/image_item.dart';
// import '../../../core/helper/service_locator.dart';
// import '../../domain/usecase/ge_details_usecase.dart';
// import '../manager/details/details_cubit.dart';
// import '../view/details/movie_details_view.dart';

// class CarouselItem extends StatelessWidget {
//   final MovieEntity _entity;
//   const CarouselItem(this._entity, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (_) {
//             return MultiBlocProvider(
//               providers: [
//                 BlocProvider<DetailsCubit>(
//                   create: (_) => DetailsCubit(getIt.get<GetDetails>())
//                     ..getDetails(_entity.id),
//                 ),
//                 BlocProvider<SimilarCubit>(
//                   create: (_) =>
//                       SimilarCubit(getIt.get<GetSimilar>())..get(_entity.id),
//                 ),
//               ],
//               child: const MovieDetailsView(),
//             );
//           },
//         ),
//       ),
//       child: Card(
//         margin: EdgeInsets.zero,
//         clipBehavior: Clip.hardEdge,
//         child: ImageItem(_entity.img),
//       ),
//     );
//   }
// }
