// ignore_for_file: must_be_immutable

part of 'messages_box_bloc.dart';

/// Represents the state of MessagesBox in the application.
class MessagesBoxState extends Equatable {
  MessagesBoxState({
    this.messageController,
    this.messagesBoxModelObj,
  });

  TextEditingController? messageController;

  MessagesBoxModel? messagesBoxModelObj;

  @override
  List<Object?> get props => [
        messageController,
        messagesBoxModelObj,
      ];
  MessagesBoxState copyWith({
    TextEditingController? messageController,
    MessagesBoxModel? messagesBoxModelObj,
  }) {
    return MessagesBoxState(
      messageController: messageController ?? this.messageController,
      messagesBoxModelObj: messagesBoxModelObj ?? this.messagesBoxModelObj,
    );
  }
}
