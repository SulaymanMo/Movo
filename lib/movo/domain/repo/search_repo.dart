import 'package:dartz/dartz.dart';
import '../entity/movie_entity.dart';
import '../../../core/helper/failure.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<MovieEntity>>> searchMovie(
    int page, {
    required String name,
  });
}
