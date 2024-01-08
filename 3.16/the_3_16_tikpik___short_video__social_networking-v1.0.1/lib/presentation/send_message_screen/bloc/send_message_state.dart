// ignore_for_file: must_be_immutable

part of 'send_message_bloc.dart';

/// Represents the state of SendMessage in the application.
class SendMessageState extends Equatable {
  SendMessageState({
    this.messageController,
    this.sendMessageModelObj,
  });

  TextEditingController? messageController;

  SendMessageModel? sendMessageModelObj;

  @override
  List<Object?> get props => [
        messageController,
        sendMessageModelObj,
      ];
  SendMessageState copyWith({
    TextEditingController? messageController,
    SendMessageModel? sendMessageModelObj,
  }) {
    return SendMessageState(
      messageController: messageController ?? this.messageController,
      sendMessageModelObj: sendMessageModelObj ?? this.sendMessageModelObj,
    );
  }
}
