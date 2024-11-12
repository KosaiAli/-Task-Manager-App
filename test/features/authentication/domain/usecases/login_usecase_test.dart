import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:task_manager_app/features/authentication/domain/entities/user.dart';
import 'package:task_manager_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:task_manager_app/features/authentication/domain/usecases/login.dart';

import 'login_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AuthenticationRepository>()])
void main() {
  late Login login;
  late MockAuthenticationRepository mockAuthenticationRepository;

  setUp(
    () {
      mockAuthenticationRepository = MockAuthenticationRepository();
      login = Login(mockAuthenticationRepository);
    },
  );

  const tid = 1;
  const tusername = "emilys";
  const temail = "emily.johnson@x.dummyjson.com";
  const tfirstName = "Emily";
  const tlastName = "Johnson";
  const tgender = "female";
  const timage = "https://dummyjson.com/icon/emilys/128";

  const tpassword = "emilyspass";

  const tUser = User(
    id: tid,
    userName: tusername,
    email: temail,
    firstName: tfirstName,
    lastName: tlastName,
    gender: tgender,
    imageUrl: timage,
  );

  test('should get user from the repository', () async {
    //arrange
    when(mockAuthenticationRepository.login(any, any)).thenAnswer((_) async => const Right(tUser));
    //act
    final result = await login(const LoginParams(userName: tusername, password: tpassword));
    //assert
    expect(result, const Right(tUser));
    verify(mockAuthenticationRepository.login(tusername, tpassword));
    verifyNoMoreInteractions(mockAuthenticationRepository);
  });
}
