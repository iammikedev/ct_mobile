// ignore_for_file: overridden_fields

import 'package:dart_mappable/dart_mappable.dart';
import 'package:scanner/features/announcement/announcement.dart';

part 'announcement_model.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.all)
class AnnouncementModel extends AnnouncementEntity
    with AnnouncementModelMappable {
  AnnouncementModel({
    @MappableField(key: 'current_page') required super.currentPage,
    required this.data,
    required super.from,
    required super.path,
    @MappableField(key: 'per_page') required super.perPage,
    required super.to,
    @MappableField(key: 'first_page_url') super.firstPageUrl,
    @MappableField(key: 'next_page_url') super.nextPageUrl,
    @MappableField(key: 'prev_page_url') super.prevPageUrl,
  }) : super(data: data);

  @override
  final List<AnnouncementDataModel> data;

  static const fromJson = AnnouncementModelMapper.fromMap;
}
