import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/bloc/base_state.dart';

part 'route_event.dart';
part 'route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc() : super(InitialState()) {
    on<OnCheckAuth>(_onCheckAuth);
  }

  FutureOr<void> _onCheckAuth(
    OnCheckAuth event,
    Emitter<RouteState> emit,
  ) {
    emit(GotCheckAuth());
  }
}
