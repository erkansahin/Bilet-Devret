import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

part 'text_message.freezed.dart';

@freezed
abstract class TextMessage implements _$TextMessage {
  const factory TextMessage({
    @required UniqueId id,
    @required int type,
    @required String messageBody,
    @required DateTime messageCreationTime,
    @required UniqueId senderID,
    @required UniqueId receiverID,
  }) = _TextMessage;

  const TextMessage._();

  factory TextMessage.empty() => TextMessage(
        id: UniqueId(),
        receiverID: UniqueId(),
        senderID: UniqueId(),
        messageBody: '',
        messageCreationTime: DateTime.now(),
        type: 0,
      );
  Either<ValueFailure<String>, String> isMessageBodyValid() {
    return validateMaxStringLength(messageBody, maxMessageBodyLength)
        .flatMap(validateStringNotEmpty);
  }

  static int get maxMessageBodyLength {
    return 500;
  }
}

extension TextMessageX on TextMessage {
  Option<ValueFailure<dynamic>> get failureOption {
    return isMessageBodyValid().fold((f) => some(f), (_) => none());
  }
}
