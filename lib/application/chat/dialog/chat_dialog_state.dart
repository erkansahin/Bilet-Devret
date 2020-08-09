part of 'chat_dialog_bloc.dart';

@freezed
abstract class ChatDialogState with _$ChatDialogState {
  const factory ChatDialogState({
    @required TextMessage textMessage,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ChatFailure, Unit>> chatFailureOrSuccessOption,
  }) = _ChatDialogState;

  factory ChatDialogState.initial() => ChatDialogState(
        textMessage: TextMessage.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        chatFailureOrSuccessOption: none(),
      );
}
