import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:scanner/features/scan/data/models/models.dart';

part 'scan_remote.g.dart';

@RestApi()
abstract class ScanRemote {
  factory ScanRemote(Dio dio) = _ScanRemote;

  @POST('/scan')
  Future<ScanModel> scan(Map<String, dynamic> params);

  @GET('/scan')
  Future<List<LogsModel>> getLogs(@Queries() Map<String, dynamic> params);
}
