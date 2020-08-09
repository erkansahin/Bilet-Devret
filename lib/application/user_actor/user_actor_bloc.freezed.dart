// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserActorEventTearOff {
  const _$UserActorEventTearOff();

  _Blocked currentUserBlockedThePair({@required String otherUserID}) {
    return _Blocked(
      otherUserID: otherUserID,
    );
  }

  _Unblocked currentUserUnblockedThePair({@required String otherUserID}) {
    return _Unblocked(
      otherUserID: otherUserID,
    );
  }

  CheckIfCurrentUserBlockedThePair checkIfCurrentUserBlockedThePair(
      {@required String otherUserID}) {
    return CheckIfCurrentUserBlockedThePair(
      otherUserID: otherUserID,
    );
  }

  CheckIfThePairBlockedCurrentUser checkIfThePairBlockedCurrentUser(
      {@required String otherUserID}) {
    return CheckIfThePairBlockedCurrentUser(
      otherUserID: otherUserID,
    );
  }
}

// ignore: unused_element
const $UserActorEvent = _$UserActorEventTearOff();

mixin _$UserActorEvent {
  String get otherUserID;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result currentUserBlockedThePair(String otherUserID),
    @required Result currentUserUnblockedThePair(String otherUserID),
    @required Result checkIfCurrentUserBlockedThePair(String otherUserID),
    @required Result checkIfThePairBlockedCurrentUser(String otherUserID),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result currentUserBlockedThePair(String otherUserID),
    Result currentUserUnblockedThePair(String otherUserID),
    Result checkIfCurrentUserBlockedThePair(String otherUserID),
    Result checkIfThePairBlockedCurrentUser(String otherUserID),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result currentUserBlockedThePair(_Blocked value),
    @required Result currentUserUnblockedThePair(_Unblocked value),
    @required
        Result checkIfCurrentUserBlockedThePair(
            CheckIfCurrentUserBlockedThePair value),
    @required
        Result checkIfThePairBlockedCurrentUser(
            CheckIfThePairBlockedCurrentUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result currentUserBlockedThePair(_Blocked value),
    Result currentUserUnblockedThePair(_Unblocked value),
    Result checkIfCurrentUserBlockedThePair(
        CheckIfCurrentUserBlockedThePair value),
    Result checkIfThePairBlockedCurrentUser(
        CheckIfThePairBlockedCurrentUser value),
    @required Result orElse(),
  });

  $UserActorEventCopyWith<UserActorEvent> get copyWith;
}

abstract class $UserActorEventCopyWith<$Res> {
  factory $UserActorEventCopyWith(
          UserActorEvent value, $Res Function(UserActorEvent) then) =
      _$UserActorEventCopyWithImpl<$Res>;
  $Res call({String otherUserID});
}

class _$UserActorEventCopyWithImpl<$Res>
    implements $UserActorEventCopyWith<$Res> {
  _$UserActorEventCopyWithImpl(this._value, this._then);

  final UserActorEvent _value;
  // ignore: unused_field
  final $Res Function(UserActorEvent) _then;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(_value.copyWith(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as String,
    ));
  }
}

abstract class _$BlockedCopyWith<$Res>
    implements $UserActorEventCopyWith<$Res> {
  factory _$BlockedCopyWith(_Blocked value, $Res Function(_Blocked) then) =
      __$BlockedCopyWithImpl<$Res>;
  @override
  $Res call({String otherUserID});
}

class __$BlockedCopyWithImpl<$Res> extends _$UserActorEventCopyWithImpl<$Res>
    implements _$BlockedCopyWith<$Res> {
  __$BlockedCopyWithImpl(_Blocked _value, $Res Function(_Blocked) _then)
      : super(_value, (v) => _then(v as _Blocked));

  @override
  _Blocked get _value => super._value as _Blocked;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(_Blocked(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as String,
    ));
  }
}

class _$_Blocked implements _Blocked {
  const _$_Blocked({@required this.otherUserID}) : assert(otherUserID != null);

  @override
  final String otherUserID;

  @override
  String toString() {
    return 'UserActorEvent.currentUserBlockedThePair(otherUserID: $otherUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Blocked &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUserID);

  @override
  _$BlockedCopyWith<_Blocked> get copyWith =>
      __$BlockedCopyWithImpl<_Blocked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result currentUserBlockedThePair(String otherUserID),
    @required Result currentUserUnblockedThePair(String otherUserID),
    @required Result checkIfCurrentUserBlockedThePair(String otherUserID),
    @required Result checkIfThePairBlockedCurrentUser(String otherUserID),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return currentUserBlockedThePair(otherUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result currentUserBlockedThePair(String otherUserID),
    Result currentUserUnblockedThePair(String otherUserID),
    Result checkIfCurrentUserBlockedThePair(String otherUserID),
    Result checkIfThePairBlockedCurrentUser(String otherUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentUserBlockedThePair != null) {
      return currentUserBlockedThePair(otherUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result currentUserBlockedThePair(_Blocked value),
    @required Result currentUserUnblockedThePair(_Unblocked value),
    @required
        Result checkIfCurrentUserBlockedThePair(
            CheckIfCurrentUserBlockedThePair value),
    @required
        Result checkIfThePairBlockedCurrentUser(
            CheckIfThePairBlockedCurrentUser value),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return currentUserBlockedThePair(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result currentUserBlockedThePair(_Blocked value),
    Result currentUserUnblockedThePair(_Unblocked value),
    Result checkIfCurrentUserBlockedThePair(
        CheckIfCurrentUserBlockedThePair value),
    Result checkIfThePairBlockedCurrentUser(
        CheckIfThePairBlockedCurrentUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentUserBlockedThePair != null) {
      return currentUserBlockedThePair(this);
    }
    return orElse();
  }
}

abstract class _Blocked implements UserActorEvent {
  const factory _Blocked({@required String otherUserID}) = _$_Blocked;

  @override
  String get otherUserID;
  @override
  _$BlockedCopyWith<_Blocked> get copyWith;
}

abstract class _$UnblockedCopyWith<$Res>
    implements $UserActorEventCopyWith<$Res> {
  factory _$UnblockedCopyWith(
          _Unblocked value, $Res Function(_Unblocked) then) =
      __$UnblockedCopyWithImpl<$Res>;
  @override
  $Res call({String otherUserID});
}

class __$UnblockedCopyWithImpl<$Res> extends _$UserActorEventCopyWithImpl<$Res>
    implements _$UnblockedCopyWith<$Res> {
  __$UnblockedCopyWithImpl(_Unblocked _value, $Res Function(_Unblocked) _then)
      : super(_value, (v) => _then(v as _Unblocked));

  @override
  _Unblocked get _value => super._value as _Unblocked;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(_Unblocked(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as String,
    ));
  }
}

class _$_Unblocked implements _Unblocked {
  const _$_Unblocked({@required this.otherUserID})
      : assert(otherUserID != null);

  @override
  final String otherUserID;

  @override
  String toString() {
    return 'UserActorEvent.currentUserUnblockedThePair(otherUserID: $otherUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unblocked &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUserID);

  @override
  _$UnblockedCopyWith<_Unblocked> get copyWith =>
      __$UnblockedCopyWithImpl<_Unblocked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result currentUserBlockedThePair(String otherUserID),
    @required Result currentUserUnblockedThePair(String otherUserID),
    @required Result checkIfCurrentUserBlockedThePair(String otherUserID),
    @required Result checkIfThePairBlockedCurrentUser(String otherUserID),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return currentUserUnblockedThePair(otherUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result currentUserBlockedThePair(String otherUserID),
    Result currentUserUnblockedThePair(String otherUserID),
    Result checkIfCurrentUserBlockedThePair(String otherUserID),
    Result checkIfThePairBlockedCurrentUser(String otherUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentUserUnblockedThePair != null) {
      return currentUserUnblockedThePair(otherUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result currentUserBlockedThePair(_Blocked value),
    @required Result currentUserUnblockedThePair(_Unblocked value),
    @required
        Result checkIfCurrentUserBlockedThePair(
            CheckIfCurrentUserBlockedThePair value),
    @required
        Result checkIfThePairBlockedCurrentUser(
            CheckIfThePairBlockedCurrentUser value),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return currentUserUnblockedThePair(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result currentUserBlockedThePair(_Blocked value),
    Result currentUserUnblockedThePair(_Unblocked value),
    Result checkIfCurrentUserBlockedThePair(
        CheckIfCurrentUserBlockedThePair value),
    Result checkIfThePairBlockedCurrentUser(
        CheckIfThePairBlockedCurrentUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (currentUserUnblockedThePair != null) {
      return currentUserUnblockedThePair(this);
    }
    return orElse();
  }
}

abstract class _Unblocked implements UserActorEvent {
  const factory _Unblocked({@required String otherUserID}) = _$_Unblocked;

  @override
  String get otherUserID;
  @override
  _$UnblockedCopyWith<_Unblocked> get copyWith;
}

abstract class $CheckIfCurrentUserBlockedThePairCopyWith<$Res>
    implements $UserActorEventCopyWith<$Res> {
  factory $CheckIfCurrentUserBlockedThePairCopyWith(
          CheckIfCurrentUserBlockedThePair value,
          $Res Function(CheckIfCurrentUserBlockedThePair) then) =
      _$CheckIfCurrentUserBlockedThePairCopyWithImpl<$Res>;
  @override
  $Res call({String otherUserID});
}

class _$CheckIfCurrentUserBlockedThePairCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res>
    implements $CheckIfCurrentUserBlockedThePairCopyWith<$Res> {
  _$CheckIfCurrentUserBlockedThePairCopyWithImpl(
      CheckIfCurrentUserBlockedThePair _value,
      $Res Function(CheckIfCurrentUserBlockedThePair) _then)
      : super(_value, (v) => _then(v as CheckIfCurrentUserBlockedThePair));

  @override
  CheckIfCurrentUserBlockedThePair get _value =>
      super._value as CheckIfCurrentUserBlockedThePair;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(CheckIfCurrentUserBlockedThePair(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as String,
    ));
  }
}

class _$CheckIfCurrentUserBlockedThePair
    implements CheckIfCurrentUserBlockedThePair {
  const _$CheckIfCurrentUserBlockedThePair({@required this.otherUserID})
      : assert(otherUserID != null);

  @override
  final String otherUserID;

  @override
  String toString() {
    return 'UserActorEvent.checkIfCurrentUserBlockedThePair(otherUserID: $otherUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckIfCurrentUserBlockedThePair &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUserID);

  @override
  $CheckIfCurrentUserBlockedThePairCopyWith<CheckIfCurrentUserBlockedThePair>
      get copyWith => _$CheckIfCurrentUserBlockedThePairCopyWithImpl<
          CheckIfCurrentUserBlockedThePair>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result currentUserBlockedThePair(String otherUserID),
    @required Result currentUserUnblockedThePair(String otherUserID),
    @required Result checkIfCurrentUserBlockedThePair(String otherUserID),
    @required Result checkIfThePairBlockedCurrentUser(String otherUserID),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return checkIfCurrentUserBlockedThePair(otherUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result currentUserBlockedThePair(String otherUserID),
    Result currentUserUnblockedThePair(String otherUserID),
    Result checkIfCurrentUserBlockedThePair(String otherUserID),
    Result checkIfThePairBlockedCurrentUser(String otherUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIfCurrentUserBlockedThePair != null) {
      return checkIfCurrentUserBlockedThePair(otherUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result currentUserBlockedThePair(_Blocked value),
    @required Result currentUserUnblockedThePair(_Unblocked value),
    @required
        Result checkIfCurrentUserBlockedThePair(
            CheckIfCurrentUserBlockedThePair value),
    @required
        Result checkIfThePairBlockedCurrentUser(
            CheckIfThePairBlockedCurrentUser value),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return checkIfCurrentUserBlockedThePair(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result currentUserBlockedThePair(_Blocked value),
    Result currentUserUnblockedThePair(_Unblocked value),
    Result checkIfCurrentUserBlockedThePair(
        CheckIfCurrentUserBlockedThePair value),
    Result checkIfThePairBlockedCurrentUser(
        CheckIfThePairBlockedCurrentUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIfCurrentUserBlockedThePair != null) {
      return checkIfCurrentUserBlockedThePair(this);
    }
    return orElse();
  }
}

abstract class CheckIfCurrentUserBlockedThePair implements UserActorEvent {
  const factory CheckIfCurrentUserBlockedThePair(
      {@required String otherUserID}) = _$CheckIfCurrentUserBlockedThePair;

  @override
  String get otherUserID;
  @override
  $CheckIfCurrentUserBlockedThePairCopyWith<CheckIfCurrentUserBlockedThePair>
      get copyWith;
}

abstract class $CheckIfThePairBlockedCurrentUserCopyWith<$Res>
    implements $UserActorEventCopyWith<$Res> {
  factory $CheckIfThePairBlockedCurrentUserCopyWith(
          CheckIfThePairBlockedCurrentUser value,
          $Res Function(CheckIfThePairBlockedCurrentUser) then) =
      _$CheckIfThePairBlockedCurrentUserCopyWithImpl<$Res>;
  @override
  $Res call({String otherUserID});
}

class _$CheckIfThePairBlockedCurrentUserCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res>
    implements $CheckIfThePairBlockedCurrentUserCopyWith<$Res> {
  _$CheckIfThePairBlockedCurrentUserCopyWithImpl(
      CheckIfThePairBlockedCurrentUser _value,
      $Res Function(CheckIfThePairBlockedCurrentUser) _then)
      : super(_value, (v) => _then(v as CheckIfThePairBlockedCurrentUser));

  @override
  CheckIfThePairBlockedCurrentUser get _value =>
      super._value as CheckIfThePairBlockedCurrentUser;

  @override
  $Res call({
    Object otherUserID = freezed,
  }) {
    return _then(CheckIfThePairBlockedCurrentUser(
      otherUserID:
          otherUserID == freezed ? _value.otherUserID : otherUserID as String,
    ));
  }
}

class _$CheckIfThePairBlockedCurrentUser
    implements CheckIfThePairBlockedCurrentUser {
  const _$CheckIfThePairBlockedCurrentUser({@required this.otherUserID})
      : assert(otherUserID != null);

  @override
  final String otherUserID;

  @override
  String toString() {
    return 'UserActorEvent.checkIfThePairBlockedCurrentUser(otherUserID: $otherUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckIfThePairBlockedCurrentUser &&
            (identical(other.otherUserID, otherUserID) ||
                const DeepCollectionEquality()
                    .equals(other.otherUserID, otherUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otherUserID);

  @override
  $CheckIfThePairBlockedCurrentUserCopyWith<CheckIfThePairBlockedCurrentUser>
      get copyWith => _$CheckIfThePairBlockedCurrentUserCopyWithImpl<
          CheckIfThePairBlockedCurrentUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result currentUserBlockedThePair(String otherUserID),
    @required Result currentUserUnblockedThePair(String otherUserID),
    @required Result checkIfCurrentUserBlockedThePair(String otherUserID),
    @required Result checkIfThePairBlockedCurrentUser(String otherUserID),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return checkIfThePairBlockedCurrentUser(otherUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result currentUserBlockedThePair(String otherUserID),
    Result currentUserUnblockedThePair(String otherUserID),
    Result checkIfCurrentUserBlockedThePair(String otherUserID),
    Result checkIfThePairBlockedCurrentUser(String otherUserID),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIfThePairBlockedCurrentUser != null) {
      return checkIfThePairBlockedCurrentUser(otherUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result currentUserBlockedThePair(_Blocked value),
    @required Result currentUserUnblockedThePair(_Unblocked value),
    @required
        Result checkIfCurrentUserBlockedThePair(
            CheckIfCurrentUserBlockedThePair value),
    @required
        Result checkIfThePairBlockedCurrentUser(
            CheckIfThePairBlockedCurrentUser value),
  }) {
    assert(currentUserBlockedThePair != null);
    assert(currentUserUnblockedThePair != null);
    assert(checkIfCurrentUserBlockedThePair != null);
    assert(checkIfThePairBlockedCurrentUser != null);
    return checkIfThePairBlockedCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result currentUserBlockedThePair(_Blocked value),
    Result currentUserUnblockedThePair(_Unblocked value),
    Result checkIfCurrentUserBlockedThePair(
        CheckIfCurrentUserBlockedThePair value),
    Result checkIfThePairBlockedCurrentUser(
        CheckIfThePairBlockedCurrentUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIfThePairBlockedCurrentUser != null) {
      return checkIfThePairBlockedCurrentUser(this);
    }
    return orElse();
  }
}

abstract class CheckIfThePairBlockedCurrentUser implements UserActorEvent {
  const factory CheckIfThePairBlockedCurrentUser(
      {@required String otherUserID}) = _$CheckIfThePairBlockedCurrentUser;

  @override
  String get otherUserID;
  @override
  $CheckIfThePairBlockedCurrentUserCopyWith<CheckIfThePairBlockedCurrentUser>
      get copyWith;
}

class _$UserActorStateTearOff {
  const _$UserActorStateTearOff();

  _UserActorState call(
      {@required
          bool currentUserBlockedThePair,
      @required
          bool pairBlockedCurrentUser,
      @required
          bool isActionInProgress,
      @required
          Option<UserActorFailure> blockActionFailureOption,
      @required
          Option<Either<UserActorFailure, bool>> userStateCheckFailureOrState,
      @required
          bool isCurrentUserStateChecked}) {
    return _UserActorState(
      currentUserBlockedThePair: currentUserBlockedThePair,
      pairBlockedCurrentUser: pairBlockedCurrentUser,
      isActionInProgress: isActionInProgress,
      blockActionFailureOption: blockActionFailureOption,
      userStateCheckFailureOrState: userStateCheckFailureOrState,
      isCurrentUserStateChecked: isCurrentUserStateChecked,
    );
  }
}

// ignore: unused_element
const $UserActorState = _$UserActorStateTearOff();

mixin _$UserActorState {
  bool get currentUserBlockedThePair;
  bool get pairBlockedCurrentUser;
  bool get isActionInProgress;
  Option<UserActorFailure> get blockActionFailureOption;
  Option<Either<UserActorFailure, bool>> get userStateCheckFailureOrState;
  bool get isCurrentUserStateChecked;

  $UserActorStateCopyWith<UserActorState> get copyWith;
}

abstract class $UserActorStateCopyWith<$Res> {
  factory $UserActorStateCopyWith(
          UserActorState value, $Res Function(UserActorState) then) =
      _$UserActorStateCopyWithImpl<$Res>;
  $Res call(
      {bool currentUserBlockedThePair,
      bool pairBlockedCurrentUser,
      bool isActionInProgress,
      Option<UserActorFailure> blockActionFailureOption,
      Option<Either<UserActorFailure, bool>> userStateCheckFailureOrState,
      bool isCurrentUserStateChecked});
}

class _$UserActorStateCopyWithImpl<$Res>
    implements $UserActorStateCopyWith<$Res> {
  _$UserActorStateCopyWithImpl(this._value, this._then);

  final UserActorState _value;
  // ignore: unused_field
  final $Res Function(UserActorState) _then;

  @override
  $Res call({
    Object currentUserBlockedThePair = freezed,
    Object pairBlockedCurrentUser = freezed,
    Object isActionInProgress = freezed,
    Object blockActionFailureOption = freezed,
    Object userStateCheckFailureOrState = freezed,
    Object isCurrentUserStateChecked = freezed,
  }) {
    return _then(_value.copyWith(
      currentUserBlockedThePair: currentUserBlockedThePair == freezed
          ? _value.currentUserBlockedThePair
          : currentUserBlockedThePair as bool,
      pairBlockedCurrentUser: pairBlockedCurrentUser == freezed
          ? _value.pairBlockedCurrentUser
          : pairBlockedCurrentUser as bool,
      isActionInProgress: isActionInProgress == freezed
          ? _value.isActionInProgress
          : isActionInProgress as bool,
      blockActionFailureOption: blockActionFailureOption == freezed
          ? _value.blockActionFailureOption
          : blockActionFailureOption as Option<UserActorFailure>,
      userStateCheckFailureOrState: userStateCheckFailureOrState == freezed
          ? _value.userStateCheckFailureOrState
          : userStateCheckFailureOrState
              as Option<Either<UserActorFailure, bool>>,
      isCurrentUserStateChecked: isCurrentUserStateChecked == freezed
          ? _value.isCurrentUserStateChecked
          : isCurrentUserStateChecked as bool,
    ));
  }
}

abstract class _$UserActorStateCopyWith<$Res>
    implements $UserActorStateCopyWith<$Res> {
  factory _$UserActorStateCopyWith(
          _UserActorState value, $Res Function(_UserActorState) then) =
      __$UserActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool currentUserBlockedThePair,
      bool pairBlockedCurrentUser,
      bool isActionInProgress,
      Option<UserActorFailure> blockActionFailureOption,
      Option<Either<UserActorFailure, bool>> userStateCheckFailureOrState,
      bool isCurrentUserStateChecked});
}

class __$UserActorStateCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res>
    implements _$UserActorStateCopyWith<$Res> {
  __$UserActorStateCopyWithImpl(
      _UserActorState _value, $Res Function(_UserActorState) _then)
      : super(_value, (v) => _then(v as _UserActorState));

  @override
  _UserActorState get _value => super._value as _UserActorState;

  @override
  $Res call({
    Object currentUserBlockedThePair = freezed,
    Object pairBlockedCurrentUser = freezed,
    Object isActionInProgress = freezed,
    Object blockActionFailureOption = freezed,
    Object userStateCheckFailureOrState = freezed,
    Object isCurrentUserStateChecked = freezed,
  }) {
    return _then(_UserActorState(
      currentUserBlockedThePair: currentUserBlockedThePair == freezed
          ? _value.currentUserBlockedThePair
          : currentUserBlockedThePair as bool,
      pairBlockedCurrentUser: pairBlockedCurrentUser == freezed
          ? _value.pairBlockedCurrentUser
          : pairBlockedCurrentUser as bool,
      isActionInProgress: isActionInProgress == freezed
          ? _value.isActionInProgress
          : isActionInProgress as bool,
      blockActionFailureOption: blockActionFailureOption == freezed
          ? _value.blockActionFailureOption
          : blockActionFailureOption as Option<UserActorFailure>,
      userStateCheckFailureOrState: userStateCheckFailureOrState == freezed
          ? _value.userStateCheckFailureOrState
          : userStateCheckFailureOrState
              as Option<Either<UserActorFailure, bool>>,
      isCurrentUserStateChecked: isCurrentUserStateChecked == freezed
          ? _value.isCurrentUserStateChecked
          : isCurrentUserStateChecked as bool,
    ));
  }
}

class _$_UserActorState implements _UserActorState {
  const _$_UserActorState(
      {@required this.currentUserBlockedThePair,
      @required this.pairBlockedCurrentUser,
      @required this.isActionInProgress,
      @required this.blockActionFailureOption,
      @required this.userStateCheckFailureOrState,
      @required this.isCurrentUserStateChecked})
      : assert(currentUserBlockedThePair != null),
        assert(pairBlockedCurrentUser != null),
        assert(isActionInProgress != null),
        assert(blockActionFailureOption != null),
        assert(userStateCheckFailureOrState != null),
        assert(isCurrentUserStateChecked != null);

  @override
  final bool currentUserBlockedThePair;
  @override
  final bool pairBlockedCurrentUser;
  @override
  final bool isActionInProgress;
  @override
  final Option<UserActorFailure> blockActionFailureOption;
  @override
  final Option<Either<UserActorFailure, bool>> userStateCheckFailureOrState;
  @override
  final bool isCurrentUserStateChecked;

  @override
  String toString() {
    return 'UserActorState(currentUserBlockedThePair: $currentUserBlockedThePair, pairBlockedCurrentUser: $pairBlockedCurrentUser, isActionInProgress: $isActionInProgress, blockActionFailureOption: $blockActionFailureOption, userStateCheckFailureOrState: $userStateCheckFailureOrState, isCurrentUserStateChecked: $isCurrentUserStateChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserActorState &&
            (identical(other.currentUserBlockedThePair,
                    currentUserBlockedThePair) ||
                const DeepCollectionEquality().equals(
                    other.currentUserBlockedThePair,
                    currentUserBlockedThePair)) &&
            (identical(other.pairBlockedCurrentUser, pairBlockedCurrentUser) ||
                const DeepCollectionEquality().equals(
                    other.pairBlockedCurrentUser, pairBlockedCurrentUser)) &&
            (identical(other.isActionInProgress, isActionInProgress) ||
                const DeepCollectionEquality()
                    .equals(other.isActionInProgress, isActionInProgress)) &&
            (identical(
                    other.blockActionFailureOption, blockActionFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.blockActionFailureOption,
                    blockActionFailureOption)) &&
            (identical(other.userStateCheckFailureOrState,
                    userStateCheckFailureOrState) ||
                const DeepCollectionEquality().equals(
                    other.userStateCheckFailureOrState,
                    userStateCheckFailureOrState)) &&
            (identical(other.isCurrentUserStateChecked,
                    isCurrentUserStateChecked) ||
                const DeepCollectionEquality().equals(
                    other.isCurrentUserStateChecked,
                    isCurrentUserStateChecked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentUserBlockedThePair) ^
      const DeepCollectionEquality().hash(pairBlockedCurrentUser) ^
      const DeepCollectionEquality().hash(isActionInProgress) ^
      const DeepCollectionEquality().hash(blockActionFailureOption) ^
      const DeepCollectionEquality().hash(userStateCheckFailureOrState) ^
      const DeepCollectionEquality().hash(isCurrentUserStateChecked);

  @override
  _$UserActorStateCopyWith<_UserActorState> get copyWith =>
      __$UserActorStateCopyWithImpl<_UserActorState>(this, _$identity);
}

abstract class _UserActorState implements UserActorState {
  const factory _UserActorState(
      {@required
          bool currentUserBlockedThePair,
      @required
          bool pairBlockedCurrentUser,
      @required
          bool isActionInProgress,
      @required
          Option<UserActorFailure> blockActionFailureOption,
      @required
          Option<Either<UserActorFailure, bool>> userStateCheckFailureOrState,
      @required
          bool isCurrentUserStateChecked}) = _$_UserActorState;

  @override
  bool get currentUserBlockedThePair;
  @override
  bool get pairBlockedCurrentUser;
  @override
  bool get isActionInProgress;
  @override
  Option<UserActorFailure> get blockActionFailureOption;
  @override
  Option<Either<UserActorFailure, bool>> get userStateCheckFailureOrState;
  @override
  bool get isCurrentUserStateChecked;
  @override
  _$UserActorStateCopyWith<_UserActorState> get copyWith;
}
