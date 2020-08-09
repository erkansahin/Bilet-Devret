import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

part 'dialog_overview.freezed.dart';

@freezed
abstract class DialogOverview implements _$DialogOverview {
  const factory DialogOverview({
    @required String photoUrl,
    @required UniqueId otherUserID,
    @required DateTime lastMessageCreationTime,
    @required String otherUserDisplayName,
    @required int unreadCount,
    @required String lastMessage,
    @required int type,
  }) = _DialogOverview;

  const DialogOverview._();

  factory DialogOverview.empty() => DialogOverview(
        otherUserDisplayName: "",
        lastMessageCreationTime: DateTime.now(),
        unreadCount: 0,
        lastMessage: '',
        otherUserID: UniqueId(),
        photoUrl: "",
        type: 0,
      );

  Either<ValueFailure<String>, String> isUnreadCountValid() {
    return validateStringPositiveInteger(unreadCount.toString());
  }

  Either<ValueFailure<String>, String> isLastMessageValid() {
    return validateMaxStringLength(lastMessage, maxLastMessageLength)
        .flatMap(validateStringNotEmpty);
  }

  static int get maxLastMessageLength {
    return 45;
  }
}

extension DialogOverviewX on DialogOverview {
  Option<ValueFailure<dynamic>> get failureOption {
    return isLastMessageValid().fold((f) => some(f), (_) => none());
  }
}
