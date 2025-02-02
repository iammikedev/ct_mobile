import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/core.dart';
import 'package:scanner/features/announcement/announcement.dart';

part 'announcement_event.dart';
part 'announcement_state.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  AnnouncementBloc(this._getAnnouncements) : super(AnnouncementInitial()) {
    on<OnGetAnnouncements>(_onGetAnnouncements);
    on<OnGetLatestAnnouncements>(_onGetLatestAnnouncements);
  }

  final GetAnnouncementsUsecase _getAnnouncements;

  FutureOr<void> _onGetAnnouncements(
    OnGetAnnouncements event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(const GetAnnouncementsLoadingState());
    final response = await _getAnnouncements(event.params);

    response.fold(
      (l) => emit(GetAnnouncementsErrorState(l)),
      (r) => emit(GetAnnouncementsSuccessState(r)),
    );
  }

  FutureOr<void> _onGetLatestAnnouncements(
    OnGetLatestAnnouncements event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(const GetLatestAnnouncementsLoadingState());
    final response = await _getAnnouncements(event.params);

    response.fold(
      (l) => emit(GetLatestAnnouncementsErrorState(l)),
      (r) => emit(GetLatestAnnouncementsSuccessState(r)),
    );
  }
}
