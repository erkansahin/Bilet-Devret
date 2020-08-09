import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/posts/i_post_repository.dart';
import '../../../domain/posts/post.dart';
import '../../../domain/posts/post_failure.dart';

part 'post_actor_bloc.freezed.dart';
part 'post_actor_event.dart';
part 'post_actor_state.dart';

@injectable
class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  final IPostRepository _postRepository;

  PostActorBloc(this._postRepository) : super(const PostActorState.initial());

  @override
  Stream<PostActorState> mapEventToState(
    PostActorEvent event,
  ) async* {
    // We have only one PostActorEvent - there's no union type
    yield const PostActorState.actionInProgress();
    final possibleFailure = await _postRepository.delete(post: event.post);
    yield possibleFailure.fold(
      (f) => PostActorState.deleteFailure(f),
      // Yielding unchanged state - nothing will be emitted from the BLoC
      (_) => const PostActorState.deleteSuccess(),
    );
  }
}
