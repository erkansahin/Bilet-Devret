import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_localizations.dart';
import '../../../application/chat/user_dialogs_overview_watcher/user_dialogs_overview_watcher_bloc.dart';
import '../../../injection.dart';
import 'widgets/dialog_overview_body.dart';

class DialogOverviewPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<UserDialogsOverviewWatcherBloc>(
            create: (context) => getIt<UserDialogsOverviewWatcherBloc>()
              ..add(const UserDialogsOverviewWatcherEvent.watchDialogs()),
          ),
        ],
        child: this,
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black45),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          AppLocalizations.of(context).translate('messenger'),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: const DialogOverviewBody(),
    );
  }
}
