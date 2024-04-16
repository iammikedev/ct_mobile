import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/auth.dart';

part 'login_params_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class LoginParamsModel extends LoginParamsEntity with LoginParamsModelMappable {
  const LoginParamsModel({
    required super.email,
    required super.password,
    required super.deviceId,
  });
}
