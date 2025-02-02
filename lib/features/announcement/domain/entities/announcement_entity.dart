import 'package:scanner/features/announcement/announcement.dart';

class AnnouncementEntity {
  const AnnouncementEntity({
    required this.currentPage,
    required this.data,
    this.firstPageUrl,
    required this.from,
    this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
    required this.to,
  });

  final int currentPage;
  final List<AnnouncementDataEntity> data;
  final String? firstPageUrl;
  final int from;
  final String? nextPageUrl;
  final String path;
  final int perPage;
  final String? prevPageUrl;
  final int to;
}
