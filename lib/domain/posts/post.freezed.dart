// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {@required UniqueId id,
      @required UniqueId creatorID,
      @required String price,
      @required String category,
      @required String title,
      @required String detail,
      @required String city,
      @required String town,
      @required String day,
      @required String month,
      @required String year,
      @required String hour,
      @required String minute,
      @required String detailUrl}) {
    return _Post(
      id: id,
      creatorID: creatorID,
      price: price,
      category: category,
      title: title,
      detail: detail,
      city: city,
      town: town,
      day: day,
      month: month,
      year: year,
      hour: hour,
      minute: minute,
      detailUrl: detailUrl,
    );
  }
}

// ignore: unused_element
const $Post = _$PostTearOff();

mixin _$Post {
  UniqueId get id;
  UniqueId get creatorID;
  String get price;
  String get category;
  String get title;
  String get detail;
  String get city;
  String get town;
  String get day;
  String get month;
  String get year;
  String get hour;
  String get minute;
  String get detailUrl;

  $PostCopyWith<Post> get copyWith;
}

abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId creatorID,
      String price,
      String category,
      String title,
      String detail,
      String city,
      String town,
      String day,
      String month,
      String year,
      String hour,
      String minute,
      String detailUrl});
}

class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object id = freezed,
    Object creatorID = freezed,
    Object price = freezed,
    Object category = freezed,
    Object title = freezed,
    Object detail = freezed,
    Object city = freezed,
    Object town = freezed,
    Object day = freezed,
    Object month = freezed,
    Object year = freezed,
    Object hour = freezed,
    Object minute = freezed,
    Object detailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      creatorID:
          creatorID == freezed ? _value.creatorID : creatorID as UniqueId,
      price: price == freezed ? _value.price : price as String,
      category: category == freezed ? _value.category : category as String,
      title: title == freezed ? _value.title : title as String,
      detail: detail == freezed ? _value.detail : detail as String,
      city: city == freezed ? _value.city : city as String,
      town: town == freezed ? _value.town : town as String,
      day: day == freezed ? _value.day : day as String,
      month: month == freezed ? _value.month : month as String,
      year: year == freezed ? _value.year : year as String,
      hour: hour == freezed ? _value.hour : hour as String,
      minute: minute == freezed ? _value.minute : minute as String,
      detailUrl: detailUrl == freezed ? _value.detailUrl : detailUrl as String,
    ));
  }
}

abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId creatorID,
      String price,
      String category,
      String title,
      String detail,
      String city,
      String town,
      String day,
      String month,
      String year,
      String hour,
      String minute,
      String detailUrl});
}

class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object id = freezed,
    Object creatorID = freezed,
    Object price = freezed,
    Object category = freezed,
    Object title = freezed,
    Object detail = freezed,
    Object city = freezed,
    Object town = freezed,
    Object day = freezed,
    Object month = freezed,
    Object year = freezed,
    Object hour = freezed,
    Object minute = freezed,
    Object detailUrl = freezed,
  }) {
    return _then(_Post(
      id: id == freezed ? _value.id : id as UniqueId,
      creatorID:
          creatorID == freezed ? _value.creatorID : creatorID as UniqueId,
      price: price == freezed ? _value.price : price as String,
      category: category == freezed ? _value.category : category as String,
      title: title == freezed ? _value.title : title as String,
      detail: detail == freezed ? _value.detail : detail as String,
      city: city == freezed ? _value.city : city as String,
      town: town == freezed ? _value.town : town as String,
      day: day == freezed ? _value.day : day as String,
      month: month == freezed ? _value.month : month as String,
      year: year == freezed ? _value.year : year as String,
      hour: hour == freezed ? _value.hour : hour as String,
      minute: minute == freezed ? _value.minute : minute as String,
      detailUrl: detailUrl == freezed ? _value.detailUrl : detailUrl as String,
    ));
  }
}

class _$_Post extends _Post with DiagnosticableTreeMixin {
  const _$_Post(
      {@required this.id,
      @required this.creatorID,
      @required this.price,
      @required this.category,
      @required this.title,
      @required this.detail,
      @required this.city,
      @required this.town,
      @required this.day,
      @required this.month,
      @required this.year,
      @required this.hour,
      @required this.minute,
      @required this.detailUrl})
      : assert(id != null),
        assert(creatorID != null),
        assert(price != null),
        assert(category != null),
        assert(title != null),
        assert(detail != null),
        assert(city != null),
        assert(town != null),
        assert(day != null),
        assert(month != null),
        assert(year != null),
        assert(hour != null),
        assert(minute != null),
        assert(detailUrl != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId creatorID;
  @override
  final String price;
  @override
  final String category;
  @override
  final String title;
  @override
  final String detail;
  @override
  final String city;
  @override
  final String town;
  @override
  final String day;
  @override
  final String month;
  @override
  final String year;
  @override
  final String hour;
  @override
  final String minute;
  @override
  final String detailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Post(id: $id, creatorID: $creatorID, price: $price, category: $category, title: $title, detail: $detail, city: $city, town: $town, day: $day, month: $month, year: $year, hour: $hour, minute: $minute, detailUrl: $detailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Post'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('creatorID', creatorID))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('town', town))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('hour', hour))
      ..add(DiagnosticsProperty('minute', minute))
      ..add(DiagnosticsProperty('detailUrl', detailUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creatorID, creatorID) ||
                const DeepCollectionEquality()
                    .equals(other.creatorID, creatorID)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.town, town) ||
                const DeepCollectionEquality().equals(other.town, town)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.hour, hour) ||
                const DeepCollectionEquality().equals(other.hour, hour)) &&
            (identical(other.minute, minute) ||
                const DeepCollectionEquality().equals(other.minute, minute)) &&
            (identical(other.detailUrl, detailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.detailUrl, detailUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(creatorID) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(town) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(hour) ^
      const DeepCollectionEquality().hash(minute) ^
      const DeepCollectionEquality().hash(detailUrl);

  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);
}

abstract class _Post extends Post {
  const _Post._() : super._();
  const factory _Post(
      {@required UniqueId id,
      @required UniqueId creatorID,
      @required String price,
      @required String category,
      @required String title,
      @required String detail,
      @required String city,
      @required String town,
      @required String day,
      @required String month,
      @required String year,
      @required String hour,
      @required String minute,
      @required String detailUrl}) = _$_Post;

  @override
  UniqueId get id;
  @override
  UniqueId get creatorID;
  @override
  String get price;
  @override
  String get category;
  @override
  String get title;
  @override
  String get detail;
  @override
  String get city;
  @override
  String get town;
  @override
  String get day;
  @override
  String get month;
  @override
  String get year;
  @override
  String get hour;
  @override
  String get minute;
  @override
  String get detailUrl;
  @override
  _$PostCopyWith<_Post> get copyWith;
}
