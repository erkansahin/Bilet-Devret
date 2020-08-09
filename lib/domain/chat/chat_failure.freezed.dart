// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chat_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChatFailureTearOff {
  const _$ChatFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  BlockedUserFailure blockedUser() {
    return const BlockedUserFailure();
  }
}

// ignore: unused_element
const $ChatFailure = _$ChatFailureTearOff();

mixin _$ChatFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result blockedUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result blockedUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result blockedUser(BlockedUserFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result blockedUser(BlockedUserFailure value),
    @required Result orElse(),
  });
}

abstract class $ChatFailureCopyWith<$Res> {
  factory $ChatFailureCopyWith(
          ChatFailure value, $Res Function(ChatFailure) then) =
      _$ChatFailureCopyWithImpl<$Res>;
}

class _$ChatFailureCopyWithImpl<$Res> implements $ChatFailureCopyWith<$Res> {
  _$ChatFailureCopyWithImpl(this._value, this._then);

  final ChatFailure _value;
  // ignore: unused_field
  final $Res Function(ChatFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$ChatFailureCopyWithImpl<$Res>
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
    return 'ChatFailure.serverError()';
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
    @required Result blockedUser(),
  }) {
    assert(serverError != null);
    assert(blockedUser != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result blockedUser(),
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
    @required Result blockedUser(BlockedUserFailure value),
  }) {
    assert(serverError != null);
    assert(blockedUser != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result blockedUser(BlockedUserFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ChatFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $BlockedUserFailureCopyWith<$Res> {
  factory $BlockedUserFailureCopyWith(
          BlockedUserFailure value, $Res Function(BlockedUserFailure) then) =
      _$BlockedUserFailureCopyWithImpl<$Res>;
}

class _$BlockedUserFailureCopyWithImpl<$Res>
    extends _$ChatFailureCopyWithImpl<$Res>
    implements $BlockedUserFailureCopyWith<$Res> {
  _$BlockedUserFailureCopyWithImpl(
      BlockedUserFailure _value, $Res Function(BlockedUserFailure) _then)
      : super(_value, (v) => _then(v as BlockedUserFailure));

  @override
  BlockedUserFailure get _value => super._value as BlockedUserFailure;
}

class _$BlockedUserFailure implements BlockedUserFailure {
  const _$BlockedUserFailure();

  @override
  String toString() {
    return 'ChatFailure.blockedUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BlockedUserFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result blockedUser(),
  }) {
    assert(serverError != null);
    assert(blockedUser != null);
    return blockedUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result blockedUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockedUser != null) {
      return blockedUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result blockedUser(BlockedUserFailure value),
  }) {
    assert(serverError != null);
    assert(blockedUser != null);
    return blockedUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result blockedUser(BlockedUserFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockedUser != null) {
      return blockedUser(this);
    }
    return orElse();
  }
}

abstract class BlockedUserFailure implements ChatFailure {
  const factory BlockedUserFailure() = _$BlockedUserFailure;
}
