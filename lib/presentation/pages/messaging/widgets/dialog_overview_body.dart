import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../../app_localizations.dart';
import '../../../../application/auth/user_details_watcher/user_details_watcher_bloc.dart';
import '../../../../application/chat/user_dialogs_overview_watcher/user_dialogs_overview_watcher_bloc.dart';
import '../../../../domain/chat/message_type.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';
import 'circle_avatar.dart';

class DialogOverviewBody extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<UserDetailsWatcherBloc>(
              create: (context) => getIt<UserDetailsWatcherBloc>()),
        ],
        child: this,
      );
  const DialogOverviewBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDialogsOverviewWatcherBloc,
        UserDialogsOverviewWatcherState>(builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadFailure: (state) {
          context
              .bloc<UserDialogsOverviewWatcherBloc>()
              .add(const UserDialogsOverviewWatcherEvent.watchDialogs());
          return Container();
        },
        loadSuccess: (state) {
          return ListView.builder(
            itemCount: state.dialogs.size,
            itemBuilder: (ctx, i) {
              return Column(
                children: <Widget>[
                  ListTile(
                    isThreeLine: true,
                    onTap: () {
                      ExtendedNavigator.of(context).pushNamed(Routes.chatScreen,
                          arguments: ChatScreenArguments(
                            otherUserID: state.dialogs[i].otherUserID,
                          ));
                    },
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              offset: const Offset(0, 5),
                              blurRadius: 25)
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: MyCircleAvatar(
                              imgUrl: state.dialogs[i].photoUrl,
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      state.dialogs[i].otherUserDisplayName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: state.dialogs[i].type == MessageType.text.index
                        ? Text(
                            state.dialogs[i].lastMessage,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .apply(color: Colors.black54),
                          )
                        : Text(
                            AppLocalizations.of(context).translate('photo'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .apply(color: Colors.black54),
                          ),
                    trailing: Container(
                      width: 125,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(height: 15, width: 15),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  _determineLastMessageCreationTime(
                                      lastMessageCreationTime: state
                                          .dialogs[i].lastMessageCreationTime,
                                      locale: AppLocalizations.of(context)
                                          .locale
                                          .languageCode),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      .apply(
                                          fontSizeFactor: 0.9,
                                          color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          if (state.dialogs[i].unreadCount > 0)
                            Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                state.dialogs[i].unreadCount.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          else
                            Container(
                              height: 25,
                              width: 25,
                            ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 0.3,
                  )
                ],
              );
            },
          );
        },
      );
    });
  }

  String _determineLastMessageCreationTime(
      {@required DateTime lastMessageCreationTime, @required String locale}) {
    final DateTime now = DateTime.now();

    final Duration difference = now.difference(lastMessageCreationTime);
    return timeago.format(now.subtract(difference), locale: locale);
  }
}
