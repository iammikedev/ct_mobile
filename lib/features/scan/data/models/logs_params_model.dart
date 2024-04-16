import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/core/enums/enums.dart';
import 'package:scanner/features/scan/scan.dart';

part 'logs_params_model.mapper.dart';

@MappableClass()
class LogsParamsModel extends LogsParamsEntity with LogsParamsModelMappable {
  LogsParamsModel({
    super.limit,
    super.page,
    super.type,
  });

  static const fromJson = LogsParamsModelMapper.fromMap;
}
