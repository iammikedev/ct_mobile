import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/auth.dart';

part 'logout_model.mapper.dart';

@MappableClass()
class LogoutModel extends LogoutEntity with LogoutModelMappable {
  const LogoutModel({required super.message});

  static const fromJson = LogoutModelMapper.fromMap;
}
