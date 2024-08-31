import 'package:dartz/dartz.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieEntity>>> getMovies({
    required int page,
    required String endPoint,
  });

  
}
