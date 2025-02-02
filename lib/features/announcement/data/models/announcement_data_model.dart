import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/announcement/announcement.dart';

part 'announcement_data_model.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all)
class AnnouncementDataModel extends AnnouncementDataEntity
    with AnnouncementDataModelMappable {
  const AnnouncementDataModel({
    required super.id,
    required super.title,
    required super.description,
    @MappableField(key: 'created_at') required super.createdAt,
    @MappableField(key: 'updated_at') required super.updatedAt,
    @MappableField(key: 'is_important') required super.isImportant,
    @MappableField(key: 'is_active') required super.isActive,
    @MappableField(key: 'publish_at') required super.publishAt,
  });

  static const fromJson = AnnouncementDataModelMapper.fromMap;
}
