import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:scanner/features/auth/data/models/login_model.dart';
import 'package:scanner/features/auth/data/models/logout_model.dart';
import 'package:scanner/features/auth/data/models/register_model.dart';

part 'auth_remote.g.dart';

@RestApi()
abstract class AuthRemote {
  factory AuthRemote(Dio dio) = _AuthRemote;

  @POST('/login')
  Future<LoginModel> login(@Body() Map<String, dynamic> params);

  @POST('/register')
  Future<RegisterModel> register(@Body() Map<String, dynamic> params);

  @POST('/logout')
  Future<LogoutModel> logout();
}
