import '../../domain/entities/user.dart';

class UserModel extends User {
  final String accessToken;
  final String refreshToken;

  const UserModel({
    required super.id,
    required super.userName,
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.gender,
    required super.imageUrl,
    required this.accessToken,
    required this.refreshToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      userName: map['username'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      gender: map['gender'],
      imageUrl: map['image'],
      accessToken: map['accessToken'],
      refreshToken: map['refreshToken'],
    );
  }
}
