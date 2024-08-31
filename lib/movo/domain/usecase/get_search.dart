import '../repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import '../entity/movie_entity.dart';
import '../../../core/helper/failure.dart';

class GetSearch {
  final SearchRepo _searchRepo;
  const GetSearch(this._searchRepo);

  Future<Either<Failure, List<MovieEntity>>> call(
    int page, {
    required String name,
  }) =>
      _searchRepo.searchMovie(page, name: name);
}
