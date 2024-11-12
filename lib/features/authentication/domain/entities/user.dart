import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String userName;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String imageUrl;

  const User({
    required this.id,
    required this.userName,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.imageUrl,
  });

  @override
  List<Object> get props {
    return [id, userName, email, firstName, lastName, gender, imageUrl];
  }
}
