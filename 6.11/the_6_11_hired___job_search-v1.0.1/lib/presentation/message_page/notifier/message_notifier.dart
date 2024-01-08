import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/message_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/message_page/models/message_model.dart';
part 'message_state.dart';

final messageNotifier = StateNotifierProvider<MessageNotifier, MessageState>(
    (ref) => MessageNotifier(MessageState(
        searchController: TextEditingController(),
        messageModelObj: MessageModel(messageItemList: [
          MessageItemModel(
              circleImage: ImageConstant.imgAvatar56x56,
              chanceSeptimus: "Chance Septimus",
              loremIpsumDolor: "Lorem ipsum dolor sit amet...",
              time: "10:20"),
          MessageItemModel(
              circleImage: ImageConstant.imgAvatar1,
              chanceSeptimus: "Robert Fox",
              loremIpsumDolor: "Lorem ipsum dolor sit amet...",
              time: "10:20")
        ]))));

/// A notifier that manages the state of a Message according to the event that is dispatched to it.
class MessageNotifier extends StateNotifier<MessageState> {
  MessageNotifier(MessageState state) : super(state);
}
