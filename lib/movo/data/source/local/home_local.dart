import 'package:hive_flutter/hive_flutter.dart';
import 'package:movo/movo/data/model/movie_model.dart';

abstract class HomeLocalRepo {
  Box get langBox;
  Box get movieBox;
  Map getLang();
  List<MovieModel> getMovies(String key);
  Future<void> saveMovies({
    required String key,
    required List<MovieModel> movies,
  });
}

class HomeLocalImp implements HomeLocalRepo {
  @override
  Box get langBox => Hive.box("preference");

  @override
  Box get movieBox => Hive.box<List>("movies");

  @override
  Map getLang() => langBox.get(
        "lang",
        defaultValue: {"lang_code": "en", "country_code": "EG"},
      );

  @override
  Future<void> saveMovies({
    required String key,
    required List<MovieModel> movies,
  }) async {
    movieBox
      ..delete(key)
      ..put(key, movies);
  }

  @override
  List<MovieModel> getMovies(String key) => List<MovieModel>.from(
        movieBox.get(key),
      );
}
