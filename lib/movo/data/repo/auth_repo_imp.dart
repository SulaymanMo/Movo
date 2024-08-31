import 'package:dartz/dartz.dart';
import '../source/remote/auth_remote.dart';
import 'package:movo/core/helper/failure.dart';
import 'package:movo/movo/domain/repo/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final AuthRemote _authRemote;
  const AuthRepoImp(this._authRemote);

  @override
  Future<Either<Failure, String>> getToken() async {
    try {
      return right(await _authRemote.requestToken());
    } catch (e) {
      return left(ServiceError(e));
    }
  }

  @override
  Future<Either<Failure, void>> askPermission() async {
    try {
      return right(await _authRemote.askPermission());
    } catch (e) {
      return left(ServiceError(e));
    }
  }

  @override
  Future<Either<Failure, String>> getSessionId() async {
    try {
      return right(await _authRemote.createSession());
    } catch (e) {
      return left(ServiceError(e));
    }
  }
}
