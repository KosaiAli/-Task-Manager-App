import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/repository/repository.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository extends Repository {
  Future<Either<Failure,User>> login(String userName,String password);
}