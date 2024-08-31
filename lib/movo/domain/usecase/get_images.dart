import 'package:dartz/dartz.dart';
import '../../../core/helper/failure.dart';
import 'package:movo/movo/domain/repo/details_repo.dart';

class GetImages {
  final DetailsRepo _detailsRepo;
  const GetImages(this._detailsRepo);

  Future<Either<Failure, List<String>>> call(int id) async =>
      await _detailsRepo.getImages(id);
}
