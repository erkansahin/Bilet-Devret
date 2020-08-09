// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostFormEventTearOff {
  const _$PostFormEventTearOff();

  _Initialized initialized(Option<Post> initialPostOption) {
    return _Initialized(
      initialPostOption,
    );
  }

  _CategoryChanged categoryChanged(String categoryStr) {
    return _CategoryChanged(
      categoryStr,
    );
  }

  _DetailChanged detailChanged(String detailStr) {
    return _DetailChanged(
      detailStr,
    );
  }

  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

  _CityChanged cityChanged(String cityStr) {
    return _CityChanged(
      cityStr,
    );
  }

  _TownChanged townChanged(String townStr) {
    return _TownChanged(
      townStr,
    );
  }

  _DayChanged dayChanged(String dayStr) {
    return _DayChanged(
      dayStr,
    );
  }

  _PriceChanged priceChanged(String priceStr) {
    return _PriceChanged(
      priceStr,
    );
  }

  _MonthChanged monthChanged(String monthStr) {
    return _MonthChanged(
      monthStr,
    );
  }

  _YearChanged yearChanged(String yearStr) {
    return _YearChanged(
      yearStr,
    );
  }

  _HourChanged hourChanged(String hourStr) {
    return _HourChanged(
      hourStr,
    );
  }

  _MinuteChanged minuteChanged(String minuteStr) {
    return _MinuteChanged(
      minuteStr,
    );
  }

  _DetailUrlChanged detailUrlChanged(String detailUrlStr) {
    return _DetailUrlChanged(
      detailUrlStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $PostFormEvent = _$PostFormEventTearOff();

mixin _$PostFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $PostFormEventCopyWith<$Res> {
  factory $PostFormEventCopyWith(
          PostFormEvent value, $Res Function(PostFormEvent) then) =
      _$PostFormEventCopyWithImpl<$Res>;
}

class _$PostFormEventCopyWithImpl<$Res>
    implements $PostFormEventCopyWith<$Res> {
  _$PostFormEventCopyWithImpl(this._value, this._then);

  final PostFormEvent _value;
  // ignore: unused_field
  final $Res Function(PostFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Post> initialPostOption});
}

class __$InitializedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialPostOption = freezed,
  }) {
    return _then(_Initialized(
      initialPostOption == freezed
          ? _value.initialPostOption
          : initialPostOption as Option<Post>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialPostOption)
      : assert(initialPostOption != null);

  @override
  final Option<Post> initialPostOption;

  @override
  String toString() {
    return 'PostFormEvent.initialized(initialPostOption: $initialPostOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialPostOption, initialPostOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialPostOption, initialPostOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialPostOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return initialized(initialPostOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialPostOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PostFormEvent {
  const factory _Initialized(Option<Post> initialPostOption) = _$_Initialized;

  Option<Post> get initialPostOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String categoryStr});
}

class __$CategoryChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object categoryStr = freezed,
  }) {
    return _then(_CategoryChanged(
      categoryStr == freezed ? _value.categoryStr : categoryStr as String,
    ));
  }
}

class _$_CategoryChanged implements _CategoryChanged {
  const _$_CategoryChanged(this.categoryStr) : assert(categoryStr != null);

  @override
  final String categoryStr;

  @override
  String toString() {
    return 'PostFormEvent.categoryChanged(categoryStr: $categoryStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryChanged &&
            (identical(other.categoryStr, categoryStr) ||
                const DeepCollectionEquality()
                    .equals(other.categoryStr, categoryStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryStr);

  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return categoryChanged(categoryStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(categoryStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements PostFormEvent {
  const factory _CategoryChanged(String categoryStr) = _$_CategoryChanged;

  String get categoryStr;
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith;
}

abstract class _$DetailChangedCopyWith<$Res> {
  factory _$DetailChangedCopyWith(
          _DetailChanged value, $Res Function(_DetailChanged) then) =
      __$DetailChangedCopyWithImpl<$Res>;
  $Res call({String detailStr});
}

class __$DetailChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$DetailChangedCopyWith<$Res> {
  __$DetailChangedCopyWithImpl(
      _DetailChanged _value, $Res Function(_DetailChanged) _then)
      : super(_value, (v) => _then(v as _DetailChanged));

  @override
  _DetailChanged get _value => super._value as _DetailChanged;

  @override
  $Res call({
    Object detailStr = freezed,
  }) {
    return _then(_DetailChanged(
      detailStr == freezed ? _value.detailStr : detailStr as String,
    ));
  }
}

class _$_DetailChanged implements _DetailChanged {
  const _$_DetailChanged(this.detailStr) : assert(detailStr != null);

  @override
  final String detailStr;

  @override
  String toString() {
    return 'PostFormEvent.detailChanged(detailStr: $detailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailChanged &&
            (identical(other.detailStr, detailStr) ||
                const DeepCollectionEquality()
                    .equals(other.detailStr, detailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detailStr);

  @override
  _$DetailChangedCopyWith<_DetailChanged> get copyWith =>
      __$DetailChangedCopyWithImpl<_DetailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return detailChanged(detailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (detailChanged != null) {
      return detailChanged(detailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return detailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (detailChanged != null) {
      return detailChanged(this);
    }
    return orElse();
  }
}

abstract class _DetailChanged implements PostFormEvent {
  const factory _DetailChanged(String detailStr) = _$_DetailChanged;

  String get detailStr;
  _$DetailChangedCopyWith<_DetailChanged> get copyWith;
}

abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

class __$TitleChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed ? _value.titleStr : titleStr as String,
    ));
  }
}

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr) : assert(titleStr != null);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'PostFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements PostFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

abstract class _$CityChangedCopyWith<$Res> {
  factory _$CityChangedCopyWith(
          _CityChanged value, $Res Function(_CityChanged) then) =
      __$CityChangedCopyWithImpl<$Res>;
  $Res call({String cityStr});
}

class __$CityChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$CityChangedCopyWith<$Res> {
  __$CityChangedCopyWithImpl(
      _CityChanged _value, $Res Function(_CityChanged) _then)
      : super(_value, (v) => _then(v as _CityChanged));

  @override
  _CityChanged get _value => super._value as _CityChanged;

  @override
  $Res call({
    Object cityStr = freezed,
  }) {
    return _then(_CityChanged(
      cityStr == freezed ? _value.cityStr : cityStr as String,
    ));
  }
}

class _$_CityChanged implements _CityChanged {
  const _$_CityChanged(this.cityStr) : assert(cityStr != null);

  @override
  final String cityStr;

  @override
  String toString() {
    return 'PostFormEvent.cityChanged(cityStr: $cityStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityChanged &&
            (identical(other.cityStr, cityStr) ||
                const DeepCollectionEquality().equals(other.cityStr, cityStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityStr);

  @override
  _$CityChangedCopyWith<_CityChanged> get copyWith =>
      __$CityChangedCopyWithImpl<_CityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return cityChanged(cityStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(cityStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(this);
    }
    return orElse();
  }
}

abstract class _CityChanged implements PostFormEvent {
  const factory _CityChanged(String cityStr) = _$_CityChanged;

  String get cityStr;
  _$CityChangedCopyWith<_CityChanged> get copyWith;
}

abstract class _$TownChangedCopyWith<$Res> {
  factory _$TownChangedCopyWith(
          _TownChanged value, $Res Function(_TownChanged) then) =
      __$TownChangedCopyWithImpl<$Res>;
  $Res call({String townStr});
}

class __$TownChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$TownChangedCopyWith<$Res> {
  __$TownChangedCopyWithImpl(
      _TownChanged _value, $Res Function(_TownChanged) _then)
      : super(_value, (v) => _then(v as _TownChanged));

  @override
  _TownChanged get _value => super._value as _TownChanged;

  @override
  $Res call({
    Object townStr = freezed,
  }) {
    return _then(_TownChanged(
      townStr == freezed ? _value.townStr : townStr as String,
    ));
  }
}

class _$_TownChanged implements _TownChanged {
  const _$_TownChanged(this.townStr) : assert(townStr != null);

  @override
  final String townStr;

  @override
  String toString() {
    return 'PostFormEvent.townChanged(townStr: $townStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TownChanged &&
            (identical(other.townStr, townStr) ||
                const DeepCollectionEquality().equals(other.townStr, townStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(townStr);

  @override
  _$TownChangedCopyWith<_TownChanged> get copyWith =>
      __$TownChangedCopyWithImpl<_TownChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return townChanged(townStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (townChanged != null) {
      return townChanged(townStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return townChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (townChanged != null) {
      return townChanged(this);
    }
    return orElse();
  }
}

abstract class _TownChanged implements PostFormEvent {
  const factory _TownChanged(String townStr) = _$_TownChanged;

  String get townStr;
  _$TownChangedCopyWith<_TownChanged> get copyWith;
}

abstract class _$DayChangedCopyWith<$Res> {
  factory _$DayChangedCopyWith(
          _DayChanged value, $Res Function(_DayChanged) then) =
      __$DayChangedCopyWithImpl<$Res>;
  $Res call({String dayStr});
}

class __$DayChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$DayChangedCopyWith<$Res> {
  __$DayChangedCopyWithImpl(
      _DayChanged _value, $Res Function(_DayChanged) _then)
      : super(_value, (v) => _then(v as _DayChanged));

  @override
  _DayChanged get _value => super._value as _DayChanged;

  @override
  $Res call({
    Object dayStr = freezed,
  }) {
    return _then(_DayChanged(
      dayStr == freezed ? _value.dayStr : dayStr as String,
    ));
  }
}

class _$_DayChanged implements _DayChanged {
  const _$_DayChanged(this.dayStr) : assert(dayStr != null);

  @override
  final String dayStr;

  @override
  String toString() {
    return 'PostFormEvent.dayChanged(dayStr: $dayStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DayChanged &&
            (identical(other.dayStr, dayStr) ||
                const DeepCollectionEquality().equals(other.dayStr, dayStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dayStr);

  @override
  _$DayChangedCopyWith<_DayChanged> get copyWith =>
      __$DayChangedCopyWithImpl<_DayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return dayChanged(dayStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dayChanged != null) {
      return dayChanged(dayStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return dayChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dayChanged != null) {
      return dayChanged(this);
    }
    return orElse();
  }
}

abstract class _DayChanged implements PostFormEvent {
  const factory _DayChanged(String dayStr) = _$_DayChanged;

  String get dayStr;
  _$DayChangedCopyWith<_DayChanged> get copyWith;
}

abstract class _$PriceChangedCopyWith<$Res> {
  factory _$PriceChangedCopyWith(
          _PriceChanged value, $Res Function(_PriceChanged) then) =
      __$PriceChangedCopyWithImpl<$Res>;
  $Res call({String priceStr});
}

class __$PriceChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$PriceChangedCopyWith<$Res> {
  __$PriceChangedCopyWithImpl(
      _PriceChanged _value, $Res Function(_PriceChanged) _then)
      : super(_value, (v) => _then(v as _PriceChanged));

  @override
  _PriceChanged get _value => super._value as _PriceChanged;

  @override
  $Res call({
    Object priceStr = freezed,
  }) {
    return _then(_PriceChanged(
      priceStr == freezed ? _value.priceStr : priceStr as String,
    ));
  }
}

class _$_PriceChanged implements _PriceChanged {
  const _$_PriceChanged(this.priceStr) : assert(priceStr != null);

  @override
  final String priceStr;

  @override
  String toString() {
    return 'PostFormEvent.priceChanged(priceStr: $priceStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceChanged &&
            (identical(other.priceStr, priceStr) ||
                const DeepCollectionEquality()
                    .equals(other.priceStr, priceStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(priceStr);

  @override
  _$PriceChangedCopyWith<_PriceChanged> get copyWith =>
      __$PriceChangedCopyWithImpl<_PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return priceChanged(priceStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(priceStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements PostFormEvent {
  const factory _PriceChanged(String priceStr) = _$_PriceChanged;

  String get priceStr;
  _$PriceChangedCopyWith<_PriceChanged> get copyWith;
}

abstract class _$MonthChangedCopyWith<$Res> {
  factory _$MonthChangedCopyWith(
          _MonthChanged value, $Res Function(_MonthChanged) then) =
      __$MonthChangedCopyWithImpl<$Res>;
  $Res call({String monthStr});
}

class __$MonthChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$MonthChangedCopyWith<$Res> {
  __$MonthChangedCopyWithImpl(
      _MonthChanged _value, $Res Function(_MonthChanged) _then)
      : super(_value, (v) => _then(v as _MonthChanged));

  @override
  _MonthChanged get _value => super._value as _MonthChanged;

  @override
  $Res call({
    Object monthStr = freezed,
  }) {
    return _then(_MonthChanged(
      monthStr == freezed ? _value.monthStr : monthStr as String,
    ));
  }
}

class _$_MonthChanged implements _MonthChanged {
  const _$_MonthChanged(this.monthStr) : assert(monthStr != null);

  @override
  final String monthStr;

  @override
  String toString() {
    return 'PostFormEvent.monthChanged(monthStr: $monthStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MonthChanged &&
            (identical(other.monthStr, monthStr) ||
                const DeepCollectionEquality()
                    .equals(other.monthStr, monthStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(monthStr);

  @override
  _$MonthChangedCopyWith<_MonthChanged> get copyWith =>
      __$MonthChangedCopyWithImpl<_MonthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return monthChanged(monthStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthChanged != null) {
      return monthChanged(monthStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return monthChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthChanged != null) {
      return monthChanged(this);
    }
    return orElse();
  }
}

abstract class _MonthChanged implements PostFormEvent {
  const factory _MonthChanged(String monthStr) = _$_MonthChanged;

  String get monthStr;
  _$MonthChangedCopyWith<_MonthChanged> get copyWith;
}

abstract class _$YearChangedCopyWith<$Res> {
  factory _$YearChangedCopyWith(
          _YearChanged value, $Res Function(_YearChanged) then) =
      __$YearChangedCopyWithImpl<$Res>;
  $Res call({String yearStr});
}

class __$YearChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$YearChangedCopyWith<$Res> {
  __$YearChangedCopyWithImpl(
      _YearChanged _value, $Res Function(_YearChanged) _then)
      : super(_value, (v) => _then(v as _YearChanged));

  @override
  _YearChanged get _value => super._value as _YearChanged;

  @override
  $Res call({
    Object yearStr = freezed,
  }) {
    return _then(_YearChanged(
      yearStr == freezed ? _value.yearStr : yearStr as String,
    ));
  }
}

class _$_YearChanged implements _YearChanged {
  const _$_YearChanged(this.yearStr) : assert(yearStr != null);

  @override
  final String yearStr;

  @override
  String toString() {
    return 'PostFormEvent.yearChanged(yearStr: $yearStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YearChanged &&
            (identical(other.yearStr, yearStr) ||
                const DeepCollectionEquality().equals(other.yearStr, yearStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(yearStr);

  @override
  _$YearChangedCopyWith<_YearChanged> get copyWith =>
      __$YearChangedCopyWithImpl<_YearChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return yearChanged(yearStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yearChanged != null) {
      return yearChanged(yearStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return yearChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (yearChanged != null) {
      return yearChanged(this);
    }
    return orElse();
  }
}

abstract class _YearChanged implements PostFormEvent {
  const factory _YearChanged(String yearStr) = _$_YearChanged;

  String get yearStr;
  _$YearChangedCopyWith<_YearChanged> get copyWith;
}

abstract class _$HourChangedCopyWith<$Res> {
  factory _$HourChangedCopyWith(
          _HourChanged value, $Res Function(_HourChanged) then) =
      __$HourChangedCopyWithImpl<$Res>;
  $Res call({String hourStr});
}

class __$HourChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$HourChangedCopyWith<$Res> {
  __$HourChangedCopyWithImpl(
      _HourChanged _value, $Res Function(_HourChanged) _then)
      : super(_value, (v) => _then(v as _HourChanged));

  @override
  _HourChanged get _value => super._value as _HourChanged;

  @override
  $Res call({
    Object hourStr = freezed,
  }) {
    return _then(_HourChanged(
      hourStr == freezed ? _value.hourStr : hourStr as String,
    ));
  }
}

class _$_HourChanged implements _HourChanged {
  const _$_HourChanged(this.hourStr) : assert(hourStr != null);

  @override
  final String hourStr;

  @override
  String toString() {
    return 'PostFormEvent.hourChanged(hourStr: $hourStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HourChanged &&
            (identical(other.hourStr, hourStr) ||
                const DeepCollectionEquality().equals(other.hourStr, hourStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hourStr);

  @override
  _$HourChangedCopyWith<_HourChanged> get copyWith =>
      __$HourChangedCopyWithImpl<_HourChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return hourChanged(hourStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hourChanged != null) {
      return hourChanged(hourStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return hourChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hourChanged != null) {
      return hourChanged(this);
    }
    return orElse();
  }
}

abstract class _HourChanged implements PostFormEvent {
  const factory _HourChanged(String hourStr) = _$_HourChanged;

  String get hourStr;
  _$HourChangedCopyWith<_HourChanged> get copyWith;
}

abstract class _$MinuteChangedCopyWith<$Res> {
  factory _$MinuteChangedCopyWith(
          _MinuteChanged value, $Res Function(_MinuteChanged) then) =
      __$MinuteChangedCopyWithImpl<$Res>;
  $Res call({String minuteStr});
}

class __$MinuteChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$MinuteChangedCopyWith<$Res> {
  __$MinuteChangedCopyWithImpl(
      _MinuteChanged _value, $Res Function(_MinuteChanged) _then)
      : super(_value, (v) => _then(v as _MinuteChanged));

  @override
  _MinuteChanged get _value => super._value as _MinuteChanged;

  @override
  $Res call({
    Object minuteStr = freezed,
  }) {
    return _then(_MinuteChanged(
      minuteStr == freezed ? _value.minuteStr : minuteStr as String,
    ));
  }
}

class _$_MinuteChanged implements _MinuteChanged {
  const _$_MinuteChanged(this.minuteStr) : assert(minuteStr != null);

  @override
  final String minuteStr;

  @override
  String toString() {
    return 'PostFormEvent.minuteChanged(minuteStr: $minuteStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MinuteChanged &&
            (identical(other.minuteStr, minuteStr) ||
                const DeepCollectionEquality()
                    .equals(other.minuteStr, minuteStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(minuteStr);

  @override
  _$MinuteChangedCopyWith<_MinuteChanged> get copyWith =>
      __$MinuteChangedCopyWithImpl<_MinuteChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return minuteChanged(minuteStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (minuteChanged != null) {
      return minuteChanged(minuteStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return minuteChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (minuteChanged != null) {
      return minuteChanged(this);
    }
    return orElse();
  }
}

abstract class _MinuteChanged implements PostFormEvent {
  const factory _MinuteChanged(String minuteStr) = _$_MinuteChanged;

  String get minuteStr;
  _$MinuteChangedCopyWith<_MinuteChanged> get copyWith;
}

abstract class _$DetailUrlChangedCopyWith<$Res> {
  factory _$DetailUrlChangedCopyWith(
          _DetailUrlChanged value, $Res Function(_DetailUrlChanged) then) =
      __$DetailUrlChangedCopyWithImpl<$Res>;
  $Res call({String detailUrlStr});
}

class __$DetailUrlChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$DetailUrlChangedCopyWith<$Res> {
  __$DetailUrlChangedCopyWithImpl(
      _DetailUrlChanged _value, $Res Function(_DetailUrlChanged) _then)
      : super(_value, (v) => _then(v as _DetailUrlChanged));

  @override
  _DetailUrlChanged get _value => super._value as _DetailUrlChanged;

  @override
  $Res call({
    Object detailUrlStr = freezed,
  }) {
    return _then(_DetailUrlChanged(
      detailUrlStr == freezed ? _value.detailUrlStr : detailUrlStr as String,
    ));
  }
}

class _$_DetailUrlChanged implements _DetailUrlChanged {
  const _$_DetailUrlChanged(this.detailUrlStr) : assert(detailUrlStr != null);

  @override
  final String detailUrlStr;

  @override
  String toString() {
    return 'PostFormEvent.detailUrlChanged(detailUrlStr: $detailUrlStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailUrlChanged &&
            (identical(other.detailUrlStr, detailUrlStr) ||
                const DeepCollectionEquality()
                    .equals(other.detailUrlStr, detailUrlStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detailUrlStr);

  @override
  _$DetailUrlChangedCopyWith<_DetailUrlChanged> get copyWith =>
      __$DetailUrlChangedCopyWithImpl<_DetailUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return detailUrlChanged(detailUrlStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (detailUrlChanged != null) {
      return detailUrlChanged(detailUrlStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return detailUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (detailUrlChanged != null) {
      return detailUrlChanged(this);
    }
    return orElse();
  }
}

abstract class _DetailUrlChanged implements PostFormEvent {
  const factory _DetailUrlChanged(String detailUrlStr) = _$_DetailUrlChanged;

  String get detailUrlStr;
  _$DetailUrlChangedCopyWith<_DetailUrlChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'PostFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Post> initialPostOption),
    @required Result categoryChanged(String categoryStr),
    @required Result detailChanged(String detailStr),
    @required Result titleChanged(String titleStr),
    @required Result cityChanged(String cityStr),
    @required Result townChanged(String townStr),
    @required Result dayChanged(String dayStr),
    @required Result priceChanged(String priceStr),
    @required Result monthChanged(String monthStr),
    @required Result yearChanged(String yearStr),
    @required Result hourChanged(String hourStr),
    @required Result minuteChanged(String minuteStr),
    @required Result detailUrlChanged(String detailUrlStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Post> initialPostOption),
    Result categoryChanged(String categoryStr),
    Result detailChanged(String detailStr),
    Result titleChanged(String titleStr),
    Result cityChanged(String cityStr),
    Result townChanged(String townStr),
    Result dayChanged(String dayStr),
    Result priceChanged(String priceStr),
    Result monthChanged(String monthStr),
    Result yearChanged(String yearStr),
    Result hourChanged(String hourStr),
    Result minuteChanged(String minuteStr),
    Result detailUrlChanged(String detailUrlStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result detailChanged(_DetailChanged value),
    @required Result titleChanged(_TitleChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result townChanged(_TownChanged value),
    @required Result dayChanged(_DayChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result monthChanged(_MonthChanged value),
    @required Result yearChanged(_YearChanged value),
    @required Result hourChanged(_HourChanged value),
    @required Result minuteChanged(_MinuteChanged value),
    @required Result detailUrlChanged(_DetailUrlChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(categoryChanged != null);
    assert(detailChanged != null);
    assert(titleChanged != null);
    assert(cityChanged != null);
    assert(townChanged != null);
    assert(dayChanged != null);
    assert(priceChanged != null);
    assert(monthChanged != null);
    assert(yearChanged != null);
    assert(hourChanged != null);
    assert(minuteChanged != null);
    assert(detailUrlChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result categoryChanged(_CategoryChanged value),
    Result detailChanged(_DetailChanged value),
    Result titleChanged(_TitleChanged value),
    Result cityChanged(_CityChanged value),
    Result townChanged(_TownChanged value),
    Result dayChanged(_DayChanged value),
    Result priceChanged(_PriceChanged value),
    Result monthChanged(_MonthChanged value),
    Result yearChanged(_YearChanged value),
    Result hourChanged(_HourChanged value),
    Result minuteChanged(_MinuteChanged value),
    Result detailUrlChanged(_DetailUrlChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PostFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$PostFormStateTearOff {
  const _$PostFormStateTearOff();

  _PostFormState call(
      {@required Post post,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
      @required bool isValid}) {
    return _PostFormState(
      post: post,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      isValid: isValid,
    );
  }
}

// ignore: unused_element
const $PostFormState = _$PostFormStateTearOff();

mixin _$PostFormState {
  Post get post;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<PostFailure, Unit>> get saveFailureOrSuccessOption;
  bool get isValid;

  $PostFormStateCopyWith<PostFormState> get copyWith;
}

abstract class $PostFormStateCopyWith<$Res> {
  factory $PostFormStateCopyWith(
          PostFormState value, $Res Function(PostFormState) then) =
      _$PostFormStateCopyWithImpl<$Res>;
  $Res call(
      {Post post,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
      bool isValid});

  $PostCopyWith<$Res> get post;
}

class _$PostFormStateCopyWithImpl<$Res>
    implements $PostFormStateCopyWith<$Res> {
  _$PostFormStateCopyWithImpl(this._value, this._then);

  final PostFormState _value;
  // ignore: unused_field
  final $Res Function(PostFormState) _then;

  @override
  $Res call({
    Object post = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object isValid = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed ? _value.post : post as Post,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PostFailure, Unit>>,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
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

abstract class _$PostFormStateCopyWith<$Res>
    implements $PostFormStateCopyWith<$Res> {
  factory _$PostFormStateCopyWith(
          _PostFormState value, $Res Function(_PostFormState) then) =
      __$PostFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Post post,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
      bool isValid});

  @override
  $PostCopyWith<$Res> get post;
}

class __$PostFormStateCopyWithImpl<$Res>
    extends _$PostFormStateCopyWithImpl<$Res>
    implements _$PostFormStateCopyWith<$Res> {
  __$PostFormStateCopyWithImpl(
      _PostFormState _value, $Res Function(_PostFormState) _then)
      : super(_value, (v) => _then(v as _PostFormState));

  @override
  _PostFormState get _value => super._value as _PostFormState;

  @override
  $Res call({
    Object post = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object isValid = freezed,
  }) {
    return _then(_PostFormState(
      post: post == freezed ? _value.post : post as Post,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<PostFailure, Unit>>,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
    ));
  }
}

class _$_PostFormState implements _PostFormState {
  const _$_PostFormState(
      {@required this.post,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption,
      @required this.isValid})
      : assert(post != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null),
        assert(isValid != null);

  @override
  final Post post;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'PostFormState(post: $post, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostFormState &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.isValid, isValid) ||
                const DeepCollectionEquality().equals(other.isValid, isValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isValid);

  @override
  _$PostFormStateCopyWith<_PostFormState> get copyWith =>
      __$PostFormStateCopyWithImpl<_PostFormState>(this, _$identity);
}

abstract class _PostFormState implements PostFormState {
  const factory _PostFormState(
      {@required Post post,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<PostFailure, Unit>> saveFailureOrSuccessOption,
      @required bool isValid}) = _$_PostFormState;

  @override
  Post get post;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<PostFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  bool get isValid;
  @override
  _$PostFormStateCopyWith<_PostFormState> get copyWith;
}
