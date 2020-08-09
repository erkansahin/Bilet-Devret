// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'text_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TextMessageTearOff {
  const _$TextMessageTearOff();

  _TextMessage call(
      {@required UniqueId id,
      @required int type,
      @required String messageBody,
      @required DateTime messageCreationTime,
      @required UniqueId senderID,
      @required UniqueId receiverID}) {
    return _TextMessage(
      id: id,
      type: type,
      messageBody: messageBody,
      messageCreationTime: messageCreationTime,
      senderID: senderID,
      receiverID: receiverID,
    );
  }
}

// ignore: unused_element
const $TextMessage = _$TextMessageTearOff();

mixin _$TextMessage {
  UniqueId get id;
  int get type;
  String get messageBody;
  DateTime get messageCreationTime;
  UniqueId get senderID;
  UniqueId get receiverID;

  $TextMessageCopyWith<TextMessage> get copyWith;
}

abstract class $TextMessageCopyWith<$Res> {
  factory $TextMessageCopyWith(
          TextMessage value, $Res Function(TextMessage) then) =
      _$TextMessageCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      int type,
      String messageBody,
      DateTime messageCreationTime,
      UniqueId senderID,
      UniqueId receiverID});
}

class _$TextMessageCopyWithImpl<$Res> implements $TextMessageCopyWith<$Res> {
  _$TextMessageCopyWithImpl(this._value, this._then);

  final TextMessage _value;
  // ignore: unused_field
  final $Res Function(TextMessage) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object messageBody = freezed,
    Object messageCreationTime = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      type: type == freezed ? _value.type : type as int,
      messageBody:
          messageBody == freezed ? _value.messageBody : messageBody as String,
      messageCreationTime: messageCreationTime == freezed
          ? _value.messageCreationTime
          : messageCreationTime as DateTime,
      senderID: senderID == freezed ? _value.senderID : senderID as UniqueId,
      receiverID:
          receiverID == freezed ? _value.receiverID : receiverID as UniqueId,
    ));
  }
}

abstract class _$TextMessageCopyWith<$Res>
    implements $TextMessageCopyWith<$Res> {
  factory _$TextMessageCopyWith(
          _TextMessage value, $Res Function(_TextMessage) then) =
      __$TextMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      int type,
      String messageBody,
      DateTime messageCreationTime,
      UniqueId senderID,
      UniqueId receiverID});
}

class __$TextMessageCopyWithImpl<$Res> extends _$TextMessageCopyWithImpl<$Res>
    implements _$TextMessageCopyWith<$Res> {
  __$TextMessageCopyWithImpl(
      _TextMessage _value, $Res Function(_TextMessage) _then)
      : super(_value, (v) => _then(v as _TextMessage));

  @override
  _TextMessage get _value => super._value as _TextMessage;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object messageBody = freezed,
    Object messageCreationTime = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
  }) {
    return _then(_TextMessage(
      id: id == freezed ? _value.id : id as UniqueId,
      type: type == freezed ? _value.type : type as int,
      messageBody:
          messageBody == freezed ? _value.messageBody : messageBody as String,
      messageCreationTime: messageCreationTime == freezed
          ? _value.messageCreationTime
          : messageCreationTime as DateTime,
      senderID: senderID == freezed ? _value.senderID : senderID as UniqueId,
      receiverID:
          receiverID == freezed ? _value.receiverID : receiverID as UniqueId,
    ));
  }
}

class _$_TextMessage extends _TextMessage with DiagnosticableTreeMixin {
  const _$_TextMessage(
      {@required this.id,
      @required this.type,
      @required this.messageBody,
      @required this.messageCreationTime,
      @required this.senderID,
      @required this.receiverID})
      : assert(id != null),
        assert(type != null),
        assert(messageBody != null),
        assert(messageCreationTime != null),
        assert(senderID != null),
        assert(receiverID != null),
        super._();

  @override
  final UniqueId id;
  @override
  final int type;
  @override
  final String messageBody;
  @override
  final DateTime messageCreationTime;
  @override
  final UniqueId senderID;
  @override
  final UniqueId receiverID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TextMessage(id: $id, type: $type, messageBody: $messageBody, messageCreationTime: $messageCreationTime, senderID: $senderID, receiverID: $receiverID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TextMessage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('messageBody', messageBody))
      ..add(DiagnosticsProperty('messageCreationTime', messageCreationTime))
      ..add(DiagnosticsProperty('senderID', senderID))
      ..add(DiagnosticsProperty('receiverID', receiverID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.messageBody, messageBody) ||
                const DeepCollectionEquality()
                    .equals(other.messageBody, messageBody)) &&
            (identical(other.messageCreationTime, messageCreationTime) ||
                const DeepCollectionEquality()
                    .equals(other.messageCreationTime, messageCreationTime)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.receiverID, receiverID) ||
                const DeepCollectionEquality()
                    .equals(other.receiverID, receiverID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(messageBody) ^
      const DeepCollectionEquality().hash(messageCreationTime) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(receiverID);

  @override
  _$TextMessageCopyWith<_TextMessage> get copyWith =>
      __$TextMessageCopyWithImpl<_TextMessage>(this, _$identity);
}

abstract class _TextMessage extends TextMessage {
  const _TextMessage._() : super._();
  const factory _TextMessage(
      {@required UniqueId id,
      @required int type,
      @required String messageBody,
      @required DateTime messageCreationTime,
      @required UniqueId senderID,
      @required UniqueId receiverID}) = _$_TextMessage;

  @override
  UniqueId get id;
  @override
  int get type;
  @override
  String get messageBody;
  @override
  DateTime get messageCreationTime;
  @override
  UniqueId get senderID;
  @override
  UniqueId get receiverID;
  @override
  _$TextMessageCopyWith<_TextMessage> get copyWith;
}
