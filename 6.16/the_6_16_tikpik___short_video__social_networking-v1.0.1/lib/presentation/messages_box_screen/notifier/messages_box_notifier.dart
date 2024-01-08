import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/messages_box_screen/models/messages_box_model.dart';part 'messages_box_state.dart';final messagesBoxNotifier = StateNotifierProvider<MessagesBoxNotifier, MessagesBoxState>((ref) => MessagesBoxNotifier(MessagesBoxState(messageController: TextEditingController(), messagesBoxModelObj: MessagesBoxModel())));
/// A notifier that manages the state of a MessagesBox according to the event that is dispatched to it.
class MessagesBoxNotifier extends StateNotifier<MessagesBoxState> {MessagesBoxNotifier(MessagesBoxState state) : super(state);

 }
