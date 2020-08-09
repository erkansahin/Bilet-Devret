// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostActorEventTearOff {
  const _$PostActorEventTearOff();

  _Deleted deleted(Post post) {
    return _Deleted(
      post,
    );
  }
}

// ignore: unused_element
const $PostActorEvent = _$PostActorEventTearOff();

mixin _$PostActorEvent {
  Post get post;

  $PostActorEventCopyWith<PostActorEvent> get copyWith;
}

abstract class $PostActorEventCopyWith<$Res> {
  factory $PostActorEventCopyWith(
          PostActorEvent value, $Res Function(PostActorEvent) then) =
      _$PostActorEventCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

class _$PostActorEventCopyWithImpl<$Res>
    implements $PostActorEventCopyWith<$Res> {
  _$PostActorEventCopyWithImpl(this._value, this._then);

  final PostActorEvent _value;
  // ignore: unused_field
  final $Res Function(PostActorEvent) _then;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed ? _value.post : post as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res>
    implements $PostActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

class __$DeletedCopyWithImpl<$Res> extends _$PostActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(_Deleted(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostActorEvent.deleted(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);
}

abstract class _Deleted implements PostActorEvent {
  const factory _Deleted(Post post) = _$_Deleted;

  @override
  Post get post;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$PostActorStateTearOff {
  const _$PostActorStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

  DeleteFailure deleteFailure(PostFailure postFailure) {
    return DeleteFailure(
      postFailure,
    );
  }

  DeleteSuccess deleteSuccess() {
    return const DeleteSuccess();
  }
}

// ignore: unused_element
const $PostActorState = _$PostActorStateTearOff();

mixin _$PostActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(PostFailure postFailure),
    @required Result deleteSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(PostFailure postFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  });
}

abstract class $PostActorStateCopyWith<$Res> {
  factory $PostActorStateCopyWith(
          PostActorState value, $Res Function(PostActorState) then) =
      _$PostActorStateCopyWithImpl<$Res>;
}

class _$PostActorStateCopyWithImpl<$Res>
    implements $PostActorStateCopyWith<$Res> {
  _$PostActorStateCopyWithImpl(this._value, this._then);

  final PostActorState _value;
  // ignore: unused_field
  final $Res Function(PostActorState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$PostActorStateCopyWithImpl<$Res>
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
    return 'PostActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result deleteFailure(PostFailure postFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(PostFailure postFailure),
    Result deleteSuccess(),
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
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PostActorState {
  const factory Initial() = _$Initial;
}

abstract class $ActionInProgressCopyWith<$Res> {
  factory $ActionInProgressCopyWith(
          ActionInProgress value, $Res Function(ActionInProgress) then) =
      _$ActionInProgressCopyWithImpl<$Res>;
}

class _$ActionInProgressCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements $ActionInProgressCopyWith<$Res> {
  _$ActionInProgressCopyWithImpl(
      ActionInProgress _value, $Res Function(ActionInProgress) _then)
      : super(_value, (v) => _then(v as ActionInProgress));

  @override
  ActionInProgress get _value => super._value as ActionInProgress;
}

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'PostActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(PostFailure postFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(PostFailure postFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements PostActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

abstract class $DeleteFailureCopyWith<$Res> {
  factory $DeleteFailureCopyWith(
          DeleteFailure value, $Res Function(DeleteFailure) then) =
      _$DeleteFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

class _$DeleteFailureCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements $DeleteFailureCopyWith<$Res> {
  _$DeleteFailureCopyWithImpl(
      DeleteFailure _value, $Res Function(DeleteFailure) _then)
      : super(_value, (v) => _then(v as DeleteFailure));

  @override
  DeleteFailure get _value => super._value as DeleteFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(DeleteFailure(
      postFailure == freezed ? _value.postFailure : postFailure as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get postFailure {
    if (_value.postFailure == null) {
      return null;
    }
    return $PostFailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostActorState.deleteFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      _$DeleteFailureCopyWithImpl<DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(PostFailure postFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(PostFailure postFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements PostActorState {
  const factory DeleteFailure(PostFailure postFailure) = _$DeleteFailure;

  PostFailure get postFailure;
  $DeleteFailureCopyWith<DeleteFailure> get copyWith;
}

abstract class $DeleteSuccessCopyWith<$Res> {
  factory $DeleteSuccessCopyWith(
          DeleteSuccess value, $Res Function(DeleteSuccess) then) =
      _$DeleteSuccessCopyWithImpl<$Res>;
}

class _$DeleteSuccessCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements $DeleteSuccessCopyWith<$Res> {
  _$DeleteSuccessCopyWithImpl(
      DeleteSuccess _value, $Res Function(DeleteSuccess) _then)
      : super(_value, (v) => _then(v as DeleteSuccess));

  @override
  DeleteSuccess get _value => super._value as DeleteSuccess;
}

class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString() {
    return 'PostActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(PostFailure postFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(PostFailure postFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements PostActorState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}
