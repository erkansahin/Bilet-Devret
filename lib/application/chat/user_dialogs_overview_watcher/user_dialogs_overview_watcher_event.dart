part of 'user_dialogs_overview_watcher_bloc.dart';

@freezed
abstract class UserDialogsOverviewWatcherEvent
    with _$UserDialogsOverviewWatcherEvent {
  const factory UserDialogsOverviewWatcherEvent.watchDialogs() = _WatchDialogs;
  const factory UserDialogsOverviewWatcherEvent.dialogsReceived(
          Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs) =
      _DialogsReceived;
}
