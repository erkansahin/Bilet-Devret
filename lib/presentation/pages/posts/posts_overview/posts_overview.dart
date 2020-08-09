import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../app_localizations.dart';
import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/post/post_actor/post_actor_bloc.dart';
import '../../../../application/post/post_watcher/post_watcher_bloc.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';
import 'widgets/posts_overview_body.dart';

class PostOverviewPage extends HookWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<PostWatcherBloc>(
            create: (context) => getIt<PostWatcherBloc>()
              ..add(const PostWatcherEvent.watchAllStarted()),
          ),
          BlocProvider<PostActorBloc>(
            create: (context) => getIt<PostActorBloc>(),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) => ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.signInPage),
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).translate('posts')),
          leading: IconButton(
              icon: const Icon(Icons.message),
              onPressed: () => ExtendedNavigator.of(context)
                  .pushNamed(Routes.dialogOverviewPage)),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
          ],
        ),
        body: PostOverviewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.of(context).pushNamed(
              Routes.postFormPage,
              arguments: PostFormPageArguments(editedPost: null),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
