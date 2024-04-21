import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:scanner/core/errors/exception.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/services/storage_service.dart';
import 'package:scanner/features/auth/data/datasources/remote/auth_remote.dart';
import 'package:scanner/features/auth/data/models/login_model.dart';
import 'package:scanner/features/auth/data/models/login_params_model.dart';
import 'package:scanner/features/auth/data/models/register_params_model.dart';
import 'package:scanner/features/auth/domain/domain.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._remote, this._storage);

  final AuthRemote _remote;
  final StorageService _storage;

  @override
  Future<Either<Failure, LoginEntity>> login(LoginParamsModel params) async {
    try {
      final res = await _remote.login(params.toMap());
      await _storage.setStorageValue('token', jsonEncode(res.toJson()));
      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, RegisterEntity>> register(
    RegisterParamsModel params,
  ) async {
    try {
      final res = await _remote.register(params.toMap());
      await _storage.setStorageValue(
        'token',
        jsonEncode({
          'token': res.token,
          'message': res.message,
        }),
      );

      await _storage.setStorageValue('profile', jsonEncode(res.user.toJson()));

      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, LoginEntity>> checkToken() async {
    try {
      final token = _storage.getStringValue('token');
      return Right(LoginModelMapper.fromJson(jsonDecode(token)));
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, LogoutEntity>> logout() async {
    try {
      final res = await _remote.logout();
      await _storage.deleteStorage('token');
      await _storage.deleteStorage('profile');

      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    }
  }
}
