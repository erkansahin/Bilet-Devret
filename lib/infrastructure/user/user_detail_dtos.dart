import 'package:bilet_devret/domain/auth/user_detail.dart';
import 'package:bilet_devret/domain/core/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_detail_dtos.freezed.dart';
part 'user_detail_dtos.g.dart';

@freezed
abstract class UserDetailDto with _$UserDetailDto {
  factory UserDetailDto({
    @required String id,
    @required String displayName,
    @required String photoURL,
  }) = _UserDetailDto;

  factory UserDetailDto.fromDomain(UserDetail userDetail) {
    return UserDetailDto(
      photoURL: userDetail.photoURL,
      displayName: userDetail.displayName,
      id: userDetail.id.getOrCrash(),
    );
  }

  factory UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailDtoFromJson(json);

  factory UserDetailDto.fromFirestore(DocumentSnapshot doc) {
    return UserDetailDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension UserDetailX on UserDetailDto {
  UserDetail toDomain() {
    return UserDetail(
      id: UniqueId.fromUniqueString(id),
      displayName: displayName,
      photoURL: photoURL,
    );
  }
}
