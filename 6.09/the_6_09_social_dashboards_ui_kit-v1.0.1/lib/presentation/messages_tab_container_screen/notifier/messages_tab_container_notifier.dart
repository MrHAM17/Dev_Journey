import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/messages_tab_container_screen/models/messages_tab_container_model.dart';
part 'messages_tab_container_state.dart';

final messagesTabContainerNotifier = StateNotifierProvider<
    MessagesTabContainerNotifier, MessagesTabContainerState>(
  (ref) => MessagesTabContainerNotifier(MessagesTabContainerState(
    messagesTabContainerModelObj: MessagesTabContainerModel(),
  )),
);

/// A notifier that manages the state of a MessagesTabContainer according to the event that is dispatched to it.
class MessagesTabContainerNotifier
    extends StateNotifier<MessagesTabContainerState> {
  MessagesTabContainerNotifier(MessagesTabContainerState state)
      : super(state) {}
}
