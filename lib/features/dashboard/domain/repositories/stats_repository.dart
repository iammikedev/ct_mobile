import 'package:dartz/dartz.dart';
import 'package:scanner/core/core.dart';
import 'package:scanner/features/dashboard/dashboard.dart';

abstract class StatsRepository {
  Future<Either<Failure, StatsEntity>> getStats();
}
