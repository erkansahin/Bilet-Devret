part of 'notification_bloc.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = Initial;
  const factory NotificationState.registered() = Registered;
  
}
