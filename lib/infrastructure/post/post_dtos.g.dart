// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$_$_PostDtoFromJson(Map<String, dynamic> json) {
  return _$_PostDto(
    creatorID: json['creatorID'] as String,
    detail: json['detail'] as String,
    title: json['title'] as String,
    city: json['city'] as String,
    price: json['price'] as String,
    category: json['category'] as String,
    town: json['town'] as String,
    day: json['day'] as String,
    month: json['month'] as String,
    year: json['year'] as String,
    hour: json['hour'] as String,
    minute: json['minute'] as String,
    detailUrl: json['detailUrl'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'creatorID': instance.creatorID,
      'detail': instance.detail,
      'title': instance.title,
      'city': instance.city,
      'price': instance.price,
      'category': instance.category,
      'town': instance.town,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'hour': instance.hour,
      'minute': instance.minute,
      'detailUrl': instance.detailUrl,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
