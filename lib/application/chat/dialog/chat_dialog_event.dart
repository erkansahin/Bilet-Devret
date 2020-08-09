part of 'chat_dialog_bloc.dart';

@freezed
abstract class ChatDialogEvent with _$ChatDialogEvent {
  const factory ChatDialogEvent.textMessageBodyChanged({
    @required String textMessageBodyStr,
  }) = TextMessageChanged;

  const factory ChatDialogEvent.receiverIDReceived(
      {@required UniqueId receiverID}) = ReceiverIDReceived;
  const factory ChatDialogEvent.messageTypeChanged({@required int type}) =
      MessageTypeChanged;
  const factory ChatDialogEvent.sendButtonPressed() = SendButtonPressed;
  const factory ChatDialogEvent.uploadImage({@required File file}) =
      UploadImage;
}
