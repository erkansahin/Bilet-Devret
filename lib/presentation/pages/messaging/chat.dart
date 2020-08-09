import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/date_symbol_data_local.dart';
// ignore: implementation_imports
import 'package:kt_dart/src/collection/kt_list.dart';

import '../../../app_localizations.dart';
import '../../../application/auth/user_details_watcher/user_details_watcher_bloc.dart';
import '../../../application/chat/dialog/chat_dialog_bloc.dart';
import '../../../application/chat/dialog_watcher/dialog_watcher_bloc.dart';
import '../../../application/user_actor/user_actor_bloc.dart';
import '../../../domain/chat/message_type.dart';
import '../../../domain/chat/text_message.dart';
import '../../../domain/core/value_objects.dart';
import '../../../injection.dart';
import 'widgets/widgets.dart';

class ChatScreen extends StatefulWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<DialogWatcherBloc>(
              create: (context) => getIt<DialogWatcherBloc>()
                ..add(DialogWatcherEvent.watchDialog(
                  otherUserID,
                ))),
          BlocProvider<UserDetailsWatcherBloc>(
              create: (context) => getIt<UserDetailsWatcherBloc>()
                ..add(UserDetailsWatcherEvent.watchUserDetails(otherUserID))),
          BlocProvider<ChatDialogBloc>(
            create: (context) => getIt<ChatDialogBloc>()
              ..add(
                  ChatDialogEvent.receiverIDReceived(receiverID: otherUserID)),
          ),
          BlocProvider<UserActorBloc>(
              create: (context) => getIt<UserActorBloc>()
                ..add(UserActorEvent.checkIfCurrentUserBlockedThePair(
                    otherUserID: otherUserID.getOrCrash()))
                ..add(UserActorEvent.checkIfThePairBlockedCurrentUser(
                    otherUserID: otherUserID.getOrCrash()))),
        ],
        child: this,
      );
  final UniqueId otherUserID;

  const ChatScreen({
    Key key,
    this.otherUserID,
  }) : super(key: key);
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();
  final Color myGreen = const Color(0xff4bb17b);
  final _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsWatcherBloc, UserDetailsWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const CircularProgressIndicator(),
            loadError: (_) {
              UserDetailsWatcherEvent.watchUserDetails(widget.otherUserID);
              return Container();
            },
            loadSuccess: (_) => Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    iconTheme: const IconThemeData(color: Colors.black54),
                    title: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        MyCircleAvatar(
                          imgUrl: _.userDetail.photoURL,
                        ),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _.userDetail.displayName,
                              style: Theme.of(context).textTheme.subtitle1,
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        )
                      ],
                    ),
                    actions: <Widget>[
                      BlocListener<UserActorBloc, UserActorState>(
                        listenWhen: (previous, current) =>
                            previous.isCurrentUserStateChecked == false,
                        listener:
                            (BuildContext context, UserActorState state) => {},
                        child: IconButton(
                          icon: const Icon(Icons.block),
                          onPressed: () async {
                            return _showUserBlockConfirmation();
                          },
                        ),
                      ),
                    ],
                  ),
                  body: BlocBuilder<DialogWatcherBloc, DialogWatcherState>(
                      builder: (context, state) {
                    return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loadFailure: (state) {
                        return Text(
                            AppLocalizations.of(context).translate("failed"));
                      },
                      loadSuccess: (state) {
                        return Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: ListView.builder(
                                      reverse: true,
                                      padding: const EdgeInsets.all(15),
                                      itemCount: state.messages.size,
                                      itemBuilder: (ctx, i) {
                                        if (state.messages[i].senderID ==
                                            _.userDetail.id) {
                                          return ReceivedMessagesWidget(
                                            message: state.messages[i],
                                            userDetail: _.userDetail,
                                            showDateHeader: _willShowDateHeader(
                                                state.messages, i),
                                          );
                                        } else {
                                          return SentMessageWidget(
                                            message: state.messages[i],
                                            showDateHeader: _willShowDateHeader(
                                                state.messages, i),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                  BlocBuilder<ChatDialogBloc, ChatDialogState>(
                                    builder: (context, state) => BlocBuilder<
                                            UserActorBloc, UserActorState>(
                                        builder: (context, state) => context
                                                    .bloc<UserActorBloc>()
                                                    .state
                                                    .pairBlockedCurrentUser ||
                                                context
                                                    .bloc<UserActorBloc>()
                                                    .state
                                                    .currentUserBlockedThePair
                                            ? Container()
                                            : Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                height: 61,
                                                child: Row(
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      35.0),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                                offset: Offset(
                                                                    0, 3),
                                                                blurRadius: 5,
                                                                color:
                                                                    Colors.grey)
                                                          ],
                                                        ),
                                                        child: Row(
                                                          children: <Widget>[
                                                            const Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            16.0)),
                                                            Expanded(
                                                              child: TextField(
                                                                controller:
                                                                    _textController,
                                                                onChanged:
                                                                    (text) {
                                                                  context
                                                                      .bloc<
                                                                          ChatDialogBloc>()
                                                                      .add(ChatDialogEvent.textMessageBodyChanged(
                                                                          textMessageBodyStr:
                                                                              text));
                                                                },
                                                                onSubmitted:
                                                                    (_) {
                                                                  context
                                                                      .bloc<
                                                                          UserActorBloc>()
                                                                      .add(UserActorEvent.checkIfCurrentUserBlockedThePair(
                                                                          otherUserID: widget
                                                                              .otherUserID
                                                                              .getOrCrash()));
                                                                  context
                                                                      .bloc<
                                                                          UserActorBloc>()
                                                                      .add(UserActorEvent.checkIfThePairBlockedCurrentUser(
                                                                          otherUserID: widget
                                                                              .otherUserID
                                                                              .getOrCrash()));
                                                                  if (_textController
                                                                          .text !=
                                                                      "") {
                                                                    context
                                                                        .bloc<
                                                                            ChatDialogBloc>()
                                                                        .add(ChatDialogEvent.messageTypeChanged(
                                                                            type:
                                                                                MessageType.text.index));
                                                                    context
                                                                        .bloc<
                                                                            ChatDialogBloc>()
                                                                        .add(const ChatDialogEvent
                                                                            .sendButtonPressed());
                                                                    _textController
                                                                        .clear();
                                                                  }
                                                                },
                                                                maxLength:
                                                                    TextMessage
                                                                        .maxMessageBodyLength,
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText: AppLocalizations.of(
                                                                          context)
                                                                      .translate(
                                                                          "type_something"),
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  counterText:
                                                                      "",
                                                                ),
                                                              ),
                                                            ),
                                                            IconButton(
                                                              onPressed:
                                                                  () async {
                                                                context
                                                                    .bloc<
                                                                        UserActorBloc>()
                                                                    .add(UserActorEvent.checkIfCurrentUserBlockedThePair(
                                                                        otherUserID: widget
                                                                            .otherUserID
                                                                            .getOrCrash()));

                                                                context
                                                                    .bloc<
                                                                        UserActorBloc>()
                                                                    .add(UserActorEvent.checkIfThePairBlockedCurrentUser(
                                                                        otherUserID: widget
                                                                            .otherUserID
                                                                            .getOrCrash()));
                                                                final pickedFile =
                                                                    await _pickImage(
                                                                        source:
                                                                            ImageSource.camera);
                                                                if (context
                                                                        .bloc<
                                                                            UserActorBloc>()
                                                                        .state
                                                                        .pairBlockedCurrentUser ==
                                                                    false) {
                                                                  context
                                                                      .bloc<
                                                                          ChatDialogBloc>()
                                                                      .add(ChatDialogEvent.messageTypeChanged(
                                                                          type: MessageType
                                                                              .image
                                                                              .index));
                                                                  context
                                                                      .bloc<
                                                                          ChatDialogBloc>()
                                                                      .add(ChatDialogEvent.uploadImage(
                                                                          file:
                                                                              pickedFile));
                                                                  if (context
                                                                          .bloc<
                                                                              ChatDialogBloc>()
                                                                          .state
                                                                          .textMessage
                                                                          .messageBody !=
                                                                      "") {
                                                                    context
                                                                        .bloc<
                                                                            ChatDialogBloc>()
                                                                        .add(const ChatDialogEvent
                                                                            .sendButtonPressed());
                                                                  }
                                                                }
                                                              },
                                                              icon: const Icon(Icons
                                                                  .photo_camera),
                                                            ),
                                                            IconButton(
                                                              icon: const Icon(Icons
                                                                  .photo_library),
                                                              onPressed:
                                                                  () async {
                                                                final pickedFile =
                                                                    await _pickImage(
                                                                        source:
                                                                            ImageSource.gallery);
                                                                context
                                                                    .bloc<
                                                                        ChatDialogBloc>()
                                                                    .add(ChatDialogEvent.messageTypeChanged(
                                                                        type: MessageType
                                                                            .image
                                                                            .index));
                                                                context
                                                                    .bloc<
                                                                        ChatDialogBloc>()
                                                                    .add(ChatDialogEvent
                                                                        .uploadImage(
                                                                            file:
                                                                                pickedFile));
                                                                context
                                                                    .bloc<
                                                                        ChatDialogBloc>()
                                                                    .add(const ChatDialogEvent
                                                                        .sendButtonPressed());
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 15),
                                                  ],
                                                ),
                                              )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }),
                ));
      },
    );
  }

  Future<File> _pickImage({@required ImageSource source}) async {
    final pickedFile = await _picker.getImage(source: source);
    final File croppedFile = await ImageCropper.cropImage(
        sourcePath: pickedFile.path,
        compressQuality: 50,
        androidUiSettings: AndroidUiSettings(
            hideBottomControls: true,
            statusBarColor: myGreen,
            toolbarTitle: AppLocalizations.of(context).translate("edit_photo"),
            toolbarColor: myGreen,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          title: AppLocalizations.of(context).translate("edit_photo"),
        ));
    return croppedFile;
  }

  bool _willShowDateHeader(KtList<TextMessage> messages, int i) {
    bool result = false;
    if (i == messages.lastIndex ||
        messages[messages.lastIndex - i].messageCreationTime.day !=
            messages[messages.lastIndex - i - 1].messageCreationTime.day) {
      result = true;
    }

    return result;
  }

  Future<void> _showUserBlockConfirmation() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        final userActorBloc = BlocProvider.of<UserActorBloc>(context);
        context.bloc<UserActorBloc>().add(
            UserActorEvent.checkIfCurrentUserBlockedThePair(
                otherUserID: widget.otherUserID.getOrCrash()));

        return BlocBuilder<UserActorBloc, UserActorState>(
          builder: (context, state) => AlertDialog(
            title: Text(AppLocalizations.of(context).translate("are_you_sure")),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  if (userActorBloc.state.currentUserBlockedThePair != true)
                    Text(AppLocalizations.of(context)
                        .translate("do_you_want_to_block_the_user"))
                  else if (userActorBloc.state.currentUserBlockedThePair)
                    Text(AppLocalizations.of(context)
                        .translate("do_you_want_to_remove_block_of_the_user"))
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  if (userActorBloc.state.currentUserBlockedThePair != true) {
                    context.bloc<UserActorBloc>().add(
                        UserActorEvent.currentUserBlockedThePair(
                            otherUserID: widget.otherUserID.getOrCrash()));
                  } else if (userActorBloc.state.currentUserBlockedThePair) {
                    context.bloc<UserActorBloc>().add(
                        UserActorEvent.currentUserUnblockedThePair(
                            otherUserID: widget.otherUserID.getOrCrash()));
                  }

                  ExtendedNavigator.of(context).pop();
                  //TODO: Show messages to the user for success and failure
                  userActorBloc.state.blockActionFailureOption.fold(
                      () => {
                            if (!userActorBloc.state.currentUserBlockedThePair)
                              {
                                FlushbarHelper.createError(
                                        message: AppLocalizations.of(context)
                                            .translate("user_is_blocked"))
                                    .show(context)
                              }
                            else if (userActorBloc
                                .state.currentUserBlockedThePair)
                              {
                                FlushbarHelper.createSuccess(
                                        message: AppLocalizations.of(context)
                                            .translate("user_block_is_removed"))
                                    .show(context)
                              }
                          },
                      (failure) => FlushbarHelper.createError(
                              message: AppLocalizations.of(context)
                                  .translate("server_error"))
                          .show(context));
                },
                child: Text(AppLocalizations.of(context).translate("yes")),
              ),
              FlatButton(
                onPressed: () {
                  ExtendedNavigator.of(context).pop();
                },
                child: Text(AppLocalizations.of(context).translate("no")),
              ),
            ],
          ),
        );
      },
    );
  }
}
