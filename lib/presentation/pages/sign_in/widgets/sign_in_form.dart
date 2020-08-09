import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../app_localizations.dart';
import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/register_form/register_form_bloc.dart';
import '../../../../application/auth/reset_password_form/reset_password_form_bloc.dart';
import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../domain/core/value_validators.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';

class SignInForm extends StatelessWidget implements AutoRouteWrapper {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<RegisterFormBloc>(
              create: (context) => getIt<RegisterFormBloc>()),
          BlocProvider<ResetPasswordFormBloc>(
              create: (context) => getIt<ResetPasswordFormBloc>()),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) =>
                        AppLocalizations.of(context).translate('cancelled'),
                    serverError: (_) =>
                        AppLocalizations.of(context).translate('server_error'),
                    emailAlreadyInUse: (_) => AppLocalizations.of(context)
                        .translate('email_already_in_use'),
                    invalidEmailAndPasswordCombination: (_) =>
                        AppLocalizations.of(context).translate(
                            'invalid_email_and_password_combination'),
                    emailNotVerified: (_) => AppLocalizations.of(context)
                        .translate('email_not_verified'),
                    userNotFound: (_) => AppLocalizations.of(context)
                        .translate('user_not_found'),
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context)
                    .pushReplacementNamed(Routes.postsOverviewPage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              Image.asset(
                'assets/images/app_logo.png',
                height: 160,
              ),
              const SizedBox(height: 8),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: AppLocalizations.of(context).translate('email'),
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) =>
                      validateEmailAddress(state.emailAddress).fold(
                          (l) => l.maybeMap(
                                invalidEmail: (_) =>
                                    AppLocalizations.of(context)
                                        .translate('invalid_email'),
                                orElse: () => null,
                              ),
                          (r) => null)),
              const SizedBox(height: 8),
              TextFormField(
                // controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: AppLocalizations.of(context).translate('password'),
                ),
                obscureText: true,
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) => validatePassword(state.password).fold(
                    (l) => l.maybeMap(
                        shortPassword: (_) => AppLocalizations.of(context)
                            .translate('short_password'),
                        orElse: () => null),
                    (r) => null),
              ),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () => context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed()),
                      child: Text(
                          AppLocalizations.of(context).translate('sign_in')),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: FlatButton(
                      onPressed: () => {
                        ExtendedNavigator.of(context)
                            .pushNamed(Routes.registerForm)
                      },
                      child: Text(
                          AppLocalizations.of(context).translate('register')),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () => context
                    .bloc<SignInFormBloc>()
                    .add(const SignInFormEvent.signInWithGooglePressed()),
                color: Colors.lightBlue,
                child: Text(AppLocalizations.of(context)
                        .translate('sign_in_with_google'))
                    .textColor(Colors.white)
                    .bold(),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(),
              ],
              const SizedBox(height: 8),
              FlatButton(
                onPressed: () => ExtendedNavigator.of(context)
                    .pushNamed(Routes.resetPasswordPage),
                child: Text(
                    AppLocalizations.of(context).translate('forgot_password')),
              ),
            ],
          ),
        );
      },
    );
  }
}
