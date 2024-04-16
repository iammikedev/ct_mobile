import 'package:equatable/equatable.dart';

class EstablishmentEntity extends Equatable {
  const EstablishmentEntity({
    required this.id,
    required this.establishmentCode,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.emailAddress,
    required this.contactNumber,
    required this.establishmentName,
    required this.address,
    required this.baranggay,
    required this.city,
    required this.lng,
    required this.lat,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String establishmentCode;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String emailAddress;
  final String contactNumber;
  final String establishmentName;
  final String address;
  final String baranggay;
  final String city;
  final String lng;
  final String lat;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object?> get props => [
        id,
        establishmentCode,
        firstName,
        middleName,
        lastName,
        emailAddress,
        contactNumber,
        establishmentName,
        address,
        baranggay,
        city,
        lng,
        lat,
        status,
        createdAt,
        updatedAt,
      ];
}
