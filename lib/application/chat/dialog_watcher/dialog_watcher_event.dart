part of 'dialog_watcher_bloc.dart';

@freezed
abstract class DialogWatcherEvent with _$DialogWatcherEvent {
  const factory DialogWatcherEvent.watchDialog(UniqueId otherUserID) =
      _WatchDialog;
  const factory DialogWatcherEvent.dialogsReceived(
          Either<ChatFailure, KtList<TextMessage>> failureOrDialogs) =
      _DialogsReceived;
}
