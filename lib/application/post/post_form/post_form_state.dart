part of 'post_form_bloc.dart';

@freezed
abstract class PostFormState with _$PostFormState {
  const factory PostFormState({
    // Unlike in SignInFormState, here we have an entity which we can readily use for validation
    // instead of storing individual fields.
    @required Post post,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
    @required bool isValid,
  }) = _PostFormState;

  factory PostFormState.initial() => PostFormState(
        post: Post.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        isValid: false,
        saveFailureOrSuccessOption: none(),
      );
}