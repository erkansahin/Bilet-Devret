import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../application/auth/auth_bloc.dart';
import '../../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (user) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.postsOverviewPage),
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatefulWidget {
  @override
  __PageWidgetState createState() => __PageWidgetState();
}

class __PageWidgetState extends State<_PageWidget> {
  @override
  void initState() {
    timeago.setLocaleMessages('tr', timeago.TrMessages());
    timeago.setLocaleMessages('en', timeago.EnMessages());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
