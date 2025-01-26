class StatsEntity {
  const StatsEntity({
    required this.activeCases,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecoveries,
  });

  final int activeCases;
  final int totalCases;
  final int totalDeaths;
  final int totalRecoveries;
}
