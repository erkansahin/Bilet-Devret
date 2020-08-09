import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../domain/chat/chat_failure.dart';
import '../../../domain/chat/i_chat_repository.dart';
import '../../../domain/chat/text_message.dart';
import '../../../domain/core/value_objects.dart';

part 'dialog_watcher_bloc.freezed.dart';
part 'dialog_watcher_event.dart';
part 'dialog_watcher_state.dart';

@injectable
class DialogWatcherBloc extends Bloc<DialogWatcherEvent, DialogWatcherState> {
  final IChatRepository _chatRepository;

  DialogWatcherBloc(this._chatRepository)
      : super(const DialogWatcherState.initial());

  StreamSubscription<Either<ChatFailure, KtList<TextMessage>>>
      _chatStreamSubscription;

  @override
  Stream<DialogWatcherState> mapEventToState(
    DialogWatcherEvent event,
  ) async* {
    yield* event.map(
      watchDialog: (e) async* {
        yield const DialogWatcherState.loadInProgress();
        await _chatStreamSubscription?.cancel();
        _chatStreamSubscription = _chatRepository
            .watchDialog(otherUserID: e.otherUserID)
            .listen((messages) =>
                add(DialogWatcherEvent.dialogsReceived(messages)));
      },
      dialogsReceived: (e) async* {
        yield e.failureOrDialogs.fold(
          (f) => DialogWatcherState.loadFailure(f),
          (messages) => DialogWatcherState.loadSuccess(messages),
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
