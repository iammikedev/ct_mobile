part of 'stats_bloc.dart';

class StatsState extends Equatable {
  const StatsState();

  @override
  List<Object> get props => [];
}

final class StatsInitial extends StatsState {}

final class GetStatsLoadingState extends StatsState {}

final class GetStatsSuccessState extends StatsState {
  const GetStatsSuccessState(this.stats);
  final StatsEntity stats;

  @override
  List<Object> get props => [stats];
}

final class GetStatsErrorState extends StatsState {
  const GetStatsErrorState(this.error);
  final Failure error;

  @override
  List<Object> get props => [error];
}
