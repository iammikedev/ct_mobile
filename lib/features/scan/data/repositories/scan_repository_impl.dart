import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/scan/scan.dart';

class ScanRepositoryImpl extends ScanRepository {
  ScanRepositoryImpl(this._remote);

  final ScanRemote _remote;

  @override
  Future<Either<Failure, ScanEntity>> scan(String params) async {
    try {
      final res = await _remote.scan({'code': params});

      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    }
  }

  @override
  Future<Either<Failure, List<LogsEntity>>> getLogs(
    LogsParamsEntity params,
  ) async {
    try {
      final res =
          await _remote.getLogs(params.type.name, params.limit, params.page);

      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    }
  }
}
