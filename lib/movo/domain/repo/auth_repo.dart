import 'package:dartz/dartz.dart';
import 'package:movo/core/helper/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, String>> getToken();
  Future<Either<Failure, void>> askPermission();
  Future<Either<Failure, String>> getSessionId();
}
