part of 'announcement_bloc.dart';

abstract class AnnouncementEvent extends Equatable {
  const AnnouncementEvent();

  @override
  List<Object> get props => [];
}

abstract class GetAnnouncements extends AnnouncementEvent {
  const GetAnnouncements(this.params);
  final GetAnnouncementsParamsEntity params;

  @override
  List<Object> get props => [params];
}

final class OnGetAnnouncements extends GetAnnouncements {
  const OnGetAnnouncements(super.params);
}

final class OnGetLatestAnnouncements extends GetAnnouncements {
  const OnGetLatestAnnouncements(super.params);
}
