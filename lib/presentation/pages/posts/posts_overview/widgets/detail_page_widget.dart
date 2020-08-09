import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../app_localizations.dart';
import '../../../../../application/auth/auth_bloc.dart';
import '../../../../../application/auth/user_details_watcher/user_details_watcher_bloc.dart';
import '../../../../../application/chat/dialog/chat_dialog_bloc.dart';
import '../../../../../application/post/post_actor/post_actor_bloc.dart';
import '../../../../../domain/core/value_objects.dart';
import '../../../../../domain/posts/post.dart';
import '../../../../../injection.dart';
import '../../../../routes/router.gr.dart';

class DetailPage extends StatelessWidget implements AutoRouteWrapper {
  const DetailPage({Key key, @required this.post}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<PostActorBloc>(
            create: (context) => getIt<PostActorBloc>(),
          ),
          BlocProvider<ChatDialogBloc>(
            create: (context) => getIt<ChatDialogBloc>(),
          ),
          BlocProvider<UserDetailsWatcherBloc>(
            create: (context) => getIt<UserDetailsWatcherBloc>()
              ..add(UserDetailsWatcherEvent.watchUserDetails(
                post.creatorID,
              )),
          ),
        ],
        child: this,
      );

  final Post post;
  @override
  Widget build(BuildContext context) {
    UniqueId currentUserID;
    context.bloc<AuthBloc>().state.maybeMap(
        authenticated: (state) =>
            currentUserID = UniqueId.fromUniqueString(state.user.id),
        orElse: () => {});

    return BlocBuilder<UserDetailsWatcherBloc, UserDetailsWatcherState>(
      builder: (context, state) {
        Future<void> _showUserBlockConfirmation() async {
          return showDialog<void>(
            context: context,
            barrierDismissible: false, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                    AppLocalizations.of(context).translate('are_you_sure')),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text(AppLocalizations.of(context)
                          .translate('do_you_want_to_delete_this_post'))
                    ],
                  ),
                ),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      final postActorBloc =
                          BlocProvider.of<PostActorBloc>(context);

                      postActorBloc.add(PostActorEvent.deleted(post));

                      ExtendedNavigator.of(context).popUntil((route) =>
                          route.settings.name == Routes.postsOverviewPage);

                      postActorBloc.state.maybeMap(
                          deleteSuccess: (_) => FlushbarHelper.createSuccess(
                              message: AppLocalizations.of(context).translate(
                                  'the_post_is_deleted_successfully')),
                          deleteFailure: (_) => FlushbarHelper.createError(
                              message: AppLocalizations.of(context)
                                  .translate('the_post_could_not_be_deleted')),
                          orElse: () {});
                    },
                    child: Text(AppLocalizations.of(context).translate('yes')),
                  ),
                  FlatButton(
                    onPressed: () {
                      ExtendedNavigator.of(context).pop();
                    },
                    child: Text(AppLocalizations.of(context).translate('no')),
                  ),
                ],
              );
            },
          );
        }

        return Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).translate('details')),
            centerTitle: true,
            actions: <Widget>[
              if (currentUserID == post.creatorID)
                IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      return _showUserBlockConfirmation();
                    })
              else
                Container()
            ],
          ),
          body: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    post.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 6.0),
                    child: Text("${post.day}/${post.month}/${post.year}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("${post.town}/${post.city}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: IconButton(
                      onPressed: () async {
                        if (await canLaunch(post.detailUrl)) {
                          await launch(post.detailUrl);
                        } else {
                          // ignore: avoid_single_cascade_in_expression_statements
                          FlushbarHelper.createError(
                            message: AppLocalizations.of(context)
                                .translate('url_is_corrupt'),
                            duration:
                                const Duration(seconds: 1, milliseconds: 500),
                          )..show(context);
                        }
                      },
                      icon: const Icon(
                        Icons.language,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: Divider(
                  thickness: 0.4,
                  color: Colors.grey,
                  indent: 0,
                  height: 1,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    AppLocalizations.of(context).translate('explanation'),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SelectableText(
                    post.detail,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )),
          floatingActionButton: currentUserID != post.creatorID
              ? FloatingActionButton(
                  onPressed: () {
                    context.bloc<UserDetailsWatcherBloc>().state.maybeMap(
                          loadSuccess: (state) => {
                            ExtendedNavigator.of(context)
                                .pushNamed(Routes.chatScreen,
                                    arguments: ChatScreenArguments(
                                      otherUserID: state.userDetail.id,
                                    ))
                          },
                          orElse: () {},
                        );
                  },
                  child: const Icon(Icons.message),
                )
              : null,
        );
      },
    );
  }
}
