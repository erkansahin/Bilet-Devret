import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/chat/chat_failure.dart';
import '../../domain/chat/dialog_overview.dart';
import '../../domain/chat/i_chat_repository.dart';
import '../../domain/chat/text_message.dart';
import '../../domain/core/core_extensions.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/user_actor/user_actor_failure.dart';
import '../core/firestore_helpers.dart';
import 'dialog_overview/dialog_overview_dtos.dart';
import 'text_message_dtos.dart';

@prod
@lazySingleton
@RegisterAs(IChatRepository)
class ChatRepository implements IChatRepository {
  final Firestore _firestore;
  //TODO: Add your own storage bucket to be able to upload images while sending message.
  final FirebaseStorage _firebaseStorage =
      FirebaseStorage(storageBucket: "Your Storage Bucket Goes Here");

  ChatRepository(this._firestore);

  @override
  Future<Either<ChatFailure, Unit>> send(TextMessage textMessage) async {
    try {
      await _tryConnectingInternet();
    } on SocketException catch (_) {
      return left(const ChatFailure.serverError());
    }

    try {
      return await _trySendingMessage(textMessage: textMessage);
    } on PlatformException catch (_) {
      return left(const ChatFailure.serverError());
    }
  }

  Future<Either<UserActorFailure, bool>> checkIfCurrentUserBlockedThePair(
      {@required String otherUserID}) async {
    try {
      await _tryConnectingInternet();
    } on SocketException catch (_) {
      return left(const UserActorFailure.internetConnectionFailure());
    }
    final String currentUserID = await _firestore.currentUserID;
    try {
      return await _checkIfTheUserBlockedItsPair(
          blockerUserID: currentUserID, userToBeBlockedID: otherUserID);
    } on PlatformException catch (_) {
      return left(const UserActorFailure.serverError());
    }
  }

  Future<Either<UserActorFailure, bool>> _checkIfTheUserBlockedItsPair({
    @required String blockerUserID,
    @required String userToBeBlockedID,
  }) async {
    bool isBlocked;
    await _firestore
        .collection('users')
        .document(blockerUserID)
        .collection('blockedUsers')
        .document(userToBeBlockedID)
        .get()
        .then((value) => isBlocked = value.exists);

    return right(isBlocked);
  }

  Future _tryConnectingInternet() async {
    await InternetAddress.lookup('example.com');
    return;
  }

  Future<Either<UserActorFailure, bool>> _checkIfThePairBlockedCurrentUser(
      {@required String otherUserID}) async {
    try {
      await _tryConnectingInternet();
    } on SocketException catch (_) {
      return left(const UserActorFailure.internetConnectionFailure());
    }
    final String currentUserID = await _firestore.currentUserID;
    try {
      return await _checkIfTheUserBlockedItsPair(
          blockerUserID: otherUserID, userToBeBlockedID: currentUserID);
    } on PlatformException catch (_) {
      return left(const UserActorFailure.serverError());
    }
  }

  @override
  Future<bool> isThereBlockageBetweenUsers(
      {@required String otherUserID}) async {
    bool isThereBlockage = false;
    final Either<UserActorFailure, bool> pairBlockedCurrentUserOrFailure =
        await _checkIfThePairBlockedCurrentUser(otherUserID: otherUserID);
    pairBlockedCurrentUserOrFailure.fold((l) => {isThereBlockage = true},
        (isBlocked) => isThereBlockage = isThereBlockage || isBlocked);

    final Either<UserActorFailure, bool> currentUserBlockedPairOrFailure =
        await checkIfCurrentUserBlockedThePair(otherUserID: otherUserID);
    currentUserBlockedPairOrFailure.fold((l) => {isThereBlockage = true},
        (isBlocked) => isThereBlockage = isThereBlockage || isBlocked);
    return isThereBlockage;
  }

  Future<Either<ChatFailure, Unit>> _trySendingMessage(
      {@required TextMessage textMessage}) async {
    final currentUserID = await _firestore.currentUserID;
    final textMessageDto = TextMessageDto.fromDomain(textMessage);

    final messageID = UniqueId().getOrCrash();

    final chatroomID = getChatRoomID(
      currentUserIDStr: currentUserID,
      otherUserIDStr: textMessageDto.receiverID,
    );

    _putActiveChatDetailsWhenSendingMessage(
        currentUserID: currentUserID,
        messageContent: textMessageDto.messageBody
            .truncateTo(DialogOverview.maxLastMessageLength),
        otherUserID: textMessageDto.receiverID,
        messageTimeStamp: textMessageDto.serverTimeStamp,
        type: textMessageDto.type);

    _putMessageToChatroom(chatroomID, messageID, textMessageDto, currentUserID);

    return right(unit);
  }

  Future _putMessageToChatroom(String chatroomID, String messageID,
      TextMessageDto textMessageDto, String currentUserID) async {
    await _firestore
        .collection('chatMessages')
        .document(chatroomID)
        .collection('messages')
        .document(messageID)
        .setData(textMessageDto.copyWith(senderID: currentUserID).toJson());
  }

  Future<void> _putActiveChatDetailsWhenSendingMessage(
      {@required String currentUserID,
      @required String otherUserID,
      @required String messageContent,
      @required FieldValue messageTimeStamp,
      @required int type}) async {
    String currentUserPhotoUrl;
    String currentUserDisplayName;
    String otherUserPhotoUrl;
    String otherUserDisplayName;

    await _firestore
        .collection('users')
        .document(currentUserID)
        .get()
        .then((value) {
      currentUserPhotoUrl = value.data['photoURL'];
      currentUserDisplayName = value.data['displayName'];
    });
    await _firestore
        .collection('users')
        .document(otherUserID)
        .get()
        .then((value) {
      otherUserPhotoUrl = value.data['photoURL'];
      otherUserDisplayName = value.data['displayName'];
    });
    final String chatRoomID = getChatRoomID(
      currentUserIDStr: currentUserID,
      otherUserIDStr: otherUserID,
    );

    await _firestore
        .collection('userChats')
        .document(currentUserID)
        .collection("chatID")
        .document(chatRoomID)
        .setData({
      "otherUserID": otherUserID,
      "type": type,
      "otherUserDisplayName": otherUserDisplayName,
      "serverTimeStamp": messageTimeStamp,
      "photoUrl": otherUserPhotoUrl,
      "lastMessage": messageContent,
      "unreadCount": 0,
    });
    final bool otherUserLastMessageDetailsExists =
        await _chechIfOtherUserLastMessageDetailsExists(
            chatRoomID: chatRoomID, otherUserID: otherUserID);
    if (otherUserLastMessageDetailsExists) {
      await _firestore
          .collection('userChats')
          .document(otherUserID)
          .collection("chatID")
          .document(
            chatRoomID,
          )
          .updateData({
        "otherUserID": currentUserID,
        "otherUserDisplayName": currentUserDisplayName,
        "serverTimeStamp": messageTimeStamp,
        "photoUrl": currentUserPhotoUrl,
        "lastMessage": messageContent,
        "unreadCount": FieldValue.increment(1),
        "type": type,
      });
    } else {
      await _firestore
          .collection('userChats')
          .document(otherUserID)
          .collection("chatID")
          .document(
            chatRoomID,
          )
          .setData({
        "otherUserID": currentUserID,
        "otherUserDisplayName": currentUserDisplayName,
        "serverTimeStamp": messageTimeStamp,
        "photoUrl": currentUserPhotoUrl,
        "lastMessage": messageContent,
        "unreadCount": 1,
        "type": type,
      });
    }
  }

  Future<bool> _chechIfOtherUserLastMessageDetailsExists(
      {@required String chatRoomID, @required String otherUserID}) async {
    try {
      bool exists;

      await _firestore
          .collection("userChats")
          .document(otherUserID)
          .collection("chatID")
          .document(chatRoomID)
          .get()
          .then((doc) => exists = doc.exists);

      return exists;
    } catch (e) {
      return false;
    }
  }

  Future<void> _putActiveChatDetailsAfterReadingMessage({
    @required String currentUserID,
    @required String otherUserID,
  }) async {
    await _firestore
        .collection('userChats')
        .document(currentUserID)
        .collection("chatID")
        .document(
          getChatRoomID(
            currentUserIDStr: currentUserID,
            otherUserIDStr: otherUserID,
          ),
        )
        .updateData({
      "unreadCount": 0,
    });
  }

  static String getChatRoomID({
    @required String currentUserIDStr,
    @required String otherUserIDStr,
  }) {
    return otherUserIDStr.compareTo(currentUserIDStr) > 0
        ? "${currentUserIDStr}_$otherUserIDStr"
        : "${otherUserIDStr}_$currentUserIDStr";
  }

  @override
  Stream<Either<ChatFailure, KtList<DialogOverview>>>
      watchUserDialogsOverview() async* {
    final currentUserID = await _firestore.currentUserID;

    yield* _firestore
        .collection("userChats")
        .document(currentUserID)
        .collection("chatID")
        .orderBy('serverTimeStamp')
        .snapshots()
        .map(
          (snapshot) => right<ChatFailure, KtList<DialogOverview>>(
            snapshot.documents
                .map(
                    (doc) => DialogOverviewDto.fromJson(doc.data).toDomain(doc))
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return left(const ChatFailure.serverError());
    });
  }

  @override
  Stream<Either<ChatFailure, KtList<TextMessage>>> watchDialog(
      {@required UniqueId otherUserID}) async* {
    final currentUserID = await _firestore.currentUserID;
    final String chatRoomIDStr = getChatRoomID(
        currentUserIDStr: currentUserID,
        otherUserIDStr: otherUserID.getOrCrash());

    _putActiveChatDetailsAfterReadingMessage(
        currentUserID: currentUserID, otherUserID: otherUserID.getOrCrash());
    yield* _firestore
        .collection('chatMessages')
        .document(chatRoomIDStr)
        .collection("messages")
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ChatFailure, KtList<TextMessage>>(
            snapshot.documents
                .map((doc) => TextMessageDto.fromJson(doc.data)
                    .copyWith(
                      id: doc.documentID,
                      senderID: doc.data['senderID'],
                      receiverID: doc.data['receiverID'],
                    )
                    .toDomain(doc))
                .toImmutableList(),
          ),
        );
  }

  @override
  Future<String> upload(File file) async {
    final String filePath = 'images/${DateTime.now()}.png';
    await _firebaseStorage
        .ref()
        .child(filePath)
        .putFile(file)
        .onComplete
        .then((value) {});
    final String url =
        await _firebaseStorage.ref().child(filePath).getDownloadURL();

    return url;
  }
}
