import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_localizations.dart';
import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/register_form/register_form_bloc.dart';
import '../../../../domain/core/value_validators.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';

class RegisterFormPage extends StatelessWidget {
  const RegisterFormPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterFormBloc>(),
      child: BlocConsumer<RegisterFormBloc, RegisterFormState>(
          listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.maybeMap(
                    // Use localized strings here in your apps

                    serverError: (_) =>
                        AppLocalizations.of(context).translate('server_error'),
                    emailAlreadyInUse: (_) => AppLocalizations.of(context)
                        .translate('email_already_in_use'),
                    orElse: () =>
                        AppLocalizations.of(context).translate('failed'),
                  ),
                ).show(context);
              },
              (_) {
                FlushbarHelper.createSuccess(
                  duration: const Duration(seconds: 2),
                  message: AppLocalizations.of(context)
                      .translate('verification_mail_sent'),
                ).show(context).then((_) {
                  ExtendedNavigator.of(context).maybePop(
                      (route) => route.settings.name == Routes.signInPage);
                  context
                      .bloc<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                });
              },
            );
          },
        );
      }, builder: (context, state) {
        return Scaffold(
          body: Form(
            autovalidate: state.showErrorMessages,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)
                              .translate('create_new_account'),
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 5,
                    ),
                    Container(
                      width: 350,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                     
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20),
                            ],
                            onChanged: (value) {
                              context.bloc<RegisterFormBloc>().add(
                                  RegisterFormEvent.userNameChanged(value));
                            },
                            validator: (_) =>
                                validateStringNotEmpty(state.userName).fold(
                              (l) => l.maybeMap(
                                  empty: (_) => AppLocalizations.of(context)
                                      .translate('cannot_be_empty'),
                                  orElse: () => null),
                              (r) => null,
                            ),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.portrait),
                                labelText: AppLocalizations.of(context)
                                    .translate('username')),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 5,
                    ),
                    Container(
                      width: 350,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              context
                                  .bloc<RegisterFormBloc>()
                                  .add(RegisterFormEvent.emailChanged(value));
                            },
                            validator: (_) =>
                                validateEmailAddress(state.emailAddress).fold(
                              (l) => l.maybeMap(
                                  invalidEmail: (_) =>
                                      AppLocalizations.of(context)
                                          .translate('invalid_email'),
                                  orElse: () => null),
                              (r) => null,
                            ),
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email),
                                labelText: AppLocalizations.of(context)
                                    .translate('email')),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 5,
                    ),
                    Container(
                      width: 350,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            obscureText: true,
                           
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(24),
                            ],
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              context.bloc<RegisterFormBloc>().add(
                                  RegisterFormEvent.passwordChanged(value));
                            },
                            validator: (_) =>
                                validatePassword(state.password).fold(
                              (l) => l.maybeMap(
                                  shortPassword: (_) =>
                                      AppLocalizations.of(context)
                                          .translate('short_password'),
                                  orElse: () => null),
                              (r) => null,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock_outline),
                              labelText: AppLocalizations.of(context)
                                  .translate('password'),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 5,
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 5,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.lightBlue,
                          onPressed: () {
                            context.bloc<RegisterFormBloc>().add(
                                const RegisterFormEvent
                                    .registerButtonPressed());
                          },
                          child: Text(
                            AppLocalizations.of(context).translate('register'),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
