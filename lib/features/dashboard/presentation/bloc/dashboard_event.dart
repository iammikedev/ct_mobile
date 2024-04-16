part of 'dashboard_bloc.dart';

abstract class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

class OnTap extends DashboardEvent {
  const OnTap(this.index);

  final int index;

  @override
  List<Object> get props => [index];
}
