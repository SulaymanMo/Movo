// import 'package:sizer/sizer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import '../manager/now_playing/now_playing_cubit.dart';
// import 'package:movo/movo/presentation/widget/carousel_item.dart';

// class Carousel extends StatelessWidget {
//   const Carousel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 1.h, bottom: 2.h),
//       child: BlocBuilder<NowPlayingCubit, NowPlayingState>(
//         builder: (_, state) {
//           if (state is NowPlayingSuccessState) {
//             return CarouselSlider.builder(
//               itemCount: state.movies.length,
//               itemBuilder: (_, index, realIndex) => CarouselItem(
//                 state.movies[index],
//               ),
//               options: CarouselOptions(
//                 height: 36.h,
//                 viewportFraction: 0.5,
//                 enlargeCenterPage: true,
//                 autoPlayAnimationDuration: const Duration(milliseconds: 500),
//               ),
//             );
//           } else if (state is NowPlayingErrorState) {
//             return Text(state.error);
//           } else {
//             return const SizedBox.shrink();
//           }
//         },
//       ),
//     );
//   }
// }

// // SizedBox(
// //   height: 40.h,
// //   child: ListView.builder(
// //     scrollDirection: Axis.horizontal,
// //     itemCount: state.movies.length,
// //     itemBuilder: (context, index) => CarouselItem(
// //       state.movies[index],
// //     ),
// //   ),
// // )

// int length = 1000;
// final List<String> q = [];

// class Input extends StatelessWidget {
//   const Input(this._label, {super.key});
//   final String _label;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onSaved: (newValue) {
//         if (newValue != null) {
//           q.add(newValue);
//         }
//       },
//       decoration: InputDecoration(
//         label: Text(_label),
//       ),
//     );
//   }
// }

// class Show extends StatelessWidget {
//   const Show({super.key});

//   @override
//   Widget build(context) {
//     return Column(
//       children: List.generate(length, (index) => Input('${index + 1}}')),
//     );
//   }
// }

// post(int length) {
//   for (int i = 0; i < q.length; i++) {}
// }
