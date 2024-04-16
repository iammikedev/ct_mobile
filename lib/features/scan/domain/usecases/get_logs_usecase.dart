import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/scan/scan.dart';

class GetLogsUsecase extends Usecase<List<LogsEntity>, LogsParamsEntity> {
  GetLogsUsecase(this._repo);

  final ScanRepository _repo;

  @override
  Future<Either<Failure, List<LogsEntity>>> call(params) {
    return _repo.getLogs(params);
  }
}
