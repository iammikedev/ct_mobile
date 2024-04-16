class UserEntity {
  const UserEntity({
    required this.name,
    required this.email,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  final String name;
  final String email;
  final DateTime updatedAt;
  final DateTime createdAt;
  final int id;
}
