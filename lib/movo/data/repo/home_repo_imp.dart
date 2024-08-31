import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/repo/home_repo.dart';
import 'package:movo/movo/data/model/movie_model.dart';
import 'package:movo/movo/data/source/local/home_local.dart';
import 'package:movo/movo/data/source/remote/home_remote.dart';

class HomeRepoImp implements HomeRepo {
  final HomeLocalRepo _homeLocal;
  final HomeRemoteRepo _homeRemote;
  HomeRepoImp(this._homeLocal, this._homeRemote);

  @override
  Future<Either<Failure, List<MovieModel>>> getMovies({
    required int page,
    required String endPoint,
  }) async {
    try {
      final List<MovieModel> popular = await _homeRemote.fetchData(endPoint);
      return right(popular);
    } on DioException catch (e) {
      return left(ServiceError(e));
    } catch (e) {
      return left(ServiceError(e));
    }
  }
}
