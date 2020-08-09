// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  Register register() {
    return const Register();
  }

  Deregister deregister({@required String currentUserID}) {
    return Deregister(
      currentUserID: currentUserID,
    );
  }

  Initialize initialize() {
    return const Initialize();
  }
}

// ignore: unused_element
const $NotificationEvent = _$NotificationEventTearOff();

mixin _$NotificationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(),
    @required Result deregister(String currentUserID),
    @required Result initialize(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(),
    Result deregister(String currentUserID),
    Result initialize(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(Register value),
    @required Result deregister(Deregister value),
    @required Result initialize(Initialize value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(Register value),
    Result deregister(Deregister value),
    Result initialize(Initialize value),
    @required Result orElse(),
  });
}

abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
}

class _$RegisterCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(Register _value, $Res Function(Register) _then)
      : super(_value, (v) => _then(v as Register));

  @override
  Register get _value => super._value as Register;
}

class _$Register implements Register {
  const _$Register();

  @override
  String toString() {
    return 'NotificationEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Register);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(),
    @required Result deregister(String currentUserID),
    @required Result initialize(),
  }) {
    assert(register != null);
    assert(deregister != null);
    assert(initialize != null);
    return register();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(),
    Result deregister(String currentUserID),
    Result initialize(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(Register value),
    @required Result deregister(Deregister value),
    @required Result initialize(Initialize value),
  }) {
    assert(register != null);
    assert(deregister != null);
    assert(initialize != null);
    return register(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(Register value),
    Result deregister(Deregister value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements NotificationEvent {
  const factory Register() = _$Register;
}

abstract class $DeregisterCopyWith<$Res> {
  factory $DeregisterCopyWith(
          Deregister value, $Res Function(Deregister) then) =
      _$DeregisterCopyWithImpl<$Res>;
  $Res call({String currentUserID});
}

class _$DeregisterCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $DeregisterCopyWith<$Res> {
  _$DeregisterCopyWithImpl(Deregister _value, $Res Function(Deregister) _then)
      : super(_value, (v) => _then(v as Deregister));

  @override
  Deregister get _value => super._value as Deregister;

  @override
  $Res call({
    Object currentUserID = freezed,
  }) {
    return _then(Deregister(
      currentUserID: currentUserID == freezed
          ? _value.currentUserID
          : currentUserID as String,
    ));
  }
}

class _$Deregister implements Deregister {
  const _$Deregister({@required this.currentUserID})
      : assert(currentUserID != null);

  @override
  final String currentUserID;

  @override
  String toString() {
    return 'NotificationEvent.deregister(currentUserID: $currentUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Deregister &&
            (identical(other.currentUserID, currentUserID) ||
                const DeepCollectionEquality()
                    .equals(other.currentUserID, currentUserID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentUserID);

  @override
  $DeregisterCopyWith<Deregister> get copyWith =>
      _$DeregisterCopyWithImpl<Deregister>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(),
    @required Result deregister(String currentUserID),
    @required Result initialize(),
  }) {
    assert(register != null);
    assert(deregister != null);
    assert(initialize != null);
    return deregister(currentUserID);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(),
    Result deregister(String currentUserID),
    Result initialize(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deregister != null) {
      return deregister(currentUserID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(Register value),
    @required Result deregister(Deregister value),
    @required Result initialize(Initialize value),
  }) {
    assert(register != null);
    assert(deregister != null);
    assert(initialize != null);
    return deregister(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(Register value),
    Result deregister(Deregister value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deregister != null) {
      return deregister(this);
    }
    return orElse();
  }
}

abstract class Deregister implements NotificationEvent {
  const factory Deregister({@required String currentUserID}) = _$Deregister;

  String get currentUserID;
  $DeregisterCopyWith<Deregister> get copyWith;
}

abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

class _$InitializeCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'NotificationEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(),
    @required Result deregister(String currentUserID),
    @required Result initialize(),
  }) {
    assert(register != null);
    assert(deregister != null);
    assert(initialize != null);
    return initialize();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(),
    Result deregister(String currentUserID),
    Result initialize(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(Register value),
    @required Result deregister(Deregister value),
    @required Result initialize(Initialize value),
  }) {
    assert(register != null);
    assert(deregister != null);
    assert(initialize != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(Register value),
    Result deregister(Deregister value),
    Result initialize(Initialize value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements NotificationEvent {
  const factory Initialize() = _$Initialize;
}

class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Registered registered() {
    return const Registered();
  }
}

// ignore: unused_element
const $NotificationState = _$NotificationStateTearOff();

mixin _$NotificationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registered(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registered(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result registered(Registered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result registered(Registered value),
    @required Result orElse(),
  });
}

abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
}

class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
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
    return 'NotificationState.initial()';
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
    @required Result registered(),
  }) {
    assert(initial != null);
    assert(registered != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registered(),
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
    @required Result registered(Registered value),
  }) {
    assert(initial != null);
    assert(registered != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result registered(Registered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NotificationState {
  const factory Initial() = _$Initial;
}

abstract class $RegisteredCopyWith<$Res> {
  factory $RegisteredCopyWith(
          Registered value, $Res Function(Registered) then) =
      _$RegisteredCopyWithImpl<$Res>;
}

class _$RegisteredCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements $RegisteredCopyWith<$Res> {
  _$RegisteredCopyWithImpl(Registered _value, $Res Function(Registered) _then)
      : super(_value, (v) => _then(v as Registered));

  @override
  Registered get _value => super._value as Registered;
}

class _$Registered implements Registered {
  const _$Registered();

  @override
  String toString() {
    return 'NotificationState.registered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Registered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registered(),
  }) {
    assert(initial != null);
    assert(registered != null);
    return registered();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result registered(Registered value),
  }) {
    assert(initial != null);
    assert(registered != null);
    return registered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result registered(Registered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class Registered implements NotificationState {
  const factory Registered() = _$Registered;
}
