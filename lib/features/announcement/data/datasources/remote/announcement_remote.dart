import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:scanner/features/announcement/announcement.dart';

part 'announcement_remote.g.dart';

@RestApi()
abstract class AnnouncementRemote {
  factory AnnouncementRemote(Dio dio) = _AnnouncementRemote;

  static const _path = '/announcement';

  @GET(_path)
  Future<AnnouncementModel> getAnnouncements(
    @Queries() Map<String, dynamic> queries,
  );
}
