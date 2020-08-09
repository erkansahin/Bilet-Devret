import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_localizations.dart';
import '../../../../application/auth/reset_password_form/reset_password_form_bloc.dart';
import '../../../../domain/core/value_validators.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ResetPasswordFormBloc>(),
      child: BlocConsumer<ResetPasswordFormBloc, ResetPasswordFormState>(
          listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.maybeMap(
                    userNotFound: (_) => AppLocalizations.of(context)
                        .translate('user_not_found'),
                    // Use localized strings here in your apps
                    serverError: (_) =>
                        AppLocalizations.of(context).translate('server_error'),
                    orElse: () => null,
                  ),
                ).show(context);
              },
              (_) {
                FlushbarHelper.createSuccess(
                  duration: const Duration(seconds: 2),
                  message:
                      AppLocalizations.of(context).translate('reset_mail_sent'),
                ).show(context).then((_) {
                  ExtendedNavigator.of(context).maybePop((route) =>
                      route.settings.name == Routes.resetPasswordPage);
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
                              .translate('reset_password'),
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
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              context.bloc<ResetPasswordFormBloc>().add(
                                  ResetPasswordFormEvent.emailChanged(value));
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
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.lightBlue,
                          onPressed: () {
                            context.bloc<ResetPasswordFormBloc>().add(
                                const ResetPasswordFormEvent
                                    .resetButtonPressed());
                          },
                          child: Text(
                            AppLocalizations.of(context).translate('reset'),
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
