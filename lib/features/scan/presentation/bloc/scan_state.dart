part of 'scan_bloc.dart';

abstract class ScanState extends Equatable {
  const ScanState();

  @override
  List<Object?> get props => [];
}

class GotScan extends ScanState {
  const GotScan(this.res);

  final ScanEntity res;

  @override
  List<Object?> get props => [res];
}
