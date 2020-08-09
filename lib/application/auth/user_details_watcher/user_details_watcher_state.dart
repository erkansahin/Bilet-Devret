part of 'user_details_watcher_bloc.dart';


@freezed
abstract class UserDetailsWatcherState with _$UserDetailsWatcherState {
  const factory UserDetailsWatcherState.initial() = Initial;
  const factory UserDetailsWatcherState.loadInProgress() = DataTransferInProgress;
  const factory UserDetailsWatcherState.loadSuccess(UserDetail userDetail) = LoadSuccess;
  const factory UserDetailsWatcherState.loadError() = LoadError;
}