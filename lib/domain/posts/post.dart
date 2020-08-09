import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

part 'post.freezed.dart';

@freezed
abstract class Post implements _$Post {
  const factory Post(
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
      @required String detailUrl}) = _Post;

  const Post._();

  factory Post.empty() => Post(
        id: UniqueId(),
        creatorID: UniqueId(),
        category: '',
        price: 'Belirtilmemiş',
        title: '',
        detail: '',
        city: '',
        town: '',
        day: '',
        month: '',
        year: '',
        detailUrl: '',
        hour: '',
        minute: '',
      );

  Either<ValueFailure<String>, String> isPriceValid() {
    return validateMaxStringLength(price, maxPriceLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateStringPositiveInteger);
  }

  Either<ValueFailure<String>, String> isCategoryValid() {
    return validateMaxStringLength(category, maxCategoryLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isTownValid() {
    return validateMaxStringLength(town, maxTownLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isDayValid() {
    return validateMaxStringLength(day, maxDayLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isMonthValid() {
    return validateMaxStringLength(month, maxMonthLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isYearValid() {
    return validateMaxStringLength(year, maxYearLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isCityValid() {
    return validateMaxStringLength(city, maxCityLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isTitleValid() {
    return validateMaxStringLength(title, maxTitleLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isDetailValid() {
    return validateMaxStringLength(detail, maxDetailLength)
        .flatMap(validateStringNotEmpty);
  }

  Either<ValueFailure<String>, String> isDetailUrlValid() {
    return validateMaxStringLength(detailUrl, maxDetailUrlLength);
  }

  static int get maxCategoryLength {
    return 30;
  }

  static int get maxPriceLength {
    return 4;
  }

  static int get maxTitleLength {
    return 60;
  }

  static int get maxDetailLength {
    return 1000;
  }

  static int get maxDetailUrlLength {
    return 500;
  }

  static int get maxCityLength {
    return 50;
  }

  static int get maxTownLength {
    return 50;
  }

  static int get maxDayLength {
    return 5;
  }

  static int get maxMonthLength {
    return 20;
  }

  static int get maxYearLength {
    return 5;
  }
}

extension PostX on Post {
  Option<ValueFailure<dynamic>> get failureOption {
    return isTitleValid()
        .andThen(isDetailValid())
        .andThen(isCityValid())
        .andThen(isTownValid())
        .andThen(isYearValid())
        .andThen(isMonthValid())
        .andThen(isDetailUrlValid())
        .andThen(isDayValid())
        .andThen(isCategoryValid())
        .andThen(isPriceValid())
        .fold((f) => some(f), (_) => none());
  }
}
