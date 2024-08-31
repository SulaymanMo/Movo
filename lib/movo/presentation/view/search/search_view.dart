import 'package:flutter/material.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () async => await showSearch<MovieEntity?>(
              context: context,
              delegate: SearchBar(),
            ),
            icon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends SearchDelegate<MovieEntity?> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return query.trim() != ''
        ? [
            IconButton(
              onPressed: () {
                query = '';
              },
              icon: const Icon(Icons.clear),
            ),
          ]
        : null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.navigate_before),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(
      child: Text("Hello"),
    );
  }
}
