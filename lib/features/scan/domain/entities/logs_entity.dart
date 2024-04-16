import 'package:equatable/equatable.dart';
import 'package:scanner/features/auth/domain/entities/user_entity.dart';
import 'package:scanner/features/scan/scan.dart';

class LogsEntity extends Equatable {
  const LogsEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.establishment,
    this.user,
  });

  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final EstablishmentEntity? establishment;
  final UserEntity? user;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updatedAt,
        establishment,
        user,
      ];
}
