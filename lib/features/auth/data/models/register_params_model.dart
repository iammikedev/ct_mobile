import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/auth.dart';

part 'register_params_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class RegisterParamsModel extends RegisterParamsEntity
    with RegisterParamsModelMappable {
  const RegisterParamsModel({
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.password,
    required super.passwordConfirmation,
    required super.address,
    required super.deviceId,
  });
}
