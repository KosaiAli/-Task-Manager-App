import 'dart:async';

import 'package:dartz/dartz.dart';

import '../errors/exception.dart';
import '../errors/failure.dart';


class Repository {
  Future<Either<Failure, T>> handleDataSourceResponse<T>({required FutureOr<Either<Failure, T>> Function() function}) async {
    try {
      return await function();
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on ClientException catch (e) {
      return Left(ClientFailure(e.message));
    } on ConnectionException catch (e) {
      return Left(ConnectionFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
