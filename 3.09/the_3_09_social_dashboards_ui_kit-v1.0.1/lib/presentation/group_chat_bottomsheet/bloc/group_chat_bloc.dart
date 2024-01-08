import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_09_social_dashboards_ui_kit/presentation/group_chat_bottomsheet/models/group_chat_model.dart';
part 'group_chat_event.dart';
part 'group_chat_state.dart';

/// A bloc that manages the state of a GroupChat according to the event that is dispatched to it.
class GroupChatBloc extends Bloc<GroupChatEvent, GroupChatState> {
  GroupChatBloc(GroupChatState initialState) : super(initialState) {
    on<GroupChatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GroupChatInitialEvent event,
    Emitter<GroupChatState> emit,
  ) async {
    NavigatorService.pushNamed(
      AppRoutes.videoChatScreen,
    );
  }
}
