part of 'post_watcher_bloc.dart';

@freezed
abstract class PostWatcherState with _$PostWatcherState {
  const factory PostWatcherState.initial() = Initial;
  const factory PostWatcherState.loadInProgress() = DataTransferInProgress;
  const factory PostWatcherState.loadSuccess(KtList<Post> posts) = LoadSuccess;
  const factory PostWatcherState.loadFailure(PostFailure postFailure) =
      LoadFailure;
}
