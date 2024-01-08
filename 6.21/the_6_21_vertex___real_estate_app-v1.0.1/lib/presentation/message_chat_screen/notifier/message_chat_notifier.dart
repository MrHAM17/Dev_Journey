import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/message_chat_screen/models/message_chat_model.dart';part 'message_chat_state.dart';final messageChatNotifier = StateNotifierProvider<MessageChatNotifier, MessageChatState>((ref) => MessageChatNotifier(MessageChatState(typeMessageController: TextEditingController(), messageChatModelObj: MessageChatModel())));
/// A notifier that manages the state of a MessageChat according to the event that is dispatched to it.
class MessageChatNotifier extends StateNotifier<MessageChatState> {MessageChatNotifier(MessageChatState state) : super(state);

 }
