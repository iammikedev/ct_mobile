import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/core.dart';
import 'package:scanner/features/dashboard/dashboard.dart';

part 'stats_event.dart';
part 'stats_state.dart';

class StatsBloc extends Bloc<StatsEvent, StatsState> {
  StatsBloc(this._getStats) : super(StatsInitial()) {
    on<OnGetStats>(_onGetStats);
  }

  final GetStatsUsecase _getStats;

  FutureOr<void> _onGetStats(
    OnGetStats event,
    Emitter<StatsState> emit,
  ) async {
    emit(GetStatsLoadingState());

    final response = await _getStats(NoParams());

    response.fold(
      (l) => emit(GetStatsErrorState(l)),
      (r) => emit(GetStatsSuccessState(r)),
    );
  }
}
