import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:scanner/core/errors/exception.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/core/services/services.dart';
import 'package:scanner/features/profile/data/datasources/datasources.dart';
import 'package:scanner/features/profile/data/models/models.dart';
import 'package:scanner/features/profile/domain/entities/entities.dart';
import 'package:scanner/features/profile/domain/repositories/repositories.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this._remote, this._storage);

  final ProfileRemote _remote;
  final StorageService _storage;

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      final res = await _remote.getProfile();
      await _storage.setStorageValue('profile', jsonEncode(res.toJson()));

      return Right(res);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> getCachedProfile() async {
    try {
      final profile = _storage.getStringValue('profile');
      return Right(ProfileModelMapper.fromJson(jsonDecode(profile)));
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }
}
