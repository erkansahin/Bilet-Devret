import 'package:bilet_devret/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_detail.freezed.dart';

@freezed
abstract class UserDetail with _$UserDetail {
  const factory UserDetail({
    @required UniqueId id,
    @required String displayName,
    @required String photoURL,
  }) = _UserDetail;
  factory UserDetail.empty() =>
      UserDetail(id: UniqueId(), displayName: "", photoURL: "");
}
