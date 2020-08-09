import 'package:bilet_devret/domain/core/value_objects.dart';
import 'package:bilet_devret/domain/posts/post.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';

part 'post_dtos.freezed.dart';
part 'post_dtos.g.dart';

@freezed
abstract class PostDto with _$PostDto {
  factory PostDto({
    @JsonKey(ignore: true) String id,
    @required String creatorID,
    @required String detail,
    @required String title,
    @required String city,
    @required String price,
    @required String category,
    @required String town,
    @required String day,
    @required String month,
    @required String year,
    @required String hour,
    @required String minute,
    @required String detailUrl,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _PostDto;

  factory PostDto.fromDomain(Post post) {
    return PostDto(
      id: post.id.getOrCrash(),
      creatorID: post.creatorID.getOrCrash(),
      detail: post.detail,
      title: post.title,
      city: post.city,
      town: post.town,
      price: post.price,
      day: post.day,
      month: post.month,
      year: post.year,
      detailUrl: post.detailUrl,
      serverTimeStamp: FieldValue.serverTimestamp(),
      hour: post.hour,
      minute: post.minute,
      category: post.category,
    );
  }

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);

  factory PostDto.fromFirestore(DocumentSnapshot doc) {
    return PostDto.fromJson(doc.data).copyWith(id: doc.documentID);
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

extension PostDtoX on PostDto {
  Post toDomain() {
    return Post(
      id: UniqueId.fromUniqueString(id),
      creatorID: UniqueId.fromUniqueString(creatorID),
      detail: detail,
      city: city,
      category: category,
      day: day,
      detailUrl: detailUrl,
      month: month,
      title: title,
      town: town,
      year: year,
      hour: hour,
      minute: minute,
      price: price,
    );
  }
}
