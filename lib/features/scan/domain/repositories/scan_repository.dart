import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/scan/domain/entities/entities.dart';

abstract class ScanRepository {
  Future<Either<Failure, ScanEntity>> scan(String params);
  Future<Either<Failure, List<LogsEntity>>> getLogs(LogsParamsEntity params);
}
