import 'package:flutter/foundation.dart';

abstract class INotificationRepository {
  Future<void> register();
  Future<void> initialize();
  Future<void> deregister({@required String currentUserID});
}
