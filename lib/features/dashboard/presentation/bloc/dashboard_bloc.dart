import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/bloc/base_state.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<DashboardEvent>(_onDashboardEvent);
  }

  FutureOr<void> _onDashboardEvent(
    DashboardEvent event,
    Emitter<DashboardState> emit,
  ) {
    if (event is OnTap) {
      emit(SuccessState<int>(event.index));
    }
  }
}
