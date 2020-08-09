import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/notification/i_notification_repository.dart';
import '../core/firestore_helpers.dart';

@prod
@lazySingleton
@RegisterAs(INotificationRepository)
class NotificationRepository implements INotificationRepository {
  final Firestore _firestore;
  final FirebaseMessaging _firebaseMessaging;

  NotificationRepository(
    this._firestore,
    this._firebaseMessaging,
  );

  @override
  Future<void> initialize() async {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        // ignore: avoid_print
        print("onMessage: $message");
        return;
      },
      onLaunch: (Map<String, dynamic> message) async {
        // ignore: avoid_print
        print("onLaunch: $message");
        return;
      },
      onResume: (Map<String, dynamic> message) async {
        // ignore: avoid_print
        print("onResume: $message");
        return;
      },
      onBackgroundMessage: _myBackgroundMessageHandler,
    );
  }

  Future<dynamic> _myBackgroundMessageHandler(
      Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }
    Future<void>.value();

    // Or do other work.
  }

  @override
  Future<void> register() async {
    final currentUserID = await _firestore.currentUserID;

    _firebaseMessaging.getToken().then((token) {
      _firestore
          .collection('users')
          .document(currentUserID)
          .collection('tokens')
          .document(token)
          .setData({
        'token': token,
        'createdAt': FieldValue.serverTimestamp(), // optional
        'platform': Platform.operatingSystem
      });
    });
  }

  @override
  Future<void> deregister({@required String currentUserID}) async {
    _firebaseMessaging.getToken().then((token) {
      _firestore
          .collection('users')
          .document(currentUserID)
          .collection('tokens')
          .document(token)
          .delete();
    });
  }
}
