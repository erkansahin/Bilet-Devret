import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/posts/i_post_repository.dart';
import '../../../domain/posts/post.dart';
import '../../../domain/posts/post_failure.dart';

part 'post_form_bloc.freezed.dart';
part 'post_form_event.dart';
part 'post_form_state.dart';

@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  final IPostRepository _postRepository;

  PostFormBloc(this._postRepository) : super(PostFormState.initial());

  @override
  Stream<PostFormState> mapEventToState(
    PostFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialPostOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialPost) {
            return state.copyWith(
              post: initialPost,
              isEditing: true,
            );
          },
        );
      },
      detailChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(detail: e.detailStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(title: e.titleStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      cityChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(city: e.cityStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      townChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(town: e.townStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      dayChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(day: e.dayStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      hourChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(hour: e.hourStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      minuteChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(minute: e.minuteStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      monthChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(month: e.monthStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      yearChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(year: e.yearStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      categoryChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(category: e.categoryStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      priceChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(price: e.priceStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      detailUrlChanged: (e) async* {
        yield state.copyWith(
          post: state.post.copyWith(detailUrl: e.detailUrlStr),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<PostFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.post.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _postRepository.update(state.post)
              : await _postRepository.create(state.post);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
