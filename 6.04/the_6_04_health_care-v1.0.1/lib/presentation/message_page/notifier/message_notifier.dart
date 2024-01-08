import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chat_item_model.dart';
import 'package:the_6_04_health_care/presentation/message_page/models/message_model.dart';
part 'message_state.dart';

final messageNotifier = StateNotifierProvider<MessageNotifier, MessageState>(
    (ref) => MessageNotifier(MessageState(
            messageModelObj: MessageModel(chatItemList: [
          ChatItemModel(
              drMarcusHorizon: ImageConstant.imgProfileThumbnail,
              drMarcusHorizon1: "Dr. Marcus Horizon",
              iDonTHaveAny: "I don,t have any fever, but headchace...",
              time: "10.24")
        ]))));

/// A notifier that manages the state of a Message according to the event that is dispatched to it.
class MessageNotifier extends StateNotifier<MessageState> {
  MessageNotifier(MessageState state) : super(state);
}
