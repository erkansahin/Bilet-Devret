part of 'reset_password_form_bloc.dart';

@freezed
abstract class ResetPasswordFormState with _$ResetPasswordFormState {
  const factory ResetPasswordFormState({
    @required String emailAddress,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _ResetPasswordFormState;

  factory ResetPasswordFormState.initial() => ResetPasswordFormState(
        emailAddress: '',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}