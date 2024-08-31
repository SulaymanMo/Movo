import 'package:go_router/go_router.dart';
import 'package:movo/movo/presentation/view/details/movie_details_view.dart';
import 'package:movo/movo/presentation/view/home/nav_view.dart';
import 'package:movo/movo/presentation/view/home/home_view.dart';
import 'package:movo/movo/presentation/view/onboarding/onboarding.dart';
import 'package:movo/movo/presentation/view/see_all.dart/see_all_view.dart';

abstract class Routes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/sdf',
        builder: (_, state) => const OnBoarding(),
      ),
      // GoRoute(
      //   path: '/',
      //   builder: (_, state) => const Tester(),
      // ),
      GoRoute(
        path: '/',
        builder: (_, state) => const NavView(),
      ),
      GoRoute(
        path: '/sdf',
        builder: (_, state) => const HomeView(),
      ),
      GoRoute(
        path: '/details',
        builder: (_, state) => const MovieDetailsView(),
      ),
      GoRoute(
        path: '/see_all',
        builder: (_, state) => SeeAllView(
          title: state.extra as String,
          // blocBuilder: state.extra as Widget,
        ),
      ),
    ],
  );
}
