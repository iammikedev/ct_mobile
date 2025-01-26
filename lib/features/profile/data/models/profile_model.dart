import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/profile/profile.dart';

part 'profile_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProfileModel extends ProfileEntity with ProfileModelMappable {
  const ProfileModel({
    required super.id,
    @MappableField(key: 'user_id') required super.userId,
    required super.firstName,
    required super.lastName,
    required super.address,
    required super.createdAt,
    required super.updatedAt,
    super.middleName,
  });

  static const fromJson = ProfileModelMapper.fromMap;
}
