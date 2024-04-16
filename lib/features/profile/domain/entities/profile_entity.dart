import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  const ProfileEntity({
    required this.id,
    required this.userId,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int userId;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String address;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        userId,
        firstName,
        middleName,
        lastName,
        address,
        createdAt,
        updatedAt,
      ];
}
