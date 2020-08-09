import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../domain/chat/chat_failure.dart';
import '../../../domain/chat/dialog_overview.dart';
import '../../../domain/chat/i_chat_repository.dart';

part 'user_dialogs_overview_watcher_bloc.freezed.dart';
part 'user_dialogs_overview_watcher_event.dart';
part 'user_dialogs_overview_watcher_state.dart';

@injectable
class UserDialogsOverviewWatcherBloc extends Bloc<
    UserDialogsOverviewWatcherEvent, UserDialogsOverviewWatcherState> {
  final IChatRepository _chatRepository;

  UserDialogsOverviewWatcherBloc(this._chatRepository)
      : super(const UserDialogsOverviewWatcherState.initial());

  StreamSubscription<Either<ChatFailure, KtList<DialogOverview>>>
      _chatStreamSubscription;

  @override
  Stream<UserDialogsOverviewWatcherState> mapEventToState(
    UserDialogsOverviewWatcherEvent event,
  ) async* {
    yield* event.map(
      watchDialogs: (e) async* {
        yield const UserDialogsOverviewWatcherState.loadInProgress();
        await _chatStreamSubscription?.cancel();
        _chatStreamSubscription = _chatRepository
            .watchUserDialogsOverview()
            .listen((messages) =>
                add(UserDialogsOverviewWatcherEvent.dialogsReceived(messages)));
      },
      dialogsReceived: (e) async* {
        yield e.failureOrDialogs.fold(
          (f) => UserDialogsOverviewWatcherState.loadFailure(f),
          (messages) {
            return UserDialogsOverviewWatcherState.loadSuccess(messages);
          },
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _chatStreamSubscription.cancel();
    return super.close();
  }
}
