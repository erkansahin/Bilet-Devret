import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_localizations.dart';
import '../../../application/auth/register_form/register_form_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../injection.dart';
import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).translate("sign_in"),
          style: const TextStyle(fontSize: 18),
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SignInFormBloc>(
            create: (context) => getIt<SignInFormBloc>(),
          ),
          BlocProvider<RegisterFormBloc>(
            create: (context) => getIt<RegisterFormBloc>(),
          ),
        ],
        child: const SignInForm(),
      ),
    );
  }
}
