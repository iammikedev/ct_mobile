import 'package:dartz/dartz.dart';
import 'package:scanner/core/core.dart';
import 'package:scanner/features/announcement/announcement.dart';

class GetAnnouncementsUsecase
    extends Usecase<AnnouncementEntity, GetAnnouncementsParamsEntity> {
  GetAnnouncementsUsecase(this._repository);

  final AnnouncementRepository _repository;

  @override
  Future<Either<Failure, AnnouncementEntity>> call(params) {
    return _repository.getAnnouncements(params);
  }
}
