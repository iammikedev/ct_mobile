import 'package:dartz/dartz.dart';
import 'package:scanner/core/core.dart';
import 'package:scanner/features/announcement/announcement.dart';

abstract class AnnouncementRepository {
  Future<Either<Failure, AnnouncementEntity>> getAnnouncements(
    GetAnnouncementsParamsEntity params,
  );
}
