import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

import '../core/value_objects.dart';
import 'chat_failure.dart';
import 'dialog_overview.dart';
import 'text_message.dart';

abstract class IChatRepository {
  Stream<Either<ChatFailure, KtList<TextMessage>>> watchDialog(
      {@required UniqueId otherUserID});
  Stream<Either<ChatFailure, KtList<DialogOverview>>>
      watchUserDialogsOverview();

  Future<Either<ChatFailure, Unit>> send(TextMessage textMessage);
  Future<String> upload(File file);
  Future<bool> isThereBlockageBetweenUsers({@required String otherUserID});
}
