import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/errors/failure.dart';
import '../repositories/authentication_repository.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/user.dart';

class Login extends UseCase<User, LoginParams> {
  final AuthenticationRepository authenticationRepository;

  Login(this.authenticationRepository);

  @override
  Future<Either<Failure, User>> call(LoginParams param) {
    return authenticationRepository.login(param.userName, param.password);
  }
}

class LoginParams extends Equatable {
  final String userName;
  final String password;

  const LoginParams({required this.userName, required this.password});

  @override
  List<Object> get props => [userName, password];
}
