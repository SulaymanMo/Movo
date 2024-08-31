import 'package:dartz/dartz.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/repo/details_repo.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';

class GetSimilar {
  final DetailsRepo _detailsRepo;
  const GetSimilar(this._detailsRepo);

  Future<Either<Failure, List<MovieEntity>>> call(
    int page, {
    required int id,
  }) =>
      _detailsRepo.getSimilar(id: id, page: page);
}
