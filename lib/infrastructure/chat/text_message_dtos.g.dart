// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_message_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextMessageDto _$_$_TextMessageDtoFromJson(Map<String, dynamic> json) {
  return _$_TextMessageDto(
    senderID: json['senderID'] as String,
    receiverID: json['receiverID'] as String,
    messageBody: json['messageBody'] as String,
    type: json['type'] as int,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_TextMessageDtoToJson(_$_TextMessageDto instance) =>
    <String, dynamic>{
      'senderID': instance.senderID,
      'receiverID': instance.receiverID,
      'messageBody': instance.messageBody,
      'type': instance.type,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
