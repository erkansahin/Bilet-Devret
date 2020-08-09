// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chat_dialog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChatDialogEventTearOff {
  const _$ChatDialogEventTearOff();

  TextMessageChanged textMessageBodyChanged(
      {@required String textMessageBodyStr}) {
    return TextMessageChanged(
      textMessageBodyStr: textMessageBodyStr,
    );
  }

  ReceiverIDReceived receiverIDReceived({@required UniqueId receiverID}) {
    return ReceiverIDReceived(
      receiverID: receiverID,
    );
  }

  MessageTypeChanged messageTypeChanged({@required int type}) {
    return MessageTypeChanged(
      type: type,
    );
  }

  SendButtonPressed sendButtonPressed() {
    return const SendButtonPressed();
  }

  UploadImage uploadImage({@required File file}) {
    return UploadImage(
      file: file,
    );
  }
}

// ignore: unused_element
const $ChatDialogEvent = _$ChatDialogEventTearOff();

mixin _$ChatDialogEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textMessageBodyChanged(String textMessageBodyStr),
    @required Result receiverIDReceived(UniqueId receiverID),
    @required Result messageTypeChanged(int type),
    @required Result sendButtonPressed(),
    @required Result uploadImage(File file),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textMessageBodyChanged(String textMessageBodyStr),
    Result receiverIDReceived(UniqueId receiverID),
    Result messageTypeChanged(int type),
    Result sendButtonPressed(),
    Result uploadImage(File file),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textMessageBodyChanged(TextMessageChanged value),
    @required Result receiverIDReceived(ReceiverIDReceived value),
    @required Result messageTypeChanged(MessageTypeChanged value),
    @required Result sendButtonPressed(SendButtonPressed value),
    @required Result uploadImage(UploadImage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textMessageBodyChanged(TextMessageChanged value),
    Result receiverIDReceived(ReceiverIDReceived value),
    Result messageTypeChanged(MessageTypeChanged value),
    Result sendButtonPressed(SendButtonPressed value),
    Result uploadImage(UploadImage value),
    @required Result orElse(),
  });
}

abstract class $ChatDialogEventCopyWith<$Res> {
  factory $ChatDialogEventCopyWith(
          ChatDialogEvent value, $Res Function(ChatDialogEvent) then) =
      _$ChatDialogEventCopyWithImpl<$Res>;
}

class _$ChatDialogEventCopyWithImpl<$Res>
    implements $ChatDialogEventCopyWith<$Res> {
  _$ChatDialogEventCopyWithImpl(this._value, this._then);

  final ChatDialogEvent _value;
  // ignore: unused_field
  final $Res Function(ChatDialogEvent) _then;
}

abstract class $TextMessageChangedCopyWith<$Res> {
  factory $TextMessageChangedCopyWith(
          TextMessageChanged value, $Res Function(TextMessageChanged) then) =
      _$TextMessageChangedCopyWithImpl<$Res>;
  $Res call({String textMessageBodyStr});
}

class _$TextMessageChangedCopyWithImpl<$Res>
    extends _$ChatDialogEventCopyWithImpl<$Res>
    implements $TextMessageChangedCopyWith<$Res> {
  _$TextMessageChangedCopyWithImpl(
      TextMessageChanged _value, $Res Function(TextMessageChanged) _then)
      : super(_value, (v) => _then(v as TextMessageChanged));

  @override
  TextMessageChanged get _value => super._value as TextMessageChanged;

  @override
  $Res call({
    Object textMessageBodyStr = freezed,
  }) {
    return _then(TextMessageChanged(
      textMessageBodyStr: textMessageBodyStr == freezed
          ? _value.textMessageBodyStr
          : textMessageBodyStr as String,
    ));
  }
}

class _$TextMessageChanged
    with DiagnosticableTreeMixin
    implements TextMessageChanged {
  const _$TextMessageChanged({@required this.textMessageBodyStr})
      : assert(textMessageBodyStr != null);

  @override
  final String textMessageBodyStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatDialogEvent.textMessageBodyChanged(textMessageBodyStr: $textMessageBodyStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ChatDialogEvent.textMessageBodyChanged'))
      ..add(DiagnosticsProperty('textMessageBodyStr', textMessageBodyStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextMessageChanged &&
            (identical(other.textMessageBodyStr, textMessageBodyStr) ||
                const DeepCollectionEquality()
                    .equals(other.textMessageBodyStr, textMessageBodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(textMessageBodyStr);

  @override
  $TextMessageChangedCopyWith<TextMessageChanged> get copyWith =>
      _$TextMessageChangedCopyWithImpl<TextMessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textMessageBodyChanged(String textMessageBodyStr),
    @required Result receiverIDReceived(UniqueId receiverID),
    @required Result messageTypeChanged(int type),
    @required Result sendButtonPressed(),
    @required Result uploadImage(File file),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return textMessageBodyChanged(textMessageBodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textMessageBodyChanged(String textMessageBodyStr),
    Result receiverIDReceived(UniqueId receiverID),
    Result messageTypeChanged(int type),
    Result sendButtonPressed(),
    Result uploadImage(File file),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (textMessageBodyChanged != null) {
      return textMessageBodyChanged(textMessageBodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textMessageBodyChanged(TextMessageChanged value),
    @required Result receiverIDReceived(ReceiverIDReceived value),
    @required Result messageTypeChanged(MessageTypeChanged value),
    @required Result sendButtonPressed(SendButtonPressed value),
    @required Result uploadImage(UploadImage value),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return textMessageBodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textMessageBodyChanged(TextMessageChanged value),
    Result receiverIDReceived(ReceiverIDReceived value),
    Result messageTypeChanged(MessageTypeChanged value),
    Result sendButtonPressed(SendButtonPressed value),
    Result uploadImage(UploadImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (textMessageBodyChanged != null) {
      return textMessageBodyChanged(this);
    }
    return orElse();
  }
}

abstract class TextMessageChanged implements ChatDialogEvent {
  const factory TextMessageChanged({@required String textMessageBodyStr}) =
      _$TextMessageChanged;

  String get textMessageBodyStr;
  $TextMessageChangedCopyWith<TextMessageChanged> get copyWith;
}

abstract class $ReceiverIDReceivedCopyWith<$Res> {
  factory $ReceiverIDReceivedCopyWith(
          ReceiverIDReceived value, $Res Function(ReceiverIDReceived) then) =
      _$ReceiverIDReceivedCopyWithImpl<$Res>;
  $Res call({UniqueId receiverID});
}

class _$ReceiverIDReceivedCopyWithImpl<$Res>
    extends _$ChatDialogEventCopyWithImpl<$Res>
    implements $ReceiverIDReceivedCopyWith<$Res> {
  _$ReceiverIDReceivedCopyWithImpl(
      ReceiverIDReceived _value, $Res Function(ReceiverIDReceived) _then)
      : super(_value, (v) => _then(v as ReceiverIDReceived));

  @override
  ReceiverIDReceived get _value => super._value as ReceiverIDReceived;

  @override
  $Res call({
    Object receiverID = freezed,
  }) {
    return _then(ReceiverIDReceived(
      receiverID:
          receiverID == freezed ? _value.receiverID : receiverID as UniqueId,
    ));
  }
}

class _$ReceiverIDReceived
    with DiagnosticableTreeMixin
    implements ReceiverIDReceived {
  const _$ReceiverIDReceived({@required this.receiverID})
      : assert(receiverID != null);

  @override
  final UniqueId receiverID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatDialogEvent.receiverIDReceived(receiverID: $receiverID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatDialogEvent.receiverIDReceived'))
      ..add(DiagnosticsProperty('receiverID', receiverID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceiverIDReceived &&
            (identical(other.receiverID, receiverID) ||
                const DeepCollectionEquality()
                    .equals(other.receiverID, receiverID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiverID);

  @override
  $ReceiverIDReceivedCopyWith<ReceiverIDReceived> get copyWith =>
      _$ReceiverIDReceivedCopyWithImpl<ReceiverIDReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textMessageBodyChanged(String textMessageBodyStr),
    @required Result receiverIDReceived(UniqueId receiverID),
    @required Result messageTypeChanged(int type),
    @required Result sendButtonPressed(),
    @required Result uploadImage(File file),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return receiverIDReceived(receiverID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textMessageBodyChanged(String textMessageBodyStr),
    Result receiverIDReceived(UniqueId receiverID),
    Result messageTypeChanged(int type),
    Result sendButtonPressed(),
    Result uploadImage(File file),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverIDReceived != null) {
      return receiverIDReceived(receiverID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textMessageBodyChanged(TextMessageChanged value),
    @required Result receiverIDReceived(ReceiverIDReceived value),
    @required Result messageTypeChanged(MessageTypeChanged value),
    @required Result sendButtonPressed(SendButtonPressed value),
    @required Result uploadImage(UploadImage value),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return receiverIDReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textMessageBodyChanged(TextMessageChanged value),
    Result receiverIDReceived(ReceiverIDReceived value),
    Result messageTypeChanged(MessageTypeChanged value),
    Result sendButtonPressed(SendButtonPressed value),
    Result uploadImage(UploadImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiverIDReceived != null) {
      return receiverIDReceived(this);
    }
    return orElse();
  }
}

abstract class ReceiverIDReceived implements ChatDialogEvent {
  const factory ReceiverIDReceived({@required UniqueId receiverID}) =
      _$ReceiverIDReceived;

  UniqueId get receiverID;
  $ReceiverIDReceivedCopyWith<ReceiverIDReceived> get copyWith;
}

abstract class $MessageTypeChangedCopyWith<$Res> {
  factory $MessageTypeChangedCopyWith(
          MessageTypeChanged value, $Res Function(MessageTypeChanged) then) =
      _$MessageTypeChangedCopyWithImpl<$Res>;
  $Res call({int type});
}

class _$MessageTypeChangedCopyWithImpl<$Res>
    extends _$ChatDialogEventCopyWithImpl<$Res>
    implements $MessageTypeChangedCopyWith<$Res> {
  _$MessageTypeChangedCopyWithImpl(
      MessageTypeChanged _value, $Res Function(MessageTypeChanged) _then)
      : super(_value, (v) => _then(v as MessageTypeChanged));

  @override
  MessageTypeChanged get _value => super._value as MessageTypeChanged;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(MessageTypeChanged(
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

class _$MessageTypeChanged
    with DiagnosticableTreeMixin
    implements MessageTypeChanged {
  const _$MessageTypeChanged({@required this.type}) : assert(type != null);

  @override
  final int type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatDialogEvent.messageTypeChanged(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatDialogEvent.messageTypeChanged'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageTypeChanged &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  $MessageTypeChangedCopyWith<MessageTypeChanged> get copyWith =>
      _$MessageTypeChangedCopyWithImpl<MessageTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textMessageBodyChanged(String textMessageBodyStr),
    @required Result receiverIDReceived(UniqueId receiverID),
    @required Result messageTypeChanged(int type),
    @required Result sendButtonPressed(),
    @required Result uploadImage(File file),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return messageTypeChanged(type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textMessageBodyChanged(String textMessageBodyStr),
    Result receiverIDReceived(UniqueId receiverID),
    Result messageTypeChanged(int type),
    Result sendButtonPressed(),
    Result uploadImage(File file),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageTypeChanged != null) {
      return messageTypeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textMessageBodyChanged(TextMessageChanged value),
    @required Result receiverIDReceived(ReceiverIDReceived value),
    @required Result messageTypeChanged(MessageTypeChanged value),
    @required Result sendButtonPressed(SendButtonPressed value),
    @required Result uploadImage(UploadImage value),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return messageTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textMessageBodyChanged(TextMessageChanged value),
    Result receiverIDReceived(ReceiverIDReceived value),
    Result messageTypeChanged(MessageTypeChanged value),
    Result sendButtonPressed(SendButtonPressed value),
    Result uploadImage(UploadImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (messageTypeChanged != null) {
      return messageTypeChanged(this);
    }
    return orElse();
  }
}

abstract class MessageTypeChanged implements ChatDialogEvent {
  const factory MessageTypeChanged({@required int type}) = _$MessageTypeChanged;

  int get type;
  $MessageTypeChangedCopyWith<MessageTypeChanged> get copyWith;
}

abstract class $SendButtonPressedCopyWith<$Res> {
  factory $SendButtonPressedCopyWith(
          SendButtonPressed value, $Res Function(SendButtonPressed) then) =
      _$SendButtonPressedCopyWithImpl<$Res>;
}

class _$SendButtonPressedCopyWithImpl<$Res>
    extends _$ChatDialogEventCopyWithImpl<$Res>
    implements $SendButtonPressedCopyWith<$Res> {
  _$SendButtonPressedCopyWithImpl(
      SendButtonPressed _value, $Res Function(SendButtonPressed) _then)
      : super(_value, (v) => _then(v as SendButtonPressed));

  @override
  SendButtonPressed get _value => super._value as SendButtonPressed;
}

class _$SendButtonPressed
    with DiagnosticableTreeMixin
    implements SendButtonPressed {
  const _$SendButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatDialogEvent.sendButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatDialogEvent.sendButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textMessageBodyChanged(String textMessageBodyStr),
    @required Result receiverIDReceived(UniqueId receiverID),
    @required Result messageTypeChanged(int type),
    @required Result sendButtonPressed(),
    @required Result uploadImage(File file),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return sendButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textMessageBodyChanged(String textMessageBodyStr),
    Result receiverIDReceived(UniqueId receiverID),
    Result messageTypeChanged(int type),
    Result sendButtonPressed(),
    Result uploadImage(File file),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendButtonPressed != null) {
      return sendButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textMessageBodyChanged(TextMessageChanged value),
    @required Result receiverIDReceived(ReceiverIDReceived value),
    @required Result messageTypeChanged(MessageTypeChanged value),
    @required Result sendButtonPressed(SendButtonPressed value),
    @required Result uploadImage(UploadImage value),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return sendButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textMessageBodyChanged(TextMessageChanged value),
    Result receiverIDReceived(ReceiverIDReceived value),
    Result messageTypeChanged(MessageTypeChanged value),
    Result sendButtonPressed(SendButtonPressed value),
    Result uploadImage(UploadImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendButtonPressed != null) {
      return sendButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SendButtonPressed implements ChatDialogEvent {
  const factory SendButtonPressed() = _$SendButtonPressed;
}

abstract class $UploadImageCopyWith<$Res> {
  factory $UploadImageCopyWith(
          UploadImage value, $Res Function(UploadImage) then) =
      _$UploadImageCopyWithImpl<$Res>;
  $Res call({File file});
}

class _$UploadImageCopyWithImpl<$Res>
    extends _$ChatDialogEventCopyWithImpl<$Res>
    implements $UploadImageCopyWith<$Res> {
  _$UploadImageCopyWithImpl(
      UploadImage _value, $Res Function(UploadImage) _then)
      : super(_value, (v) => _then(v as UploadImage));

  @override
  UploadImage get _value => super._value as UploadImage;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(UploadImage(
      file: file == freezed ? _value.file : file as File,
    ));
  }
}

class _$UploadImage with DiagnosticableTreeMixin implements UploadImage {
  const _$UploadImage({@required this.file}) : assert(file != null);

  @override
  final File file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatDialogEvent.uploadImage(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatDialogEvent.uploadImage'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadImage &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @override
  $UploadImageCopyWith<UploadImage> get copyWith =>
      _$UploadImageCopyWithImpl<UploadImage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result textMessageBodyChanged(String textMessageBodyStr),
    @required Result receiverIDReceived(UniqueId receiverID),
    @required Result messageTypeChanged(int type),
    @required Result sendButtonPressed(),
    @required Result uploadImage(File file),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return uploadImage(file);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result textMessageBodyChanged(String textMessageBodyStr),
    Result receiverIDReceived(UniqueId receiverID),
    Result messageTypeChanged(int type),
    Result sendButtonPressed(),
    Result uploadImage(File file),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadImage != null) {
      return uploadImage(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result textMessageBodyChanged(TextMessageChanged value),
    @required Result receiverIDReceived(ReceiverIDReceived value),
    @required Result messageTypeChanged(MessageTypeChanged value),
    @required Result sendButtonPressed(SendButtonPressed value),
    @required Result uploadImage(UploadImage value),
  }) {
    assert(textMessageBodyChanged != null);
    assert(receiverIDReceived != null);
    assert(messageTypeChanged != null);
    assert(sendButtonPressed != null);
    assert(uploadImage != null);
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result textMessageBodyChanged(TextMessageChanged value),
    Result receiverIDReceived(ReceiverIDReceived value),
    Result messageTypeChanged(MessageTypeChanged value),
    Result sendButtonPressed(SendButtonPressed value),
    Result uploadImage(UploadImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class UploadImage implements ChatDialogEvent {
  const factory UploadImage({@required File file}) = _$UploadImage;

  File get file;
  $UploadImageCopyWith<UploadImage> get copyWith;
}

class _$ChatDialogStateTearOff {
  const _$ChatDialogStateTearOff();

  _ChatDialogState call(
      {@required TextMessage textMessage,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<ChatFailure, Unit>> chatFailureOrSuccessOption}) {
    return _ChatDialogState(
      textMessage: textMessage,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      chatFailureOrSuccessOption: chatFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ChatDialogState = _$ChatDialogStateTearOff();

mixin _$ChatDialogState {
  TextMessage get textMessage;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ChatFailure, Unit>> get chatFailureOrSuccessOption;

  $ChatDialogStateCopyWith<ChatDialogState> get copyWith;
}

abstract class $ChatDialogStateCopyWith<$Res> {
  factory $ChatDialogStateCopyWith(
          ChatDialogState value, $Res Function(ChatDialogState) then) =
      _$ChatDialogStateCopyWithImpl<$Res>;
  $Res call(
      {TextMessage textMessage,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ChatFailure, Unit>> chatFailureOrSuccessOption});

  $TextMessageCopyWith<$Res> get textMessage;
}

class _$ChatDialogStateCopyWithImpl<$Res>
    implements $ChatDialogStateCopyWith<$Res> {
  _$ChatDialogStateCopyWithImpl(this._value, this._then);

  final ChatDialogState _value;
  // ignore: unused_field
  final $Res Function(ChatDialogState) _then;

  @override
  $Res call({
    Object textMessage = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object chatFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      textMessage: textMessage == freezed
          ? _value.textMessage
          : textMessage as TextMessage,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      chatFailureOrSuccessOption: chatFailureOrSuccessOption == freezed
          ? _value.chatFailureOrSuccessOption
          : chatFailureOrSuccessOption as Option<Either<ChatFailure, Unit>>,
    ));
  }

  @override
  $TextMessageCopyWith<$Res> get textMessage {
    if (_value.textMessage == null) {
      return null;
    }
    return $TextMessageCopyWith<$Res>(_value.textMessage, (value) {
      return _then(_value.copyWith(textMessage: value));
    });
  }
}

abstract class _$ChatDialogStateCopyWith<$Res>
    implements $ChatDialogStateCopyWith<$Res> {
  factory _$ChatDialogStateCopyWith(
          _ChatDialogState value, $Res Function(_ChatDialogState) then) =
      __$ChatDialogStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TextMessage textMessage,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ChatFailure, Unit>> chatFailureOrSuccessOption});

  @override
  $TextMessageCopyWith<$Res> get textMessage;
}

class __$ChatDialogStateCopyWithImpl<$Res>
    extends _$ChatDialogStateCopyWithImpl<$Res>
    implements _$ChatDialogStateCopyWith<$Res> {
  __$ChatDialogStateCopyWithImpl(
      _ChatDialogState _value, $Res Function(_ChatDialogState) _then)
      : super(_value, (v) => _then(v as _ChatDialogState));

  @override
  _ChatDialogState get _value => super._value as _ChatDialogState;

  @override
  $Res call({
    Object textMessage = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object chatFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChatDialogState(
      textMessage: textMessage == freezed
          ? _value.textMessage
          : textMessage as TextMessage,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      chatFailureOrSuccessOption: chatFailureOrSuccessOption == freezed
          ? _value.chatFailureOrSuccessOption
          : chatFailureOrSuccessOption as Option<Either<ChatFailure, Unit>>,
    ));
  }
}

class _$_ChatDialogState
    with DiagnosticableTreeMixin
    implements _ChatDialogState {
  const _$_ChatDialogState(
      {@required this.textMessage,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.chatFailureOrSuccessOption})
      : assert(textMessage != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(chatFailureOrSuccessOption != null);

  @override
  final TextMessage textMessage;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ChatFailure, Unit>> chatFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatDialogState(textMessage: $textMessage, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, chatFailureOrSuccessOption: $chatFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatDialogState'))
      ..add(DiagnosticsProperty('textMessage', textMessage))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'chatFailureOrSuccessOption', chatFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatDialogState &&
            (identical(other.textMessage, textMessage) ||
                const DeepCollectionEquality()
                    .equals(other.textMessage, textMessage)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.chatFailureOrSuccessOption,
                    chatFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.chatFailureOrSuccessOption,
                    chatFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(textMessage) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(chatFailureOrSuccessOption);

  @override
  _$ChatDialogStateCopyWith<_ChatDialogState> get copyWith =>
      __$ChatDialogStateCopyWithImpl<_ChatDialogState>(this, _$identity);
}

abstract class _ChatDialogState implements ChatDialogState {
  const factory _ChatDialogState(
          {@required
              TextMessage textMessage,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<ChatFailure, Unit>> chatFailureOrSuccessOption}) =
      _$_ChatDialogState;

  @override
  TextMessage get textMessage;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ChatFailure, Unit>> get chatFailureOrSuccessOption;
  @override
  _$ChatDialogStateCopyWith<_ChatDialogState> get copyWith;
}
