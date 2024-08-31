import 'package:dartz/dartz.dart';
import '../model/movie_model.dart';
import '../source/remote/home_remote.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/repo/search_repo.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/data/source/local/home_local.dart';

class SearchRepoImp implements SearchRepo {
  final HomeLocalRepo _homeLocal;
  final HomeRemoteRepo _homeRemote;
  const SearchRepoImp(this._homeLocal, this._homeRemote);

  @override
  Future<Either<Failure, List<MovieEntity>>> searchMovie(
    int page, {
    required String name,
  }) async {
    try {
      final List<MovieModel> nowPlaying = await _homeRemote.fetchData(
        "search/movie?query=$name&page=$page&language=${_homeLocal.getLang()}",
      );
      return right(nowPlaying);
    } catch (e) {
      return left(ServiceError(e));
    }
  }
}
