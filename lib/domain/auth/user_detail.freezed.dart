// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserDetailTearOff {
  const _$UserDetailTearOff();

  _UserDetail call(
      {@required UniqueId id,
      @required String displayName,
      @required String photoURL}) {
    return _UserDetail(
      id: id,
      displayName: displayName,
      photoURL: photoURL,
    );
  }
}

// ignore: unused_element
const $UserDetail = _$UserDetailTearOff();

mixin _$UserDetail {
  UniqueId get id;
  String get displayName;
  String get photoURL;

  $UserDetailCopyWith<UserDetail> get copyWith;
}

abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res>;
  $Res call({UniqueId id, String displayName, String photoURL});
}

class _$UserDetailCopyWithImpl<$Res> implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  final UserDetail _value;
  // ignore: unused_field
  final $Res Function(UserDetail) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
    ));
  }
}

abstract class _$UserDetailCopyWith<$Res> implements $UserDetailCopyWith<$Res> {
  factory _$UserDetailCopyWith(
          _UserDetail value, $Res Function(_UserDetail) then) =
      __$UserDetailCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String displayName, String photoURL});
}

class __$UserDetailCopyWithImpl<$Res> extends _$UserDetailCopyWithImpl<$Res>
    implements _$UserDetailCopyWith<$Res> {
  __$UserDetailCopyWithImpl(
      _UserDetail _value, $Res Function(_UserDetail) _then)
      : super(_value, (v) => _then(v as _UserDetail));

  @override
  _UserDetail get _value => super._value as _UserDetail;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object photoURL = freezed,
  }) {
    return _then(_UserDetail(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
    ));
  }
}

class _$_UserDetail implements _UserDetail {
  const _$_UserDetail(
      {@required this.id, @required this.displayName, @required this.photoURL})
      : assert(id != null),
        assert(displayName != null),
        assert(photoURL != null);

  @override
  final UniqueId id;
  @override
  final String displayName;
  @override
  final String photoURL;

  @override
  String toString() {
    return 'UserDetail(id: $id, displayName: $displayName, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoURL);

  @override
  _$UserDetailCopyWith<_UserDetail> get copyWith =>
      __$UserDetailCopyWithImpl<_UserDetail>(this, _$identity);
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {@required UniqueId id,
      @required String displayName,
      @required String photoURL}) = _$_UserDetail;

  @override
  UniqueId get id;
  @override
  String get displayName;
  @override
  String get photoURL;
  @override
  _$UserDetailCopyWith<_UserDetail> get copyWith;
}
