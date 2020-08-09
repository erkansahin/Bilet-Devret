// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'dialog_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DialogOverviewTearOff {
  const _$DialogOverviewTearOff();

  _DialogOverview call(
      {@required String photoUrl,
      @required UniqueId otherUserID,
      @required DateTime lastMessageCreationTime,
      @required String otherUserDisplayName,
      @required int unreadCount,
      @required String lastMessage,
      @required int type}) {
    return _DialogOverview(
      photoUrl: photoUrl,
      otherUserID: otherUserID,
      lastMessageCreationTime: lastMessageCreationTime,
      otherUserDisplayName: otherUserDisplayName,
      unreadCount: unreadCount,
      lastMessage: lastMessage,
      type: type,
    );
  }
}

// ignore: unused_element
const $DialogOverview = _$DialogOverviewTearOff();

mixin _$DialogOverview {
  String get photoUrl;
  UniqueId get otherUserID;
  DateTime get lastMessageCreationTime;
  String get otherUserDisplayName;
  int get unreadCount;
  String get lastMessage;
  int get type;

  $DialogOverviewCopyWith<DialogOverview> get copyWith;
}

abstract class $DialogOverviewCopyWith<$Res> {
  factory $DialogOverviewCopyWith(
          DialogOverview value, $Res Function(DialogOverview) then) =
      _$DialogOverviewCopyWithImpl<$Res>;
  $Res call(
      {String photoUrl,
      UniqueId otherUserID,
      DateTime lastMessageCreationTime,
      String otherUserDisplayName,
      int unreadCount,
      String lastMessage,
      int type});
}

class _$DialogOverviewCopyWithImpl<$Res>
    implements $DialogOverviewCopyWith<$Res> {
  _$DialogOverviewCopyWithImpl(this._value, this._then);

  final DialogOverview _value;
  // ignore: unused_field
  final $Res Function(DialogOverview) _then;

  @override
  $Res call({
    Object photoUrl = freezed,
    Object otherUserID = freezed,
    Object lastMessageCreationTime = freezed,
    Object otherUserDisplayName = freezed,
    Object unreadCount = freezed,
    Object lastMessage = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as UniqueId,
      lastMessageCreationTime: lastMessageCreationTime == freezed
          ? _value.lastMessageCreationTime
          : lastMessageCreationTime as DateTime,
      otherUserDisplayName: otherUserDisplayName == freezed
          ? _value.otherUserDisplayName
          : otherUserDisplayName as String,
      unreadCount:
          unreadCount == freezed ? _value.unreadCount : unreadCount as int,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

abstract class _$DialogOverviewCopyWith<$Res>
    implements $DialogOverviewCopyWith<$Res> {
  factory _$DialogOverviewCopyWith(
          _DialogOverview value, $Res Function(_DialogOverview) then) =
      __$DialogOverviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String photoUrl,
      UniqueId otherUserID,
      DateTime lastMessageCreationTime,
      String otherUserDisplayName,
      int unreadCount,
      String lastMessage,
      int type});
}

class __$DialogOverviewCopyWithImpl<$Res>
    extends _$DialogOverviewCopyWithImpl<$Res>
    implements _$DialogOverviewCopyWith<$Res> {
  __$DialogOverviewCopyWithImpl(
      _DialogOverview _value, $Res Function(_DialogOverview) _then)
      : super(_value, (v) => _then(v as _DialogOverview));

  @override
  _DialogOverview get _value => super._value as _DialogOverview;

  @override
  $Res call({
    Object photoUrl = freezed,
    Object otherUserID = freezed,
    Object lastMessageCreationTime = freezed,
    Object otherUserDisplayName = freezed,
    Object unreadCount = freezed,
    Object lastMessage = freezed,
    Object type = freezed,
  }) {
    return _then(_DialogOverview(
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as UniqueId,
      lastMessageCreationTime: lastMessageCreationTime == freezed
          ? _value.lastMessageCreationTime
          : lastMessageCreationTime as DateTime,
      otherUserDisplayName: otherUserDisplayName == freezed
          ? _value.otherUserDisplayName
          : otherUserDisplayName as String,
      unreadCount:
          unreadCount == freezed ? _value.unreadCount : unreadCount as int,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

class _$_DialogOverview extends _DialogOverview with DiagnosticableTreeMixin {
  const _$_DialogOverview(
      {@required this.photoUrl,
      @required this.otherUserID,
      @required this.lastMessageCreationTime,
      @required this.otherUserDisplayName,
      @required this.unreadCount,
      @required this.lastMessage,
      @required this.type})
      : assert(photoUrl != null),
        assert(otherUserID != null),
        assert(lastMessageCreationTime != null),
        assert(otherUserDisplayName != null),
        assert(unreadCount != null),
        assert(lastMessage != null),
        assert(type != null),
        super._();

  @override
  final String photoUrl;
  @override
  final UniqueId otherUserID;
  @override
  final DateTime lastMessageCreationTime;
  @override
  final String otherUserDisplayName;
  @override
  final int unreadCount;
  @override
  final String lastMessage;
  @override
  final int type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DialogOverview(photoUrl: $photoUrl, otherUserID: $otherUserID, lastMessageCreationTime: $lastMessageCreationTime, otherUserDisplayName: $otherUserDisplayName, unreadCount: $unreadCount, lastMessage: $lastMessage, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DialogOverview'))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('otherUserID', otherUserID))
      ..add(DiagnosticsProperty(
          'lastMessageCreationTime', lastMessageCreationTime))
      ..add(DiagnosticsProperty('otherUserDisplayName', otherUserDisplayName))
      ..add(DiagnosticsProperty('unreadCount', unreadCount))
      ..add(DiagnosticsProperty('lastMessage', lastMessage))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DialogOverview &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)) &&
            (identical(
                    other.lastMessageCreationTime, lastMessageCreationTime) ||
                const DeepCollectionEquality().equals(
                    other.lastMessageCreationTime, lastMessageCreationTime)) &&
            (identical(other.otherUserDisplayName, otherUserDisplayName) ||
                const DeepCollectionEquality().equals(
                    other.otherUserDisplayName, otherUserDisplayName)) &&
            (identical(other.unreadCount, unreadCount) ||
                const DeepCollectionEquality()
                    .equals(other.unreadCount, unreadCount)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(otherUserID) ^
      const DeepCollectionEquality().hash(lastMessageCreationTime) ^
      const DeepCollectionEquality().hash(otherUserDisplayName) ^
      const DeepCollectionEquality().hash(unreadCount) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$DialogOverviewCopyWith<_DialogOverview> get copyWith =>
      __$DialogOverviewCopyWithImpl<_DialogOverview>(this, _$identity);
}

abstract class _DialogOverview extends DialogOverview {
  const _DialogOverview._() : super._();
  const factory _DialogOverview(
      {@required String photoUrl,
      @required UniqueId otherUserID,
      @required DateTime lastMessageCreationTime,
      @required String otherUserDisplayName,
      @required int unreadCount,
      @required String lastMessage,
      @required int type}) = _$_DialogOverview;

  @override
  String get photoUrl;
  @override
  UniqueId get otherUserID;
  @override
  DateTime get lastMessageCreationTime;
  @override
  String get otherUserDisplayName;
  @override
  int get unreadCount;
  @override
  String get lastMessage;
  @override
  int get type;
  @override
  _$DialogOverviewCopyWith<_DialogOverview> get copyWith;
}
