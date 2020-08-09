// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_actor_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserActorFailureTearOff {
  const _$UserActorFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  InternetConnectionFailure internetConnectionFailure() {
    return const InternetConnectionFailure();
  }
}

// ignore: unused_element
const $UserActorFailure = _$UserActorFailureTearOff();

mixin _$UserActorFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result internetConnectionFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result internetConnectionFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result internetConnectionFailure(InternetConnectionFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result internetConnectionFailure(InternetConnectionFailure value),
    @required Result orElse(),
  });
}

abstract class $UserActorFailureCopyWith<$Res> {
  factory $UserActorFailureCopyWith(
          UserActorFailure value, $Res Function(UserActorFailure) then) =
      _$UserActorFailureCopyWithImpl<$Res>;
}

class _$UserActorFailureCopyWithImpl<$Res>
    implements $UserActorFailureCopyWith<$Res> {
  _$UserActorFailureCopyWithImpl(this._value, this._then);

  final UserActorFailure _value;
  // ignore: unused_field
  final $Res Function(UserActorFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res>
    extends _$UserActorFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'UserActorFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result internetConnectionFailure(),
  }) {
    assert(serverError != null);
    assert(internetConnectionFailure != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result internetConnectionFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result internetConnectionFailure(InternetConnectionFailure value),
  }) {
    assert(serverError != null);
    assert(internetConnectionFailure != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result internetConnectionFailure(InternetConnectionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements UserActorFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $InternetConnectionFailureCopyWith<$Res> {
  factory $InternetConnectionFailureCopyWith(InternetConnectionFailure value,
          $Res Function(InternetConnectionFailure) then) =
      _$InternetConnectionFailureCopyWithImpl<$Res>;
}

class _$InternetConnectionFailureCopyWithImpl<$Res>
    extends _$UserActorFailureCopyWithImpl<$Res>
    implements $InternetConnectionFailureCopyWith<$Res> {
  _$InternetConnectionFailureCopyWithImpl(InternetConnectionFailure _value,
      $Res Function(InternetConnectionFailure) _then)
      : super(_value, (v) => _then(v as InternetConnectionFailure));

  @override
  InternetConnectionFailure get _value =>
      super._value as InternetConnectionFailure;
}

class _$InternetConnectionFailure implements InternetConnectionFailure {
  const _$InternetConnectionFailure();

  @override
  String toString() {
    return 'UserActorFailure.internetConnectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternetConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result internetConnectionFailure(),
  }) {
    assert(serverError != null);
    assert(internetConnectionFailure != null);
    return internetConnectionFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result internetConnectionFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetConnectionFailure != null) {
      return internetConnectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result internetConnectionFailure(InternetConnectionFailure value),
  }) {
    assert(serverError != null);
    assert(internetConnectionFailure != null);
    return internetConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result internetConnectionFailure(InternetConnectionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internetConnectionFailure != null) {
      return internetConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class InternetConnectionFailure implements UserActorFailure {
  const factory InternetConnectionFailure() = _$InternetConnectionFailure;
}
