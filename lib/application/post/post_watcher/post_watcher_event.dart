part of 'post_watcher_bloc.dart';

@freezed
abstract class PostWatcherEvent with _$PostWatcherEvent {
  const factory PostWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory PostWatcherEvent.postsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _PostsReceived;
}
