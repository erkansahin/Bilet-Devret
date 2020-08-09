// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'dialog_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DialogWatcherEventTearOff {
  const _$DialogWatcherEventTearOff();

  _WatchDialog watchDialog(UniqueId otherUserID) {
    return _WatchDialog(
      otherUserID,
    );
  }

  _DialogsReceived dialogsReceived(
      Either<ChatFailure, KtList<TextMessage>> failureOrDialogs) {
    return _DialogsReceived(
      failureOrDialogs,
    );
  }
}

// ignore: unused_element
const $DialogWatcherEvent = _$DialogWatcherEventTearOff();

mixin _$DialogWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDialog(UniqueId otherUserID),
    @required
        Result dialogsReceived(
            Either<ChatFailure, KtList<TextMessage>> failureOrDialogs),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDialog(UniqueId otherUserID),
    Result dialogsReceived(
        Either<ChatFailure, KtList<TextMessage>> failureOrDialogs),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDialog(_WatchDialog value),
    @required Result dialogsReceived(_DialogsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDialog(_WatchDialog value),
    Result dialogsReceived(_DialogsReceived value),
    @required Result orElse(),
  });
}

abstract class $DialogWatcherEventCopyWith<$Res> {
  factory $DialogWatcherEventCopyWith(
          DialogWatcherEvent value, $Res Function(DialogWatcherEvent) then) =
      _$DialogWatcherEventCopyWithImpl<$Res>;
}

class _$DialogWatcherEventCopyWithImpl<$Res>
    implements $DialogWatcherEventCopyWith<$Res> {
  _$DialogWatcherEventCopyWithImpl(this._value, this._then);

  final DialogWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(DialogWatcherEvent) _then;
}

abstract class _$WatchDialogCopyWith<$Res> {
  factory _$WatchDialogCopyWith(
          _WatchDialog value, $Res Function(_WatchDialog) then) =
      __$WatchDialogCopyWithImpl<$Res>;
  $Res call({UniqueId otherUserID});
}

class __$WatchDialogCopyWithImpl<$Res>
    extends _$DialogWatcherEventCopyWithImpl<$Res>
    implements _$WatchDialogCopyWith<$Res> {
  __$WatchDialogCopyWithImpl(
      _WatchDialog _value, $Res Function(_WatchDialog) _then)
      : super(_value, (v) => _then(v as _WatchDialog));

  @override
  _WatchDialog get _value => super._value as _WatchDialog;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(_WatchDialog(
      otherUserID == freezed ? _value.otherUserID : otherUserID as UniqueId,
    ));
  }
}

class _$_WatchDialog implements _WatchDialog {
  const _$_WatchDialog(this.otherUserID) : assert(otherUserID != null);

  @override
  final UniqueId otherUserID;

  @override
  String toString() {
    return 'DialogWatcherEvent.watchDialog(otherUserID: $otherUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchDialog &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUserID);

  @override
  _$WatchDialogCopyWith<_WatchDialog> get copyWith =>
      __$WatchDialogCopyWithImpl<_WatchDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDialog(UniqueId otherUserID),
    @required
        Result dialogsReceived(
            Either<ChatFailure, KtList<TextMessage>> failureOrDialogs),
  }) {
    assert(watchDialog != null);
    assert(dialogsReceived != null);
    return watchDialog(otherUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDialog(UniqueId otherUserID),
    Result dialogsReceived(
        Either<ChatFailure, KtList<TextMessage>> failureOrDialogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchDialog != null) {
      return watchDialog(otherUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDialog(_WatchDialog value),
    @required Result dialogsReceived(_DialogsReceived value),
  }) {
    assert(watchDialog != null);
    assert(dialogsReceived != null);
    return watchDialog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDialog(_WatchDialog value),
    Result dialogsReceived(_DialogsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchDialog != null) {
      return watchDialog(this);
    }
    return orElse();
  }
}

abstract class _WatchDialog implements DialogWatcherEvent {
  const factory _WatchDialog(UniqueId otherUserID) = _$_WatchDialog;

  UniqueId get otherUserID;
  _$WatchDialogCopyWith<_WatchDialog> get copyWith;
}

abstract class _$DialogsReceivedCopyWith<$Res> {
  factory _$DialogsReceivedCopyWith(
          _DialogsReceived value, $Res Function(_DialogsReceived) then) =
      __$DialogsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ChatFailure, KtList<TextMessage>> failureOrDialogs});
}

class __$DialogsReceivedCopyWithImpl<$Res>
    extends _$DialogWatcherEventCopyWithImpl<$Res>
    implements _$DialogsReceivedCopyWith<$Res> {
  __$DialogsReceivedCopyWithImpl(
      _DialogsReceived _value, $Res Function(_DialogsReceived) _then)
      : super(_value, (v) => _then(v as _DialogsReceived));

  @override
  _DialogsReceived get _value => super._value as _DialogsReceived;

  @override
  $Res call({
    Object failureOrDialogs = freezed,
  }) {
    return _then(_DialogsReceived(
      failureOrDialogs == freezed
          ? _value.failureOrDialogs
          : failureOrDialogs as Either<ChatFailure, KtList<TextMessage>>,
    ));
  }
}

class _$_DialogsReceived implements _DialogsReceived {
  const _$_DialogsReceived(this.failureOrDialogs)
      : assert(failureOrDialogs != null);

  @override
  final Either<ChatFailure, KtList<TextMessage>> failureOrDialogs;

  @override
  String toString() {
    return 'DialogWatcherEvent.dialogsReceived(failureOrDialogs: $failureOrDialogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DialogsReceived &&
            (identical(other.failureOrDialogs, failureOrDialogs) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrDialogs, failureOrDialogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrDialogs);

  @override
  _$DialogsReceivedCopyWith<_DialogsReceived> get copyWith =>
      __$DialogsReceivedCopyWithImpl<_DialogsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDialog(UniqueId otherUserID),
    @required
        Result dialogsReceived(
            Either<ChatFailure, KtList<TextMessage>> failureOrDialogs),
  }) {
    assert(watchDialog != null);
    assert(dialogsReceived != null);
    return dialogsReceived(failureOrDialogs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDialog(UniqueId otherUserID),
    Result dialogsReceived(
        Either<ChatFailure, KtList<TextMessage>> failureOrDialogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dialogsReceived != null) {
      return dialogsReceived(failureOrDialogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDialog(_WatchDialog value),
    @required Result dialogsReceived(_DialogsReceived value),
  }) {
    assert(watchDialog != null);
    assert(dialogsReceived != null);
    return dialogsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDialog(_WatchDialog value),
    Result dialogsReceived(_DialogsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dialogsReceived != null) {
      return dialogsReceived(this);
    }
    return orElse();
  }
}

abstract class _DialogsReceived implements DialogWatcherEvent {
  const factory _DialogsReceived(
          Either<ChatFailure, KtList<TextMessage>> failureOrDialogs) =
      _$_DialogsReceived;

  Either<ChatFailure, KtList<TextMessage>> get failureOrDialogs;
  _$DialogsReceivedCopyWith<_DialogsReceived> get copyWith;
}

class _$DialogWatcherStateTearOff {
  const _$DialogWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(KtList<TextMessage> messages) {
    return LoadSuccess(
      messages,
    );
  }

  LoadFailure loadFailure(ChatFailure postFailure) {
    return LoadFailure(
      postFailure,
    );
  }
}

// ignore: unused_element
const $DialogWatcherState = _$DialogWatcherStateTearOff();

mixin _$DialogWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TextMessage> messages),
    @required Result loadFailure(ChatFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TextMessage> messages),
    Result loadFailure(ChatFailure postFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $DialogWatcherStateCopyWith<$Res> {
  factory $DialogWatcherStateCopyWith(
          DialogWatcherState value, $Res Function(DialogWatcherState) then) =
      _$DialogWatcherStateCopyWithImpl<$Res>;
}

class _$DialogWatcherStateCopyWithImpl<$Res>
    implements $DialogWatcherStateCopyWith<$Res> {
  _$DialogWatcherStateCopyWithImpl(this._value, this._then);

  final DialogWatcherState _value;
  // ignore: unused_field
  final $Res Function(DialogWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$DialogWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'DialogWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TextMessage> messages),
    @required Result loadFailure(ChatFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TextMessage> messages),
    Result loadFailure(ChatFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DialogWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$DialogWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'DialogWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TextMessage> messages),
    @required Result loadFailure(ChatFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TextMessage> messages),
    Result loadFailure(ChatFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements DialogWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<TextMessage> messages});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$DialogWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(LoadSuccess(
      messages == freezed ? _value.messages : messages as KtList<TextMessage>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.messages) : assert(messages != null);

  @override
  final KtList<TextMessage> messages;

  @override
  String toString() {
    return 'DialogWatcherState.loadSuccess(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TextMessage> messages),
    @required Result loadFailure(ChatFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(messages);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TextMessage> messages),
    Result loadFailure(ChatFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements DialogWatcherState {
  const factory LoadSuccess(KtList<TextMessage> messages) = _$LoadSuccess;

  KtList<TextMessage> get messages;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ChatFailure postFailure});

  $ChatFailureCopyWith<$Res> get postFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$DialogWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(LoadFailure(
      postFailure == freezed ? _value.postFailure : postFailure as ChatFailure,
    ));
  }

  @override
  $ChatFailureCopyWith<$Res> get postFailure {
    if (_value.postFailure == null) {
      return null;
    }
    return $ChatFailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.postFailure) : assert(postFailure != null);

  @override
  final ChatFailure postFailure;

  @override
  String toString() {
    return 'DialogWatcherState.loadFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<TextMessage> messages),
    @required Result loadFailure(ChatFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<TextMessage> messages),
    Result loadFailure(ChatFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements DialogWatcherState {
  const factory LoadFailure(ChatFailure postFailure) = _$LoadFailure;

  ChatFailure get postFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
