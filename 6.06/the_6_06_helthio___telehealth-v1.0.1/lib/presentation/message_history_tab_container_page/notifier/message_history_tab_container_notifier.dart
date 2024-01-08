import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/message_history_tab_container_page/models/message_history_tab_container_model.dart';
part 'message_history_tab_container_state.dart';

final messageHistoryTabContainerNotifier = StateNotifierProvider<
    MessageHistoryTabContainerNotifier, MessageHistoryTabContainerState>(
  (ref) => MessageHistoryTabContainerNotifier(MessageHistoryTabContainerState(
    messageHistoryTabContainerModelObj: MessageHistoryTabContainerModel(),
  )),
);

/// A notifier that manages the state of a MessageHistoryTabContainer according to the event that is dispatched to it.
class MessageHistoryTabContainerNotifier
    extends StateNotifier<MessageHistoryTabContainerState> {
  MessageHistoryTabContainerNotifier(MessageHistoryTabContainerState state)
      : super(state) {}
}
