import 'package:equatable/equatable.dart';
import 'package:scanner/features/auth/domain/domain.dart';
import 'package:scanner/features/scan/scan.dart';

class ScanEntity extends Equatable {
  const ScanEntity({this.establishment, this.user});

  final EstablishmentEntity? establishment;
  final UserEntity? user;

  @override
  List<Object?> get props => [establishment, user];
}
