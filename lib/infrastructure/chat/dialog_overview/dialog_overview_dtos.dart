import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/chat/dialog_overview.dart';
import '../../../domain/core/value_objects.dart';

part 'dialog_overview_dtos.freezed.dart';
part 'dialog_overview_dtos.g.dart';

@freezed
abstract class DialogOverviewDto with _$DialogOverviewDto {
  factory DialogOverviewDto({
    @required String otherUserID,
    @required String photoUrl,
    @required String otherUserDisplayName,
    @required String lastMessage,
    @required int unreadCount,
    @required int type,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _DialogOverviewDto;

  factory DialogOverviewDto.fromDomain(DialogOverview dialogOverview) {
    return DialogOverviewDto(
      otherUserDisplayName: dialogOverview.otherUserDisplayName,
      lastMessage: dialogOverview.lastMessage,
      unreadCount: dialogOverview.unreadCount,
      serverTimeStamp: FieldValue.serverTimestamp(),
      otherUserID: dialogOverview.otherUserID.getOrCrash(),
      photoUrl: dialogOverview.photoUrl,
      type: dialogOverview.type,
    );
  }

  factory DialogOverviewDto.fromJson(Map<String, dynamic> json) =>
      _$DialogOverviewDtoFromJson(json);

  factory DialogOverviewDto.fromFirestore(DocumentSnapshot doc) {
    return DialogOverviewDto.fromJson(doc.data);
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

extension DialogOverviewDtoX on DialogOverviewDto {
  DialogOverview toDomain(DocumentSnapshot doc) {
    return DialogOverview(
      otherUserDisplayName: otherUserDisplayName,
      lastMessageCreationTime: doc.data['serverTimeStamp'].toDate(),
      lastMessage: lastMessage,
      unreadCount: unreadCount,
      otherUserID: UniqueId.fromUniqueString(otherUserID),
      photoUrl: photoUrl,
      type: type,
    );
  }
}
