import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user_detail.dart';
import '../../../domain/core/value_objects.dart';

part 'user_details_watcher_bloc.freezed.dart';
part 'user_details_watcher_event.dart';
part 'user_details_watcher_state.dart';

@injectable
class UserDetailsWatcherBloc
    extends Bloc<UserDetailsWatcherEvent, UserDetailsWatcherState> {
  UserDetailsWatcherBloc(this._authFacade)
      : super(const UserDetailsWatcherState.initial());
  final IAuthFacade _authFacade;

  @override
  Stream<UserDetailsWatcherState> mapEventToState(
    UserDetailsWatcherEvent event,
  ) async* {
    final userDetailsOption =
        await _authFacade.getUserDetails(userID: event.otherUserID);
    yield userDetailsOption.fold(
        () => const UserDetailsWatcherState.loadError(),
        (userDetail) => UserDetailsWatcherState.loadSuccess(userDetail));
  }
}
