part of 'post_actor_bloc.dart';

@freezed
abstract class PostActorState with _$PostActorState {
  const factory PostActorState.initial() = Initial;
  const factory PostActorState.actionInProgress() = ActionInProgress;
  const factory PostActorState.deleteFailure(PostFailure postFailure) =
      DeleteFailure;
  const factory PostActorState.deleteSuccess() = DeleteSuccess;
}