part of 'dialog_watcher_bloc.dart';

@freezed
abstract class DialogWatcherState with _$DialogWatcherState {
  const factory DialogWatcherState.initial() = Initial;
  const factory DialogWatcherState.loadInProgress() = DataTransferInProgress;
  const factory DialogWatcherState.loadSuccess(KtList<TextMessage> messages) = LoadSuccess;
  const factory DialogWatcherState.loadFailure(ChatFailure postFailure) =
      LoadFailure;
}