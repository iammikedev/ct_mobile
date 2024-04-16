// ignore_for_file: overridden_fields

import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/auth.dart';

part 'register_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class RegisterModel extends RegisterEntity with RegisterModelMappable {
  const RegisterModel({
    required super.message,
    required super.token,
    required this.user,
  }) : super(user: user);

  @override
  final UserModel user;

  static const fromJson = RegisterModelMapper.fromMap;
}
