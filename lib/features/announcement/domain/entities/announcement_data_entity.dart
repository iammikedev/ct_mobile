class AnnouncementDataEntity {
  const AnnouncementDataEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.isImportant,
    required this.isActive,
    required this.publishAt,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String title;
  final String description;
  final int isImportant;
  final int isActive;
  final DateTime publishAt;
  final DateTime createdAt;
  final DateTime updatedAt;
}
