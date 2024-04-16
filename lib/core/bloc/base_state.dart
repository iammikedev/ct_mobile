import 'package:equatable/equatable.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/dashboard/dashboard.dart';
import 'package:scanner/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:scanner/features/route/presentation/bloc/route_bloc.dart';
import 'package:scanner/features/scan/presentation/bloc/scan_bloc.dart';

abstract class BaseState extends Equatable
    implements AuthState, RouteState, ProfileState, ScanState, DashboardState {}

class InitialState extends BaseState {
  @override
  List<Object> get props => [];
}

class LoadingState extends BaseState {
  @override
  List<Object> get props => [];
}

class RetryState extends BaseState {
  @override
  List<Object> get props => [];
}

class ErrorState extends BaseState {
  ErrorState(this.error);

  final Failure error;

  @override
  List<Object> get props => [error];
}

class SuccessState<T> extends BaseState {
  SuccessState(this.data);

  final T data;

  @override
  List<Object> get props => [data!];
}

class NoInternetConnectionState extends BaseState {
  @override
  List<Object> get props => [];
}
