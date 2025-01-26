import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/dashboard/dashboard.dart';

part 'stats_model.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all)
class StatsModel extends StatsEntity with StatsModelMappable {
  StatsModel({
    @MappableField(key: 'active_cases') required super.activeCases,
    @MappableField(key: 'total_cases') required super.totalCases,
    @MappableField(key: 'total_deaths') required super.totalDeaths,
    @MappableField(key: 'total_recoveries') required super.totalRecoveries,
  });

  static const fromJson = StatsModelMapper.fromMap;
}

extension StatsModelExtension on StatsEntity {
  StatsModel toModel() => StatsModel(
        activeCases: activeCases,
        totalCases: totalCases,
        totalDeaths: totalDeaths,
        totalRecoveries: totalRecoveries,
      );
}
