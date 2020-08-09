part of 'user_details_watcher_bloc.dart';


@freezed
abstract class UserDetailsWatcherEvent with _$UserDetailsWatcherEvent {
  const factory UserDetailsWatcherEvent.watchUserDetails(UniqueId otherUserID) =
      _WatchUserDetails;

}
