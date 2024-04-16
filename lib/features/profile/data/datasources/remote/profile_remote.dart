import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:scanner/features/profile/data/models/models.dart';

part 'profile_remote.g.dart';

@RestApi()
abstract class ProfileRemote {
  factory ProfileRemote(Dio dio) = _ProfileRemote;

  @GET('/profile')
  Future<ProfileModel> getProfile();
}
