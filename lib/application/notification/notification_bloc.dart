import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/notification/i_notification_repository.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationRepository _notificationRepository;
  NotificationBloc(this._notificationRepository)
      : super(const NotificationState.initial());

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.map(
      initialize: (e) async* {
        await _notificationRepository.initialize();
      },
      register: (e) async* {
        await _notificationRepository.register();
      },
      deregister: (e) async* {
        await _notificationRepository.deregister(
            currentUserID: e.currentUserID);
      },
    );
  }
}
