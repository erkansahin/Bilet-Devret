// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_dialogs_overview_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserDialogsOverviewWatcherEventTearOff {
  const _$UserDialogsOverviewWatcherEventTearOff();

  _WatchDialogs watchDialogs() {
    return const _WatchDialogs();
  }

  _DialogsReceived dialogsReceived(
      Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs) {
    return _DialogsReceived(
      failureOrDialogs,
    );
  }
}

// ignore: unused_element
const $UserDialogsOverviewWatcherEvent =
    _$UserDialogsOverviewWatcherEventTearOff();

mixin _$UserDialogsOverviewWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDialogs(),
    @required
        Result dialogsReceived(
            Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDialogs(),
    Result dialogsReceived(
        Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDialogs(_WatchDialogs value),
    @required Result dialogsReceived(_DialogsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDialogs(_WatchDialogs value),
    Result dialogsReceived(_DialogsReceived value),
    @required Result orElse(),
  });
}

abstract class $UserDialogsOverviewWatcherEventCopyWith<$Res> {
  factory $UserDialogsOverviewWatcherEventCopyWith(
          UserDialogsOverviewWatcherEvent value,
          $Res Function(UserDialogsOverviewWatcherEvent) then) =
      _$UserDialogsOverviewWatcherEventCopyWithImpl<$Res>;
}

class _$UserDialogsOverviewWatcherEventCopyWithImpl<$Res>
    implements $UserDialogsOverviewWatcherEventCopyWith<$Res> {
  _$UserDialogsOverviewWatcherEventCopyWithImpl(this._value, this._then);

  final UserDialogsOverviewWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UserDialogsOverviewWatcherEvent) _then;
}

abstract class _$WatchDialogsCopyWith<$Res> {
  factory _$WatchDialogsCopyWith(
          _WatchDialogs value, $Res Function(_WatchDialogs) then) =
      __$WatchDialogsCopyWithImpl<$Res>;
}

class __$WatchDialogsCopyWithImpl<$Res>
    extends _$UserDialogsOverviewWatcherEventCopyWithImpl<$Res>
    implements _$WatchDialogsCopyWith<$Res> {
  __$WatchDialogsCopyWithImpl(
      _WatchDialogs _value, $Res Function(_WatchDialogs) _then)
      : super(_value, (v) => _then(v as _WatchDialogs));

  @override
  _WatchDialogs get _value => super._value as _WatchDialogs;
}

class _$_WatchDialogs implements _WatchDialogs {
  const _$_WatchDialogs();

  @override
  String toString() {
    return 'UserDialogsOverviewWatcherEvent.watchDialogs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchDialogs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchDialogs(),
    @required
        Result dialogsReceived(
            Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs),
  }) {
    assert(watchDialogs != null);
    assert(dialogsReceived != null);
    return watchDialogs();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDialogs(),
    Result dialogsReceived(
        Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchDialogs != null) {
      return watchDialogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchDialogs(_WatchDialogs value),
    @required Result dialogsReceived(_DialogsReceived value),
  }) {
    assert(watchDialogs != null);
    assert(dialogsReceived != null);
    return watchDialogs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDialogs(_WatchDialogs value),
    Result dialogsReceived(_DialogsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchDialogs != null) {
      return watchDialogs(this);
    }
    return orElse();
  }
}

abstract class _WatchDialogs implements UserDialogsOverviewWatcherEvent {
  const factory _WatchDialogs() = _$_WatchDialogs;
}

abstract class _$DialogsReceivedCopyWith<$Res> {
  factory _$DialogsReceivedCopyWith(
          _DialogsReceived value, $Res Function(_DialogsReceived) then) =
      __$DialogsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs});
}

class __$DialogsReceivedCopyWithImpl<$Res>
    extends _$UserDialogsOverviewWatcherEventCopyWithImpl<$Res>
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
          : failureOrDialogs as Either<ChatFailure, KtList<DialogOverview>>,
    ));
  }
}

class _$_DialogsReceived implements _DialogsReceived {
  const _$_DialogsReceived(this.failureOrDialogs)
      : assert(failureOrDialogs != null);

  @override
  final Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs;

  @override
  String toString() {
    return 'UserDialogsOverviewWatcherEvent.dialogsReceived(failureOrDialogs: $failureOrDialogs)';
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
    @required Result watchDialogs(),
    @required
        Result dialogsReceived(
            Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs),
  }) {
    assert(watchDialogs != null);
    assert(dialogsReceived != null);
    return dialogsReceived(failureOrDialogs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchDialogs(),
    Result dialogsReceived(
        Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs),
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
    @required Result watchDialogs(_WatchDialogs value),
    @required Result dialogsReceived(_DialogsReceived value),
  }) {
    assert(watchDialogs != null);
    assert(dialogsReceived != null);
    return dialogsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchDialogs(_WatchDialogs value),
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

abstract class _DialogsReceived implements UserDialogsOverviewWatcherEvent {
  const factory _DialogsReceived(
          Either<ChatFailure, KtList<DialogOverview>> failureOrDialogs) =
      _$_DialogsReceived;

  Either<ChatFailure, KtList<DialogOverview>> get failureOrDialogs;
  _$DialogsReceivedCopyWith<_DialogsReceived> get copyWith;
}

class _$UserDialogsOverviewWatcherStateTearOff {
  const _$UserDialogsOverviewWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(KtList<DialogOverview> dialogs) {
    return LoadSuccess(
      dialogs,
    );
  }

  LoadFailure loadFailure(ChatFailure chatFailure) {
    return LoadFailure(
      chatFailure,
    );
  }
}

// ignore: unused_element
const $UserDialogsOverviewWatcherState =
    _$UserDialogsOverviewWatcherStateTearOff();

mixin _$UserDialogsOverviewWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<DialogOverview> dialogs),
    @required Result loadFailure(ChatFailure chatFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<DialogOverview> dialogs),
    Result loadFailure(ChatFailure chatFailure),
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

abstract class $UserDialogsOverviewWatcherStateCopyWith<$Res> {
  factory $UserDialogsOverviewWatcherStateCopyWith(
          UserDialogsOverviewWatcherState value,
          $Res Function(UserDialogsOverviewWatcherState) then) =
      _$UserDialogsOverviewWatcherStateCopyWithImpl<$Res>;
}

class _$UserDialogsOverviewWatcherStateCopyWithImpl<$Res>
    implements $UserDialogsOverviewWatcherStateCopyWith<$Res> {
  _$UserDialogsOverviewWatcherStateCopyWithImpl(this._value, this._then);

  final UserDialogsOverviewWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserDialogsOverviewWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$UserDialogsOverviewWatcherStateCopyWithImpl<$Res>
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
    return 'UserDialogsOverviewWatcherState.initial()';
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
    @required Result loadSuccess(KtList<DialogOverview> dialogs),
    @required Result loadFailure(ChatFailure chatFailure),
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
    Result loadSuccess(KtList<DialogOverview> dialogs),
    Result loadFailure(ChatFailure chatFailure),
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

abstract class Initial implements UserDialogsOverviewWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$UserDialogsOverviewWatcherStateCopyWithImpl<$Res>
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
    return 'UserDialogsOverviewWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtList<DialogOverview> dialogs),
    @required Result loadFailure(ChatFailure chatFailure),
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
    Result loadSuccess(KtList<DialogOverview> dialogs),
    Result loadFailure(ChatFailure chatFailure),
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

abstract class DataTransferInProgress
    implements UserDialogsOverviewWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<DialogOverview> dialogs});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$UserDialogsOverviewWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object dialogs = freezed,
  }) {
    return _then(LoadSuccess(
      dialogs == freezed ? _value.dialogs : dialogs as KtList<DialogOverview>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.dialogs) : assert(dialogs != null);

  @override
  final KtList<DialogOverview> dialogs;

  @override
  String toString() {
    return 'UserDialogsOverviewWatcherState.loadSuccess(dialogs: $dialogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.dialogs, dialogs) ||
                const DeepCollectionEquality().equals(other.dialogs, dialogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dialogs);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<DialogOverview> dialogs),
    @required Result loadFailure(ChatFailure chatFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(dialogs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<DialogOverview> dialogs),
    Result loadFailure(ChatFailure chatFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(dialogs);
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

abstract class LoadSuccess implements UserDialogsOverviewWatcherState {
  const factory LoadSuccess(KtList<DialogOverview> dialogs) = _$LoadSuccess;

  KtList<DialogOverview> get dialogs;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ChatFailure chatFailure});

  $ChatFailureCopyWith<$Res> get chatFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$UserDialogsOverviewWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object chatFailure = freezed,
  }) {
    return _then(LoadFailure(
      chatFailure == freezed ? _value.chatFailure : chatFailure as ChatFailure,
    ));
  }

  @override
  $ChatFailureCopyWith<$Res> get chatFailure {
    if (_value.chatFailure == null) {
      return null;
    }
    return $ChatFailureCopyWith<$Res>(_value.chatFailure, (value) {
      return _then(_value.copyWith(chatFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.chatFailure) : assert(chatFailure != null);

  @override
  final ChatFailure chatFailure;

  @override
  String toString() {
    return 'UserDialogsOverviewWatcherState.loadFailure(chatFailure: $chatFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.chatFailure, chatFailure) ||
                const DeepCollectionEquality()
                    .equals(other.chatFailure, chatFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chatFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<DialogOverview> dialogs),
    @required Result loadFailure(ChatFailure chatFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(chatFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<DialogOverview> dialogs),
    Result loadFailure(ChatFailure chatFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(chatFailure);
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

abstract class LoadFailure implements UserDialogsOverviewWatcherState {
  const factory LoadFailure(ChatFailure chatFailure) = _$LoadFailure;

  ChatFailure get chatFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
