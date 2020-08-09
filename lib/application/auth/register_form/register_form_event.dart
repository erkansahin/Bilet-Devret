part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {

  const factory RegisterFormEvent.userNameChanged(String userNameStr) =
      UserNameChanged;
  const factory RegisterFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory RegisterFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  const factory RegisterFormEvent.registerButtonPressed() =
      RegisterButtonPressed;
}
