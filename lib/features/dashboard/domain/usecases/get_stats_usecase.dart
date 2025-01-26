import 'package:dartz/dartz.dart';
import 'package:scanner/core/core.dart';
import 'package:scanner/features/dashboard/dashboard.dart';

class GetStatsUsecase extends Usecase<StatsEntity, NoParams> {
  GetStatsUsecase(this._repository);

  final StatsRepository _repository;

  @override
  Future<Either<Failure, StatsEntity>> call(NoParams params) {
    return _repository.getStats();
  }
}
