import 'package:dartz/dartz.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/entity/cast_entity.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/data/model/movie_details_model.dart';

abstract class DetailsRepo {
  Future<Either<Failure, List<CastEntity>>> getCast(int id);
  Future<Either<Failure, List<String>>> getImages(int id);
  Future<Either<Failure, MovieDetailsModel>> getDetails(int id);
  Future<Either<Failure, List<MovieEntity>>> getSimilar({
    required int id,
    required int page,
  });
}
