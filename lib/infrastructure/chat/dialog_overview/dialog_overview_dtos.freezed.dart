// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'dialog_overview_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DialogOverviewDto _$DialogOverviewDtoFromJson(Map<String, dynamic> json) {
  return _DialogOverviewDto.fromJson(json);
}

class _$DialogOverviewDtoTearOff {
  const _$DialogOverviewDtoTearOff();

  _DialogOverviewDto call(
      {@required String otherUserID,
      @required String photoUrl,
      @required String otherUserDisplayName,
      @required String lastMessage,
      @required int unreadCount,
      @required int type,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _DialogOverviewDto(
      otherUserID: otherUserID,
      photoUrl: photoUrl,
      otherUserDisplayName: otherUserDisplayName,
      lastMessage: lastMessage,
      unreadCount: unreadCount,
      type: type,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $DialogOverviewDto = _$DialogOverviewDtoTearOff();

mixin _$DialogOverviewDto {
  String get otherUserID;
  String get photoUrl;
  String get otherUserDisplayName;
  String get lastMessage;
  int get unreadCount;
  int get type;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $DialogOverviewDtoCopyWith<DialogOverviewDto> get copyWith;
}

abstract class $DialogOverviewDtoCopyWith<$Res> {
  factory $DialogOverviewDtoCopyWith(
          DialogOverviewDto value, $Res Function(DialogOverviewDto) then) =
      _$DialogOverviewDtoCopyWithImpl<$Res>;
  $Res call(
      {String otherUserID,
      String photoUrl,
      String otherUserDisplayName,
      String lastMessage,
      int unreadCount,
      int type,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$DialogOverviewDtoCopyWithImpl<$Res>
    implements $DialogOverviewDtoCopyWith<$Res> {
  _$DialogOverviewDtoCopyWithImpl(this._value, this._then);

  final DialogOverviewDto _value;
  // ignore: unused_field
  final $Res Function(DialogOverviewDto) _then;

  @override
  $Res call({
    Object otherUserID = freezed,
    Object photoUrl = freezed,
    Object otherUserDisplayName = freezed,
    Object lastMessage = freezed,
    Object unreadCount = freezed,
    Object type = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      otherUserDisplayName: otherUserDisplayName == freezed
          ? _value.otherUserDisplayName
          : otherUserDisplayName as String,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      unreadCount:
          unreadCount == freezed ? _value.unreadCount : unreadCount as int,
      type: type == freezed ? _value.type : type as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$DialogOverviewDtoCopyWith<$Res>
    implements $DialogOverviewDtoCopyWith<$Res> {
  factory _$DialogOverviewDtoCopyWith(
          _DialogOverviewDto value, $Res Function(_DialogOverviewDto) then) =
      __$DialogOverviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String otherUserID,
      String photoUrl,
      String otherUserDisplayName,
      String lastMessage,
      int unreadCount,
      int type,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$DialogOverviewDtoCopyWithImpl<$Res>
    extends _$DialogOverviewDtoCopyWithImpl<$Res>
    implements _$DialogOverviewDtoCopyWith<$Res> {
  __$DialogOverviewDtoCopyWithImpl(
      _DialogOverviewDto _value, $Res Function(_DialogOverviewDto) _then)
      : super(_value, (v) => _then(v as _DialogOverviewDto));

  @override
  _DialogOverviewDto get _value => super._value as _DialogOverviewDto;

  @override
  $Res call({
    Object otherUserID = freezed,
    Object photoUrl = freezed,
    Object otherUserDisplayName = freezed,
    Object lastMessage = freezed,
    Object unreadCount = freezed,
    Object type = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_DialogOverviewDto(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      otherUserDisplayName: otherUserDisplayName == freezed
          ? _value.otherUserDisplayName
          : otherUserDisplayName as String,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      unreadCount:
          unreadCount == freezed ? _value.unreadCount : unreadCount as int,
      type: type == freezed ? _value.type : type as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_DialogOverviewDto implements _DialogOverviewDto {
  _$_DialogOverviewDto(
      {@required this.otherUserID,
      @required this.photoUrl,
      @required this.otherUserDisplayName,
      @required this.lastMessage,
      @required this.unreadCount,
      @required this.type,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(otherUserID != null),
        assert(photoUrl != null),
        assert(otherUserDisplayName != null),
        assert(lastMessage != null),
        assert(unreadCount != null),
        assert(type != null),
        assert(serverTimeStamp != null);

  factory _$_DialogOverviewDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DialogOverviewDtoFromJson(json);

  @override
  final String otherUserID;
  @override
  final String photoUrl;
  @override
  final String otherUserDisplayName;
  @override
  final String lastMessage;
  @override
  final int unreadCount;
  @override
  final int type;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'DialogOverviewDto(otherUserID: $otherUserID, photoUrl: $photoUrl, otherUserDisplayName: $otherUserDisplayName, lastMessage: $lastMessage, unreadCount: $unreadCount, type: $type, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DialogOverviewDto &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.otherUserDisplayName, otherUserDisplayName) ||
                const DeepCollectionEquality().equals(
                    other.otherUserDisplayName, otherUserDisplayName)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.unreadCount, unreadCount) ||
                const DeepCollectionEquality()
                    .equals(other.unreadCount, unreadCount)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(otherUserID) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(otherUserDisplayName) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(unreadCount) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$DialogOverviewDtoCopyWith<_DialogOverviewDto> get copyWith =>
      __$DialogOverviewDtoCopyWithImpl<_DialogOverviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DialogOverviewDtoToJson(this);
  }
}

abstract class _DialogOverviewDto implements DialogOverviewDto {
  factory _DialogOverviewDto(
          {@required String otherUserID,
          @required String photoUrl,
          @required String otherUserDisplayName,
          @required String lastMessage,
          @required int unreadCount,
          @required int type,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_DialogOverviewDto;

  factory _DialogOverviewDto.fromJson(Map<String, dynamic> json) =
      _$_DialogOverviewDto.fromJson;

  @override
  String get otherUserID;
  @override
  String get photoUrl;
  @override
  String get otherUserDisplayName;
  @override
  String get lastMessage;
  @override
  int get unreadCount;
  @override
  int get type;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$DialogOverviewDtoCopyWith<_DialogOverviewDto> get copyWith;
}
