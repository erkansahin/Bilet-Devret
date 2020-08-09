part of 'post_form_bloc.dart';

@freezed
abstract class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.initialized(Option<Post> initialPostOption) =
      _Initialized;
  const factory PostFormEvent.categoryChanged(String categoryStr) =
      _CategoryChanged;

  const factory PostFormEvent.detailChanged(String detailStr) = _DetailChanged;
  const factory PostFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory PostFormEvent.cityChanged(String cityStr) = _CityChanged;
  const factory PostFormEvent.townChanged(String townStr) = _TownChanged;
  const factory PostFormEvent.dayChanged(String dayStr) = _DayChanged;
  const factory PostFormEvent.priceChanged(String priceStr) = _PriceChanged;
  const factory PostFormEvent.monthChanged(String monthStr) = _MonthChanged;
  const factory PostFormEvent.yearChanged(String yearStr) = _YearChanged;
  const factory PostFormEvent.hourChanged(String hourStr) = _HourChanged;
  const factory PostFormEvent.minuteChanged(String minuteStr) = _MinuteChanged;

  const factory PostFormEvent.detailUrlChanged(String detailUrlStr) =
      _DetailUrlChanged;
//Todo: Add other properties
  const factory PostFormEvent.saved() = _Saved;
}
