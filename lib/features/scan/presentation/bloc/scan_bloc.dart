import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/features/scan/domain/entities/entities.dart';
import 'package:scanner/features/scan/domain/usecases/usecases.dart';

part 'scan_event.dart';
part 'scan_state.dart';

class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc(this._scan, this._getLogs) : super(InitialState()) {
    on<OnScan>(_onScan);
    on<OnGetLogs>(_onGetLogs);
  }

  final ScanUsecase _scan;
  final GetLogsUsecase _getLogs;

  FutureOr<void> _onScan(
    OnScan event,
    Emitter<ScanState> emit,
  ) async {
    emit(LoadingState());

    final res = await _scan(event.code);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotScan(r)),
    );
  }

  FutureOr<void> _onGetLogs(
    OnGetLogs event,
    Emitter<ScanState> emit,
  ) async {
    emit(LoadingState());

    final res = await _getLogs(event.req);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(SuccessState<List<LogsEntity>>(r)),
    );
  }
}
