import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:scanner/features/dashboard/dashboard.dart';

part 'stats_remote.g.dart';

@RestApi()
abstract class StatsRemote {
  factory StatsRemote(Dio dio) = _StatsRemote;

  static const _path = '/stats';

  @GET(_path)
  Future<StatsModel> getStats();
}
