class GetAnnouncementsParamsEntity {
  const GetAnnouncementsParamsEntity({
    this.page = 1,
    this.limit = 10,
  });

  final int page;
  final int limit;
}
