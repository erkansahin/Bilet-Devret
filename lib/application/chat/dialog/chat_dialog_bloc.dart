import 'dart:async';
import 'dart:io';

import 'package:bilet_devret/domain/chat/chat_failure.dart';
import 'package:bilet_devret/domain/chat/i_chat_repository.dart';
import 'package:bilet_devret/domain/chat/text_message.dart';
import 'package:bilet_devret/domain/core/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_dialog_event.dart';
part 'chat_dialog_state.dart';
part 'chat_dialog_bloc.freezed.dart';

@injectable
class ChatDialogBloc extends Bloc<ChatDialogEvent, ChatDialogState> {
  final IChatRepository _chatRepository;

  ChatDialogBloc(this._chatRepository) : super(ChatDialogState.initial());

  @override
  Stream<ChatDialogState> mapEventToState(
    ChatDialogEvent event,
  ) async* {
    yield* event.map(textMessageBodyChanged: (e) async* {
      yield state.copyWith(
        textMessage: state.textMessage.copyWith(
          messageBody: e.textMessageBodyStr,
        ),
        chatFailureOrSuccessOption: none(),
      );
    }, sendButtonPressed: (e) async* {
      final isThereBlockage = await _chatRepository.isThereBlockageBetweenUsers(
          otherUserID: state.textMessage.receiverID.getOrCrash());

      if (!isThereBlockage) {
        yield state.copyWith(
          isSubmitting: true,
          chatFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _chatRepository.send(
          state.textMessage,
        );
        yield state.copyWith(
          isSubmitting: false,
          chatFailureOrSuccessOption: some(failureOrSuccess),
        );
      }
    }, receiverIDReceived: (e) async* {
      yield state.copyWith(
        textMessage: state.textMessage.copyWith(
          receiverID: e.receiverID,
        ),
        chatFailureOrSuccessOption: none(),
      );
    }, messageTypeChanged: (e) async* {
      yield state.copyWith(
        textMessage: state.textMessage.copyWith(
          type: e.type,
        ),
        chatFailureOrSuccessOption: none(),
      );
    }, uploadImage: (e) async* {
      final isThereBlockage = await _chatRepository.isThereBlockageBetweenUsers(
          otherUserID: state.textMessage.receiverID.getOrCrash());

      if (!isThereBlockage) {
        final url = await _chatRepository.upload(e.file);
        yield state.copyWith(
            textMessage: state.textMessage.copyWith(messageBody: url));
      }
    });
  }
}
