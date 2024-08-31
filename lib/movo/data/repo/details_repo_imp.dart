import 'package:dartz/dartz.dart';
import '../model/movie_model.dart';
import '../../domain/repo/details_repo.dart';
import '../source/remote/details_remote.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/entity/cast_entity.dart';
import 'package:movo/movo/data/model/movie_details_model.dart';

class DetailsRepoImp implements DetailsRepo {
  final DetailsRemote _detailsRemote;
  const DetailsRepoImp(this._detailsRemote);

  @override
  Future<Either<Failure, MovieDetailsModel>> getDetails(int id) async {
    try {
      return right(await _detailsRemote.fetchDetails(id));
    } catch (e) {
      return left(ServiceError(e));
    }
  }

  @override
  Future<Either<Failure, List<CastEntity>>> getCast(int id) async {
    try {
      final List<CastEntity> cast = await _detailsRemote.fetchCast(id);
      return right(cast);
    } catch (e) {
      return left(ServiceError(e));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getSimilar({
    required int id,
    required int page,
  }) async {
    try {
      final List<MovieModel> similar = await _detailsRemote.fetchData(
        'movie/$id/similar?page=$page}',
      );
      return right(similar);
    } catch (e) {
      return left(ServiceError(e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getImages(int id) async {
    try {
      final List<String> images = await _detailsRemote.fetchImages(id);
      return right(images);
    } catch (e) {
      return left(ServiceError(e));
    }
  }
}
