import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/dashboard/dashboard.dart';

class StatsRepositoryImpl implements StatsRepository {
  const StatsRepositoryImpl({required this.remote});

  final StatsRemote remote;

  @override
  Future<Either<Failure, StatsEntity>> getStats() async {
    try {
      final result = await remote.getStats();
      return Right(result);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
