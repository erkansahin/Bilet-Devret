// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_overview_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DialogOverviewDto _$_$_DialogOverviewDtoFromJson(Map<String, dynamic> json) {
  return _$_DialogOverviewDto(
    otherUserID: json['otherUserID'] as String,
    photoUrl: json['photoUrl'] as String,
    otherUserDisplayName: json['otherUserDisplayName'] as String,
    lastMessage: json['lastMessage'] as String,
    unreadCount: json['unreadCount'] as int,
    type: json['type'] as int,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_DialogOverviewDtoToJson(
        _$_DialogOverviewDto instance) =>
    <String, dynamic>{
      'otherUserID': instance.otherUserID,
      'photoUrl': instance.photoUrl,
      'otherUserDisplayName': instance.otherUserDisplayName,
      'lastMessage': instance.lastMessage,
      'unreadCount': instance.unreadCount,
      'type': instance.type,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
