import 'package:movo/movo/domain/usecase/get_movie.dart';
import '../../manager/popular/popular_cubit.dart';
import '../../manager/top_rated/top_rated_cubit.dart';
import '../../manager/upcoming/upcoming_cubit.dart';
import '../search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:movo/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/service_locator.dart';
import 'package:movo/movo/presentation/widget/loading.dart';
import 'package:movo/movo/presentation/view/home/home_view.dart';
import '../../manager/preference_manger/internet/internet_cubit.dart';
import 'package:movo/movo/presentation/view/profile/profile_view.dart';
import 'package:movo/movo/presentation/view/settings/settings_view.dart';
import 'widget/failure_widget.dart';

class NavView extends StatefulWidget {
  const NavView({super.key});

  @override
  State<NavView> createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  int _index = 0;
  final List<Widget> _pages = const [
    HomeView(),
    SearchView(),
    ProfileView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<InternetCubit, InternetState>(
          listener: (_, state) {/* show toast msg */},
          builder: (_, state) {
            if (state is Connected) {
              return MultiBlocProvider(
                providers: [
                  // BlocProvider<NowPlayingCubit>(
                  //   create: (_) => NowPlayingCubit(getIt.get<GetMovie>())..get(),
                  // ),
                  BlocProvider<PopularCubit>(
                    create: (_) => PopularCubit(getIt.get<GetMovie>())..get(),
                  ),
                  BlocProvider<TopRatedCubit>(
                    create: (_) => TopRatedCubit(getIt.get<GetMovie>()),
                  ),
                  BlocProvider<UpcomingCubit>(
                    create: (_) => UpcomingCubit(getIt.get<GetMovie>()),
                  ),
                ],
                child: _pages[_index],
              );
            } else if (state is Disconnected) {
              return const FailureWidget();
            } else {
              return const Loading();
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            label: S.of(context).nav_home,
            icon: const Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: S.of(context).nav_search,
            icon: const Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: S.of(context).nav_wishlist,
            icon: const Icon(Icons.bookmark_add_outlined),
          ),
          BottomNavigationBarItem(
            label: S.of(context).nav_settings,
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
        onTap: (val) async {
          // 7faa403f070aa913075d216278bf80987e64685a
          // final AuthRemoteImp auth = AuthRemoteImp(getIt.get<Api>());
          // final String request = await auth.requestToken();
          // print(request);
          // await auth.askPermission();
          // final String id = await auth.createSession();
          // print(id);
          // var test = NumberFormat("##.##");
          // print(test.format(12.10));
          if (context.read<InternetCubit>().state is Connected) {
            setState(() => _index = val);
          }
        },
      ),
    );
  }
}
