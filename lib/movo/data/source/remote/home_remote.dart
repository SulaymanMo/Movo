import 'package:movo/core/helper/api.dart';
import 'package:movo/movo/data/model/movie_model.dart';
 
abstract class HomeRemoteRepo {
  Future<List<MovieModel>> fetchData(endPoint);
}

class HomeRemoteImp implements HomeRemoteRepo {
  final Api _api;
  const HomeRemoteImp(this._api);

  @override
  Future<List<MovieModel>> fetchData(endPoint) async {
    final List<MovieModel> movies = [];
    final response = await _api.get(endPoint);
    final List data = response.data?["results"];

    if (data.isNotEmpty) {
      for (int i = 0; i < data.length; i++) {
        movies.add(MovieModel.fromJson(data[i]));
      }
      return movies;
    }
    return movies;
  }
}
