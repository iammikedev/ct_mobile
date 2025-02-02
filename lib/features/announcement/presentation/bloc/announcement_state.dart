part of 'announcement_bloc.dart';

abstract class AnnouncementState extends Equatable {
  const AnnouncementState();

  @override
  List<Object> get props => [];
}

class AnnouncementInitial extends AnnouncementState {}

final class GetLatestAnnouncementsLoadingState extends AnnouncementState {
  const GetLatestAnnouncementsLoadingState();
}

final class GetLatestAnnouncementsErrorState extends AnnouncementState {
  const GetLatestAnnouncementsErrorState(this.error);

  final Failure error;

  @override
  List<Object> get props => [error];
}

final class GetLatestAnnouncementsSuccessState extends AnnouncementState {
  const GetLatestAnnouncementsSuccessState(this.announcements);

  final AnnouncementEntity announcements;

  @override
  List<Object> get props => [announcements];
}

// Get Announcements
final class GetAnnouncementsLoadingState extends AnnouncementState {
  const GetAnnouncementsLoadingState();
}

final class GetAnnouncementsErrorState extends AnnouncementState {
  const GetAnnouncementsErrorState(this.error);

  final Failure error;

  @override
  List<Object> get props => [error];
}

final class GetAnnouncementsSuccessState extends AnnouncementState {
  const GetAnnouncementsSuccessState(this.announcements);

  final AnnouncementEntity announcements;

  @override
  List<Object> get props => [announcements];
}
