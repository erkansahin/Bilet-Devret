import 'dart:io';

import 'package:bilet_devret/domain/user_actor/user_actor_failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/user_actor/i_user_actor_repository.dart';
import '../core/firestore_helpers.dart';

@prod
@lazySingleton
@RegisterAs(IUserActorRepository)
class UserActorRepository implements IUserActorRepository {
  final Firestore _firestore;

  UserActorRepository(
    this._firestore,
  );

  @override
  Future<Option<UserActorFailure>> block({
    @required String otherUserID,
  }) async {
    try {
      await _tryConnectingInternet();
    } on SocketException catch (_) {
      return optionOf(const UserActorFailure.internetConnectionFailure());
    }
    try {
      return await _blockUserWithGivenIdOnFirebase(otherUserID: otherUserID);
    } on PlatformException catch (_) {
      return optionOf(const UserActorFailure.serverError());
    }
  }

  Future<Option<UserActorFailure>> _blockUserWithGivenIdOnFirebase(
      {@required String otherUserID}) async {
    final String currentUserID = await _firestore.currentUserID;
    await _firestore
        .collection('users')
        .document(currentUserID)
        .collection('blockedUsers')
        .document(otherUserID)
        .setData({"userID": otherUserID});
    return none();
  }

  @override
  Future<Option<UserActorFailure>> unblock({
    @required String otherUserID,
  }) async {
    try {
      await _tryConnectingInternet();
    } on SocketException catch (_) {
      return optionOf(const UserActorFailure.internetConnectionFailure());
    }
    try {
      return await _unblockUserWithGivenIdOnFirebase(otherUserID: otherUserID);
    } on PlatformException catch (_) {
      return optionOf(const UserActorFailure.serverError());
    }
  }

  Future<Option<UserActorFailure>> _unblockUserWithGivenIdOnFirebase(
      {@required String otherUserID}) async {
    final String currentUserID = await _firestore.currentUserID;
    await _firestore
        .collection('users')
        .document(currentUserID)
        .collection('blockedUsers')
        .document(otherUserID)
        .delete();
    return none();
  }

  @override
  Future<Either<UserActorFailure, bool>> checkIfCurrentUserBlockedThePair(
      {@required String otherUserID}) async {
    try {
      await _tryConnectingInternet();
    } on SocketException catch (_) {
      return left(const UserActorFailure.internetConnectionFailure());
    }
    try {
      final String currentUserID = await _firestore.currentUserID;
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

  @override
  Future<Either<UserActorFailure, bool>> checkIfThePairBlockedCurrentUser(
      {@required String otherUserID}) async {
    try {
      await _tryConnectingInternet();
    } on SocketException catch (_) {
      return left(const UserActorFailure.internetConnectionFailure());
    }
    try {
      final String currentUserID = await _firestore.currentUserID;
      return await _checkIfTheUserBlockedItsPair(
          blockerUserID: otherUserID, userToBeBlockedID: currentUserID);
    } on PlatformException catch (_) {
      return left(const UserActorFailure.serverError());
    }
  }
}
