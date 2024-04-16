import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:scanner/core/bloc/base_state.dart';
import 'package:scanner/core/usecases/usecase.dart';
import 'package:scanner/features/profile/domain/entities/entities.dart';
import 'package:scanner/features/profile/domain/usecases/usecases.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._getProfile, this._getCachedProfile)
      : super(InitialState()) {
    on<OnGetProfile>(_onGetProfile);
    on<OnGetCachedProfile>(_onGetCachedProfile);
  }

  final GetProfileUsecase _getProfile;
  final GetCachedProfileUsecase _getCachedProfile;

  Future<FutureOr<void>> _onGetProfile(
    OnGetProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(LoadingState());

    final res = await _getProfile(NoParams());

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotProfile(r)),
    );
  }

  FutureOr<void> _onGetCachedProfile(
    OnGetCachedProfile event,
    Emitter<ProfileState> emit,
  ) async {
    final res = await _getCachedProfile(NoParams());
    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(GotCachedProfile(r)),
    );
  }
}
