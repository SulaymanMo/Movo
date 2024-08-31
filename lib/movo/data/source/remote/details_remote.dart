import '../../model/movie_model.dart';
import 'package:movo/core/helper/api.dart';
import 'package:movo/movo/data/model/cast_model.dart';
import 'package:movo/movo/data/model/movie_details_model.dart';

abstract class DetailsRemote {
  Future<List<String>> fetchImages(int id);
  Future<MovieDetailsModel> fetchDetails(int id);
  Future<List<CastModel>> fetchCast(int id);
  Future<List<MovieModel>> fetchData(endPoint);
}

class DetailsRemoteImp implements DetailsRemote {
  final Api _api;
  const DetailsRemoteImp(this._api);

  @override
  Future<MovieDetailsModel> fetchDetails(int id) async {
    final response = await _api.get("movie/$id?");
    return MovieDetailsModel.fromJson(response.data!);
  }

  @override
  Future<List<CastModel>> fetchCast(int id) async {
    final List<CastModel> cast = [];
    final response = await _api.get("movie/$id/credits?");
    final List data = response.data?["cast"];

    if (data.isNotEmpty) {
      for (int i = 0; i < data.length; i++) {
        cast.add(CastModel.fromJson(data[i]));
      }
      return cast;
    }
    return cast;
  }

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

  @override
  Future<List<String>> fetchImages(int id) async {
    final List<String> images = [];
    final response = await _api.get("movie/$id/images?");
    final List<Map<String, dynamic>> data = response.data?["backdrops"];

    if (data.isNotEmpty) {
      for (int i = 0; i < data.length; i++) {
        images.add(data[i]["file_path"]);
      }
    }
    return images;
  }
}
