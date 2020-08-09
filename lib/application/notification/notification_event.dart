part of 'notification_bloc.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.register() = Register;
  const factory NotificationEvent.deregister({@required String currentUserID}) =
      Deregister;
  const factory NotificationEvent.initialize() = Initialize;
}
