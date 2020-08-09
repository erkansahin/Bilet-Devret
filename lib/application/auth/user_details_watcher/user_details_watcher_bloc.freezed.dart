// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_details_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserDetailsWatcherEventTearOff {
  const _$UserDetailsWatcherEventTearOff();

  _WatchUserDetails watchUserDetails(UniqueId otherUserID) {
    return _WatchUserDetails(
      otherUserID,
    );
  }
}

// ignore: unused_element
const $UserDetailsWatcherEvent = _$UserDetailsWatcherEventTearOff();

mixin _$UserDetailsWatcherEvent {
  UniqueId get otherUserID;

  $UserDetailsWatcherEventCopyWith<UserDetailsWatcherEvent> get copyWith;
}

abstract class $UserDetailsWatcherEventCopyWith<$Res> {
  factory $UserDetailsWatcherEventCopyWith(UserDetailsWatcherEvent value,
          $Res Function(UserDetailsWatcherEvent) then) =
      _$UserDetailsWatcherEventCopyWithImpl<$Res>;
  $Res call({UniqueId otherUserID});
}

class _$UserDetailsWatcherEventCopyWithImpl<$Res>
    implements $UserDetailsWatcherEventCopyWith<$Res> {
  _$UserDetailsWatcherEventCopyWithImpl(this._value, this._then);

  final UserDetailsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UserDetailsWatcherEvent) _then;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(_value.copyWith(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as UniqueId,
    ));
  }
}

abstract class _$WatchUserDetailsCopyWith<$Res>
    implements $UserDetailsWatcherEventCopyWith<$Res> {
  factory _$WatchUserDetailsCopyWith(
          _WatchUserDetails value, $Res Function(_WatchUserDetails) then) =
      __$WatchUserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId otherUserID});
}

class __$WatchUserDetailsCopyWithImpl<$Res>
    extends _$UserDetailsWatcherEventCopyWithImpl<$Res>
    implements _$WatchUserDetailsCopyWith<$Res> {
  __$WatchUserDetailsCopyWithImpl(
      _WatchUserDetails _value, $Res Function(_WatchUserDetails) _then)
      : super(_value, (v) => _then(v as _WatchUserDetails));

  @override
  _WatchUserDetails get _value => super._value as _WatchUserDetails;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(_WatchUserDetails(
      otherUserID == freezed ? _value.otherUserID : otherUserID as UniqueId,
    ));
  }
}

class _$_WatchUserDetails implements _WatchUserDetails {
  const _$_WatchUserDetails(this.otherUserID) : assert(otherUserID != null);

  @override
  final UniqueId otherUserID;

  @override
  String toString() {
    return 'UserDetailsWatcherEvent.watchUserDetails(otherUserID: $otherUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchUserDetails &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUserID);

  @override
  _$WatchUserDetailsCopyWith<_WatchUserDetails> get copyWith =>
      __$WatchUserDetailsCopyWithImpl<_WatchUserDetails>(this, _$identity);
}

abstract class _WatchUserDetails implements UserDetailsWatcherEvent {
  const factory _WatchUserDetails(UniqueId otherUserID) = _$_WatchUserDetails;

  @override
  UniqueId get otherUserID;
  @override
  _$WatchUserDetailsCopyWith<_WatchUserDetails> get copyWith;
}

class _$UserDetailsWatcherStateTearOff {
  const _$UserDetailsWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(UserDetail userDetail) {
    return LoadSuccess(
      userDetail,
    );
  }

  LoadError loadError() {
    return const LoadError();
  }
}

// ignore: unused_element
const $UserDetailsWatcherState = _$UserDetailsWatcherStateTearOff();

mixin _$UserDetailsWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserDetail userDetail),
    @required Result loadError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(UserDetail userDetail),
    Result loadError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadError(LoadError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadError(LoadError value),
    @required Result orElse(),
  });
}

abstract class $UserDetailsWatcherStateCopyWith<$Res> {
  factory $UserDetailsWatcherStateCopyWith(UserDetailsWatcherState value,
          $Res Function(UserDetailsWatcherState) then) =
      _$UserDetailsWatcherStateCopyWithImpl<$Res>;
}

class _$UserDetailsWatcherStateCopyWithImpl<$Res>
    implements $UserDetailsWatcherStateCopyWith<$Res> {
  _$UserDetailsWatcherStateCopyWithImpl(this._value, this._then);

  final UserDetailsWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserDetailsWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$UserDetailsWatcherStateCopyWithImpl<$Res>
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
    return 'UserDetailsWatcherState.initial()';
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
    @required Result loadSuccess(UserDetail userDetail),
    @required Result loadError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(UserDetail userDetail),
    Result loadError(),
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
    @required Result loadError(LoadError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadError(LoadError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserDetailsWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$UserDetailsWatcherStateCopyWithImpl<$Res>
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
    return 'UserDetailsWatcherState.loadInProgress()';
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
    @required Result loadSuccess(UserDetail userDetail),
    @required Result loadError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(UserDetail userDetail),
    Result loadError(),
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
    @required Result loadError(LoadError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadError(LoadError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements UserDetailsWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({UserDetail userDetail});

  $UserDetailCopyWith<$Res> get userDetail;
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$UserDetailsWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object userDetail = freezed,
  }) {
    return _then(LoadSuccess(
      userDetail == freezed ? _value.userDetail : userDetail as UserDetail,
    ));
  }

  @override
  $UserDetailCopyWith<$Res> get userDetail {
    if (_value.userDetail == null) {
      return null;
    }
    return $UserDetailCopyWith<$Res>(_value.userDetail, (value) {
      return _then(_value.copyWith(userDetail: value));
    });
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.userDetail) : assert(userDetail != null);

  @override
  final UserDetail userDetail;

  @override
  String toString() {
    return 'UserDetailsWatcherState.loadSuccess(userDetail: $userDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.userDetail, userDetail) ||
                const DeepCollectionEquality()
                    .equals(other.userDetail, userDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userDetail);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserDetail userDetail),
    @required Result loadError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return loadSuccess(userDetail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(UserDetail userDetail),
    Result loadError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(userDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadError(LoadError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadError(LoadError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements UserDetailsWatcherState {
  const factory LoadSuccess(UserDetail userDetail) = _$LoadSuccess;

  UserDetail get userDetail;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadErrorCopyWith<$Res> {
  factory $LoadErrorCopyWith(LoadError value, $Res Function(LoadError) then) =
      _$LoadErrorCopyWithImpl<$Res>;
}

class _$LoadErrorCopyWithImpl<$Res>
    extends _$UserDetailsWatcherStateCopyWithImpl<$Res>
    implements $LoadErrorCopyWith<$Res> {
  _$LoadErrorCopyWithImpl(LoadError _value, $Res Function(LoadError) _then)
      : super(_value, (v) => _then(v as LoadError));

  @override
  LoadError get _value => super._value as LoadError;
}

class _$LoadError implements LoadError {
  const _$LoadError();

  @override
  String toString() {
    return 'UserDetailsWatcherState.loadError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(UserDetail userDetail),
    @required Result loadError(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return loadError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(UserDetail userDetail),
    Result loadError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadError != null) {
      return loadError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadError(LoadError value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadError != null);
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadError(LoadError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class LoadError implements UserDetailsWatcherState {
  const factory LoadError() = _$LoadError;
}
