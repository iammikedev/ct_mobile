import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/auth.dart';

part 'user_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserModel extends UserEntity with UserModelMappable {
  const UserModel({
    required super.name,
    required super.email,
    required super.updatedAt,
    required super.createdAt,
    required super.id,
  });
}
