import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/group_chat_bottomsheet/models/group_chat_model.dart';
part 'group_chat_state.dart';

final groupChatNotifier =
    StateNotifierProvider<GroupChatNotifier, GroupChatState>((ref) =>
        GroupChatNotifier(GroupChatState(groupChatModelObj: GroupChatModel())));

/// A notifier that manages the state of a GroupChat according to the event that is dispatched to it.
class GroupChatNotifier extends StateNotifier<GroupChatState> {
  GroupChatNotifier(GroupChatState state) : super(state);
}
