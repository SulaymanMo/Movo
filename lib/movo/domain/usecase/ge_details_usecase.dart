import 'package:dartz/dartz.dart';
import '../../../core/helper/failure.dart';
import '../../data/model/movie_details_model.dart';
import 'package:movo/movo/domain/repo/details_repo.dart';

class GetDetails {
  final DetailsRepo _detailsRepo;
  const GetDetails(this._detailsRepo);

  Future<Either<Failure, MovieDetailsModel>> call(int id) async =>
      await _detailsRepo.getDetails(id);
}
