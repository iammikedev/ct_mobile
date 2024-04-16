import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/scan/domain/entities/entities.dart';

part 'establishment_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase, ignoreNull: true)
class EstablishmentModel extends EstablishmentEntity
    with EstablishmentModelMappable {
  const EstablishmentModel({
    required super.id,
    required super.establishmentCode,
    required super.firstName,
    super.middleName,
    required super.lastName,
    required super.emailAddress,
    required super.contactNumber,
    required super.establishmentName,
    required super.address,
    required super.baranggay,
    required super.city,
    required super.lng,
    required super.lat,
    required super.status,
    required super.createdAt,
    required super.updatedAt,
  });
}
