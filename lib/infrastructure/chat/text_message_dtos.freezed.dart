// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'text_message_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TextMessageDto _$TextMessageDtoFromJson(Map<String, dynamic> json) {
  return _TextMessageDto.fromJson(json);
}

class _$TextMessageDtoTearOff {
  const _$TextMessageDtoTearOff();

  _TextMessageDto call(
      {@JsonKey(ignore: true) String id,
      @required String senderID,
      @required String receiverID,
      @required String messageBody,
      @required int type,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _TextMessageDto(
      id: id,
      senderID: senderID,
      receiverID: receiverID,
      messageBody: messageBody,
      type: type,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $TextMessageDto = _$TextMessageDtoTearOff();

mixin _$TextMessageDto {
  @JsonKey(ignore: true)
  String get id;
  String get senderID;
  String get receiverID;
  String get messageBody;
  int get type;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $TextMessageDtoCopyWith<TextMessageDto> get copyWith;
}

abstract class $TextMessageDtoCopyWith<$Res> {
  factory $TextMessageDtoCopyWith(
          TextMessageDto value, $Res Function(TextMessageDto) then) =
      _$TextMessageDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String senderID,
      String receiverID,
      String messageBody,
      int type,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$TextMessageDtoCopyWithImpl<$Res>
    implements $TextMessageDtoCopyWith<$Res> {
  _$TextMessageDtoCopyWithImpl(this._value, this._then);

  final TextMessageDto _value;
  // ignore: unused_field
  final $Res Function(TextMessageDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
    Object messageBody = freezed,
    Object type = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      receiverID:
          receiverID == freezed ? _value.receiverID : receiverID as String,
      messageBody:
          messageBody == freezed ? _value.messageBody : messageBody as String,
      type: type == freezed ? _value.type : type as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$TextMessageDtoCopyWith<$Res>
    implements $TextMessageDtoCopyWith<$Res> {
  factory _$TextMessageDtoCopyWith(
          _TextMessageDto value, $Res Function(_TextMessageDto) then) =
      __$TextMessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String senderID,
      String receiverID,
      String messageBody,
      int type,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$TextMessageDtoCopyWithImpl<$Res>
    extends _$TextMessageDtoCopyWithImpl<$Res>
    implements _$TextMessageDtoCopyWith<$Res> {
  __$TextMessageDtoCopyWithImpl(
      _TextMessageDto _value, $Res Function(_TextMessageDto) _then)
      : super(_value, (v) => _then(v as _TextMessageDto));

  @override
  _TextMessageDto get _value => super._value as _TextMessageDto;

  @override
  $Res call({
    Object id = freezed,
    Object senderID = freezed,
    Object receiverID = freezed,
    Object messageBody = freezed,
    Object type = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_TextMessageDto(
      id: id == freezed ? _value.id : id as String,
      senderID: senderID == freezed ? _value.senderID : senderID as String,
      receiverID:
          receiverID == freezed ? _value.receiverID : receiverID as String,
      messageBody:
          messageBody == freezed ? _value.messageBody : messageBody as String,
      type: type == freezed ? _value.type : type as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_TextMessageDto implements _TextMessageDto {
  _$_TextMessageDto(
      {@JsonKey(ignore: true) this.id,
      @required this.senderID,
      @required this.receiverID,
      @required this.messageBody,
      @required this.type,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(senderID != null),
        assert(receiverID != null),
        assert(messageBody != null),
        assert(type != null),
        assert(serverTimeStamp != null);

  factory _$_TextMessageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TextMessageDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String senderID;
  @override
  final String receiverID;
  @override
  final String messageBody;
  @override
  final int type;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'TextMessageDto(id: $id, senderID: $senderID, receiverID: $receiverID, messageBody: $messageBody, type: $type, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextMessageDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.senderID, senderID) ||
                const DeepCollectionEquality()
                    .equals(other.senderID, senderID)) &&
            (identical(other.receiverID, receiverID) ||
                const DeepCollectionEquality()
                    .equals(other.receiverID, receiverID)) &&
            (identical(other.messageBody, messageBody) ||
                const DeepCollectionEquality()
                    .equals(other.messageBody, messageBody)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(senderID) ^
      const DeepCollectionEquality().hash(receiverID) ^
      const DeepCollectionEquality().hash(messageBody) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$TextMessageDtoCopyWith<_TextMessageDto> get copyWith =>
      __$TextMessageDtoCopyWithImpl<_TextMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TextMessageDtoToJson(this);
  }
}

abstract class _TextMessageDto implements TextMessageDto {
  factory _TextMessageDto(
          {@JsonKey(ignore: true) String id,
          @required String senderID,
          @required String receiverID,
          @required String messageBody,
          @required int type,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_TextMessageDto;

  factory _TextMessageDto.fromJson(Map<String, dynamic> json) =
      _$_TextMessageDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get senderID;
  @override
  String get receiverID;
  @override
  String get messageBody;
  @override
  int get type;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$TextMessageDtoCopyWith<_TextMessageDto> get copyWith;
}
