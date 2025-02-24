import 'package:dart_mappable/dart_mappable.dart';

part 'health_status_enum.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.upperSnakeCase)
enum HealthStatusEnum {
  normal,
  underInvestigation,
  asymptomatic,
  symptomatic,
  recovered,
  deceased,
}
