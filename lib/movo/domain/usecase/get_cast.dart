import 'package:dartz/dartz.dart';
import '../../../core/helper/failure.dart';
import 'package:movo/movo/domain/repo/details_repo.dart';
import 'package:movo/movo/domain/entity/cast_entity.dart';

class GetCast {
  final DetailsRepo _detailsRepo;
  const GetCast(this._detailsRepo);

  Future<Either<Failure, List<CastEntity>>> call(int id) async =>
      await _detailsRepo.getCast(id);
}