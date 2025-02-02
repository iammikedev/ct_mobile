import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/announcement/announcement.dart';

part 'get_announcements_params_model.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all)
class GetAnnouncementsParamsModel extends GetAnnouncementsParamsEntity
    with GetAnnouncementsParamsModelMappable {
  const GetAnnouncementsParamsModel({super.limit = 10, super.page = 1});

  static const fromJson = GetAnnouncementsParamsModelMapper.fromMap;
}

extension GetAnnouncementsParamsModelExtension on GetAnnouncementsParamsEntity {
  GetAnnouncementsParamsModel toModel() =>
      GetAnnouncementsParamsModel(limit: limit, page: page);
}
