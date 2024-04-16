import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/auth.dart';

part 'login_model.mapper.dart';

@MappableClass()
class LoginModel extends LoginEntity with LoginModelMappable {
  const LoginModel({
    required super.message,
    required super.token,
  });

  static const fromJson = LoginModelMapper.fromMap;
}
