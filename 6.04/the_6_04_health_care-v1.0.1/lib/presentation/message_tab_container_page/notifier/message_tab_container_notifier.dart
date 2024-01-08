import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_04_health_care/presentation/message_tab_container_page/models/message_tab_container_model.dart';
part 'message_tab_container_state.dart';

final messageTabContainerNotifier = StateNotifierProvider<
    MessageTabContainerNotifier, MessageTabContainerState>(
  (ref) => MessageTabContainerNotifier(MessageTabContainerState(
    messageTabContainerModelObj: MessageTabContainerModel(),
  )),
);

/// A notifier that manages the state of a MessageTabContainer according to the event that is dispatched to it.
class MessageTabContainerNotifier
    extends StateNotifier<MessageTabContainerState> {
  MessageTabContainerNotifier(MessageTabContainerState state) : super(state) {}
}
