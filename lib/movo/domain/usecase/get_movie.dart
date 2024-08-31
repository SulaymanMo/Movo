import 'package:dartz/dartz.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/repo/home_repo.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';

class GetMovie {
  final HomeRepo _homeRepo;
  const GetMovie(this._homeRepo);

  Future<Either<Failure, List<MovieEntity>>> call({
    required int page,
    required String endPoint,
  }) =>
      _homeRepo.getMovies(page: page, endPoint: endPoint);
}
