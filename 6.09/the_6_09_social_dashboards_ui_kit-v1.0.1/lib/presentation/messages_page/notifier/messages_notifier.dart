import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messages_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/messages_page/models/messages_model.dart';
part 'messages_state.dart';

final messagesNotifier = StateNotifierProvider<MessagesNotifier, MessagesState>(
    (ref) => MessagesNotifier(MessagesState(
            messagesModelObj: MessagesModel(messagesItemList: [
          MessagesItemModel(
              billyGreen: ImageConstant.imgAvatar,
              username: "Billy Green",
              message: "Thank you for sharing",
              time: "3:03pm",
              notifications: "1"),
          MessagesItemModel(
              billyGreen: ImageConstant.imgImage8,
              username: "Billy Green",
              message: "Thank you for sharing",
              time: "3:03pm",
              notifications: "1"),
          MessagesItemModel(
              billyGreen: ImageConstant.imgAvatar48x48,
              username: "Billy Green",
              message: "Thank you for sharing",
              time: "3:03pm",
              notifications: "1"),
          MessagesItemModel(
              billyGreen: ImageConstant.imgAvatar1,
              username: "Billy Green",
              message: "Thank you for sharing"),
          MessagesItemModel(
              billyGreen: ImageConstant.imgAvatar2,
              username: "Billy Green",
              message: "Thank you for sharing"),
          MessagesItemModel(
              billyGreen: ImageConstant.imgAvatar3,
              username: "Billy Green",
              message: "Thank you for sharing")
        ]))));

/// A notifier that manages the state of a Messages according to the event that is dispatched to it.
class MessagesNotifier extends StateNotifier<MessagesState> {
  MessagesNotifier(MessagesState state) : super(state);
}
