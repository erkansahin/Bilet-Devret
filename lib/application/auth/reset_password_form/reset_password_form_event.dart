part of 'reset_password_form_bloc.dart';

@freezed
abstract class ResetPasswordFormEvent with _$ResetPasswordFormEvent {
  const factory ResetPasswordFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory ResetPasswordFormEvent.resetButtonPressed() =
      ResetButtonPressed;
}
