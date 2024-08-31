import 'widget/movie_view.dart';
import 'widget/home_appbar.dart';
import '../search/search_view.dart';
import '../profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecase/get_search.dart';
import '../../../../core/helper/service_locator.dart';
import '../../manager/search_manager/search_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _nestedController;
  @override
  void initState() {
    super.initState();
    _nestedController = ScrollController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _nestedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      // ! allows scrolling in both x & y axis without any problems.
      // ! to compaine [TabBarView] with [CustomScrollView] use NestedScrollView.
      // ? to use floating don't assign any [ScrollController] to NestedScrollView childs.
      floatHeaderSlivers: true,
      controller: _nestedController,
      headerSliverBuilder: (_, innerBoxIsScrolled) => [
        HomeAppBar(controller: _tabController),
      ],
      body: TabBarView(
        controller: _tabController,
        children: [
          const MovieView(),
          const ProfileView(),
          BlocProvider<SearchCubit>(
            create: (_) => SearchCubit(getIt.get<GetSearch>()),
            child: const SearchView(),
          ),
        ],
      ),
    );
  }
}
