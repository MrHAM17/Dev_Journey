// ignore_for_file: must_be_immutable

part of 'chat_notifier.dart';

/// Represents the state of Chat in the application.
class ChatState extends Equatable {
  ChatState({
    this.descriptionController,
    this.descriptionController1,
    this.formChatController,
    this.chatModelObj,
  });

  TextEditingController? descriptionController;

  TextEditingController? descriptionController1;

  TextEditingController? formChatController;

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        descriptionController,
        descriptionController1,
        formChatController,
        chatModelObj,
      ];

  ChatState copyWith({
    TextEditingController? descriptionController,
    TextEditingController? descriptionController1,
    TextEditingController? formChatController,
    ChatModel? chatModelObj,
  }) {
    return ChatState(
      descriptionController:
          descriptionController ?? this.descriptionController,
      descriptionController1:
          descriptionController1 ?? this.descriptionController1,
      formChatController: formChatController ?? this.formChatController,
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
