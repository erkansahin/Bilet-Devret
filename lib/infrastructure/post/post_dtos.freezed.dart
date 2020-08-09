// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

class _$PostDtoTearOff {
  const _$PostDtoTearOff();

  _PostDto call(
      {@JsonKey(ignore: true) String id,
      @required String creatorID,
      @required String detail,
      @required String title,
      @required String city,
      @required String price,
      @required String category,
      @required String town,
      @required String day,
      @required String month,
      @required String year,
      @required String hour,
      @required String minute,
      @required String detailUrl,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _PostDto(
      id: id,
      creatorID: creatorID,
      detail: detail,
      title: title,
      city: city,
      price: price,
      category: category,
      town: town,
      day: day,
      month: month,
      year: year,
      hour: hour,
      minute: minute,
      detailUrl: detailUrl,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $PostDto = _$PostDtoTearOff();

mixin _$PostDto {
  @JsonKey(ignore: true)
  String get id;
  String get creatorID;
  String get detail;
  String get title;
  String get city;
  String get price;
  String get category;
  String get town;
  String get day;
  String get month;
  String get year;
  String get hour;
  String get minute;
  String get detailUrl;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $PostDtoCopyWith<PostDto> get copyWith;
}

abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String creatorID,
      String detail,
      String title,
      String city,
      String price,
      String category,
      String town,
      String day,
      String month,
      String year,
      String hour,
      String minute,
      String detailUrl,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$PostDtoCopyWithImpl<$Res> implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  final PostDto _value;
  // ignore: unused_field
  final $Res Function(PostDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object creatorID = freezed,
    Object detail = freezed,
    Object title = freezed,
    Object city = freezed,
    Object price = freezed,
    Object category = freezed,
    Object town = freezed,
    Object day = freezed,
    Object month = freezed,
    Object year = freezed,
    Object hour = freezed,
    Object minute = freezed,
    Object detailUrl = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      creatorID: creatorID == freezed ? _value.creatorID : creatorID as String,
      detail: detail == freezed ? _value.detail : detail as String,
      title: title == freezed ? _value.title : title as String,
      city: city == freezed ? _value.city : city as String,
      price: price == freezed ? _value.price : price as String,
      category: category == freezed ? _value.category : category as String,
      town: town == freezed ? _value.town : town as String,
      day: day == freezed ? _value.day : day as String,
      month: month == freezed ? _value.month : month as String,
      year: year == freezed ? _value.year : year as String,
      hour: hour == freezed ? _value.hour : hour as String,
      minute: minute == freezed ? _value.minute : minute as String,
      detailUrl: detailUrl == freezed ? _value.detailUrl : detailUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$PostDtoCopyWith(_PostDto value, $Res Function(_PostDto) then) =
      __$PostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String creatorID,
      String detail,
      String title,
      String city,
      String price,
      String category,
      String town,
      String day,
      String month,
      String year,
      String hour,
      String minute,
      String detailUrl,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$PostDtoCopyWithImpl<$Res> extends _$PostDtoCopyWithImpl<$Res>
    implements _$PostDtoCopyWith<$Res> {
  __$PostDtoCopyWithImpl(_PostDto _value, $Res Function(_PostDto) _then)
      : super(_value, (v) => _then(v as _PostDto));

  @override
  _PostDto get _value => super._value as _PostDto;

  @override
  $Res call({
    Object id = freezed,
    Object creatorID = freezed,
    Object detail = freezed,
    Object title = freezed,
    Object city = freezed,
    Object price = freezed,
    Object category = freezed,
    Object town = freezed,
    Object day = freezed,
    Object month = freezed,
    Object year = freezed,
    Object hour = freezed,
    Object minute = freezed,
    Object detailUrl = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_PostDto(
      id: id == freezed ? _value.id : id as String,
      creatorID: creatorID == freezed ? _value.creatorID : creatorID as String,
      detail: detail == freezed ? _value.detail : detail as String,
      title: title == freezed ? _value.title : title as String,
      city: city == freezed ? _value.city : city as String,
      price: price == freezed ? _value.price : price as String,
      category: category == freezed ? _value.category : category as String,
      town: town == freezed ? _value.town : town as String,
      day: day == freezed ? _value.day : day as String,
      month: month == freezed ? _value.month : month as String,
      year: year == freezed ? _value.year : year as String,
      hour: hour == freezed ? _value.hour : hour as String,
      minute: minute == freezed ? _value.minute : minute as String,
      detailUrl: detailUrl == freezed ? _value.detailUrl : detailUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_PostDto implements _PostDto {
  _$_PostDto(
      {@JsonKey(ignore: true) this.id,
      @required this.creatorID,
      @required this.detail,
      @required this.title,
      @required this.city,
      @required this.price,
      @required this.category,
      @required this.town,
      @required this.day,
      @required this.month,
      @required this.year,
      @required this.hour,
      @required this.minute,
      @required this.detailUrl,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(creatorID != null),
        assert(detail != null),
        assert(title != null),
        assert(city != null),
        assert(price != null),
        assert(category != null),
        assert(town != null),
        assert(day != null),
        assert(month != null),
        assert(year != null),
        assert(hour != null),
        assert(minute != null),
        assert(detailUrl != null),
        assert(serverTimeStamp != null);

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PostDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String creatorID;
  @override
  final String detail;
  @override
  final String title;
  @override
  final String city;
  @override
  final String price;
  @override
  final String category;
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
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'PostDto(id: $id, creatorID: $creatorID, detail: $detail, title: $title, city: $city, price: $price, category: $category, town: $town, day: $day, month: $month, year: $year, hour: $hour, minute: $minute, detailUrl: $detailUrl, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creatorID, creatorID) ||
                const DeepCollectionEquality()
                    .equals(other.creatorID, creatorID)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
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
                    .equals(other.detailUrl, detailUrl)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(creatorID) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(town) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(hour) ^
      const DeepCollectionEquality().hash(minute) ^
      const DeepCollectionEquality().hash(detailUrl) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$PostDtoCopyWith<_PostDto> get copyWith =>
      __$PostDtoCopyWithImpl<_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostDtoToJson(this);
  }
}

abstract class _PostDto implements PostDto {
  factory _PostDto(
          {@JsonKey(ignore: true) String id,
          @required String creatorID,
          @required String detail,
          @required String title,
          @required String city,
          @required String price,
          @required String category,
          @required String town,
          @required String day,
          @required String month,
          @required String year,
          @required String hour,
          @required String minute,
          @required String detailUrl,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_PostDto;

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get creatorID;
  @override
  String get detail;
  @override
  String get title;
  @override
  String get city;
  @override
  String get price;
  @override
  String get category;
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
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$PostDtoCopyWith<_PostDto> get copyWith;
}
