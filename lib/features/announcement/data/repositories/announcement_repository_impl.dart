import 'package:dartz/dartz.dart';
import 'package:scanner/core/errors/failure.dart';
import 'package:scanner/features/announcement/announcement.dart';

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  const AnnouncementRepositoryImpl({required this.remote});

  final AnnouncementRemote remote;

  @override
  Future<Either<Failure, AnnouncementEntity>> getAnnouncements(
      GetAnnouncementsParamsEntity params) async {
    try {
      final result = await remote.getAnnouncements(params.toModel().toMap());
      return Right(result);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
