// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_detail_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDetailDto _$UserDetailDtoFromJson(Map<String, dynamic> json) {
  return _UserDetailDto.fromJson(json);
}

class _$UserDetailDtoTearOff {
  const _$UserDetailDtoTearOff();

  _UserDetailDto call(
      {@required String id,
      @required String displayName,
      @required String photoURL}) {
    return _UserDetailDto(
      id: id,
      displayName: displayName,
      photoURL: photoURL,
    );
  }
}

// ignore: unused_element
const $UserDetailDto = _$UserDetailDtoTearOff();

mixin _$UserDetailDto {
  String get id;
  String get displayName;
  String get photoURL;

  Map<String, dynamic> toJson();
  $UserDetailDtoCopyWith<UserDetailDto> get copyWith;
}

abstract class $UserDetailDtoCopyWith<$Res> {
  factory $UserDetailDtoCopyWith(
          UserDetailDto value, $Res Function(UserDetailDto) then) =
      _$UserDetailDtoCopyWithImpl<$Res>;
  $Res call({String id, String displayName, String photoURL});
}

class _$UserDetailDtoCopyWithImpl<$Res>
    implements $UserDetailDtoCopyWith<$Res> {
  _$UserDetailDtoCopyWithImpl(this._value, this._then);

  final UserDetailDto _value;
  // ignore: unused_field
  final $Res Function(UserDetailDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
    ));
  }
}

abstract class _$UserDetailDtoCopyWith<$Res>
    implements $UserDetailDtoCopyWith<$Res> {
  factory _$UserDetailDtoCopyWith(
          _UserDetailDto value, $Res Function(_UserDetailDto) then) =
      __$UserDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String displayName, String photoURL});
}

class __$UserDetailDtoCopyWithImpl<$Res>
    extends _$UserDetailDtoCopyWithImpl<$Res>
    implements _$UserDetailDtoCopyWith<$Res> {
  __$UserDetailDtoCopyWithImpl(
      _UserDetailDto _value, $Res Function(_UserDetailDto) _then)
      : super(_value, (v) => _then(v as _UserDetailDto));

  @override
  _UserDetailDto get _value => super._value as _UserDetailDto;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object photoURL = freezed,
  }) {
    return _then(_UserDetailDto(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
    ));
  }
}

@JsonSerializable()
class _$_UserDetailDto implements _UserDetailDto {
  _$_UserDetailDto(
      {@required this.id, @required this.displayName, @required this.photoURL})
      : assert(id != null),
        assert(displayName != null),
        assert(photoURL != null);

  factory _$_UserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDetailDtoFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String photoURL;

  @override
  String toString() {
    return 'UserDetailDto(id: $id, displayName: $displayName, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailDto &&
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
  _$UserDetailDtoCopyWith<_UserDetailDto> get copyWith =>
      __$UserDetailDtoCopyWithImpl<_UserDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDetailDtoToJson(this);
  }
}

abstract class _UserDetailDto implements UserDetailDto {
  factory _UserDetailDto(
      {@required String id,
      @required String displayName,
      @required String photoURL}) = _$_UserDetailDto;

  factory _UserDetailDto.fromJson(Map<String, dynamic> json) =
      _$_UserDetailDto.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  String get photoURL;
  @override
  _$UserDetailDtoCopyWith<_UserDetailDto> get copyWith;
}
