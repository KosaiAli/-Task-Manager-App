import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:task_manager_app/features/authentication/data/models/user_model.dart';
import 'package:task_manager_app/features/authentication/domain/entities/user.dart';

import '../../../../fixtures/fixture.dart';

void main() {
  const tuserModel = UserModel(
      id: 1,
      userName: "emilys",
      email: "emily.johnson@x.dummyjson.com",
      firstName: "Emily",
      lastName: "Johnson",
      gender: "female",
      imageUrl: "https://dummyjson.com/icon/emilys/128",
      accessToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
      refreshToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...");

  test(
    "should be a subclass of User entity",
    () async {
      expect(tuserModel, isA<User>());
    },
  );

  group(
    "json",
    () {
      test('should return a valid model', () async{
        //arrange
        final Map<String,dynamic> jsonMap = json.decode(fixture("user_model.json"));
        //act
        final result = UserModel.fromJson(jsonMap);
        //assert
        expect(result, tuserModel);
        });
    },
  );
}
