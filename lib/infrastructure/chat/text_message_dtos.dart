import 'package:bilet_devret/domain/chat/text_message.dart';
import 'package:bilet_devret/domain/core/value_objects.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';

part 'text_message_dtos.freezed.dart';
part 'text_message_dtos.g.dart';

@freezed
abstract class TextMessageDto with _$TextMessageDto {
  factory TextMessageDto({
    @JsonKey(ignore: true) String id,
    @required String senderID,
    @required String receiverID,
    @required String messageBody,
    @required int type,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _TextMessageDto;

  factory TextMessageDto.fromDomain(TextMessage textMessage) {
    return TextMessageDto(
      id: textMessage.id.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
      senderID: textMessage.senderID.getOrCrash(),
      receiverID: textMessage.receiverID.getOrCrash(),
      messageBody: textMessage.messageBody,
      type: textMessage.type,
    );
  }

  factory TextMessageDto.fromJson(Map<String, dynamic> json) =>
      _$TextMessageDtoFromJson(json);

  factory TextMessageDto.fromFirestore(DocumentSnapshot doc) {
    return TextMessageDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

extension TextMessageDtoX on TextMessageDto {
  TextMessage toDomain(DocumentSnapshot doc) {
    return TextMessage(
      id: UniqueId.fromUniqueString(id),
      senderID: UniqueId.fromUniqueString(senderID),
      receiverID: UniqueId.fromUniqueString(receiverID),
      messageBody: messageBody,
      messageCreationTime: (doc.data['serverTimeStamp']).toDate(),
      type: type,
    );
  }
}
