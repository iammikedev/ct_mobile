import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/profile/profile.dart';

part 'profile_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProfileModel extends ProfileEntity with ProfileModelMappable {
  const ProfileModel({
    required super.id,
    @MappableField(key: 'user_id') required super.userId,
    @MappableField(key: 'first_name') required super.firstName,
    @MappableField(key: 'last_name') required super.lastName,
    @MappableField(key: 'address') required super.address,
    @MappableField(key: 'created_at') required super.createdAt,
    @MappableField(key: 'updated_at') required super.updatedAt,
    @MappableField(key: 'middle_name') super.middleName,
  });

  static const fromJson = ProfileModelMapper.fromMap;
}
