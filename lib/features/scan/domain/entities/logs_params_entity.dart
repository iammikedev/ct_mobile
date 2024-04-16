import 'package:equatable/equatable.dart';
import 'package:scanner/core/enums/enums.dart';

class LogsParamsEntity extends Equatable {
  const LogsParamsEntity({
    this.limit = 10,
    this.page = 1,
    this.type = LogTypeEnum.USER,
  });

  final int limit;
  final int page;
  final LogTypeEnum type;

  @override
  List<Object?> get props => [limit, page, type];
}
