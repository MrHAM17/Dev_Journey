import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/chat_screen/models/chat_model.dart';
part 'chat_state.dart';

final chatNotifier = StateNotifierProvider<ChatNotifier, ChatState>((ref) =>
    ChatNotifier(ChatState(
        messageController: TextEditingController(),
        chatModelObj: ChatModel())));

/// A notifier that manages the state of a Chat according to the event that is dispatched to it.
class ChatNotifier extends StateNotifier<ChatState> {
  ChatNotifier(ChatState state) : super(state);
}
