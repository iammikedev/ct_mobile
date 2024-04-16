// ignore_for_file: overridden_fields

import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/data/data.dart';
import 'package:scanner/features/scan/scan.dart';

part 'logs_model.mapper.dart';

@MappableClass()
class LogsModel extends LogsEntity with LogsModelMappable {
  const LogsModel({
    required super.id,
    required super.createdAt,
    required super.updatedAt,
    this.establishment,
    this.user,
  }) : super(establishment: establishment, user: user);

  @override
  final EstablishmentModel? establishment;

  @override
  final UserModel? user;

  static const fromJson = LogsModelMapper.fromMap;
}
