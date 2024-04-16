// ignore_for_file: overridden_fields

import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/auth/auth.dart';
import 'package:scanner/features/scan/scan.dart';

part 'scan_model.mapper.dart';

@MappableClass()
class ScanModel extends ScanEntity with ScanModelMappable {
  const ScanModel({
    this.establishment,
    this.user,
  }) : super(
          establishment: establishment,
          user: user,
        );

  @override
  final EstablishmentModel? establishment;

  @override
  final UserModel? user;

  static const fromJson = ScanModelMapper.fromMap;
}
